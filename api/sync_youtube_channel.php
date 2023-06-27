<?php

// Set up database connection
$db = new mysqli('localhost', 'root', '', 'youtube_db');
if ($db->connect_error) {
    die('Connection failed: ' . $db->connect_error);
}

// Set API key and channel ID
$apiKey = 'AIzaSyBbs-rrH7PH0YaW62xbb9cBNYSX2NM9G5E';
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ';

try {
    // Fetch channel info
    $channelInfoUrl = 'https://www.googleapis.com/youtube/v3/channels?part=snippet&id=' . $channelId . '&key=' . $apiKey;
    $channelData = json_decode(file_get_contents($channelInfoUrl), true);

    $channelProfilePic = $channelData['items'][0]['snippet']['thumbnails']['default']['url'];
    $channelName = $channelData['items'][0]['snippet']['title'];
    $channelDescription = $channelData['items'][0]['snippet']['description'];

    // Check if channel already exists in the database
    $existingChannelStmt = $db->prepare('SELECT id FROM youtube_channels WHERE name = ?');
    $existingChannelStmt->bind_param('s', $channelName);
    $existingChannelStmt->execute();
    $existingChannelStmt->store_result();
    $numRows = $existingChannelStmt->num_rows;
    $existingChannelStmt->close();

    if ($numRows === 0) {
        // Insert channel info into the database
        $insertChannelStmt = $db->prepare('INSERT INTO youtube_channels (profile_picture, name, description) VALUES (?, ?, ?)');
        $insertChannelStmt->bind_param('sss', $channelProfilePic, $channelName, $channelDescription);
        $insertChannelStmt->execute();
        $lastInsertedId = $insertChannelStmt->insert_id;
        $insertChannelStmt->close();

        $videoInfoUrl = 'https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=' . $channelId . '&maxResults=50&order=date&key=' . $apiKey;

        $videoData = [];
        $nextPageToken = '';
        $totalVideos = 0;
        
        while ($totalVideos < 100 && $nextPageToken !== null) {
            $remainingVideos = 100 - $totalVideos;
            $maxResults = min(50, $remainingVideos);
        
            $videoInfoUrl = 'https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=' . $channelId . '&maxResults=' . $maxResults . '&order=date&key=' . $apiKey;
        
            if ($nextPageToken !== '') {
                $videoInfoUrl .= '&pageToken=' . $nextPageToken;
            }
        
            $response = file_get_contents($videoInfoUrl);
            $data = json_decode($response, true);
            $videoData = array_merge($videoData, $data['items']);
            $nextPageToken = isset($data['nextPageToken']) ? $data['nextPageToken'] : null;
        
            $totalVideos += $maxResults;
        }

        // Insert video info into the database
        $insertVideoStmt = $db->prepare('INSERT INTO youtube_channel_videos (channel_id, video_link, title, description, thumbnail, publishTime) VALUES (?, ?, ?, ?, ?, ?)');
        foreach ($videoData as $video) {
            $videoTitle = $video['snippet']['title'];
            
            if (stripos($videoTitle, '#shorts') !== false || stripos($videoTitle, '#short') !== false) {
                continue;
            }
            
            $videoChannelId = $lastInsertedId;
            $videoLink = 'https://www.youtube.com/watch?v=' . $video['id']['videoId'];
            $videoDescription = $video['snippet']['description'];
            $videoThumbnail = $video['snippet']['thumbnails']['high']['url'];
            $videoPublishTime = str_replace(['T', 'Z'], [' ', ''], $video['snippet']['publishTime']);
            $insertVideoStmt->bind_param('ssssss', $videoChannelId, $videoLink, $videoTitle, $videoDescription, $videoThumbnail, $videoPublishTime);
            $insertVideoStmt->execute();
            if ($db->error) {
                throw new Exception('Database error: ' . $db->error);
            }
        }
        $insertVideoStmt->close(); 
      
    }

    echo json_encode([
        'name' => $channelName,
        'description' => $channelDescription,
        'profile_pic' => $channelProfilePic,
    ]);

    $db->close();

    } catch (Exception $e)
    {
        echo json_encode([
            'error' => $e->getMessage(),
        ]);
    }
