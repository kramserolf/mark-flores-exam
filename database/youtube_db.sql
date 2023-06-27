-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2023 at 08:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `profile_picture`, `name`, `description`) VALUES
(11, 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `channel_id`, `video_link`, `title`, `description`, `thumbnail`, `publishTime`) VALUES
(1, 11, 'https://www.youtube.com/watch?v=6M11q1JrLgA', 'Victor Wembanyama’s Spurs Introductory Press Conference', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/6M11q1JrLgA/hqdefault.jpg', '2023-06-24 18:16:53'),
(2, 11, 'https://www.youtube.com/watch?v=QtcpB2m28S0', 'All-Access: 2023 NBA Draft', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/QtcpB2m28S0/hqdefault.jpg', '2023-06-24 16:45:39'),
(3, 11, 'https://www.youtube.com/watch?v=C_fX7JUVvDg', 'Every #1 Pick Since 1980 | Victor Wembanyama, LeBron, Shaq and MORE', 'Check out every first overall pick since 1980 following the 2023 #NBADraft presented by State Farm Never miss a moment with ...', 'https://i.ytimg.com/vi/C_fX7JUVvDg/hqdefault.jpg', '2023-06-23 22:05:39'),
(4, 11, 'https://www.youtube.com/watch?v=MwoFguoxnq4', '2023 #NBADraft presented by State Farm Press Conference', 'The 2023 #NBADraft presented by State Farm press conference. Hear from the future of the NBA! Never miss a moment with the ...', 'https://i.ytimg.com/vi/MwoFguoxnq4/hqdefault.jpg', '2023-06-23 04:16:10'),
(5, 11, 'https://www.youtube.com/watch?v=aeXPv4cvBko', 'All 30 First Round Picks Of The 2023 #NBADraft', 'Check out all 30 first round picks of the 2023 #NBADraft presented by State Farm! Never miss a moment with the latest news, ...', 'https://i.ytimg.com/vi/aeXPv4cvBko/hqdefault.jpg', '2023-06-23 03:33:52'),
(6, 11, 'https://www.youtube.com/watch?v=00YRUJ4qZtA', 'Brandon Miller Full Presser After Being Selected #2 Overall In The 2023 #NBADraft', 'The Charlotte Hornets select Brandon Miller with the #2 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/00YRUJ4qZtA/hqdefault.jpg', '2023-06-23 01:32:54'),
(7, 11, 'https://www.youtube.com/watch?v=fIjLizGDxrM', 'Scoot Henderson Full Presser After Being Selected #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/fIjLizGDxrM/hqdefault.jpg', '2023-06-23 01:34:44'),
(8, 11, 'https://www.youtube.com/watch?v=Tncd-w2Dz_0', 'Victor Wembanyama Full Presser After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/Tncd-w2Dz_0/hqdefault.jpg', '2023-06-23 01:22:57'),
(9, 11, 'https://www.youtube.com/watch?v=jrQrWfyk44s', 'Ausar Thompson Goes #5 Overall In The 2023 #NBADraft', 'The Detroit Pistons select Ausar Thompson with the #5 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/jrQrWfyk44s/hqdefault.jpg', '2023-06-23 00:53:46'),
(10, 11, 'https://www.youtube.com/watch?v=_QZGbTSjXvo', 'Amen Thompson Goes #4 Overall In The 2023 #NBADraft', 'The Houston Rockets select Amen Thompson with the #4 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/_QZGbTSjXvo/hqdefault.jpg', '2023-06-23 00:45:37'),
(11, 11, 'https://www.youtube.com/watch?v=9gNUXmSfyh4', 'Scoot Henderson Goes #3 Overall In The 2023 #NBADraft', 'The Portland Trail Blazers select Scoot Henderson with the #3 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/9gNUXmSfyh4/hqdefault.jpg', '2023-06-23 00:33:35'),
(12, 11, 'https://www.youtube.com/watch?v=O8JMaE09iyk', 'Brandon Miller Goes #2 Overall In The 2023 #NBADraft', 'The Charlotte Hornets select Brandon Miller with the #2 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/O8JMaE09iyk/hqdefault.jpg', '2023-06-23 00:31:45'),
(13, 11, 'https://www.youtube.com/watch?v=5MPSFthKI-I', 'Victor Wembanyama Goes #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/5MPSFthKI-I/hqdefault.jpg', '2023-06-23 00:30:26'),
(14, 11, 'https://www.youtube.com/watch?v=XNPfly4TtaE', 'Victor Wembanyama Interview After Being Selected #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/XNPfly4TtaE/hqdefault.jpg', '2023-06-23 00:29:12'),
(15, 11, 'https://www.youtube.com/watch?v=uD_b5bGW7Is', 'Victor Wembanyama&#39;s FULL NBA Draft Presser', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/uD_b5bGW7Is/hqdefault.jpg', '2023-06-21 23:13:44'),
(16, 11, 'https://www.youtube.com/watch?v=xOblqpVoREc', '20 Questions with the Class of 2023 presented by Starry', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/xOblqpVoREc/hqdefault.jpg', '2023-06-21 22:46:47'),
(17, 11, 'https://www.youtube.com/watch?v=E5NQqWHqVKo', 'Victor Wembanyama Answers 20 Questions | Presented by Starry', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/E5NQqWHqVKo/hqdefault.jpg', '2023-06-21 22:37:42'),
(18, 11, 'https://www.youtube.com/watch?v=BJFfEDvSY1Y', 'Scoot Henderson Answers 20 Questions | Presented by Starry', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/BJFfEDvSY1Y/hqdefault.jpg', '2023-06-21 21:47:16'),
(19, 11, 'https://www.youtube.com/watch?v=I9VmUVuegiE', '2023 Draft Prospects React to the 2003 Draft Class Suits!', 'Description: Take a look at the 2023 Draft prospects talk about the suits from the 2003 draft class! Never miss a moment with the ...', 'https://i.ytimg.com/vi/I9VmUVuegiE/hqdefault.jpg', '2023-06-21 15:15:35'),
(20, 11, 'https://www.youtube.com/watch?v=fxnwZJrbGgQ', 'Top Rookie Year Plays of the 2003 NBA Draft Class!', 'Take a look at some great rookie plays from the members of the 2003 NBA Draft Class!', 'https://i.ytimg.com/vi/fxnwZJrbGgQ/hqdefault.jpg', '2023-06-21 15:12:11'),
(21, 11, 'https://www.youtube.com/watch?v=skRgE4OR3Lw', 'Amen Thompson, Anthony Black, Emoni Bates &amp; More Talk Favorite Players Growing Up!', 'Listen in as some of the draft prospects discuss who their favorite player was growing up! Never miss a moment with the latest ...', 'https://i.ytimg.com/vi/skRgE4OR3Lw/hqdefault.jpg', '2023-06-20 20:55:32'),
(22, 11, 'https://www.youtube.com/watch?v=dM14pSLi3TI', 'Ausar Thompson, Anthony Black, Amari Bailey &amp; More Give Their NBA Player Comparisons!', 'Ausar Thompson, Anthony Black, Amari Bailey & More Give Their NBA Player Comparisons Ahead of the 2023 #NBADraft ...', 'https://i.ytimg.com/vi/dM14pSLi3TI/hqdefault.jpg', '2023-06-20 16:34:53'),
(23, 11, 'https://www.youtube.com/watch?v=diw5nDVEx54', '1 Hour of the Top Plays of the 2022-23 NBA Playoffs', 'Check out some of the best plays from the 2023 NBA Postseason! Never miss a moment with the latest news, trending stories and ...', 'https://i.ytimg.com/vi/diw5nDVEx54/hqdefault.jpg', '2023-06-18 17:00:08'),
(24, 11, 'https://www.youtube.com/watch?v=MO8Xpiy6rZ8', '1 Hour of Nikola Jokic&#39;s BEST Moments of the 2022-23 NBA Season 🏆', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/MO8Xpiy6rZ8/hqdefault.jpg', '2023-06-18 15:00:13'),
(25, 11, 'https://www.youtube.com/watch?v=MlY_OkMI1m8', '2023 NBA Finals | #CHASINGHISTORY | MINI-MOVIE 🏆', 'Check out the story of how the Denver Nuggets captured their first NBA title in the 2023 #NBAFinals. Never miss a moment with ...', 'https://i.ytimg.com/vi/MlY_OkMI1m8/hqdefault.jpg', '2023-06-17 23:00:08'),
(26, 11, 'https://www.youtube.com/watch?v=vQcS0rELI7c', 'Most Exciting Defensive Plays of the NBA Playoffs!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/vQcS0rELI7c/hqdefault.jpg', '2023-06-17 20:00:20'),
(27, 11, 'https://www.youtube.com/watch?v=cbNI9ILRSuY', 'The Most Exciting Handle Moments of the 2023 NBA Playoffs!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cbNI9ILRSuY/hqdefault.jpg', '2023-06-17 20:00:09'),
(28, 11, 'https://www.youtube.com/watch?v=J9qlPIzVIWQ', 'The Most ELECTRIC Crowd Moments of the 2023 NBA Playoffs!', 'Check out the LOUDEST Crowd Moments of the 2023 NBA Playoffs! Never miss a moment with the latest news, trending stories ...', 'https://i.ytimg.com/vi/J9qlPIzVIWQ/hqdefault.jpg', '2023-06-17 15:00:12'),
(29, 11, 'https://www.youtube.com/watch?v=guJuSlTDeEA', '1 Hour of Victor Wembanyama&#39;s Best Plays of the Season!', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/guJuSlTDeEA/hqdefault.jpg', '2023-06-17 13:40:03'),
(30, 11, 'https://www.youtube.com/watch?v=z9lkmuJaHzg', '30 Minutes of the BEST Dunks of the 2023 NBA Playoffs!', '30 Minutes of the BEST Dunks of the 2023 NBA Playoffs! Never miss a moment with the latest news, trending stories and ...', 'https://i.ytimg.com/vi/z9lkmuJaHzg/hqdefault.jpg', '2023-06-16 21:00:35'),
(31, 11, 'https://www.youtube.com/watch?v=ucZZdf94LbI', '#8 HEAT at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | June 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ucZZdf94LbI/hqdefault.jpg', '2023-06-13 03:16:57'),
(32, 11, 'https://www.youtube.com/watch?v=VDFrLb_hOvQ', '#1 NUGGETS at #7 LAKERS | FULL GAME 3 HIGHLIGHTS | May 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VDFrLb_hOvQ/hqdefault.jpg', '2023-05-21 03:15:06'),
(33, 11, 'https://www.youtube.com/watch?v=ju40vYNp0Uc', '#7 LAKERS at #1 NUGGETS | FULL GAME 1 HIGHLIGHTS | May 16, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ju40vYNp0Uc/hqdefault.jpg', '2023-05-17 03:33:43'),
(34, 11, 'https://www.youtube.com/watch?v=HJJEfn0-idU', '#6 WARRIORS at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | May 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/HJJEfn0-idU/hqdefault.jpg', '2023-05-13 04:54:48'),
(35, 11, 'https://www.youtube.com/watch?v=zitBEGqiRCY', 'NBA&#39;s Top 5 Plays Of The Night | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zitBEGqiRCY/hqdefault.jpg', '2023-05-12 05:54:38'),
(36, 11, 'https://www.youtube.com/watch?v=oTufGVSzbKk', '#1 NUGGETS at #4 SUNS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/oTufGVSzbKk/hqdefault.jpg', '2023-05-12 04:52:52'),
(37, 11, 'https://www.youtube.com/watch?v=rMQC1BY53tI', '#2 CELTICS at #3 76ERS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/rMQC1BY53tI/hqdefault.jpg', '2023-05-12 02:21:40'),
(38, 11, 'https://www.youtube.com/watch?v=zi1H-Ye5WeQ', '#8 HEAT at #5 KNICKS | FULL GAME 5 HIGHLIGHTS | May 10, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/zi1H-Ye5WeQ/hqdefault.jpg', '2023-05-11 02:16:04'),
(39, 11, 'https://www.youtube.com/watch?v=P2RVD7-ReFU', 'NBA&#39;s Top 10 Plays Of The Night | May 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/P2RVD7-ReFU/hqdefault.jpg', '2023-05-10 06:30:38'),
(40, 11, 'https://www.youtube.com/watch?v=y7hNE3MW81A', '#1 NUGGETS at #4 SUNS | FULL GAME 4 HIGHLIGHTS | May 7, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/y7hNE3MW81A/hqdefault.jpg', '2023-05-08 02:38:17'),
(41, 11, 'https://www.youtube.com/watch?v=ktIWbf2YsO8', '#5 KNICKS at #8 HEAT | FULL GAME 3 HIGHLIGHTS | May 6, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ktIWbf2YsO8/hqdefault.jpg', '2023-05-06 22:28:11'),
(42, 11, 'https://www.youtube.com/watch?v=9hTzs3II9dw', '#2 CELTICS at #3 76ERS  | FULL GAME 2 HIGHLIGHTS | May 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/9hTzs3II9dw/hqdefault.jpg', '2023-05-06 02:26:30'),
(43, 11, 'https://www.youtube.com/watch?v=mm3zGvpfwmg', '#3 76ERS at #2 CELTICS | FULL GAME 2 HIGHLIGHTS | May 3, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/mm3zGvpfwmg/hqdefault.jpg', '2023-05-04 02:31:24'),
(44, 11, 'https://www.youtube.com/watch?v=9EOC_596j_M', 'Final 2:56 WILD ENDING #7 Lakers vs #6 Warriors - Game 1! | May 2, 2023', 'Led by Anthony Davis\'s 30 points and 23 rebounds, the No. 7 seed Los Angeles Lakers defeat the No. 6 seed Golden State ...', 'https://i.ytimg.com/vi/9EOC_596j_M/hqdefault.jpg', '2023-05-03 04:54:54'),
(45, 11, 'https://www.youtube.com/watch?v=p6o3YK0azCQ', '#7 LAKERS at #6 WARRIORS | FULL GAME 1 HIGHLIGHTS | May 2, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/p6o3YK0azCQ/hqdefault.jpg', '2023-05-03 04:54:19'),
(46, 11, 'https://www.youtube.com/watch?v=V4jHOxR8u0c', 'Final 2:40 WILD ENDING #8 HEAT vs #5 KNICKS - Game 2! | May 2, 2023', 'Led by Jalen Brunson\'s 30 points, 5 rebounds and 6 3pt. FG, the No. 5 seed New York Knicks defeat the No. 8 seed Miami Heat in ...', 'https://i.ytimg.com/vi/V4jHOxR8u0c/hqdefault.jpg', '2023-05-03 02:25:33'),
(47, 11, 'https://www.youtube.com/watch?v=WPLmAQFyVIA', 'Final 6:10 of Game 7 of the 2016 NBA Finals (Extended Version)', 'Ahead of LeBron & Warriors meeting up again, we flashback to the final minutes of Game 7 of the NBA Finals where 2 of the best ...', 'https://i.ytimg.com/vi/WPLmAQFyVIA/hqdefault.jpg', '2023-05-02 16:00:17'),
(48, 11, 'https://www.youtube.com/watch?v=5eHJIpj8fl8', '#4 SUNS at #1 NUGGETS | FULL GAME 2 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/5eHJIpj8fl8/hqdefault.jpg', '2023-05-02 04:35:39'),
(49, 11, 'https://www.youtube.com/watch?v=hiPv0MPRfcw', 'Final 2:46 WILD ENDING #3 76ERS vs #2 CELTICS - Game 1! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/hiPv0MPRfcw/hqdefault.jpg', '2023-05-02 02:14:52'),
(50, 11, 'https://www.youtube.com/watch?v=G2Vdw9flATQ', '#3 76ERS at #2 CELTICS | FULL GAME 1 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/G2Vdw9flATQ/hqdefault.jpg', '2023-05-02 02:04:55'),
(51, 11, 'https://www.youtube.com/watch?v=sL8jjviszm8', 'James Harden Ties PLAYOFF CAREER-HIGH 45 Points In 76ers Game 1 W! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/sL8jjviszm8/hqdefault.jpg', '2023-05-02 02:00:06'),
(52, 11, 'https://www.youtube.com/watch?v=aQqqPeYqjsw', 'STEPH CURRYS CAREER BEST PLAYOFF PERFORMANCES 🔥', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/aQqqPeYqjsw/hqdefault.jpg', '2023-05-01 01:04:06'),
(53, 11, 'https://www.youtube.com/watch?v=bissN6MzK1I', '#8 HEAT at #5 KNICKS | FULL GAME 1 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/bissN6MzK1I/hqdefault.jpg', '2023-04-30 19:43:15'),
(54, 11, 'https://www.youtube.com/watch?v=Q-fdOHSMk_Y', '#2 GRIZZLIES at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | April 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Q-fdOHSMk_Y/hqdefault.jpg', '2023-04-29 05:17:56'),
(55, 11, 'https://www.youtube.com/watch?v=imR3k4jog4U', '#8 HEAT at #1 BUCKS | FULL GAME 5 HIGHLIGHTS | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/imR3k4jog4U/hqdefault.jpg', '2023-04-27 05:01:16'),
(56, 11, 'https://www.youtube.com/watch?v=R0d-PK1iI8U', 'Final 3:13 INSANE End of Regulation Heat vs Bucks Game 5 UNCUT | April 26, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/R0d-PK1iI8U/hqdefault.jpg', '2023-04-27 04:25:59'),
(57, 11, 'https://www.youtube.com/watch?v=nOyVgk4Jgjo', '#8 TIMBERWOLVES at #1 NUGGETS | FULL GAME 5 HIGHLIGHTS | April 25, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/nOyVgk4Jgjo/hqdefault.jpg', '2023-04-26 03:59:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD CONSTRAINT `youtube_channel_videos_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `youtube_channels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
