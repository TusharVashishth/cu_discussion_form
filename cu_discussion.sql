-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 08:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cu_discussion`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 19, '<p>Good&nbsp;<strong>To see you bro</strong></p>', '2022-05-23 11:15:06', '2022-05-23 11:15:06'),
(2, 1, 19, '<p><strong>Hello Bro How are you&nbsp;</strong></p>\n\n<ul>\n	<li><strong>Good To see you&nbsp;</strong></li>\n</ul>', '2022-05-23 11:32:30', '2022-05-23 11:32:30'),
(3, 1, 19, '<p><strong>Good To see you gues . You can add that</strong></p>', '2022-05-23 11:36:16', '2022-05-23 11:36:16'),
(4, 1, 19, '<p><strong>In&nbsp;<em>My way you can add this&nbsp;</em></strong></p>', '2022-05-23 11:37:32', '2022-05-23 11:37:32'),
(5, 1, 19, '<p><em>I am Good&nbsp;<strong>How our you bro&nbsp;</strong></em></p>', '2022-05-23 11:38:52', '2022-05-23 11:38:52'),
(6, 3, 19, '<p>Hi Ruchita , Right now we don&#39;t have any info from the clg . when we have&nbsp;</p>', '2022-05-23 11:53:38', '2022-05-23 11:53:38'),
(7, 3, 19, '<p>Hey you can do alternative also&nbsp;</p>', '2022-05-29 04:18:13', '2022-05-29 04:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_05_19_142951_create_posts_table', 2),
(5, '2022_05_19_143734_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 19, 'Good To see you bro', '<p><strong>Hello Bro I am doing great How are you</strong></p>', '1653069114.jpg', '2022-05-20 12:21:54', '2022-05-20 12:21:54'),
(2, 19, 'Aother post', '<p>Tusha&nbsp;</p>\r\n\r\n<ul>\r\n	<li>tyt</li>\r\n	<li>wqwq</li>\r\n	<li>wqwq</li>\r\n	<li>wqwq</li>\r\n	<li>wqw</li>\r\n	<li>wqwq</li>\r\n</ul>', '1653070724.png', '2022-05-20 12:48:44', '2022-05-20 12:48:44'),
(3, 20, 'Need to know where is exam', '<p><strong>Hello Guys I want to know when we will get our result</strong></p>', NULL, '2022-05-23 11:50:24', '2022-05-23 11:50:24'),
(4, 19, 'Hey Bro I am doing Great', '<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus<strong>. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</strong> Nulla quis lorem ut libero malesuada feugiat.Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.</p>', '1653817730.png', '2022-05-29 04:18:50', '2022-05-29 04:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `uuid`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Himanshu Sikka', 'D21MCA16002@cuchd.in', 'd21mca16002', NULL, '2022-05-19 08:57:16', NULL),
(2, 'Naina .', 'D21MCA16003@cuchd.in', 'd21mca16003', NULL, '2022-05-19 08:57:16', NULL),
(3, 'Sonu Kumar', 'D21MCA16004@cuchd.in', 'd21mca16004', NULL, '2022-05-19 08:57:16', NULL),
(4, 'Vanika Kamboj', 'D21MCA16005@cuchd.in', 'd21mca16005', NULL, '2022-05-19 08:57:16', NULL),
(5, 'Ravi Sharma', 'D21MCA16006@cuchd.in', 'd21mca16006', NULL, '2022-05-19 08:57:16', NULL),
(6, 'Vrinda Khurana', 'D21MCA16007@cuchd.in', 'd21mca16007', NULL, '2022-05-19 08:57:16', NULL),
(7, 'Debabrata Sarkar', 'D21MCA16008@cuchd.in', 'd21mca16008', NULL, '2022-05-19 08:57:16', NULL),
(8, 'Suraj Kumar', 'D21MCA16009@cuchd.in', 'd21mca16009', NULL, '2022-05-19 08:57:16', NULL),
(9, 'Kulbir Singh', 'D21MCA16010@cuchd.in', 'd21mca16010', NULL, '2022-05-19 08:57:16', NULL),
(10, 'Anjali .', 'D21MCA16011@cuchd.in', 'd21mca16011', NULL, '2022-05-19 08:57:16', NULL),
(11, 'Samanway Koley', 'D21MCA16012@cuchd.in', 'd21mca16012', NULL, '2022-05-19 08:57:16', NULL),
(12, 'Jaskaranbir Singh', 'D21MCA16013@cuchd.in', 'd21mca16013', NULL, '2022-05-19 08:57:16', NULL),
(13, 'Suniti Papneja', 'D21MCA16014@cuchd.in', 'd21mca16014', NULL, '2022-05-19 08:57:16', NULL),
(14, 'Harpreet Singh', 'D21MCA16015@cuchd.in', 'd21mca16015', NULL, '2022-05-19 08:57:16', NULL),
(15, 'Abhilasha Sharma', 'D21MCA16016@cuchd.in', 'd21mca16016', NULL, '2022-05-19 08:57:16', NULL),
(16, 'Kishan Kumar', 'D21MCA16017@cuchd.in', 'd21mca16017', NULL, '2022-05-19 08:57:16', NULL),
(17, 'Ravi Singh', 'D21MCA16018@cuchd.in', 'd21mca16018', NULL, '2022-05-19 08:57:16', NULL),
(18, 'Sheetal Sharma', 'D21MCA16019@cuchd.in', 'd21mca16019', NULL, '2022-05-19 08:57:16', NULL),
(19, 'Tushar .', 'D21MCA16020@cuchd.in', 'd21mca16020', NULL, '2022-05-19 08:57:16', NULL),
(20, 'Ruchita Dave', 'D21MCA16021@cuchd.in', 'd21mca16021', NULL, '2022-05-19 08:57:16', NULL),
(21, 'Arushi Dutt', 'D21MCA16022@cuchd.in', 'd21mca16022', NULL, '2022-05-19 08:57:16', NULL),
(22, 'Avinash Pandey', 'D21MCA16023@cuchd.in', 'd21mca16023', NULL, '2022-05-19 08:57:16', NULL),
(23, 'Gurpreet Singh', 'D21MCA16024@cuchd.in', 'd21mca16024', NULL, '2022-05-19 08:57:16', NULL),
(24, 'Anish Raheja', 'D21MCA16025@cuchd.in', 'd21mca16025', NULL, '2022-05-19 08:57:16', NULL),
(25, 'Chainchal Rani', 'D21MCA16026@cuchd.in', 'd21mca16026', NULL, '2022-05-19 08:57:16', NULL),
(26, 'Aarzoo Gaur', 'D21MCA16027@cuchd.in', 'd21mca16027', NULL, '2022-05-19 08:57:16', NULL),
(27, 'Papan Chakraborty', 'D21MCA16028@cuchd.in', 'd21mca16028', NULL, '2022-05-19 08:57:16', NULL),
(28, 'Vishwajit Kumar', 'D21MCA16029@cuchd.in', 'd21mca16029', NULL, '2022-05-19 08:57:16', NULL),
(29, 'Sonu Pal', 'D21MCA16030@cuchd.in', 'd21mca16030', NULL, '2022-05-19 08:57:16', NULL),
(30, 'Sonu Raj', 'D21MCA16031@cuchd.in', 'd21mca16031', NULL, '2022-05-19 08:57:16', NULL),
(31, 'Yash Aggarwal', 'D21MCA16032@cuchd.in', 'd21mca16032', NULL, '2022-05-19 08:57:16', NULL),
(32, 'Madhuri .', 'D21MCA16033@cuchd.in', 'd21mca16033', NULL, '2022-05-19 08:57:16', NULL),
(33, 'Gourav Kumar', 'D21MCA16034@cuchd.in', 'd21mca16034', NULL, '2022-05-19 08:57:16', NULL),
(34, 'Kanchan Yadav', 'D21MCA16035@cuchd.in', 'd21mca16035', NULL, '2022-05-19 08:57:16', NULL),
(35, 'Sooryapriya T V', 'D21MCA16036@cuchd.in', 'd21mca16036', NULL, '2022-05-19 08:57:16', NULL),
(36, 'Rahul Sharma', 'D21MCA16037@cuchd.in', 'd21mca16037', NULL, '2022-05-19 08:57:16', NULL),
(37, 'Vidya Ratan', 'D21MCA16038@cuchd.in', 'd21mca16038', NULL, '2022-05-19 08:57:16', NULL),
(38, 'Simanchal Nayak', 'D21MCA16039@cuchd.in', 'd21mca16039', NULL, '2022-05-19 08:57:16', NULL),
(39, 'Ankit Arora', 'D21MCA16040@cuchd.in', 'd21mca16040', NULL, '2022-05-19 08:57:16', NULL),
(40, 'Maninder Singh', 'D21MCA16041@cuchd.in', 'd21mca16041', NULL, '2022-05-19 08:57:16', NULL),
(41, 'Bhumika Sharma', 'D21MCA16042@cuchd.in', 'd21mca16042', NULL, '2022-05-19 08:57:16', NULL),
(42, 'Abhishek Srivastava', 'D21MCA16043@cuchd.in', 'd21mca16043', NULL, '2022-05-19 08:57:16', NULL),
(43, 'Kanishk Aggarwal', 'D21MCA16044@cuchd.in', 'd21mca16044', NULL, '2022-05-19 08:57:16', NULL),
(44, 'Sandeep Singh', 'D21MCA16046@cuchd.in', 'd21mca16046', NULL, '2022-05-19 08:57:16', NULL),
(45, 'Vaishali Patel', 'D21MCA16048@cuchd.in', 'd21mca16048', NULL, '2022-05-19 08:57:16', NULL),
(46, 'Shashwat Sharma', 'D21MCA16049@cuchd.in', 'd21mca16049', NULL, '2022-05-19 08:57:16', NULL),
(47, 'Gursimran Shah', 'D21MCA16050@cuchd.in', 'd21mca16050', NULL, '2022-05-19 08:57:16', NULL),
(48, 'Udit Arora', 'D21MCA16051@cuchd.in', 'd21mca16051', NULL, '2022-05-19 08:57:16', NULL),
(49, 'Shivam Tyagi', 'D21MCA16052@cuchd.in', 'd21mca16052', NULL, '2022-05-19 08:57:16', NULL),
(50, 'twinkle agrawal', 'D21MCA16053@cuchd.in', 'd21mca16053', NULL, '2022-05-19 08:57:16', NULL),
(51, 'Yogesh Kumar', 'D21MCA16054@cuchd.in', 'd21mca16054', NULL, '2022-05-19 08:57:16', NULL),
(52, 'Anurag Singh', 'D21MCA16055@cuchd.in', 'd21mca16055', NULL, '2022-05-19 08:57:16', NULL),
(53, 'Bhoomika Behl', 'D21MCA16056@cuchd.in', 'd21mca16056', NULL, '2022-05-19 08:57:16', NULL),
(54, 'Leeza .', 'D21MCA16057@cuchd.in', 'd21mca16057', NULL, '2022-05-19 08:57:16', NULL),
(55, 'Jyotika Sharma', 'D21MCA16059@cuchd.in', 'd21mca16059', NULL, '2022-05-19 08:57:16', NULL),
(56, 'Devesh Chattani', 'D21MCA16060@cuchd.in', 'd21mca16060', NULL, '2022-05-19 08:57:16', NULL),
(57, 'Sukhleen Kaur', 'D21MCA16061@cuchd.in', 'd21mca16061', NULL, '2022-05-19 08:57:16', NULL),
(58, 'Vanshika .', 'D21MCA16062@cuchd.in', 'd21mca16062', NULL, '2022-05-19 08:57:16', NULL),
(59, 'Muskan Rajput', 'D21MCA16064@cuchd.in', 'd21mca16064', NULL, '2022-05-19 08:57:16', NULL),
(60, 'Lokajita Saravanan', 'D21MCA16065@cuchd.in', 'd21mca16065', NULL, '2022-05-19 08:57:16', NULL),
(61, 'Mayank Joshi', 'D21MCA16066@cuchd.in', 'd21mca16066', NULL, '2022-05-19 08:57:16', NULL),
(62, 'Ali .', 'D21MCA16067@cuchd.in', 'd21mca16067', NULL, '2022-05-19 08:57:16', NULL),
(63, 'Ahamed .', 'D21MCA16068@cuchd.in', 'd21mca16068', NULL, '2022-05-19 08:57:16', NULL),
(64, 'Mainak .', 'D21MCA16069@cuchd.in', 'd21mca16069', NULL, '2022-05-19 08:57:16', NULL),
(65, 'Kunal Sinha', 'D21MCA16071@cuchd.in', 'd21mca16071', NULL, '2022-05-19 08:57:16', NULL),
(66, 'Jain .', 'D21MCA16072@cuchd.in', 'd21mca16072', NULL, '2022-05-19 08:57:16', NULL),
(67, 'Ashish Shishodia', 'D21MCA16073@cuchd.in', 'd21mca16073', NULL, '2022-05-19 08:57:16', NULL),
(68, 'Srinivas Krovvidi', 'D21MCA16075@cuchd.in', 'd21mca16075', NULL, '2022-05-19 08:57:16', NULL),
(69, 'Gautam Das', 'D21MCA16076@cuchd.in', 'd21mca16076', NULL, '2022-05-19 08:57:16', NULL),
(70, 'Indrani Ghosh', 'D21MCA16077@cuchd.in', 'd21mca16077', NULL, '2022-05-19 08:57:16', NULL),
(71, 'Shruti Bhardwaj', 'D21MCA16078@cuchd.in', 'd21mca16078', NULL, '2022-05-19 08:57:16', NULL),
(72, 'Hitesh Goswami', 'D21MCA16079@cuchd.in', 'd21mca16079', NULL, '2022-05-19 08:57:16', NULL),
(73, 'Bediya .', 'D21MCA16080@cuchd.in', 'd21mca16080', NULL, '2022-05-19 08:57:16', NULL),
(74, 'Jeewan .', 'D21MCA16081@cuchd.in', 'd21mca16081', NULL, '2022-05-19 08:57:16', NULL),
(75, 'Rakesh Shejwalkar', 'D21MCA16082@cuchd.in', 'd21mca16082', NULL, '2022-05-19 08:57:16', NULL),
(76, 'Sanjay Sharma', 'D21MCA16083@cuchd.in', 'd21mca16083', NULL, '2022-05-19 08:57:16', NULL),
(77, 'Zinathasmee Sayyad', 'D21MCA16084@cuchd.in', 'd21mca16084', NULL, '2022-05-19 08:57:16', NULL),
(78, 'K Rajasekhara', 'D21MCA16085@cuchd.in', 'd21mca16085', NULL, '2022-05-19 08:57:16', NULL),
(79, 'Ravinder Singh', 'D21MCA16086@cuchd.in', 'd21mca16086', NULL, '2022-05-19 08:57:16', NULL),
(80, 'Bhuvnesh Sukhija', 'D21MCA16087@cuchd.in', 'd21mca16087', NULL, '2022-05-19 08:57:16', NULL),
(81, 'Aameen Lakhanpal', 'D21MCA16088@cuchd.in', 'd21mca16088', NULL, '2022-05-19 08:57:16', NULL),
(82, 'Dhruv Bhatt', 'D21MCA16089@cuchd.in', 'd21mca16089', NULL, '2022-05-19 08:57:16', NULL),
(83, 'Pallavi Kar', 'D21MCA16090@cuchd.in', 'd21mca16090', NULL, '2022-05-19 08:57:16', NULL),
(84, 'Gaurav Kumar', 'D21MCA16091@cuchd.in', 'd21mca16091', NULL, '2022-05-19 08:57:16', NULL),
(85, 'Subhash Chand', 'D21MCA16092@cuchd.in', 'd21mca16092', NULL, '2022-05-19 08:57:16', NULL),
(86, 'Anand Kumar', 'D21MCA16093@cuchd.in', 'd21mca16093', NULL, '2022-05-19 08:57:16', NULL),
(87, 'Garima Chhikara', 'D21MCA16094@cuchd.in', 'd21mca16094', NULL, '2022-05-19 08:57:16', NULL),
(88, 'Ayush Mishra', 'D21MCA16095@cuchd.in', 'd21mca16095', NULL, '2022-05-19 08:57:16', NULL),
(89, 'Rajesh Dubey', 'D21MCA16096@cuchd.in', 'd21mca16096', NULL, '2022-05-19 08:57:16', NULL),
(90, 'Prakriti Anand', 'D21MCA16097@cuchd.in', 'd21mca16097', NULL, '2022-05-19 08:57:16', NULL),
(91, 'Rupesh Kumar', 'D21MCA16098@cuchd.in', 'd21mca16098', NULL, '2022-05-19 08:57:16', NULL),
(92, 'Sabhadiya Ankitkumar', 'D21MCA16100@cuchd.in', 'd21mca16100', NULL, '2022-05-19 08:57:16', NULL),
(93, 'Harpreet Singh', 'D21MCA16101@cuchd.in', 'd21mca16101', NULL, '2022-05-19 08:57:16', NULL),
(94, 'Sunny Bhardwaj', 'D21MCA16102@cuchd.in', 'd21mca16102', NULL, '2022-05-19 08:57:16', NULL),
(95, 'Himani .', 'D21MCA16103@cuchd.in', 'd21mca16103', NULL, '2022-05-19 08:57:16', NULL),
(96, 'Pragya Mishra', 'D21MCA16104@cuchd.in', 'd21mca16104', NULL, '2022-05-19 08:57:16', NULL),
(97, 'Ritika .', 'D21MCA16105@cuchd.in', 'd21mca16105', NULL, '2022-05-19 08:57:16', NULL),
(98, 'Jai Sahni', 'D21MCA16106@cuchd.in', 'd21mca16106', NULL, '2022-05-19 08:57:16', NULL),
(99, 'Shazan Askari', 'D21MCA16107@cuchd.in', 'd21mca16107', NULL, '2022-05-19 08:57:16', NULL),
(100, 'Tripti Suman', 'D21MCA16108@cuchd.in', 'd21mca16108', NULL, '2022-05-19 08:57:16', NULL),
(101, 'Shivam Singla', 'D21MCA16109@cuchd.in', 'd21mca16109', NULL, '2022-05-19 08:57:16', NULL),
(102, 'Bhuvan Bajaj', 'D21MCA16110@cuchd.in', 'd21mca16110', NULL, '2022-05-19 08:57:16', NULL),
(103, 'Saurav Prasad', 'D21MCA16111@cuchd.in', 'd21mca16111', NULL, '2022-05-19 08:57:16', NULL),
(104, 'Ginjupalli Neha', 'D21MCA16112@cuchd.in', 'd21mca16112', NULL, '2022-05-19 08:57:16', NULL),
(105, 'Shivam Kumar', 'D21MCA16113@cuchd.in', 'd21mca16113', NULL, '2022-05-19 08:57:16', NULL),
(106, 'Jyotiprakash Rout', 'D21MCA16115@cuchd.in', 'd21mca16115', NULL, '2022-05-19 08:57:16', NULL),
(107, 'Subhadip Mitra', 'D21MCA16116@cuchd.in', 'd21mca16116', NULL, '2022-05-19 08:57:16', NULL),
(108, 'Raj Gaurav', 'D21MCA16117@cuchd.in', 'd21mca16117', NULL, '2022-05-19 08:57:16', NULL),
(109, 'Divya .', 'D21MCA16118@cuchd.in', 'd21mca16118', NULL, '2022-05-19 08:57:16', NULL),
(110, 'Naveen Kumar', 'D21MCA16119@cuchd.in', 'd21mca16119', NULL, '2022-05-19 08:57:16', NULL),
(111, 'Ankit Jangid', 'D21MCA16120@cuchd.in', 'd21mca16120', NULL, '2022-05-19 08:57:16', NULL),
(112, 'Yadav Pooja', 'D21MCA16121@cuchd.in', 'd21mca16121', NULL, '2022-05-19 08:57:16', NULL),
(113, 'Manpreet Kaur', 'D21MCA16122@cuchd.in', 'd21mca16122', NULL, '2022-05-19 08:57:16', NULL),
(114, 'Renu .', 'D21MCA16123@cuchd.in', 'd21mca16123', NULL, '2022-05-19 08:57:16', NULL),
(115, 'Abhilasha Kumari', 'D21MCA16124@cuchd.in', 'd21mca16124', NULL, '2022-05-19 08:57:16', NULL),
(116, 'Tinku Sharma', 'D21MCA16125@cuchd.in', 'd21mca16125', NULL, '2022-05-19 08:57:16', NULL),
(117, 'Shruti Mondeala', 'D21MCA16126@cuchd.in', 'd21mca16126', NULL, '2022-05-19 08:57:16', NULL),
(118, 'Deepika Rathee', 'D21MCA16129@cuchd.in', 'd21mca16129', NULL, '2022-05-19 08:57:16', NULL),
(119, 'Anu Bala', 'D21MCA16130@cuchd.in', 'd21mca16130', NULL, '2022-05-19 08:57:16', NULL),
(120, 'Dipanjoy Deb', 'D21MCA16131@cuchd.in', 'd21mca16131', NULL, '2022-05-19 08:57:16', NULL),
(121, 'Anjali .', 'D21MCA16132@cuchd.in', 'd21mca16132', NULL, '2022-05-19 08:57:16', NULL),
(122, 'Parminder Singh', 'D21MCA16133@cuchd.in', 'd21mca16133', NULL, '2022-05-19 08:57:16', NULL),
(123, 'Sanjay Kumar', 'D21MCA16134@cuchd.in', 'd21mca16134', NULL, '2022-05-19 08:57:16', NULL),
(124, 'Manpreet Kaur', 'D21MCA16135@cuchd.in', 'd21mca16135', NULL, '2022-05-19 08:57:16', NULL),
(125, 'Deepshikha Ghosh', 'D21MCA16136@cuchd.in', 'd21mca16136', NULL, '2022-05-19 08:57:16', NULL),
(126, 'Sunil Jaisinghani', 'D21MCA16139@cuchd.in', 'd21mca16139', NULL, '2022-05-19 08:57:16', NULL),
(127, 'Mayank Pratap', 'D21MCA16140@cuchd.in', 'd21mca16140', NULL, '2022-05-19 08:57:16', NULL),
(128, 'Sahil .', 'D21MCA16141@cuchd.in', 'd21mca16141', NULL, '2022-05-19 08:57:16', NULL),
(129, 'Vikram Singh', 'D21MCA16142@cuchd.in', 'd21mca16142', NULL, '2022-05-19 08:57:16', NULL),
(130, 'Pankaj Kumar', 'D21MCA16143@cuchd.in', 'd21mca16143', NULL, '2022-05-19 08:57:16', NULL),
(131, 'Anand Vardhan', 'D21MCA16144@cuchd.in', 'd21mca16144', NULL, '2022-05-19 08:57:16', NULL),
(132, 'Yash Gupta', 'D21MCA16145@cuchd.in', 'd21mca16145', NULL, '2022-05-19 08:57:16', NULL),
(133, 'Mohammad Raheemullah', 'D21MCA16146@cuchd.in', 'd21mca16146', NULL, '2022-05-19 08:57:16', NULL),
(134, 'Barsha Mohapatra', 'D21MCA16148@cuchd.in', 'd21mca16148', NULL, '2022-05-19 08:57:16', NULL),
(135, 'Vishal Kapoor', 'D21MCA16149@cuchd.in', 'd21mca16149', NULL, '2022-05-19 08:57:16', NULL),
(136, 'Ashutosh Kumar', 'D21MCA16150@cuchd.in', 'd21mca16150', NULL, '2022-05-19 08:57:16', NULL),
(137, 'D Akhil', 'D21MCA16151@cuchd.in', 'd21mca16151', NULL, '2022-05-19 08:57:16', NULL),
(138, 'Anshul Siwach', 'D21MCA16152@cuchd.in', 'd21mca16152', NULL, '2022-05-19 08:57:16', NULL),
(139, 'Abhishek Sharma', 'D21MCA16153@cuchd.in', 'd21mca16153', NULL, '2022-05-19 08:57:16', NULL),
(140, 'Pooja Batra', 'D21MCA16154@cuchd.in', 'd21mca16154', NULL, '2022-05-19 08:57:16', NULL),
(141, 'Ankit Kumar', 'D21MCA16155@cuchd.in', 'd21mca16155', NULL, '2022-05-19 08:57:16', NULL),
(142, 'Hitesh .', 'D21MCA16156@cuchd.in', 'd21mca16156', NULL, '2022-05-19 08:57:16', NULL),
(143, 'Aman Kumar', 'D21MCA16157@cuchd.in', 'd21mca16157', NULL, '2022-05-19 08:57:16', NULL),
(144, 'Gaurav Batra', 'D21MCA16158@cuchd.in', 'd21mca16158', NULL, '2022-05-19 08:57:16', NULL),
(145, 'Surbhi Sharma', 'D21MCA16159@cuchd.in', 'd21mca16159', NULL, '2022-05-19 08:57:16', NULL),
(146, 'Kavya Agarwal', 'D21MCA16160@cuchd.in', 'd21mca16160', NULL, '2022-05-19 08:57:16', NULL),
(147, 'Ashish Labh', 'D21MCA16161@cuchd.in', 'd21mca16161', NULL, '2022-05-19 08:57:16', NULL),
(148, 'Rohan Singh', 'D21MCA16162@cuchd.in', 'd21mca16162', NULL, '2022-05-19 08:57:16', NULL),
(149, 'Krishno Ghosh', 'D21MCA16163@cuchd.in', 'd21mca16163', NULL, '2022-05-19 08:57:16', NULL),
(150, 'TILAKDHARI SINGH', 'D21MCA16164@cuchd.in', 'd21mca16164', NULL, '2022-05-19 08:57:16', NULL),
(151, 'Chitransh Mathur', 'D21MCA16165@cuchd.in', 'd21mca16165', NULL, '2022-05-19 08:57:16', NULL),
(152, 'Baijayanti Das', 'D21MCA16166@cuchd.in', 'd21mca16166', NULL, '2022-05-19 08:57:16', NULL),
(153, 'Chandan Kumar', 'D21MCA16167@cuchd.in', 'd21mca16167', NULL, '2022-05-19 08:57:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_title_index` (`title`(768));

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_uuid_unique` (`uuid`),
  ADD KEY `users_name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
