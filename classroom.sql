-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2021 at 04:31 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add class', 7, 'add_class'),
(26, 'Can change class', 7, 'change_class'),
(27, 'Can delete class', 7, 'delete_class'),
(28, 'Can view class', 7, 'view_class'),
(29, 'Can add dept', 8, 'add_dept'),
(30, 'Can change dept', 8, 'change_dept'),
(31, 'Can delete dept', 8, 'delete_dept'),
(32, 'Can view dept', 8, 'view_dept'),
(33, 'Can add student', 9, 'add_student'),
(34, 'Can change student', 9, 'change_student'),
(35, 'Can delete student', 9, 'delete_student'),
(36, 'Can view student', 9, 'view_student'),
(37, 'Can add teacher', 10, 'add_teacher'),
(38, 'Can change teacher', 10, 'change_teacher'),
(39, 'Can delete teacher', 10, 'delete_teacher'),
(40, 'Can view teacher', 10, 'view_teacher'),
(41, 'Can add Attendance', 11, 'add_teacherattendance'),
(42, 'Can change Attendance', 11, 'change_teacherattendance'),
(43, 'Can delete Attendance', 11, 'delete_teacherattendance'),
(44, 'Can view Attendance', 11, 'view_teacherattendance'),
(45, 'Can add student attendance', 12, 'add_studentattendance'),
(46, 'Can change student attendance', 12, 'change_studentattendance'),
(47, 'Can delete student attendance', 12, 'delete_studentattendance'),
(48, 'Can view student attendance', 12, 'view_studentattendance'),
(49, 'Can add course', 13, 'add_course'),
(50, 'Can change course', 13, 'change_course'),
(51, 'Can delete course', 13, 'delete_course'),
(52, 'Can view course', 13, 'view_course'),
(53, 'Can add admin', 14, 'add_admin'),
(54, 'Can change admin', 14, 'change_admin'),
(55, 'Can delete admin', 14, 'delete_admin'),
(56, 'Can view admin', 14, 'view_admin'),
(57, 'Can add pendingattendance', 15, 'add_pendingattendance'),
(58, 'Can change pendingattendance', 15, 'change_pendingattendance'),
(59, 'Can delete pendingattendance', 15, 'delete_pendingattendance'),
(60, 'Can view pendingattendance', 15, 'view_pendingattendance');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_admin`
--

CREATE TABLE `classroom_admin` (
  `admin_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_admin`
--

INSERT INTO `classroom_admin` (`admin_id`, `name`, `sex`, `user_id`) VALUES
('1', 'management', 'Male', 5);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_class`
--

CREATE TABLE `classroom_class` (
  `id` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `sem` int(11) NOT NULL,
  `dept_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_class`
--

INSERT INTO `classroom_class` (`id`, `section`, `sem`, `dept_id`) VALUES
('1', 'A', 1, '1'),
('2', 'B', 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_course`
--

CREATE TABLE `classroom_course` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `dept_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_course`
--

INSERT INTO `classroom_course` (`id`, `name`, `shortname`, `dept_id`) VALUES
('1', 'Operating System', 'OS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_dept`
--

CREATE TABLE `classroom_dept` (
  `id` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_dept`
--

INSERT INTO `classroom_dept` (`id`, `name`) VALUES
('1', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_pendingattendance`
--

CREATE TABLE `classroom_pendingattendance` (
  `id` bigint(20) NOT NULL,
  `reg_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `dept_id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classroom_student`
--

CREATE TABLE `classroom_student` (
  `enrol_no` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `dept_id` varchar(100) NOT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_student`
--

INSERT INTO `classroom_student` (`enrol_no`, `name`, `sex`, `user_id`, `dept_id`, `attendance`) VALUES
('19UCSI', 'Krish', 'Male', 15, '1', 2),
('19UICS018', 'Aayush kumar singh', 'male', 4, '1', 0),
('UCS18', 'Nitish Singh', 'Male', 16, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_teacher`
--

CREATE TABLE `classroom_teacher` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `dept_id` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `attendance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_teacher`
--

INSERT INTO `classroom_teacher` (`id`, `name`, `sex`, `dept_id`, `user_id`, `attendance`) VALUES
('1', 'Nishant', 'Male', '1', 3, 0),
('2', 'Dwayne Johnson', 'Male', '1', 7, 0),
('3', 'Anmol', 'Male', '1', 8, 0),
('5', 'Harry', 'Male', '1', 10, 1),
('6', 'Aayush Kumar Singh', 'Female', '1', 11, 2),
('7', 'Aayush Kumar Singh', 'Female', '1', 12, 0),
('ICS', 'Anand Kumar', 'Male', '1', 9, 0),
('UTCS18', 'Saket Singh', 'Male', '1', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `classroom_user`
--

CREATE TABLE `classroom_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_user`
--

INSERT INTO `classroom_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$Ylrio2O5w5Fu2llYW1Bdb7$Ufwwqy+o0rDwXRh5ekjybP9wE55YL6aONe4O6Zz295s=', NULL, 1, 'root', '', '', 'aayushiiitcse@gmail.com', 1, 1, '2021-09-02 11:22:35.012690'),
(2, 'pbkdf2_sha256$260000$4rCTayz9KF0rq6F8fruuIS$GP4iBgM+sZZum75cF/rBZ+I9QIoW5xDJYnK6jD6g0+o=', '2021-09-04 14:06:48.377511', 1, 'Aayush', '', '', 'aayushiiitcse1@gmail.com', 1, 1, '2021-09-02 11:25:28.867249'),
(3, 'teacher123', NULL, 0, 'teacher', '', '', '', 0, 1, '2021-09-02 11:28:02.000000'),
(4, 'student123', NULL, 0, 'student', '', '', '', 0, 1, '2021-09-02 11:30:44.000000'),
(5, 'admin123', NULL, 0, 'admin', '', '', '', 0, 1, '2021-09-02 11:50:29.000000'),
(6, 'rocky', NULL, 0, 'Rock', '', '', '', 0, 1, '2021-09-03 12:39:27.544906'),
(7, 'rock', NULL, 0, 'Dwayne', '', '', '', 0, 1, '2021-09-03 12:40:41.323226'),
(8, '!6hSOOMIIIzEEe9MCUgTzdxGYYUrebGFqKQXjpcET', NULL, 0, 'Anmol', '', '', 'anmol123', 0, 1, '2021-09-03 12:47:31.840225'),
(9, '!D7OZKmsnowjvYP0UhAZO8bS0clifL5nV4llaPeHn', NULL, 0, 'Anand', '', '', '12527', 0, 1, '2021-09-03 12:50:03.665696'),
(10, 'pbkdf2_sha256$260000$vIdhF9HiyDDmIbYORwN3Vl$w1IMxvsX5F+4pPBexUvOdEIdppwWq5TmwcFvIOhkXok=', '2021-09-04 13:11:07.267880', 0, 'Harry', '', '', 'Harry@442.com', 0, 1, '2021-09-03 12:54:07.851381'),
(11, 'pbkdf2_sha256$260000$Gd7uHnFhWOhLyDBklkMJFQ$2/diRtT8fvQTjPkvRKkYDA1D31JN5QmoLTe+bhOrZwM=', '2021-09-04 07:18:32.813114', 0, 'Hero', '', '', 'malemeaayushkumarsingh@gmail.com', 0, 1, '2021-09-04 06:54:26.267228'),
(12, 'pbkdf2_sha256$260000$VVDxbTPvC6vJNSivmom3tM$Dt2iyiOqUcTciyFHqKj/nd27lH83rCS1iKsVqp+Rkcw=', '2021-09-04 07:08:45.109533', 0, 'Heroine', '', '', 'malemeaayushkumarsingh@gmail.com', 0, 1, '2021-09-04 06:55:13.885779'),
(13, 'pbkdf2_sha256$260000$x1LRCKQalkjrnCqiEzwfUK$ZCcCVCKK5xhMMAtK5vdzy1soLg6NebdZJIwCLQ1ywoo=', NULL, 0, 'Jash', '', '', 'Jash@email.com', 0, 1, '2021-09-04 12:37:43.644137'),
(15, 'pbkdf2_sha256$260000$rKLWm5gKhUegHqJLeC8KNq$P+Y1JkC/iurXsMw+q4hBs98lxSAvGJEv55jjLMwy4Pk=', '2021-09-04 13:14:53.579096', 0, 'Krish', '', '', 'Krish@gmail.com', 0, 1, '2021-09-04 12:49:53.642821'),
(16, 'pbkdf2_sha256$260000$O3ElTpdddXo8EZgcrouqCB$f2vWJZTMV7Bq3dFRGNSD40yoYs9anYFCAgzxrqH+kRc=', '2021-09-04 14:27:50.851657', 0, 'Nitish', '', '', 'Nitish@gmail.com', 0, 1, '2021-09-04 13:53:08.205174'),
(17, 'pbkdf2_sha256$260000$l4ti8Qxxm2uI6tfgkgBUoe$ynC9N39zdXseN+4GQAqIO/sVTYxOMoaqX4FYbp+S2RY=', '2021-09-04 13:56:06.035447', 0, 'Saket', '', '', 'Saket@gmail.com', 0, 1, '2021-09-04 13:55:02.271969');

-- --------------------------------------------------------

--
-- Table structure for table `classroom_user_groups`
--

CREATE TABLE `classroom_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classroom_user_user_permissions`
--

CREATE TABLE `classroom_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroom_user_user_permissions`
--

INSERT INTO `classroom_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-02 11:29:44.692107', '3', 'teacher', 1, '[{\"added\": {}}]', 6, 2),
(2, '2021-09-02 11:30:03.105108', '1', 'CSE', 1, '[{\"added\": {}}]', 8, 2),
(3, '2021-09-02 11:30:17.845358', '1', 'Nishant_teacher', 1, '[{\"added\": {}}]', 10, 2),
(4, '2021-09-02 11:31:11.474256', '4', 'student', 1, '[{\"added\": {}}]', 6, 2),
(5, '2021-09-02 11:32:05.868219', '1', 'CSE : 1 A', 1, '[{\"added\": {}}]', 7, 2),
(6, '2021-09-02 11:32:09.442251', '19UICS018', 'Aayush kumar singh_student', 1, '[{\"added\": {}}]', 9, 2),
(7, '2021-09-02 11:49:35.314004', '7', 'Nishant : A : CSE', 1, '[{\"added\": {}}]', 11, 2),
(8, '2021-09-02 11:50:44.044227', '5', 'admin', 1, '[{\"added\": {}}]', 6, 2),
(9, '2021-09-02 11:51:04.057789', '1', 'management', 1, '[{\"added\": {}}]', 14, 2),
(10, '2021-09-04 13:10:01.418188', '11', 'Krish', 3, '', 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(14, 'classroom', 'admin'),
(7, 'classroom', 'class'),
(13, 'classroom', 'course'),
(8, 'classroom', 'dept'),
(15, 'classroom', 'pendingattendance'),
(9, 'classroom', 'student'),
(12, 'classroom', 'studentattendance'),
(10, 'classroom', 'teacher'),
(11, 'classroom', 'teacherattendance'),
(6, 'classroom', 'user'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-02 11:21:10.118005'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-09-02 11:21:10.187617'),
(3, 'auth', '0001_initial', '2021-09-02 11:21:10.455620'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-09-02 11:21:10.501608'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-09-02 11:21:10.508583'),
(6, 'auth', '0004_alter_user_username_opts', '2021-09-02 11:21:10.513531'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-09-02 11:21:10.520530'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-09-02 11:21:10.525044'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-09-02 11:21:10.532020'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-09-02 11:21:10.539046'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-09-02 11:21:10.544979'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-09-02 11:21:10.557186'),
(13, 'auth', '0011_update_proxy_permissions', '2021-09-02 11:21:10.565902'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-09-02 11:21:10.572650'),
(15, 'classroom', '0001_initial', '2021-09-02 11:21:11.630110'),
(16, 'admin', '0001_initial', '2021-09-02 11:21:11.751902'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-09-02 11:21:11.765209'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-02 11:21:11.775175'),
(19, 'sessions', '0001_initial', '2021-09-02 11:21:11.811340'),
(20, 'classroom', '0002_alter_teacherattendance_options', '2021-09-02 11:34:22.284917'),
(21, 'classroom', '0003_rename_student_teacherattendance_teacher', '2021-09-02 11:35:23.075067'),
(22, 'classroom', '0004_auto_20210903_1957', '2021-09-03 14:27:44.434976'),
(23, 'classroom', '0005_pendingattendance', '2021-09-04 05:30:43.110753'),
(24, 'classroom', '0006_auto_20210904_1223', '2021-09-04 06:53:17.993351'),
(25, 'classroom', '0007_auto_20210904_1908', '2021-09-04 13:38:22.323766');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dkt4dxv8l07bho7nrgozi4bdmlfdci2o', 'e30:1mMNe1:NXQKsVslEjmjDVd18AXh38tzFFU_9tHbi_RU_dl4rM4', '2021-09-18 04:51:09.655454'),
('kc49bh139jd3ejg8bld15o7mbc7x6fqy', '.eJxVjDsOwjAQBe_iGln-7CoOJT1nsNbeNQ4gR4qTCnF3iJQC2jcz76UibWuNW5clTqzOyqnT75YoP6TtgO_UbrPOc1uXKeld0Qft-jqzPC-H-3dQqddvjT6RNWZgB8yMwcPg0aRig7VOiiEzAjhAQwHQiR9zFiycIAhaF4J6fwDAxzcB:1mMWJk:y4Eda02Aqd_6YMQR6s0g3Xjt1wNEAHVHQKoYAFGQNRc', '2021-09-18 14:06:48.386490');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `classroom_admin`
--
ALTER TABLE `classroom_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `classroom_class`
--
ALTER TABLE `classroom_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_class_dept_id_a6e16e5c_fk_classroom_dept_id` (`dept_id`);

--
-- Indexes for table `classroom_course`
--
ALTER TABLE `classroom_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classroom_course_dept_id_39145ef8_fk_classroom_dept_id` (`dept_id`);

--
-- Indexes for table `classroom_dept`
--
ALTER TABLE `classroom_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classroom_pendingattendance`
--
ALTER TABLE `classroom_pendingattendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `classroom_pendingatt_dept_id_d396212c_fk_classroom` (`dept_id`);

--
-- Indexes for table `classroom_student`
--
ALTER TABLE `classroom_student`
  ADD PRIMARY KEY (`enrol_no`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `classroom_student_dept_id_592d07c0_fk_classroom_dept_id` (`dept_id`);

--
-- Indexes for table `classroom_teacher`
--
ALTER TABLE `classroom_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `classroom_teacher_dept_id_058b6515_fk_classroom_dept_id` (`dept_id`);

--
-- Indexes for table `classroom_user`
--
ALTER TABLE `classroom_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `classroom_user_groups`
--
ALTER TABLE `classroom_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classroom_user_groups_user_id_group_id_cb852cf0_uniq` (`user_id`,`group_id`),
  ADD KEY `classroom_user_groups_group_id_b5028fea_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `classroom_user_user_permissions`
--
ALTER TABLE `classroom_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classroom_user_user_perm_user_id_permission_id_37c329f2_uniq` (`user_id`,`permission_id`),
  ADD KEY `classroom_user_user__permission_id_ccaa6935_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_classroom_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `classroom_pendingattendance`
--
ALTER TABLE `classroom_pendingattendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `classroom_user`
--
ALTER TABLE `classroom_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `classroom_user_groups`
--
ALTER TABLE `classroom_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classroom_user_user_permissions`
--
ALTER TABLE `classroom_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `classroom_admin`
--
ALTER TABLE `classroom_admin`
  ADD CONSTRAINT `classroom_admin_user_id_bde9587f_fk_classroom_user_id` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `classroom_class`
--
ALTER TABLE `classroom_class`
  ADD CONSTRAINT `classroom_class_dept_id_a6e16e5c_fk_classroom_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `classroom_dept` (`id`);

--
-- Constraints for table `classroom_course`
--
ALTER TABLE `classroom_course`
  ADD CONSTRAINT `classroom_course_dept_id_39145ef8_fk_classroom_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `classroom_dept` (`id`);

--
-- Constraints for table `classroom_pendingattendance`
--
ALTER TABLE `classroom_pendingattendance`
  ADD CONSTRAINT `classroom_pendingatt_dept_id_d396212c_fk_classroom` FOREIGN KEY (`dept_id`) REFERENCES `classroom_dept` (`id`),
  ADD CONSTRAINT `classroom_pendingatt_user_id_9577423b_fk_classroom` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `classroom_student`
--
ALTER TABLE `classroom_student`
  ADD CONSTRAINT `classroom_student_dept_id_592d07c0_fk_classroom_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `classroom_dept` (`id`),
  ADD CONSTRAINT `classroom_student_user_id_3a3bf7a3_fk_classroom_user_id` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `classroom_teacher`
--
ALTER TABLE `classroom_teacher`
  ADD CONSTRAINT `classroom_teacher_dept_id_058b6515_fk_classroom_dept_id` FOREIGN KEY (`dept_id`) REFERENCES `classroom_dept` (`id`),
  ADD CONSTRAINT `classroom_teacher_user_id_7f5f571d_fk_classroom_user_id` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `classroom_user_groups`
--
ALTER TABLE `classroom_user_groups`
  ADD CONSTRAINT `classroom_user_groups_group_id_b5028fea_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `classroom_user_groups_user_id_70bae1b0_fk_classroom_user_id` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `classroom_user_user_permissions`
--
ALTER TABLE `classroom_user_user_permissions`
  ADD CONSTRAINT `classroom_user_user__permission_id_ccaa6935_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `classroom_user_user__user_id_fc6f1134_fk_classroom` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_classroom_user_id` FOREIGN KEY (`user_id`) REFERENCES `classroom_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
