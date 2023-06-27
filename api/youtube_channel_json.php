<?php

    function get_db_connection() {
        $db = new mysqli('localhost', 'root', '', 'youtube_db');
        if ($db->connect_error) {
            die('Connection failed: ' . $db->connect_error);
        }

        return $db;
    }

    function get_channel_info($db) {
        $channelInfoStmt = $db->prepare('SELECT * FROM youtube_channels');
        $channelInfoStmt->execute();
        $channelInfoResult = $channelInfoStmt->get_result();
        $channelInfo = $channelInfoResult->fetch_all(MYSQLI_ASSOC);
        $channelInfoStmt->close();

        return $channelInfo;
    }

    function get_channel_videos($db, $channelId) {
        $videosStmt = $db->prepare('SELECT youtube_channel_videos.*, youtube_channels.profile_picture, youtube_channels.description, youtube_channels.name FROM youtube_channel_videos 
        INNER JOIN youtube_channels ON youtube_channels.id = youtube_channel_videos.channel_id WHERE channel_id = ?');
        $videosStmt->bind_param('s', $channelId);
        $videosStmt->execute();
        $videosResult = $videosStmt->get_result();
        $videos = $videosResult->fetch_all(MYSQLI_ASSOC);
        $videosStmt->close();

        return $videos;
    }

    $db = get_db_connection();
    $channelId = $_GET['channelId'];

    if (isset($channelId)) {
        $videos = get_channel_videos($db, $channelId);
        $response = ['videos' => $videos];
    } else {
        $channelInfo = get_channel_info($db);
        $response = ['channelInfo' => $channelInfo];
    }

    header('Content-Type: application/json');
    echo json_encode($response);

    $db->close();

?>