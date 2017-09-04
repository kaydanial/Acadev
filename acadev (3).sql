-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 04, 2017 at 04:42 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acadev`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1493516645),
('organizer', '7', 1493516187),
('participant', '11', 1501685682),
('participant', '12', 1501847708),
('participant', '13', 1502614446),
('participant', '14', 1502614459),
('participant', '15', 1502614615),
('participant', '5', 1493214850),
('participant', '6', 1493345503),
('participant', '8', 1494024503);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/default/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/default/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/update', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/menu/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/update', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/permission/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/assign', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/remove', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/update', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/role/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/assign', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/route/remove', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/update', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/rule/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/activate', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/login', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/logout', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/signup', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/admin/user/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/dashboard/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/dashboard/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/debug/default/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/event/*', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/create', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/delete', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/index', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/sub-category', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/update', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/event/view', 2, NULL, NULL, NULL, 1487355989, 1487355989),
('/gii/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/action', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/diff', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/preview', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/gii/default/view', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/my-event/*', 2, NULL, NULL, NULL, 1493538164, 1493538164),
('/my-event/cancel-event', 2, NULL, NULL, NULL, 1493538164, 1493538164),
('/my-event/index', 2, NULL, NULL, NULL, 1493538164, 1493538164),
('/my-event/view-event', 2, NULL, NULL, NULL, 1493538164, 1493538164),
('/my-event/view-speaker', 2, NULL, NULL, NULL, 1493538164, 1493538164),
('/site/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/site/about', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/site/captcha', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/site/contact', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/site/error', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/site/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/speaker/*', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/speaker/create', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/speaker/delete', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/speaker/index', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/speaker/update', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/speaker/view', 2, NULL, NULL, NULL, 1493515951, 1493515951),
('/user/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/block', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/create', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/info', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/switch', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/update', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/profile/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/profile/index', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/profile/show', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/recovery/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/recovery/request', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/registration/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/registration/connect', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/registration/organizer', 2, NULL, NULL, NULL, 1493515941, 1493515941),
('/user/registration/register', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/registration/resend', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/security/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/security/auth', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/security/login', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/security/logout', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/*', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/account', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/delete', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/networks', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('/user/settings/profile', 2, NULL, NULL, NULL, 1487506136, 1487506136),
('admin', 1, 'Administrator', NULL, NULL, 1487506220, 1487506220),
('admin_management', 2, 'Admin management', NULL, NULL, 1487506156, 1487506156),
('create_event', 2, 'Allowed user to create event', NULL, NULL, 1487356008, 1487356008),
('dashboard', 2, 'View dashboard page', NULL, NULL, 1487506197, 1487506197),
('manage_speaker', 2, 'Manage speaker', NULL, NULL, 1493515970, 1493515970),
('manage-joined-event', 2, 'Manage Joined Event', NULL, NULL, 1493538175, 1493538175),
('organizer', 1, 'Manage event', NULL, NULL, NULL, NULL),
('participant', 1, 'Public user, can view event and join event', NULL, NULL, NULL, NULL),
('speakers', 1, 'Speakers', NULL, NULL, 1487355975, 1487355975);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'admin_management'),
('admin', 'dashboard'),
('admin_management', '/admin/*'),
('admin_management', '/admin/assignment/*'),
('admin_management', '/admin/assignment/assign'),
('admin_management', '/admin/assignment/index'),
('admin_management', '/admin/assignment/revoke'),
('admin_management', '/admin/assignment/view'),
('admin_management', '/admin/default/*'),
('admin_management', '/admin/default/index'),
('admin_management', '/admin/menu/*'),
('admin_management', '/admin/menu/create'),
('admin_management', '/admin/menu/delete'),
('admin_management', '/admin/menu/index'),
('admin_management', '/admin/menu/update'),
('admin_management', '/admin/menu/view'),
('admin_management', '/admin/permission/*'),
('admin_management', '/admin/permission/assign'),
('admin_management', '/admin/permission/create'),
('admin_management', '/admin/permission/delete'),
('admin_management', '/admin/permission/index'),
('admin_management', '/admin/permission/remove'),
('admin_management', '/admin/permission/update'),
('admin_management', '/admin/permission/view'),
('admin_management', '/admin/role/*'),
('admin_management', '/admin/role/assign'),
('admin_management', '/admin/role/create'),
('admin_management', '/admin/role/delete'),
('admin_management', '/admin/role/index'),
('admin_management', '/admin/role/remove'),
('admin_management', '/admin/role/update'),
('admin_management', '/admin/role/view'),
('admin_management', '/admin/route/*'),
('admin_management', '/admin/route/assign'),
('admin_management', '/admin/route/create'),
('admin_management', '/admin/route/index'),
('admin_management', '/admin/route/refresh'),
('admin_management', '/admin/route/remove'),
('admin_management', '/admin/rule/*'),
('admin_management', '/admin/rule/create'),
('admin_management', '/admin/rule/delete'),
('admin_management', '/admin/rule/index'),
('admin_management', '/admin/rule/update'),
('admin_management', '/admin/rule/view'),
('admin_management', '/admin/user/*'),
('admin_management', '/admin/user/activate'),
('admin_management', '/admin/user/change-password'),
('admin_management', '/admin/user/delete'),
('admin_management', '/admin/user/index'),
('admin_management', '/admin/user/login'),
('admin_management', '/admin/user/logout'),
('admin_management', '/admin/user/request-password-reset'),
('admin_management', '/admin/user/reset-password'),
('admin_management', '/admin/user/signup'),
('admin_management', '/admin/user/view'),
('admin_management', '/user/*'),
('admin_management', '/user/admin/*'),
('admin_management', '/user/admin/assignments'),
('admin_management', '/user/admin/block'),
('admin_management', '/user/admin/confirm'),
('admin_management', '/user/admin/create'),
('admin_management', '/user/admin/delete'),
('admin_management', '/user/admin/index'),
('admin_management', '/user/admin/info'),
('admin_management', '/user/admin/resend-password'),
('admin_management', '/user/admin/switch'),
('admin_management', '/user/admin/update'),
('admin_management', '/user/admin/update-profile'),
('admin_management', '/user/profile/*'),
('admin_management', '/user/profile/index'),
('admin_management', '/user/profile/show'),
('admin_management', '/user/recovery/*'),
('admin_management', '/user/recovery/request'),
('admin_management', '/user/recovery/reset'),
('admin_management', '/user/registration/*'),
('admin_management', '/user/registration/confirm'),
('admin_management', '/user/registration/connect'),
('admin_management', '/user/registration/register'),
('admin_management', '/user/registration/resend'),
('admin_management', '/user/security/*'),
('admin_management', '/user/security/auth'),
('admin_management', '/user/security/login'),
('admin_management', '/user/security/logout'),
('admin_management', '/user/settings/*'),
('admin_management', '/user/settings/account'),
('admin_management', '/user/settings/confirm'),
('admin_management', '/user/settings/delete'),
('admin_management', '/user/settings/disconnect'),
('admin_management', '/user/settings/networks'),
('admin_management', '/user/settings/profile'),
('create_event', '/event/*'),
('create_event', '/event/create'),
('create_event', '/event/delete'),
('create_event', '/event/index'),
('create_event', '/event/sub-category'),
('create_event', '/event/update'),
('create_event', '/event/view'),
('dashboard', '/dashboard/*'),
('dashboard', '/dashboard/index'),
('manage_speaker', '/speaker/*'),
('manage_speaker', '/speaker/create'),
('manage_speaker', '/speaker/delete'),
('manage_speaker', '/speaker/index'),
('manage_speaker', '/speaker/update'),
('manage_speaker', '/speaker/view'),
('manage-joined-event', '/my-event/*'),
('manage-joined-event', '/my-event/cancel-event'),
('manage-joined-event', '/my-event/index'),
('manage-joined-event', '/my-event/view-event'),
('manage-joined-event', '/my-event/view-speaker'),
('organizer', 'create_event'),
('organizer', 'dashboard'),
('organizer', 'manage_speaker'),
('organizer', 'manage-joined-event'),
('participant', 'dashboard'),
('participant', 'manage-joined-event');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Arts', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(2, 'Humanities', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(3, 'Social Sciences', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(4, 'Sciences', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(5, 'Applied Sciences', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(6, 'Others', 1, NULL, NULL, '2017-02-17 01:29:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `register_date` date DEFAULT NULL,
  `register_end_date` date DEFAULT NULL,
  `past_event` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `fees` text,
  `link` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `rating_mark` varchar(255) DEFAULT NULL,
  `num_rate` int(11) DEFAULT NULL,
  `num_view` int(11) DEFAULT NULL,
  `speaker_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `user_id`, `category_id`, `sub_category_id`, `event_type_id`, `title`, `description`, `register_date`, `register_end_date`, `past_event`, `city`, `state`, `organization`, `institution`, `fees`, `link`, `start_date`, `end_date`, `venue`, `tags`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `rating_mark`, `num_rate`, `num_view`, `speaker_id`) VALUES
(1, 7, 6, 21, 1, 'Citations and its impact to university ranking ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-02', '2017-11-02', 'n/a', 'Kuala Lumpur', '', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-30', '2017-09-30', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, citation strategy, impact ranking ', 1, NULL, NULL, '2017-09-04 14:33:32', NULL, '4', 5, 11, 1),
(2, 7, 6, 22, 2, 'Maximizing articles citation frequency ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-05-18', '2017-05-20', 'n/a', 'Kuala Lumpur', '', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', '2017-09-20', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, citation strategy,citation frequency', 1, NULL, NULL, '2017-09-04 14:33:44', NULL, NULL, NULL, 16, 1),
(3, 7, 5, 18, 1, 'Analysisi of bibliometrics information for select the best field of study', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-11-04', '2017-11-04', 'n/a', 'Kuala Lumpur', '', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', '2017-09-20', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, bibliometrics information', 1, NULL, NULL, '2017-09-04 14:33:46', NULL, '5', 1, 6, 1),
(4, 7, 6, 21, 1, 'A new system for measuring research impact ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-02', '2017-02-14', 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', '2017-09-20', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader,research impact, measurement', 1, NULL, NULL, '2017-09-04 14:33:52', NULL, '5', 1, 10, 1),
(5, 7, 6, 21, 1, 'How to select a brand name of your research interest ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-11-19', NULL, 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader,brand name, research interest ', 1, NULL, NULL, '2017-09-04 14:35:36', NULL, '5', 1, 4, 2),
(6, 7, 6, 21, 1, 'Optimize articles for search engine to improve research visibility', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-15', NULL, 'n/a', 'Kuala Lumpur', 'Kuala Lumpur	Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, optimization, research visibility ', 1, NULL, NULL, '2017-09-04 14:33:58', NULL, '3', 2, 10, 3),
(7, 7, 6, 21, 2, 'Prepare a pre/post print of your document for advertisement', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-21', NULL, 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-10-20', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, advertisement, pre/post print', 1, NULL, NULL, '2017-09-04 14:34:04', NULL, NULL, NULL, 2, 1),
(8, 7, 6, 21, 1, 'Create publication database for enhancing research visibility ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-28', NULL, 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-11-01', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, publication database, research visibility ', 1, NULL, NULL, '2017-09-04 14:30:05', NULL, NULL, NULL, 1, 1),
(9, 7, 6, 21, 1, 'Create a google scholar profile to boost research visibility ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2019-09-20', NULL, 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-09-20', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader,google scholar, research visibility ', 1, NULL, NULL, '2017-09-04 14:32:03', NULL, NULL, NULL, 7, 4),
(10, 7, 6, 22, 1, 'Create and maintain an up-to-date researchid profile', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2018-04-24', NULL, 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2018-04-25', NULL, 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, researchid, profile', 1, NULL, NULL, '2017-09-04 14:31:27', NULL, '2', 2, 4, 4),
(11, 7, 6, 22, 1, 'Online repository: Improving the research visibility and impact ', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-28', '2017-10-28', 'n/a', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-08-04', '2017-08-05', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, online respository, research visibility ', 1, NULL, NULL, '2017-09-04 14:29:56', NULL, '5', 3, 6, 1),
(15, 7, 6, 19, 1, 'Promote your research work on LinkedIn', 'Boosting Your Research Visibility : Do you know \"Over 43% of ISI Paper have never citations?\" (nature.com/top100,2014). Publishing a high quality  paper in scientific journals is only halfway towards receiving citation in the future. The rest of the journey is dependent on disseminating the publications via proper utilization of the \"Research Tools\". Proper tools allow the researcher to increase the research impact and citations for their publications. This workshop series will provide you various technique on how you can increase the visibilty and hence the impact of your research work. The workshop is for professors, lecturers and researcher who have published papers and would like to increase their papers visibility and citation index. The workshop is applicable for various research discipline. This workshop series is for UM staff and UM student only', '2017-10-28', '2017-10-28', 'n/a', 'Kuala Lumpur', '', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-10-20', '2017-10-20', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'research tools by nader, promotion, LinkedIn', 1, NULL, NULL, '2017-09-04 14:34:17', NULL, '6', 2, 11, 3),
(22, 7, 6, 21, 1, 'LITERATURE REVIEW – FROM SEARCH TO PUBLICATION', 'Wilayah Perseketuan, Malaysia	\"This workshop is aimed for young researchers / postgraduate students who intend to write literature review papers and to increase their paper’s visibility and citations.\r\n \r\nSome of the topics included:\r\n- Systematic review\r\n- Finding keywords\r\n- Finding proper articles\r\n- Evaluate a paper quality\r\n- Evaluate a journal quality\r\n- Indexing desktop search tool\r\n- Writing a literature review\r\n- Paper submission procedure\r\n- Target suitable journal\r\n- Promote publication to get more citation\"', '2017-10-02', '2017-02-14', 'Workshop Series \"research visibility ', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Centre for Research Service (PPP)', 'um', 'RM400', 'http://umconference.um.edu.my/ls', '2017-06-02', '2017-06-03', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'Literature review, review, publication', 1, NULL, NULL, '2017-08-05 15:23:05', NULL, '5', 1, 10, 1),
(23, 7, 6, 21, 1, 'Make audio slides for your research', 'N/A', '2017-10-28', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-10-27', NULL, 'Computer Lab, Level 2, Institute of Research Management & Monitoring (IPPP)', 'research tools by nader, audio slide,', 1, NULL, NULL, '2017-09-04 14:41:20', NULL, '5', 1, 4, 2),
(24, 7, 6, 21, 2, 'HOW TO PUBLISH QUALITATIVE RESEARCH IN ISI/SCOPUS-INDEXED JOURNALS?\"', 'Who should join?\nPostgraduates in the fields of arts, social sciences, and humanities.\nFirst-year postgraduates who want to learn tips & tricks in publishing qualitative articles in high reputation journals.\nFinal-year postgraduates who want to fill the \"publication\" graduation requirements.\nAnyone who is interested\n\nWhat can you expect to learn?\nIntroduction to qualitative research\nIntroduction to qualitative analysis\nGeneral knowledge of academic writing \nHow to present qualitative findings\nHow to select potential journals\nHow to write to journal editors and respond to their feedback\n', '2017-05-18', '2017-05-20', 'N/A', 'Kuala Lumpur', '', 'Institute of Graduate Studies', 'UM', 'RM50 ', 'N/a', '0000-00-00', '0000-00-00', 'Bilik Jasmine, Raflessia Hall, 4th Floor, Institute of Graduate Studies, University of Malaya\n', 'isi publication, qualitative research, indexed journals', 1, NULL, NULL, '2017-08-13 09:42:57', NULL, '5', 1, 3, 3),
(25, 7, 6, 22, 1, 'Workshop on quantitative data analysis', 'The purpose of this 2-days workshop is to\nprovide training in basic statistical\nanalyses for students and staff who have\nconducted quantitative research and need\nto test their hypotheses. Both parametric\nand non parametric statistics will be\nincluded in this 2- day workshop . The\nworkshop will provide hands-on training in\nthe use of IBM SPSS version 24 for the\nanalysis of data. No previous background\nin research methodology and statistical is\nassumed . At the end of the course\nparticipants should be able to :\na) Understand the language of\nmeasurements\nb) Identify the various types of variables\nand use them in formulating research\nquestions and hypotheses.\nc) Identify the most appropriate\nstatistical tests to be used in order to\ntest their hypotheses.\nd) Correctly conduct statistical analyses\nusing IBM SPSS version 24.\ne) Interpret findings and draw\nappropriate conclusions', '2017-05-11', '2017-05-11', 'N/A', 'Kuala Lumpur', '', 'Department of Library and Information Science, FSCIT ', 'UM', 'RM80 ', 'http://www.fsktm.um.edu.my/what\'s-up/workshop-training', '0000-00-00', '0000-00-00', 'MM2,Block B, FSCIT', 'data analysis, sampling method, quantitative', 1, NULL, NULL, '2017-07-20 07:21:25', NULL, '3', 2, 10, 3),
(26, 7, 5, 18, 1, 'HANDS-ON BASIC STATISTICS USING SPSS WORKSHOP', 'N/A', '2017-10-02', '2017-02-14', 'Hands On Basic Statistics Using SPSS', 'Kuala Lumpur', '', 'Research management centre (RMC), Faculty of Medicine', 'UM', 'UM student -120 , Staff- RM 150, Others  RM 200', 'http://www.resfom.um.edu.my/', '0000-00-00', '0000-00-00', 'Computer Lab 2, 4 floor, Faculty of Medicine', 'Statistic, Data analysis, Hands on SPSS', 1, NULL, NULL, '2017-05-23 09:36:48', NULL, NULL, NULL, 1, 3),
(27, 7, 6, 21, 1, 'The Biostatistic Workshop\nLearn how to analyse SNP and CNV data using SPSS', 'Analysis of single  nucleotide polymorphism (SNP) and copy number variant (CNV) data is always a challenge even when you have a basic knowledge on the application of statistical tools. Without understanding of proper coding, design and data interpretation, researchers tend to make mistake.', '2017-10-31', NULL, 'N/a', 'Kuala Lumpur', '', 'Pharmacogenomics Lab\nDepartment of Pharmacology\nFaculty Of Medicine', 'UM', ' Postgraduates & RAs RM300\n                                           Non-Postgraduates and Others RM400   ', 'https://docs.google.com/a/siswa.um.edu.my/forms/d/e/1FAIpQLSeZceCtHeKRkkgcRfBe8gOZ_9zSUXvtG4Kt5kVg-hSh5e5B1A/viewform?c=0&w=1', '2017-09-30', '2017-09-30', 'Computer Lab 2 , 4th Floor,\nFaculty Of Medicine,UM', 'Single nucleotide polymorphism (SNP), Copy number Variant (CNV), Stastical tools, data analysis method', 1, NULL, NULL, '2017-09-04 14:33:18', NULL, NULL, NULL, 1, 4),
(28, 7, 6, 21, 1, 'Introduction to Qualitative Research’ Workshop', 'Qualitative research is now recognised as an important research methodology to answer clinical research questions. It is used to explore the behaviour of patients and healthcare professionals; evaluate the process of clinical services and interventions; explain the outcomes of clinical trials; and assess the needs of stakeholders of healthcare services. It helps to answer the ‘why’, ‘how’ and ‘what’ of a phenomenon within a clinical context. \nThis workshop, therefore, aims to help the participant understand what qualitative research is and guide them step by step through the research process via lectures, role play and hands-on exercises.\n\nAt the end of the workshop, the participant will be able to:\n• understand the differences between qualitative and quantitative research\n• choose an appropriate qualitative study design to answer the research question\n• acquire basic interviewing skills for indepth interviews and focus group discussion\n• know what to prepare before conducting an interview\n• know basic principles in qualitative data analysis', '2017-01-25', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Department Of Primary Care\nFaculty Of Medicine', 'UM', 'Postgradate student (Master/PhD) - RM 250\nAcademic staff - RM 400\nPCM Lecturer - Free', 'https://docs.google.com/a/siswa.um.edu.my/forms/d/e/1FAIpQLSfd8VXdS5t0uOe-HmwqEAYShsaygZwhW8uWO2BF5E7MPGsEgA/viewform?c=0&w=1', '0000-00-00', '0000-00-00', 'Bilik Serbaguna, Level 4, \nFaculty of Medicine,', 'qualitative study, qualitative data analysis, research question design, clinical trials.', 1, NULL, NULL, '2017-08-13 09:38:19', NULL, NULL, NULL, 2, 3),
(29, 7, 6, 21, 2, 'Good Clinical Practice Workshop', 'To ensure that clinical research in malaysia is conducted in accordance with international ethical and scientific standard.  To understand the principles underlying GCP and its specific rules of conduct, To ensure that research subjects are protected, To ensure data arising from clinical research is of high quality.M7', '2017-10-17', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Clinical Investigation Centre\nUniversity Malaya Medical Centre and endorsed by Ministry of Health Malaysia ', 'UM', 'UM/UMMC Student - RM424, UM/UMMC Staff - RM636, Others - RM848\n ', 'http://clinicalinvestigationcentre.com/', '0000-00-00', '0000-00-00', 'Bilik Serbaguna, Level 4, \nFaculty of Medicine,', 'Clinical studies, health profesional', 1, NULL, NULL, '2017-05-22 22:22:22', NULL, '2', 2, 4, 3),
(30, 7, 6, 21, 1, 'Workshop on dealing with missing data', 'The most universal dilemma in statistics is what to do about missing data. Most data sets have missing data but most researchers choose to ignore the handling of missing data due to little knowledge and time constraints on handling them. Missing data inevitably introduces ambiguity into the inferences that can be drawn from a study. Missing data occurs when real values happen to be missing simply perhaps because people choose not to report it. There is no reason why real data might be missing or why people may refuse to answer or give incoherent answers or interviewers may forget to ask some questions.  Knowing why the data is missing does not matter but what matters is knowing that the data are missing completely at random, missing at random or not missing at random.  Conventional methods for handling missing data are listwise deletion, pairwise deletion, dummy variable adjustment and imputation (mean substitution). However these methods may lead to biasness in the parameter estimates. Maximum likelihood (ML) and multiple imputation (MI) are more reliable model-based methods in handling missing data.  Multiple imputation is a more preferred method due to the following reasons :\n1.       Introduce random variation into imputation process, and generate several datasets, each with slightly different imputed values\n\n2.       Performs an analysis on each of the datasets\n\n3.       Combine the results into a single parameter of estimates, standard errors and test statistics', '2017-10-31', NULL, 'n/a', 'Kuala Lumpur', 'Kuala Lumpur	Wilayah Perseketuan, Malaysia', 'Centre for Population Health (CePH) ,Department of Social and Preventive Medicine, Faculty of Medicine', 'UM', 'FREE', 'file:///C:/Users/End%20User/Downloads/ProfKaruMissingData7.03.2017.pdf', '2017-10-20', '2017-10-20', 'SPM Computer Lab, Department of Social and Preventive Medicine, Faculty of Medicine, University of Malaya', 'Multiple imputation, data analysis, imputation process.', 1, NULL, NULL, '2017-09-04 14:34:21', NULL, '5', 3, 6, 3),
(31, 7, 6, 21, 1, 'Best practices for successful observational and experimental research design workshop', 'Programme: Introduction, overview of study design, cross sectional study design, cohort study design, experimental study design, errors in epidomiological study and measurement of risk ', '2019-09-20', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Julius Centre University of Malaya (JCUM),\nDepartment of Social andPreventive Medicine,\nFaculty of Medicine, University of Malaya', 'um', 'UM Student; RM120, UM Staff: RM 180, Others RM250', 'Register Link: https://docs.google.com/a/siswa.um.edu.my/forms/d/1Z7Qtp2YgRTAlt7qCWSrbihdzuzGfkzGW-yfVvbenHFw/viewform?edit_requested=true', '0000-00-00', '0000-00-00', 'SPM Computer Lab, Department of Social and Preventive Medicine, Level 5 Block J, Faculty of Medicine, University of Malaya', 'Research design, epidomiological study, cross sectional design, experimental study', 1, NULL, NULL, '2017-08-04 14:20:04', NULL, '5', 6, 12, 3),
(32, 7, 6, 21, 1, 'Qualitative research analysis workshop', 'This two day course is an introduction to qualitative methodology in aspects of information management, data analysis and data presentation. ATLAS.ti 8 is a powerful software that enables your voluminous data to be understood, conceptualised and presented to provide instant references to your academic research. ATLAS.ti 8 also permits examination of more complex relationships and models that encompass techniques of coding, pattern recognition and thematic building. Decipher your pictues, audio and transcripts, videos and texts into meanings that are useful to address your research question and learn to audience and even critiques, conveniently and clearly to your readers, audience and even critiques. The great tool for Qualitative Researchers especially for those who wants convenience and easy to use software', '2018-04-24', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Institute of Educational Leadership (IEL),', 'UM', 'RM200 (UM staff and student) & RM250 (non-UM staff and student)', 'N/a', '0000-00-00', '0000-00-00', 'Computer Lab 12-4, Level 12, Wisma R&D, UM', 'Qualitative analysis, ATLAS.ti 8, data analysis, ', 1, NULL, NULL, '2017-08-05 14:46:38', NULL, NULL, NULL, 17, 3),
(33, 7, 6, 22, 1, 'Mixed Method Design ', 'A mixed method approach to research design typically involves researchers combining elements of qualitative and quantitative research approaches for the purposes of breadth and depth of understanding and corroboration. In this course, we will examine the key features of this type of research design. We will discuss the foundations of such an approach and the advantages and challenge of this design; explore the different types of mixed method design; critically analyse the challenges associated with the design and implementation of each design type and the analysis and write up of miced method studies. This course is designed for participants with an introductory level understanding of qualitative and quantitative research technique invited to work in small teams and presnet a mixed method design in poster session on the final day of the course.', '2017-08-01', '2017-08-04', 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'University of Malaya Malaysian Centre of Regulatory Studies (UMCors)', 'UM', 'Full time student: RM 450 / EARLY BIRD (RM 400), Others (RM500) / EARLY BIRD (RM450)', 'N/a', '0000-00-00', '0000-00-00', 'Wisma R&D, University of Malaya, Jalan Pantai Baharu', 'research design, combination qualitative and quantitative design, mixed method study', 1, NULL, NULL, '2017-08-04 14:20:11', NULL, '6', 2, 7, 3),
(34, 7, 6, 22, 2, '2-Day Workshop on Statiscal Analysis Using Excel & SPSS', 'Outline For the Workshop : Introduction to statistics, Statistical Terms, Types of Data, Variables, Scale of Measurement, Sampling and Sampling methods, Observational and experimental study, Research process, Descriptive statistics, Principle of Tabulation and graphical presentation, Descriptive analysis using excel and SPSS, Hypothesis testing, Correlation Analysis, Linear and multiple regression, 2 sample test, T-test., Chi-square test, One way ANOVA, Two way analysis of variance, Mann-Whitnery U test, and etc', '2017-10-02', '2017-11-02', 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Manager Training & Development\nPANOPLY CONSULTANCY ', 'n/a', 'RM275 ', 'http://www.panoplyconsultancy.com/eventml.php?events=137', '0000-00-00', '0000-00-00', 'Panoply Consultancy, 16-3, The rignt angle, Jalan 14/22 Seksyen 14, 46100, PJ, Selangor, Malaysia', 'Statistic, Data analysis, Hands on SPSS,analysis method, analysis tools', 1, NULL, NULL, '2017-08-05 15:23:06', NULL, '6', 2, 11, 4),
(38, 7, 6, 19, 1, 'Introductory Rasch Model Workshop: Application in Survey Research Education Measurement 8.0', 'Who should perform Rasch analysis?\nA researcher who is developing items of a test or questionnaire and intends to sum the scores on the items can use Rasch model analysis to check the degree of which this scoring and summing is defensible in the data collected.\n\nRasch measurement is potentially relevant whenever an assessment or questionnaire is \nconstructed to measure the degree of some property inherent in persons or other entities.\nBenefits\n» Hands-on teaching workshopstyle.\n» How to use WINSTEPS software for analysis using Rasch Model.\n» Able to analyze data using Winsteps.\n» Knowledge on how to change data from ordinal to interval.\n» Conducted in the small group, not more than 30 people.\nFeatures\n» Rasch model is the only item response theory (IRT) model in which the total score across items characterizes a person totally.\n» The simplest model that hasminimumnumber of parameters for the person (just one), and just one parameter corresponding to each category of an item.\n» Rasch estimationis robust against missing data.\n» To check the degree of this score and sum is defensible in the data collected.\n» To check how well the data fit the model.\n» To diagnose very quickly where the misfit is the worst.\n» To try to understand this misfit in terms of the construction of the items and the understanding of the variable in terms of its theoretical.development\n» To be in dynamic and interactive control of an analysis.\n» To be able to follow the evidence to see where the responses may be invalid.\n» To analyze categorical data such as answers to questions on a reading assessment or questionnaire responses.\nAdvantages\n» Rasch analysis applied to assessments including health studies, education, psychology, marketing, economics & social sciences. \n» The speaker (Dr.AkbariahMahdzir)has 13 years of psychometric research experience\n» Her precise interests are on the aspects of instrument development and validation with the application of Rasch Model and Structural Equation Modelling\n» 3 times meals\n» Payment by LoU or LO is accepted\n» Certificate and receipts are provided', '2017-09-30', NULL, '', 'Kuala Lumpur', '', 'MPWS Training Centre', 'MPWS', 'Alumni MPWS Rate - RM350\nEarly Bird Rate - RM390\nNormal Rate - RM450', 'http://postgraduateworkshop.com/raschanalysis', '2017-09-30', '2017-09-30', 'MPWS Training Centre, 63-1, 63-2, Jalan Kajang Impian 1/11, \nTaman Kajang Impian, Seksyen 7, 43650 Bandar Baru Bangi, S', 'Research model, education measurement, survey ', 1, NULL, NULL, '2017-09-04 14:33:21', NULL, NULL, NULL, 2, 5),
(47, 7, 6, 21, 1, 'One Day Workshop on Questionnaire Design 9.0', 'Questionnaires are the most widely used data collection methods in educational research. The principles for designing a questionnaire or an interview schedule are quite straight forward but they do require careful consideration.Systematic development of questionnaires focusing on a well-crafted conceptualization of the content and transformation of the content into questions is inessential to minimize measurement error--questionnaire content, questionnaire design and format, and respondent.\n\nThis workshop describes the process for developing and testing questionnaires and posits five steps to develop a valid and reliable questionnaire to enhance the quality of research: \n\n1. Research background \n2. Questionnaire conceptualization\n3. Format and data analysis\n4. Establishing validity \n5. Establishing reliability.\n\nIn the questionnaire conceptualization step, emphasis is given on the procedure of operationalization using Lazarsfeld\'s scheme for measuring concepts. Following these five steps in questionnaire development and testing will enhance data quality and utilization of research.\n\nThus, this workshop gives careful attention to detail and understanding of the process involved in developing a questionnaire realising the fact thatfailure to following appropriate and systematic procedures in questionnaire development, testing, and evaluation may undermine the quality and utilization of data.', '2017-10-31', '2017-05-20', 'n/a', 'Kuala Lumpur', '', 'MPWS Training Centre', 'MPWS', ' Alumni MPWS Rate - RM180\nEarly Bird Rate - RM200\nNormal Rate - RM250', 'http://postgraduateworkshop.com/spss/', '2017-09-30', '2017-09-30', 'MPWS Training Centre, 63-1, 63-2, Jalan Kajang Impian 1/11, \nTaman Kajang Impian, Seksyen 7, 43650 Bandar Baru Bangi, ', 'Questionnaire Design, Data collection method, SPSS, parametric and non parametric', 1, NULL, NULL, '2017-09-04 14:32:53', NULL, NULL, NULL, 2, 5),
(48, 7, 6, 22, 1, 'Two Days Workshop on PhD Mosaic 3.0', 'Dr Nor Aida Abdul Rahman is a Senior Lecturer of Aviation Management and a Research Coordinator at Universiti Kuala Lumpur, MIAT campus. She earned her PhD degree in Management (Supply Chain Management) from Brunel University, London, UK in 2012; BBA (Finance) and M. Edu (Business & Entrepreneurship) from National University, Malaysia. Her BBA was on finance, her M. Edu degree was on business and entrepreneurship, and her PhD degree was on supply chain management (SCM). She had her paper with Industrial Marketing Management Journal and Applied Mechanics and Materials Journal. She also published refereed papers in several conferences, both across the country and internationally. In terms of research funding, she holds are search grant from various bodies including MOHE and UniKL. She is a member of the Academy of Marketing UK and Chartered Institute of Logistics Transport (CILT) UK. She is also PSMB certified trainer.', '2017-11-11', '2017-11-11', 'n/a', 'Kuala Lumpur', '', 'MPWS Training Centre', 'MPWS', 'Alumni MPWS Rate - RM350\nEarly Bird Rate - RM390\nNormal Rate - RM450', 'http://postgraduateworkshop.com/phdmosaic', '2017-09-30', '2017-09-30', 'MPWS Training Centre, 63-1, 63-2, Jalan Kajang Impian 1/11, \nTaman Kajang Impian, Seksyen 7, 43650 Bandar Baru Bangi, ', 'PhD, research type, research methodology', 1, NULL, NULL, '2017-09-04 14:33:26', NULL, '', 2, 4, 5),
(49, 7, 5, 18, 2, 'Two Day Workshop on Qualitative Data Analysis with ATLAS.ti Edition 12.0', 'If you want to do good qualitative research, you need a reliable tool to help you. ATLAS.ti does that\"\n- Vita Poštuvan, University of Primorska, Koper, Slovenia\n\nATLAS.ti gives you all the tools you need for computer-based qualitative data analysis. With this powerful «Knowledge Workbench» you can conduct your research both systematically and creatively. Get started right from the tutorial and code your way through your material in no time. Sophisticated yet intuitive features help you arrange, reassemble and manage data in virtually any digital format – and with your material under control, you can focus on making sense of it all. It’s really that easy. Whether you work in anthropology, economics, criminology, medicine, or other fields, ATLAS.ti is the key to getting the most out of your analysis.\n\n\"Those starting off with using software to assist them with their qualitative research find this package the most straight forward and quickest to learn\"\n- Angela Aubertin, London School of Economics and Political Science', '2017-10-02', '2017-02-14', 'n/a', 'Kuala Lumpur', '', 'MPWS Training Centre', 'MPWS', 'Alumni MPWS Rate - RM375\nEarly Bird Rate - RM415\nNormal Rate - RM480', 'http://postgraduateworkshop.com/atlas.ti', '2017-09-30', '2017-09-30', 'MPWS Training Centre, 63-1, 63-2, Jalan Kajang Impian 1/11, \nTaman Kajang Impian, Seksyen 7, 43650 Bandar Baru Bangi, ', 'Data analysis, qualitative, atlast, analysis tools', 1, NULL, NULL, '2017-09-04 14:33:28', NULL, '5', 3, 6, 6),
(50, 7, 6, 21, 1, ' Part 1 - Data Analysis With Structural Equation Modeling (SEM) Using AMOS & SPSS Data', 'n/a', '2017-09-30', NULL, 'n/a', 'Kuala Lumpur', '', 'Deputy Dean, IGS\nStudent Development Unit\nInstitute of Graduate Studies\nUniversity of Malaya', 'UM', 'FREE', 'N/a', '2017-10-27', NULL, 'Computer Lab 2, Level 4, Rafflesia Hall, Institute of\n                                      Graduate Studies', 'SEM, Data analysis, equation modelling, qualitatitative and quantitative, sampling methid', 1, NULL, NULL, '2017-09-04 14:34:50', NULL, '5', 6, 12, 5),
(51, 7, 6, 21, 1, '2-Day Workshop on MATLAB', 'Contents of Workshop:\nAbout MATLAB\nWhat Is MATLAB?  \nStudent Edition of MATLAB  \nHow Is MATLAB Used in Industry?  \nProblem Solving in Engineering and Science  \n \nMATLAB Environment\nGetting Started  \nMATLAB Windows  \nSolving Problems with MATLAB  \nSaving Your Work  \n \nBuilt-In MATLAB Functions\nUsing Built-In Functions  \nUsing the Help Feature  \nElementary Math Functions  \nTrigonometric Functions  \nData Analysis Functions  \nRandom Numbers  \nComplex Numbers  \nComputational Limitations  \nSpecial Values and Miscellaneous Functions  \n \nManipulating MATLAB Matrices\nManipulating Matrices  \nProblems with Two Variables  \nSpecial Matrices  \n \nPlotting\nTwo-Dimensional Plots  \nSubplots  \nOther Types of Two-Dimensional Plots  \nThree-Dimensional Plotting  \nEditing Plots from the Menu Bar  \nCreating Plots from the Workspace Window  \nSaving Your Plots  \n \nUser-Defined Functions\nCreating Function M-Files  \nCreating Your Own Toolbox of Functions  \nAnonymous Functions and Function Handles  \nFunction Functions  \nSubfunctions  \n \nUser-Controlled Input and Output\nUser-Defined Input  \nOutput Options  \nGraphical Input  \nMore Cell Mode Features\nReading and Writing Data from Files  \nDebugging your Code\n \nLogical Functions and Selection Structures\nRelational and Logical Operators  \nFlowcharts and Pseudocode  \nLogical Functions  \nSelection Structures  \nDebugging\n \nRepetition Structures\nFor Loops  \nWhile Loops  \nBreak and Continue  \nMidpoint Break Loops  \nNested Loops\nImproving the Efficiency of Loops\n \nMatrix Algebra\nMatrix Operations and Functions  \nSolutions of Systems of Linear Equations  \nSpecial Matrices  \n \nOther Kinds of Arrays \nData Types  \nMultidimensional Arrays  \nCharacter Arrays  \nCell Arrays  \nStructure Arrays', '2017-01-25', NULL, 'Upcoming : March 2017 2day workshop on mastering data analysis using SPSS at KL, ', 'Kuala Lumpur', '', 'Manager Training & Development\nPANOPLY CONSULTANCY ', 'n/a', 'RM275 ', 'http://www.panoplyconsultancy.com/eventml.php?events=135', '0000-00-00', '0000-00-00', 'Class Room 1, Level 2, Panoply Consultancy, 16-3, The Right Angle, Jalan 14/22, Seksyen 14, 46100, Petaling Jaya, Selangor D. E', 'MATLAB,MATLAB WORKSHOP,', 1, NULL, NULL, '2017-08-05 14:46:38', NULL, NULL, NULL, 17, 5),
(52, 7, 6, 21, 1, 'Computational Intellignce Training', 'There will be a training on Computational Intelligence, conducted by IPPI. The instructor for this training is Prof. Loo Chu Kiong. The training will involve designing the intelligent agent using Matlab programming. All students involved in IPPI group are encourage to join the training. ', '2017-10-17', NULL, 'N/A', 'Kuala Lumpur', '', 'Faculty Computer Science and Information Technology, UM', 'UM', 'FREE', 'https://docs.google.com/a/siswa.um.edu.my/forms/d/e/1FAIpQLScvNVGRdxcerDnOSMu-I1lwnHoaCGshN2z0nPW02uJaQA3ofw/viewform?c=0&w=1', '2017-09-30', '2017-10-01', 'MM3, FSKTM', 'computational intelligence, Matlab, intelligent agent', 1, NULL, NULL, '2017-09-04 14:34:42', NULL, '6', 2, 7, 5),
(53, 7, 6, 21, 1, 'MaGIC MakerFest Workshop & Hackathon', 'The MakerFest will consist of a bootcamp that enable students to:\n(a) learn how to use equipments and small electronics,\n(b) learn to prototype solutions for real world problems.\n\nThe trainers are from the prestigious Asia School of Business (which is established in collaboration between Massachusetts Institute of Technology, USA & Bank Negara Malaysia). They will be running the course for FREE, and are looking for interested students & lecturers who want to learn how to prototype solutions. ', '2017-10-31', NULL, 'N/A', 'Kuala Lumpur', '', 'MALAYSIAN GLOBAL INNOVATION\n& CREATIVITY CENTRE', 'n/a', 'FREE', 'N/a', '2017-10-27', NULL, 'MaGiC, Cyberjaya and KLCC', 'hackathon,makerfest', 1, NULL, NULL, '2017-09-04 14:34:53', NULL, '6', 2, 11, 5),
(54, 7, 6, 21, 2, 'AI Research Talk ', 'N/A', '2019-09-20', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Department of Artificial Intelligence, Faculty of Computer Science and Information Technology', 'UM', 'FREE', 'N/a', '2017-10-27', NULL, 'The Cube,  Block A, Level 1, Faculty of Computer Science &               Information Technology, University of Malaya, Kuala Lumpur', 'Artificial Intelligence', 1, NULL, NULL, '2017-09-04 14:35:04', NULL, '6', 2, 4, 5),
(55, 7, 6, 21, 1, 'RapidMiner Workshop', 'What is RapidMiner?\n\n\"A powerful & collaborative analytics platform featuring a rich tool-set for accelerating the creation, delivery, and maintenance of high-value predictive analytics. The RapidMiner Platform offers more functions than any other visual solution, plus it’s open and extensible to support all your data science needs.\" ', '2018-04-24', NULL, 'upcoming: AI research talk ', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Department of Artificial Intelligence\nFaculty of Computer Science & IT', 'UM', 'free', 'https://docs.google.com/a/siswa.um.edu.my/forms/d/e/1FAIpQLSdQLzwvgxfZqVwTK5EHlEKxgTgdqt4t0rYFBzaejgY6YlU0Iw/closedform', '2017-10-27', '2017-10-27', 'MS (Stroustrup Lab), Block B, Faculty of Computer Science & IT, UM', 'Rapidminer,data analytics tools', 1, NULL, NULL, '2017-09-04 14:35:07', NULL, '4', 3, 11, 5),
(56, 7, 6, 22, 1, 'Data Science and R Programming', 'The R programming language is the most widely used language in the Data Science and Analytics. With the rise of Big Data and Data science, its growth in popularity is boundless. The purpose of this workshop is to provide basic training in understanding the core techniques and concepts in R, using Time Series analysis. R is the most often used program for statistical analysis. Being open-source, it is freely usable and allows for integration with other applications. This two days workshop prepares participants with how to program in R and how effectively use R for data analysis. Its covers introduction to data/object types in R, reading data, creating data visualizations, accessing and installing R packages, writing R functions and fitting statistical models using basic models of times series.', '2017-08-01', '2017-08-04', 'N/A', 'Kuala Lumpur', 'Kuala Lumpur	Wilayah Perseketuan, Malaysia', 'Center Mobile Cloud Computing Research, FSCIT', 'UM', 'Student UM: RM 200 Student Others UM: RM250, Academic Staff UM: RM 250, Public: RM350', 'Brochure', '0000-00-00', '0000-00-00', 'MM6, Block B, FSKTM', 'Data Science, Mobile cloud computing, Big data, R language,', 1, NULL, NULL, '2017-05-23 09:36:49', NULL, NULL, NULL, 2, 6),
(57, 7, 6, 22, 1, 'Altera: The Quartus Prime Software (Foundation)', 'N/A', '2017-10-02', '2017-11-02', 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Faculty Computer Science and Information Technology, UM', 'UM', 'FREE', 'http://www.elvirasys.com/', '2017-10-27', '2017-10-27', 'MM3, Block B, FCSIT', 'altera, quartus prime software', 1, NULL, NULL, '2017-09-04 14:35:09', NULL, NULL, NULL, 2, 6),
(61, 7, 6, 19, 1, 'Android Application Development', 'There will be a training on Android Application Development, conducted under IPPI. In this workshop, you will learn the basic concepts of Android Application development using Android Studio. ', '2017-08-30', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Department Software Engineering, FSKTM', 'UM', 'FREE', 'N/a', '0000-00-00', '0000-00-00', 'MM3,Blok A FSCIT', 'android  application, android studio workshop, application development', 1, NULL, NULL, '2017-08-05 15:23:05', NULL, '5', 1, 10, 6),
(70, 7, 6, 21, 1, 'Ionic Workshop ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-05-11', '2017-05-11', 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM250', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Ionic Development, Training programmes', 1, NULL, NULL, '2017-08-05 14:46:38', NULL, NULL, NULL, 17, 7),
(71, 7, 6, 22, 1, 'Laravel Workshop ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-10-02', '2017-02-14', 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 250', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Laravel Basic, Web Development, ', 1, NULL, NULL, '2017-08-04 14:20:11', NULL, '6', 2, 7, 8),
(72, 7, 5, 18, 1, 'React Native Workshop ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-08-30', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Kuala Lumpur	Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 250', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'React Native, Training Programme, Development', 1, NULL, NULL, '2017-08-05 15:23:06', NULL, '6', 2, 11, 7);
INSERT INTO `event` (`id`, `user_id`, `category_id`, `sub_category_id`, `event_type_id`, `title`, `description`, `register_date`, `register_end_date`, `past_event`, `city`, `state`, `organization`, `institution`, `fees`, `link`, `start_date`, `end_date`, `venue`, `tags`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `rating_mark`, `num_rate`, `num_view`, `speaker_id`) VALUES
(73, 7, 6, 21, 1, 'Unity 2D Games Workshop ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-01-25', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM150', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', '2D games, Unity Tools, Games Development,', 1, NULL, NULL, '2017-08-13 09:42:58', NULL, '6', 2, 4, 7),
(74, 7, 6, 21, 2, 'Lean Model Canvas Workshop ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-10-17', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 150 ', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Model Canvas, Lean Model, Training programme', 1, NULL, NULL, '2017-07-20 07:21:26', NULL, '4', 3, 11, 7),
(75, 7, 6, 21, 1, 'Genius Corner Workshop: Java', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-10-31', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 80 ', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Java, Programming ', 1, NULL, NULL, '2017-05-23 09:36:49', NULL, NULL, NULL, 2, 7),
(76, 7, 6, 21, 1, 'Genius Corner Workshop: Php', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2019-09-20', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 80 ', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Php training, programming, web design training ', 1, NULL, NULL, '2017-05-23 10:00:33', NULL, NULL, NULL, 2, 7),
(77, 7, 6, 21, 1, 'Genius Corner Workshop: Scratch ', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2018-04-24', NULL, 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 80', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Programming, web development, scract development', 1, NULL, NULL, '2017-08-04 14:20:03', NULL, '4', 5, 11, 7),
(78, 7, 6, 21, 1, 'Genius Corner Workshop: Web', 'Training programmes by Tracdisk for March 2017. Register before 28 Febuary 2017 to get early bird discounts!!', '2017-08-01', '2017-08-04', 'Android Mobile Pro , Hybrid Mobile Pro, Laravel Web Pro', 'Kuala Lumpur', '', 'Tracdisk Technogreen Sdn Bhd', 'n/a', 'RM 95', 'https://www.eventbrite.com/e/laravel-web-pro-tickets-32225284694?aff=es2', '0000-00-00', '0000-00-00', 'Tracdisk Technogreen Sdn Bhd\n49 Jalan Tasik Selatan 8\nBandar Tasik Selatan\nKuala Lumpur, Wilayah Persekutuan Kuala Lumpur 57000', 'Web development, web programming, web design ', 1, NULL, NULL, '2017-08-05 14:46:37', NULL, NULL, NULL, 16, 8),
(79, 7, 6, 22, 2, 'INTRODUCTION TO DOCKER WITH RANCHEROS TRAINING (3-DAYS)', 'Introduction to containers\nDocker concepts and terms\nInstalling Docker into Linux\nInstalling RancherOS\nIntroduction to images\nRunning and managing containers,Building images\nManaging and Distributing images with GIT\nContainer volumes\nContainer networking\n', '2017-10-02', '2017-11-02', 'n/a', 'Negeri Sembilan ', '', 'Open Source Institute (UOSI)', 'UOSI', 'RM550', 'https://www.eventbrite.com/e/introduction-to-docker-with-rancheros-training-3-days-tickets-31742121540?aff=es2', '0000-00-00', '0000-00-00', 'KLANA BEACH RESORT PORT DICKSON\nMAINS HOTEL SDN BHD (904434-T)\nKOMPLEKS BAITUL HILAL, LOT 4506 BATU 8, JALAN PANTAI\nPORT DICKSON, NEGERI SEMBILAN 71050', 'Virtual Images, Training Programme', 1, NULL, NULL, '2017-08-04 14:20:10', NULL, '5', 1, 6, 8),
(80, 7, 6, 22, 1, 'Analytics Leaders Summit -Predicting Customer Behavior Through Analytics-', 'DESCRIPTION\nData is rapidly evolving and there’s a lot of it. EnigmaCG designed this event because more data does not necessarily mean better information. Knowing big data\'s potential and its importance in customer analytics is one thing — productively managing and leveraging it is another therefore your company needs to be able to interpret data and integrate predictive analytics to derive efficient insights.\nWith all this vast amount of data that is available, how can you ensure that your data is correct and therefore the analytical techniques used are being used accurately? With this conference covering topics such as how IFRS 9 is going to impact Malaysian banks, how data analytics is being used to internally increase morale and decrease retention within an organisation? And how to profile the best customers using predicting analytics this is another must attend event for you and your fellow colleagues in Malaysia.\nJoin us for 2 days of exclusive networking sessions, professional and interactive panel discussions as well as high level case studies combatting the challenges, success stories as well as lessons learnt from corporates using analytics on the 14th to 15th of March 2017.\nWe are also very excited to announce that this year we are offering you the opportunity to take part in a highly interactive pre-conference workshop day led by an expert in this field on the 13th of March 2017 on how to clean and prepare data as well as post conference workshop on the 16th of March 2016 on Machine Learning – what is it, why is it important and how can it help businesses.', '2017-05-18', '2017-05-20', 'n/a', 'Kuala Lumpur', '', 'Enigma-CG', 'n/a', 'FREE', 'https://www.eventbrite.com/e/analytics-leaders-summit-predicting-customer-behavior-through-analytics--tickets-28935406580?aff=es2', '0000-00-00', '0000-00-00', 'Kuala Lumpur\nKuala Lumpur, Federal Territory of Kuala Lumpur', 'Data cleaning,big data, analytics', 1, NULL, NULL, '2017-08-05 15:23:05', NULL, '5', 1, 10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `event_join`
--

CREATE TABLE `event_join` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `join_at` datetime DEFAULT NULL,
  `is_cancel` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_join`
--

INSERT INTO `event_join` (`id`, `event_id`, `user_id`, `join_at`, `is_cancel`) VALUES
(1, 4, 1, '2017-04-30 01:42:22', 0),
(2, 4, 5, '2017-04-30 07:43:35', 0),
(3, 3, 6, '2017-05-03 03:40:42', 0),
(4, 5, 7, '2017-05-03 04:30:56', 0),
(5, 5, 8, '2017-05-05 22:50:33', 1),
(6, 22, 8, '2017-05-05 22:50:34', 1),
(7, 5, 8, '2017-05-05 22:50:40', 0),
(8, 4, 5, '2017-05-06 02:05:49', 1),
(9, 5, 5, '2017-05-06 02:20:16', 0),
(10, 22, 5, '2017-05-06 02:20:17', 0),
(11, 23, 5, '2017-05-06 02:49:31', 0),
(12, 4, 5, '2017-05-14 01:29:15', 0),
(13, 22, 6, '2017-05-28 14:41:33', 0),
(14, 29, 6, '2017-07-14 04:40:03', 0),
(15, 29, 6, '2017-07-14 04:54:20', 0),
(16, 4, 8, '2017-08-02 00:00:00', 0),
(17, 23, 12, '2017-08-04 13:58:23', 0),
(18, 27, 12, '2017-08-04 13:58:26', 0),
(19, 9, 11, '2017-09-04 16:20:16', 0),
(20, 9, 15, '2017-09-04 16:24:29', 0),
(21, 5, 11, '2017-09-04 16:35:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_rating`
--

CREATE TABLE `event_rating` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `rate_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_rating`
--

INSERT INTO `event_rating` (`id`, `event_id`, `rate_id`, `user_id`, `ip_address`) VALUES
(1, 3, 4, NULL, '192.168.1.101'),
(2, 28, 3, NULL, '192.168.1.101'),
(3, 29, 4, NULL, '192.168.1.101'),
(4, 29, 5, 6, NULL),
(5, 3, 5, 6, NULL),
(6, 5, 5, 7, NULL),
(7, 24, 2, 7, NULL),
(8, 23, 5, 7, NULL),
(9, 3, 5, NULL, '863866328'),
(10, 22, 5, NULL, '863866328'),
(11, 3, 3, NULL, '291324880'),
(12, 29, 5, NULL, '2115635121'),
(13, 28, 1, NULL, '2115635121'),
(14, 3, 4, NULL, '466424940'),
(15, 24, 3, NULL, '1852928066');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `id` int(11) NOT NULL,
  `event_type_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`id`, `event_type_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Workshop', NULL, NULL, '2017-02-17 01:16:19', NULL),
(2, 'Seminar', NULL, NULL, '2017-02-17 01:16:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_name`) VALUES
(1, 'Accounting'),
(2, 'Computer Science'),
(3, 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ori_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `path`, `type`, `size`, `name`, `ori_name`) VALUES
(1, '/upload/profile_pic//148786342558aefe8113b5a0.37294229.jpg', 'image/jpeg', '21398', '148786342558aefe8113b5a0.37294229.jpg', 'mypic.jpg'),
(2, '/upload/profile_pic//1493538254590595cef1fe29.05123909.jpg', 'image/jpeg', '21398', '1493538254590595cef1fe29.05123909.jpg', 'mypic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1486205173),
('m140209_132017_init', 1486205176),
('m140403_174025_create_account_table', 1486205176),
('m140504_113157_update_tables', 1486205176),
('m140504_130429_create_token_table', 1486205176),
('m140506_102106_rbac_init', 1487355567),
('m140830_171933_fix_ip_field', 1486205176),
('m140830_172703_change_account_table_name', 1486205176),
('m141222_110026_update_ip_field', 1486205176),
('m141222_135246_alter_username_length', 1486205176),
('m150614_103145_update_social_account_table', 1486205176),
('m150623_212711_fix_username_notnull', 1486205176),
('m151218_234654_add_timezone_to_profile', 1486205176),
('m160929_103127_add_last_login_at_to_user_table', 1486205176),
('m170217_011033_event_type', 1487293960),
('m170217_011256_add_date_event_type', 1487294179),
('m170217_011708_create_table_category', 1487294335),
('m170217_011904_create_sub_category', 1487294535),
('m170217_012242_create_data_category', 1487294944),
('m170217_013900_create_event_table', 1487295897),
('m170223_145102_create_image', 1487863296),
('m170223_145259_alter_table_profile', 1487863297),
('m170424_124047_add_new_roles', 1493104239),
('m170425_043415_create_table_rating_star', 1493104239),
('m170425_114542_alter_table_event', 1493180087),
('m170426_053313_alter_table_event_rating', 1493185880),
('m170426_125236_create_event_join', 1493214127),
('m170427_145421_create_speaker', 1493388072),
('m170427_152625_alter_speaker', 1493388072),
('m170427_153359_alter_table_event', 1493388072),
('m170511_150455_create_speaker_rating_table', 1494517091),
('m170511_152446_alter_table_speaker_add_num_rate', 1494517091),
('m170511_152709_alter_table_speaker_add_rating_mark', 1494517091);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `faculty_id`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`, `image_id`) VALUES
(1, 'Haezal Bin Musa', 2, 'haezal@um.edu.my', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'Pacific/Apia', 1),
(5, '', NULL, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'Pacific/Kiritimati', 2),
(6, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Nizam Nazri', 2, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'Asia/Kuala_Lumpur', NULL),
(11, 'Khairul Danial', 2, '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Malaysia', '', '', 'Pacific/Kiritimati', NULL),
(12, 'chicken', 2, 'koko@gmail.com', 'koko@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 2, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'Pacific/Kiritimati', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rate_mark`
--

CREATE TABLE `rate_mark` (
  `id` int(11) NOT NULL,
  `mark` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate_mark`
--

INSERT INTO `rate_mark` (`id`, `mark`) VALUES
(1, '0.02'),
(2, '0.04'),
(3, '0.06'),
(4, '0.08'),
(5, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE `speaker` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `phone_no` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `num_rate` int(11) DEFAULT NULL,
  `rating_mark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`id`, `user_id`, `name`, `description`, `phone_no`, `facebook`, `linkedin`, `twitter`, `image_path`, `email`, `num_rate`, `rating_mark`) VALUES
(1, 7, 'Haezal Bin Musa', 'Saya adalah haezal. Saya adalah seorang yang sangat rajin membuat pengaturcaraan. \nSilalah pilih saya menjadi speaker anda. ', '0129117580', 'https://www.facebook.com/haezal', '', '', '/upload/speaker_pic/1494003655590cafc7d36ee8.54900572.jpg', 'ezalepy@gmail.com', 1, '3'),
(2, 7, 'Nor Junaidah Binti Ramza', '', '0129117770', '', '', '', '/upload/speaker_pic/1494003492590caf243e86a3.18642886.jpg', 'june@um.edu.my', 1, '5'),
(3, 27, 'Robert', '', '1111111111', '', '', '', '/upload/speaker_pic/1494003492590caf243e86a3.18642886.jpg', '', 1, '5'),
(4, 20, 'Dr Shamsul', 'saya dr shamsul', '0129219291', NULL, NULL, NULL, NULL, NULL, NULL, '90'),
(5, 21, 'Dr akbariah', 'Saya dr akbariah', '29102901', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 22, 'Dr shamshuritawati', 'Saya dr sham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 23, 'Dr juhana', 'Saya dr juhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 24, 'Dr Zainuddin', 'saya pula dr zainuddin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 25, 'Dr Ani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 26, 'Dr tutut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speaker_rating`
--

CREATE TABLE `speaker_rating` (
  `id` int(11) NOT NULL,
  `speaker_id` int(11) DEFAULT NULL,
  `rate_id` int(11) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speaker_rating`
--

INSERT INTO `speaker_rating` (`id`, `speaker_id`, `rate_id`, `unique_id`, `is_active`, `timestamp`) VALUES
(1, 1, 3, '451877098', 1, '2017-05-11 15:38:35'),
(2, 2, 5, '451877098', 1, '2017-05-11 15:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `sub_category_name`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 'Performing arts', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(2, 1, 'Visual arts', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(3, 2, 'Geography', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(4, 2, 'History', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(5, 2, 'Languages and literature', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(6, 2, 'Philosophy', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(7, 3, 'Economics', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(8, 3, 'Law', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(9, 3, 'Political science', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(10, 3, 'Psychology', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(11, 3, 'Sociology', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(12, 4, 'Biology', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(13, 4, 'Chemistry', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(14, 4, 'Earth and space scienc', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(15, 4, 'Mathematics', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(16, 4, 'Physics', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(17, 5, 'Agriculture and agricultural sciences', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(18, 5, 'Computer science', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(19, 5, 'Engineering and technology', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(20, 5, 'Medicine and health sciences', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(21, 6, 'Publishing', 1, NULL, NULL, '2017-02-17 01:29:04', NULL),
(22, 6, 'Research Methodology', 1, NULL, NULL, '2017-02-17 01:29:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'roEvym-Eq_nER96lzWhtg-XyyqaMf77i', 1486205699, 0),
(5, 'NdqHUYDsuvpqZfOsFbGkhSguIugiYM8C', 1493214850, 0),
(7, 'uDe0PVaI1AmVa1dftEJR7SC1Wx5Ufpgh', 1493516187, 0),
(11, 'onOACPQNhI6POkfdm-K_JzWY68M70vv5', 1501685682, 0),
(12, 'NeJ1wnugpWud07D1k7joVvmT6_pYswk1', 1501847708, 0),
(13, 'EV0w56ry-NwGGQsUDCsAL7Z3sp1Oe8Js', 1502614446, 0),
(14, 'BYidzG1B4cjnBwQl4yRVuOObTW_ttIxZ', 1502614459, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '10',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`, `password_reset_token`) VALUES
(1, 'haezal', 'ezalepy@gmail.com', '$2y$10$uJF3.GeNTfcxH.xWkgPV4u.qqS/A8Me6VyDbcNgLzlu9JB.cYTzC6', 'pi_3vnSCt4Sk0TwYULFM-lXjlUAvVJjY', 1486205777, NULL, NULL, '::1', 1486205699, 1500827433, 0, 1501491767, 10, NULL),
(5, 'participant', 'participant@gmail.com', '$2y$10$V17iqsU9aALtrr4CRhBGr.8A5GQm6yL6hmUCqags1w82fj9LmK7aW', '8WBkwK-Q06Fo28WO1036dKVlvk74wJB-', 1493214875, NULL, NULL, '192.168.1.101', 1493214850, 1493214850, 0, 1494725183, 10, NULL),
(6, 'siti', 'siti.iimat@gmail.com', '$2y$10$ZTw9nVYZ.mfSIp6BiXoIL.u1IsDU.1p/YS5LiUkLF3.t0F6xs.2b6', '7poRfIhHW4KQXH3gWO7rakxUwp345F4d', 1493345560, NULL, NULL, '192.168.1.101', 1493345503, 1493345503, 0, 1500289834, 10, NULL),
(7, 'organizer', 'organizer@gmail.com', '$2y$10$63eBRcyoN3G92H7Ono/Oju/UAEGD0KaMJ83j0vy0EGzS7xBTYa/wC', 'MQsMPDR2--S8NjQhSBQ9cxcs8n5IXeNN', 1493516207, NULL, NULL, '192.168.1.101', 1493516187, 1493516187, 0, 1495517004, 10, NULL),
(8, 'nizam', 'nizam101@hotmail.com', '$2y$10$4jBbymzKOEiHZX8OOqNZSOsJvW59w4xc2Fgy/Kr4KGbQYuK2RjGGK', 'wQupTJXjgQB0I2D0Y_Jv5l5Z1xRQOqCg', 1494024548, NULL, NULL, '192.168.1.101', 1494024503, 1494024503, 0, 1501055157, 10, NULL),
(9, '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 10, NULL),
(11, 'kayd', 'kayd96@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1494024521, NULL, NULL, '::1', 1501685682, 1501685682, 0, 1504535199, 10, NULL),
(12, 'king', 'koko@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'JOFDmxIMdZufvC3I42Bg3cLC-Y5I0aGr', 1494024522, NULL, NULL, '::1', 1501847708, 1501847708, 0, 1501847801, 10, NULL),
(13, 'poiling', 'poil@gmail.com', '$2y$10$wog5YedWZhjZYo6riirTeuDk20jQi.FBU6G4ZVJQjN8SSOxyTXq86', 'LDnS6fk9WHh6BNX6dBouNtw3XFqRAIQd', NULL, NULL, NULL, '::1', 1502614446, 1502614446, 0, NULL, 10, NULL),
(14, 'poiling2', 'poiling@gmail.com', '$2y$10$AwGPE6yRuLDU6sVFkemVm.rhqvC3NyZg.0/EIVTfNs8hL0bJeEqP2', 'Hh6a0pjIZQqkM9JF51OzqbB7Un32-Xil', NULL, NULL, NULL, '::1', 1502614459, 1502614459, 0, NULL, 10, NULL),
(15, 'kayd200', 'kayd95@gmail.com', '$2y$10$ONyoZtC8MVGly7Sbm1BgS.d8/7S9Z9C2696tEgfPPlC2ryYetT01K', 'qUIyZqdxu64q89vkrFr2AhBLVJh5o-x4', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1504535767, 10, NULL),
(18, 'Dr. Nader Ale Ebrahim\r\n', 'nader@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(19, 'Assoc. Prof Dr. Noor Harun Abd Karim \r\n', 'Noor@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(20, 'Dr. Shamsul Mohd Zain\r\n', 'Shamsul@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(21, 'Dr. Akbariah Binti Mohd Mahdzir\r\n', 'Akbariah@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(22, 'Dr. Shamshuritawati bt. Sharif\r\n', 'Shamshuritawati@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(23, 'Professor Dr. Juhana Salim\r\n', 'Juhana@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(24, 'Professor Dr. Zainudin Hj Awangg\r\n', 'Zainudin@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(25, 'Dr. Ani Munirah Mohamad \r\n', 'Ani@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1502616697, 10, NULL),
(26, 'A/P Dr. Tutut Herawan\r\n', 'Tutut@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1504534919, 10, NULL),
(27, 'G. Robert Shelton\r\n', 'Robert@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1502614634, NULL, NULL, '::1', 1502614615, 1502614615, 0, 1504534969, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_interests`
--

CREATE TABLE `user_interests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `speaker_id` int(11) DEFAULT NULL,
  `weekday` tinyint(1) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `aday` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_interests`
--

INSERT INTO `user_interests` (`id`, `user_id`, `location`, `speaker_id`, `weekday`, `paid`, `time`, `aday`) VALUES
(2, 12, 'Kuala Lumpur', 2, 1, 0, -1, 1),
(3, 6, 'Kuala Lumpur', 1, 1, 0, 0, 1),
(4, 15, 'Kuala Lumpur', 2, -1, -1, -1, -1),
(9, 11, 'Kuala Lumpur', 1, 1, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_event_1` (`category_id`),
  ADD KEY `fk_event_2` (`sub_category_id`),
  ADD KEY `fk_event_3` (`event_type_id`),
  ADD KEY `fk_event_4` (`user_id`),
  ADD KEY `fk_event_speaker_id` (`speaker_id`);

--
-- Indexes for table `event_join`
--
ALTER TABLE `event_join`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_event_join_event_id` (`event_id`),
  ADD KEY `fk_event_join_user_id` (`user_id`);

--
-- Indexes for table `event_rating`
--
ALTER TABLE `event_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_event_rating_event_id` (`event_id`),
  ADD KEY `fk_event_rating_user_id` (`user_id`),
  ADD KEY `fk_event_rating_rate_id` (`rate_id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_faculty` (`faculty_id`);

--
-- Indexes for table `rate_mark`
--
ALTER TABLE `rate_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_speaker_user_id` (`user_id`);

--
-- Indexes for table `speaker_rating`
--
ALTER TABLE `speaker_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speaker_rating_fk1` (`speaker_id`),
  ADD KEY `speaker_rating_fk2` (`rate_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_category_category_id` (`category_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- Indexes for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `fk_interest_speaker_id` (`speaker_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177039;
--
-- AUTO_INCREMENT for table `event_join`
--
ALTER TABLE `event_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `event_rating`
--
ALTER TABLE `event_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rate_mark`
--
ALTER TABLE `rate_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speaker`
--
ALTER TABLE `speaker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `speaker_rating`
--
ALTER TABLE `speaker_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user_interests`
--
ALTER TABLE `user_interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `fk_event_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_2` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_3` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_speaker_id` FOREIGN KEY (`speaker_id`) REFERENCES `speaker` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `event_join`
--
ALTER TABLE `event_join`
  ADD CONSTRAINT `fk_event_join_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_join_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_rating`
--
ALTER TABLE `event_rating`
  ADD CONSTRAINT `fk_event_rating_event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_rating_rate_id` FOREIGN KEY (`rate_id`) REFERENCES `rate_mark` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_event_rating_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_faculty` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `speaker`
--
ALTER TABLE `speaker`
  ADD CONSTRAINT `fk_speaker_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `speaker_rating`
--
ALTER TABLE `speaker_rating`
  ADD CONSTRAINT `speaker_rating_fk1` FOREIGN KEY (`speaker_id`) REFERENCES `speaker` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `speaker_rating_fk2` FOREIGN KEY (`rate_id`) REFERENCES `rate_mark` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `fk_sub_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_interests`
--
ALTER TABLE `user_interests`
  ADD CONSTRAINT `fk_interest_speaker_id` FOREIGN KEY (`speaker_id`) REFERENCES `speaker` (`id`),
  ADD CONSTRAINT `fk_interest_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
