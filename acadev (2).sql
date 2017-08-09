-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 04:14 
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
(3, 7, 6, 21, 1, 'Workshop Big Data', '', '2017-10-02', '2017-11-02', '', '', '', '', '', 'FREE', '', '2017-05-05', '2017-05-06', 'DTC', 'big data,event,workshop', 1, NULL, NULL, '2017-08-04 14:20:03', NULL, '4', 5, 11, 1),
(4, 7, 6, 22, 2, 'Seminar bagaimana nak create research methodology', '', '2017-05-18', '2017-05-20', '', '', '', '', '', 'FREE', '', '2017-05-20', '2017-05-21', '', '', 1, NULL, NULL, '2017-08-05 14:46:37', NULL, NULL, NULL, 16, 1),
(5, 7, 5, 18, 1, 'Network logic', 'Network', '2017-05-11', '2017-05-11', '', '', '', '', '', 'FREE', '', '2017-05-12', NULL, '', '', 1, NULL, NULL, '2017-08-04 14:20:10', NULL, '5', 1, 6, 1),
(22, 7, 6, 21, 1, 'LITERATURE REVIEW – FROM SEARCH TO PUBLICATION', 'Wilayah Perseketuan, Malaysia	\"This workshop is aimed for young researchers / postgraduate students who intend to write literature review papers and to increase their paper’s visibility and citations.\r\n \r\nSome of the topics included:\r\n- Systematic review\r\n- Finding keywords\r\n- Finding proper articles\r\n- Evaluate a paper quality\r\n- Evaluate a journal quality\r\n- Indexing desktop search tool\r\n- Writing a literature review\r\n- Paper submission procedure\r\n- Target suitable journal\r\n- Promote publication to get more citation\"', '2017-10-02', '2017-02-14', 'Workshop Series \"research visibility ', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Centre for Research Service (PPP)', 'um', 'RM400', 'http://umconference.um.edu.my/ls', '2017-06-02', '2017-06-03', 'Computer Lab, Level 2,     Research Management & Innovation Complex (IPPP).', 'Literature review, review, publication', 1, NULL, NULL, '2017-08-05 15:23:05', NULL, '5', 1, 10, 1),
(23, 7, 6, 21, 1, 'Make audio slides for your research', 'N/A', '2017-08-30', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-08-31', NULL, 'Computer Lab, Level 2, Institute of Research Management & Monitoring (IPPP)', 'research tools by nader, audio slide,', 1, NULL, NULL, '2017-08-05 15:21:11', NULL, '5', 1, 3, 1),
(24, 7, 6, 21, 1, 'Academic  social networking (Research gate & Acadeia) and the research impact', 'N/A', '2017-01-25', NULL, 'N/A', 'Kuala Lumpur', 'Kuala Lumpur	Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-01-25', NULL, 'Computer Lab, Level 2, Institute of Research Management & Monitoring (IPPP', 'research tools by nader, audio slide', 1, NULL, NULL, '2017-07-20 07:21:25', NULL, '3', 2, 10, 1),
(25, 7, 6, 21, 1, 'Publish online magazine to promote publications and research findings', 'Wilayah Perseketuan, Malaysia	N/A', '2017-10-17', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-10-18', NULL, 'Computer Lab, Level 2, Institute of Research Management & Monitoring (IPPP)', 'research tools by nader, audio slide', 1, NULL, NULL, '2017-05-23 09:36:48', NULL, NULL, NULL, 1, 1),
(26, 7, 6, 21, 1, 'Enhance research visibility by tracking actions', 'N/A', '2017-10-31', NULL, 'N/A', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Research Support Unit, Centre for research Services (PPP), IPPP', 'UM', 'FREE', 'http://umconference.um.edu.my/ws', '2017-11-01', NULL, 'Computer Lab, Level 2, Institute of Research Management & Monitoring (IPPP)', 'research tools by nader, audio slide', 1, NULL, NULL, '2017-05-23 10:00:32', NULL, NULL, NULL, 1, 1),
(27, 7, 6, 21, 1, 'HOW TO PUBLISH QUALITATIVE RESEARCH IN ISI/SCOPUS-INDEXED JOURNALS?', 'Who should join?\r\nPostgraduates in the fields of arts, social sciences, and humanities.\r\nFirst-year postgraduates who want to learn tips & tricks in publishing qualitative articles in high reputation journals.\r\nFinal-year postgraduates who want to fill the \"\"publication\"\" graduation requirements.\r\nAnyone who is interested\r\n\r\nWhat can you expect to learn?\r\nIntroduction to qualitative research\r\nIntroduction to qualitative analysis\r\nGeneral knowledge of academic writing \r\nHow to present qualitative findings\r\nHow to select potential journals\r\nHow to write to journal editors and respond to their feedback\r\n', '2019-09-20', NULL, '', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Institute of Graduate Studies', 'UM', 'RM50', '', '2017-09-20', NULL, 'Bilik Jasmine, Raflessia Hall, 4th Floor, Institute of Graduate Studies, University of Malaya ', 'isi publication, qualitative research, indexed journals', 1, NULL, NULL, '2017-05-23 09:37:47', NULL, NULL, NULL, 1, 1),
(28, 7, 6, 22, 1, 'Workshop on quantitative data analysis', 'The purpose of this 2-days workshop is to\r\nprovide training in basic statistical\r\nanalyses for students and staff who have\r\nconducted quantitative research and need\r\nto test their hypotheses. Both parametric\r\nand non parametric statistics will be\r\nincluded in this 2- day workshop . The\r\nworkshop will provide hands-on training in\r\nthe use of IBM SPSS version 24 for the\r\nanalysis of data. No previous background\r\nin research methodology and statistical is\r\nassumed . At the end of the course\r\nparticipants should be able to :\r\na) Understand the language of\r\nmeasurements\r\nb) Identify the various types of variables\r\nand use them in formulating research\r\nquestions and hypotheses.\r\nc) Identify the most appropriate\r\nstatistical tests to be used in order to\r\ntest their hypotheses.\r\nd) Correctly conduct statistical analyses\r\nusing IBM SPSS version 24.\r\ne) Interpret findings and draw\r\nappropriate conclusions', '2018-04-24', NULL, '', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Department of Library and Information Science, FSCIT ', 'UM', 'RM80 ', 'http://www.fsktm.um.edu.my/what\'s-up/workshop-training', '2018-04-25', NULL, 'MM2,Block B, FSCIT', 'data analysis, sampling method, quantitative', 1, NULL, NULL, '2017-05-22 22:22:22', NULL, '2', 2, 4, 1),
(29, 7, 6, 22, 1, 'The Biostatistic Workshop. Learn how to analyse SNP and CNV data using SPSS', 'Analysis of single  nucleotide polymorphism (SNP) and copy number variant (CNV) data is always a challenge even when you have a basic knowledge on the application of statistical tools. Without understanding of proper coding, design and data interpretation, researchers tend to make mistake.', '2017-08-01', '2017-08-04', '', 'Kuala Lumpur', 'Wilayah Perseketuan, Malaysia', 'Pharmacogenomics Lab Department of Pharmacology Faculty Of Medicine', 'UM', 'Postgraduates & RAs RM300\r\nNon-Postgraduates and Others RM400 ', 'https://docs.google.com/a/siswa.um.edu.my/forms/d/e/1FAIpQLSeZceCtHeKRkkgcRfBe8gOZ_9zSUXvtG4Kt5kVg-hSh5e5B1A/viewform?c=0&w=1', '2017-08-04', '2017-08-05', 'Computer Lab 2 , 4th Floor, Faculty Of Medicine,UM', 'Single nucleotide polymorphism (SNP), Copy number Variant (CNV), Stastical tools, data analysis method', 1, NULL, NULL, '2017-05-23 09:42:51', NULL, '5', 3, 6, 1);

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
(18, 27, 12, '2017-08-04 13:58:26', 0);

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
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Nizam Nazri', 2, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 'Asia/Kuala_Lumpur', NULL),
(11, 'Khairul Danial', 2, 'kayd95@gmail.com', '', 'd41d8cd98f00b204e9800998ecf8427e', 'Malaysia', '', '', 'Pacific/Kiritimati', NULL),
(12, 'chicken', 2, 'koko@gmail.com', 'koko@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

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
(1, 7, 'Haezal Bin Musa', 'Saya adalah haezal. Saya adalah seorang yang sangat rajin membuat pengaturcaraan. \r\nSilalah pilih saya menjadi speaker anda. ', '0129117580', 'https://www.facebook.com/haezal', '', '', '/upload/speaker_pic/1494003655590cafc7d36ee8.54900572.jpg', 'ezalepy@gmail.com', 1, '3'),
(2, 7, 'Nor Junaidah Binti Ramza', '', '0129117770', '', '', '', '/upload/speaker_pic/1494003492590caf243e86a3.18642886.jpg', 'june@um.edu.my', 1, '5');

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
(12, 'NeJ1wnugpWud07D1k7joVvmT6_pYswk1', 1501847708, 0);

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
(11, 'kayd', 'kayd95@gmail.com', '$2y$10$6y04vsXHaNDwhP9VO8.spuFLAbWb1.fF4DRiDiUXGKa7fR7WOJJRy', 'cvkVRbjIImvUluTvJKeDGYV3DRbdxofc', 1494024521, NULL, NULL, '::1', 1501685682, 1501685682, 0, 1501946104, 10, NULL),
(12, 'king', 'koko@gmail.com', '$2y$10$zWp5Rh8ZgCbudsFRa6yTFeDO8zKW/mMBw1eEjIypVbRnImLz08pNy', 'JOFDmxIMdZufvC3I42Bg3cLC-Y5I0aGr', 1494024522, NULL, NULL, '::1', 1501847708, 1501847708, 0, 1501847801, 10, NULL);

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
(1, 11, 'Kuala Lumpur', 2, 1, 0, -1, -1),
(2, 12, 'Kuala Lumpur', 2, 1, 0, -1, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `event_join`
--
ALTER TABLE `event_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
