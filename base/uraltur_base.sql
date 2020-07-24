-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 24 2020 г., 20:39
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uraltur_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.uraltur1.ru', 'yes'),
(2, 'home', 'http://local.uraltur1.ru', 'yes'),
(3, 'blogname', 'Уральский экспресс', 'yes'),
(4, 'blogdescription', 'Туры по России, зарубежный туризм, авиа и жд кассы', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '260443@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:21:\"meta-box/meta-box.php\";i:4;s:35:\"responsive-menu/responsive-menu.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:85:\"D:\\OpenServer\\OSPanel\\domains\\local.uraltur1.ru/wp-content/themes/your_theme/page.php\";i:1;s:86:\"D:\\OpenServer\\OSPanel\\domains\\local.uraltur1.ru/wp-content/themes/your_theme/style.css\";i:2;s:90:\"D:\\OpenServer\\OSPanel\\domains\\local.uraltur1.ru/wp-content/themes/your_theme/functions.php\";i:3;s:87:\"D:\\OpenServer\\OSPanel\\domains\\local.uraltur1.ru/wp-content/themes/your_theme/header.php\";i:4;s:87:\"D:\\OpenServer\\OSPanel\\domains\\local.uraltur1.ru/wp-content/themes/your_theme/single.php\";}', 'no'),
(40, 'template', 'your_theme', 'yes'),
(41, 'stylesheet', 'your_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '117', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1595842329', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1594722913;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1594762334;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1594805533;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594805554;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594805556;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', 'GB:Y-PliOX$9>>&g:5&Lh3tVDgrG^OLg|CfQ]cZu&s0/YPtAttD_/}XCK9n .,!+', 'no'),
(112, 'nonce_salt', 'E~]m}a>c4glx]+ms^uJ_=!0*}cXqe5=>22|d?el7U!2^9!Y!1(aaWI)}Y-iW37X<', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580290602;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'auth_key', 'a[W_j:?0W#NavCYy];[rc~Hxx-CJKe$?m}5!:XE*!=rKN+wl+@m6PD`KTylNJ~`,', 'no'),
(129, 'auth_salt', 'T).Z@P Q:_E$!wz$-vlw2K1C]]xFh3M>&[}CY:}mI|oopzF<%9{}>(EAEHiHAw0 ', 'no'),
(130, 'logged_in_key', 'X`!%f(sQ(L:x0MgWKKi33WzC3Z]*m5%lOs|p/[?a?4G.%$&Mb{^g}JQ))T>&gQXK', 'no'),
(131, 'logged_in_salt', 'b ~8q7]e*d0m=S0{ElvJ8IcNoih}KPe$]l- fJv6u=`r^]5zO]/oSWHw-%a001#_', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', 'your-clean-template-3', 'yes'),
(151, 'theme_mods_your_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"bottom\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580290664;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(174, 'recently_activated', 'a:0:{}', 'yes'),
(185, '_wp_suggested_policy_text_has_changed', 'not-changed', 'yes'),
(269, 'responsive_menu_version', '3.1.26', 'yes'),
(272, 'responsive_menu_current_page', 'container', 'yes'),
(273, 'hide_pro_options', 'no', 'yes'),
(345, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1581163807;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(373, 'secure_auth_key', 'R7mH?|w@<gN:cTO(rNSur0U-bio9[l.hcRJ{EQfx cJk7={&XHh3Ksx4.nm 4K5#', 'no'),
(374, 'secure_auth_salt', 'HQhXu>?1)%Foq@bmSye`qK{m~4sMBetumGEtB?h9k8UpEF.vd;IptXN($hvz5I)j', 'no'),
(475, 'category_children', 'a:0:{}', 'yes'),
(508, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"260443@mail.ru\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1594714205;}', 'no'),
(509, '_site_transient_timeout_browser_4f6eba7074a73b5ff7b3c338a66dc952', '1595319026', 'no'),
(510, '_site_transient_browser_4f6eba7074a73b5ff7b3c338a66dc952', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.116\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(511, '_site_transient_timeout_php_check_db560599daec4dc914fe3cee88686df3', '1595319027', 'no'),
(512, '_site_transient_php_check_db560599daec4dc914fe3cee88686df3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(513, '_site_transient_timeout_available_translations', '1594725328', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(514, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-17 12:47:05\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-05 11:33:52\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-19 11:34:21\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-24 08:04:42\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-27 07:17:53\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-12 08:30:51\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-17 18:24:32\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-08 18:18:24\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-08 18:18:33\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 19:35:42\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-18 22:29:01\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-02-14 09:42:12\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 19:05:13\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 06:02:49\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-02-14 09:40:29\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-14 12:06:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 21:29:36\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-13 05:44:24\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 20:23:33\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-23 23:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-10 15:47:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-17 21:25:28\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-26 20:03:50\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-13 18:04:36\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-16 12:41:52\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 21:55:26\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-06 12:53:24\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2020-07-04 16:43:09\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 12:25:16\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-22 18:00:03\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-06-05 20:32:13\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 20:26:35\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.4/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-12 21:35:30\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-05-19 07:43:57\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-25 11:03:02\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-02-28 21:59:12\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-05-21 16:29:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-13 22:20:11\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 20:46:26\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 20:47:20\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-22 15:40:41\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-22 13:24:47\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 19:31:47\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 09:24:17\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-18 23:47:49\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-13 14:08:48\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-10 19:08:23\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-13 09:13:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-21 08:39:17\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.7\";s:7:\"updated\";s:19:\"2020-06-04 18:07:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-16 22:44:16\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-07-08 06:47:45\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 01:42:51\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(516, '_transient_timeout_plugin_slugs', '1594803047', 'no'),
(517, '_transient_plugin_slugs', 'a:6:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:21:\"meta-box/meta-box.php\";i:4;s:35:\"responsive-menu/responsive-menu.php\";i:5;s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(522, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1594721239;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}', 'no'),
(525, '_site_transient_timeout_theme_roots', '1594723040', 'no'),
(526, '_site_transient_theme_roots', 'a:2:{s:12:\"twentytwenty\";s:7:\"/themes\";s:10:\"your_theme\";s:7:\"/themes\";}', 'no'),
(528, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1594721241;s:7:\"checked\";a:2:{s:12:\"twentytwenty\";s:3:\"1.1\";s:10:\"your_theme\";s:3:\"3.0\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(529, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1594721242;s:7:\"checked\";a:6:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.3.4\";s:21:\"meta-box/meta-box.php\";s:5:\"5.3.2\";s:35:\"responsive-menu/responsive-menu.php\";s:6:\"3.1.26\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:5:\"3.2.9\";}s:8:\"response\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"responsive-menu/responsive-menu.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/responsive-menu\";s:4:\"slug\";s:15:\"responsive-menu\";s:6:\"plugin\";s:35:\"responsive-menu/responsive-menu.php\";s:11:\"new_version\";s:6:\"3.1.29\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/responsive-menu/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/responsive-menu.3.1.29.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=1782326\";s:2:\"1x\";s:68:\"https://ps.w.org/responsive-menu/assets/icon-128x128.png?rev=1782326\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1782326\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"meta-box/meta-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/meta-box\";s:4:\"slug\";s:8:\"meta-box\";s:6:\"plugin\";s:21:\"meta-box/meta-box.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/meta-box/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/meta-box.5.3.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1929588\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/velvet-blues-update-urls\";s:4:\"slug\";s:24:\"velvet-blues-update-urls\";s:6:\"plugin\";s:53:\"velvet-blues-update-urls/velvet-blues-update-urls.php\";s:11:\"new_version\";s:5:\"3.2.9\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/velvet-blues-update-urls/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/velvet-blues-update-urls.3.2.9.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:75:\"https://s.w.org/plugins/geopattern-icon/velvet-blues-update-urls_727172.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/velvet-blues-update-urls/assets/banner-772x250.jpg?rev=486343\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(41, 22, '_menu_item_type', 'custom'),
(42, 22, '_menu_item_menu_item_parent', '0'),
(43, 22, '_menu_item_object_id', '22'),
(44, 22, '_menu_item_object', 'custom'),
(45, 22, '_menu_item_target', ''),
(46, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 22, '_menu_item_xfn', ''),
(48, 22, '_menu_item_url', 'http://local.uraltur1.ru/'),
(50, 23, '_edit_lock', '1581490549:1'),
(52, 27, '_edit_lock', '1581512745:1'),
(53, 29, '_menu_item_type', 'post_type'),
(54, 29, '_menu_item_menu_item_parent', '0'),
(55, 29, '_menu_item_object_id', '23'),
(56, 29, '_menu_item_object', 'page'),
(57, 29, '_menu_item_target', ''),
(58, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 29, '_menu_item_xfn', ''),
(60, 29, '_menu_item_url', ''),
(71, 31, '_menu_item_type', 'post_type'),
(72, 31, '_menu_item_menu_item_parent', '0'),
(73, 31, '_menu_item_object_id', '27'),
(74, 31, '_menu_item_object', 'page'),
(75, 31, '_menu_item_target', ''),
(76, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 31, '_menu_item_xfn', ''),
(78, 31, '_menu_item_url', ''),
(80, 32, '_menu_item_type', 'custom'),
(81, 32, '_menu_item_menu_item_parent', '0'),
(82, 32, '_menu_item_object_id', '32'),
(83, 32, '_menu_item_object', 'custom'),
(84, 32, '_menu_item_target', ''),
(85, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 32, '_menu_item_xfn', ''),
(87, 32, '_menu_item_url', 'http://local.uraltur1.ru/#contacts'),
(96, 34, '_menu_item_type', 'taxonomy'),
(97, 34, '_menu_item_menu_item_parent', '0'),
(98, 34, '_menu_item_object_id', '3'),
(99, 34, '_menu_item_object', 'category'),
(100, 34, '_menu_item_target', ''),
(101, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 34, '_menu_item_xfn', ''),
(103, 34, '_menu_item_url', ''),
(108, 38, '_edit_last', '1'),
(109, 38, '_edit_lock', '1580301694:1'),
(110, 38, '_wp_page_template', 'default'),
(114, 40, '_edit_last', '1'),
(115, 40, '_edit_lock', '1581612965:1'),
(127, 40, '_wp_old_slug', '%d0%b2%d1%8c%d0%b5%d1%82%d0%bd%d0%b0%d0%bc-%d0%bd%d1%8f%d1%87%d0%b0%d0%bd%d0%b3'),
(128, 43, '_edit_last', '1'),
(129, 43, '_edit_lock', '1581613122:1'),
(135, 46, '_edit_last', '1'),
(136, 46, '_edit_lock', '1581613344:1'),
(144, 50, '_edit_last', '1'),
(145, 50, '_edit_lock', '1581613516:1'),
(149, 54, '_edit_last', '1'),
(150, 54, '_edit_lock', '1594714207:1'),
(154, 57, '_form', '<label> Ваше имя\n    [text your-name] </label>\n\n<label> Ваш телефон (обязательно)\n    [email* your-email] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Параметры тура\n    [textarea your-parameters] </label>\n\n[submit \"Отправить\"]'),
(155, 57, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:53:\"Контактная форма сайта uraltur.ru\";s:6:\"sender\";s:40:\"[your-name] <fromsite@local.uraltur1.ru>\";s:9:\"recipient\";s:14:\"260443@mail.ru\";s:4:\"body\";s:222:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Уральский экспресс (http://local.uraltur1.ru)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(156, 57, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:52:\"Уральский экспресс \"[your-subject]\"\";s:6:\"sender\";s:65:\"Уральский экспресс <wordpress@local.uraltur1.ru>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:163:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта Уральский экспресс (http://local.uraltur1.ru)\";s:18:\"additional_headers\";s:24:\"Reply-To: 260443@mail.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(157, 57, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(158, 57, '_additional_settings', ''),
(159, 57, '_locale', 'ru_RU'),
(162, 54, 'uraltur_price', '500'),
(163, 58, '_edit_last', '1'),
(164, 58, '_edit_lock', '1581510274:1'),
(165, 59, '_wp_attached_file', '2020/02/1-12.jpg'),
(166, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:16:\"2020/02/1-12.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1-12-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"1-12-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1-12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1-12-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"1-12-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:16:\"1-12-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:16:\"1-12-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 58, '_thumbnail_id', '59'),
(172, 54, 'price', '22850'),
(177, 50, 'price', '23300'),
(180, 46, 'price', '30300'),
(183, 43, 'price', '31750'),
(186, 40, 'price', '38000'),
(189, 61, '_edit_last', '1'),
(190, 61, '_edit_lock', '1581513588:1'),
(191, 62, '_wp_attached_file', '2020/02/regnum_picture_158090670669197_normal.jpg'),
(192, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:577;s:6:\"height\";i:370;s:4:\"file\";s:49:\"2020/02/regnum_picture_158090670669197_normal.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"regnum_picture_158090670669197_normal-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"regnum_picture_158090670669197_normal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:49:\"regnum_picture_158090670669197_normal-234x150.jpg\";s:5:\"width\";i:234;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:49:\"regnum_picture_158090670669197_normal-400x370.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:370;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(193, 61, '_thumbnail_id', '62'),
(194, 65, '_edit_last', '1'),
(195, 65, '_edit_lock', '1581599710:1'),
(196, 66, '_wp_attached_file', '2020/02/5e445625279d1380d489def9_houses_greece_oia_475308.jpg'),
(197, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:61:\"2020/02/5e445625279d1380d489def9_houses_greece_oia_475308.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"5e445625279d1380d489def9_houses_greece_oia_475308-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"5e445625279d1380d489def9_houses_greece_oia_475308-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"5e445625279d1380d489def9_houses_greece_oia_475308-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"5e445625279d1380d489def9_houses_greece_oia_475308-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:63:\"5e445625279d1380d489def9_houses_greece_oia_475308-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:61:\"5e445625279d1380d489def9_houses_greece_oia_475308-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:61:\"5e445625279d1380d489def9_houses_greece_oia_475308-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 65, '_thumbnail_id', '66'),
(201, 70, '_wp_attached_file', '2020/01/goa-foto.jpg'),
(202, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:878;s:6:\"height\";i:498;s:4:\"file\";s:20:\"2020/01/goa-foto.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"goa-foto-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"goa-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"goa-foto-768x436.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"goa-foto-250x142.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:142;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:20:\"goa-foto-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 40, '_thumbnail_id', '70'),
(206, 72, '_wp_attached_file', '2020/01/taj-foto.jpg'),
(207, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:532;s:4:\"file\";s:20:\"2020/01/taj-foto.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"taj-foto-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"taj-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"taj-foto-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"taj-foto-226x150.jpg\";s:5:\"width\";i:226;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:20:\"taj-foto-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 43, '_thumbnail_id', '72'),
(213, 76, '_wp_attached_file', '2020/01/grecziya.jpg'),
(214, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1088;s:6:\"height\";i:725;s:4:\"file\";s:20:\"2020/01/grecziya.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"grecziya-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"grecziya-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"grecziya-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"grecziya-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"grecziya-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:20:\"grecziya-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:103:\"Lindos Bay, Rhodes Island, GreeceLindos Bay, Rhodes Island, Greece St.Paul\'s Bay, Rhodes Island, Greece\";s:17:\"created_timestamp\";s:10:\"1439683200\";s:9:\"copyright\";s:11:\"John_Walker\";s:12:\"focal_length\";s:2:\"37\";s:3:\"iso\";s:2:\"50\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:36:\"St.Paul\'s Bay, Rhodes Island, Greece\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:18:{i:0;s:9:\"Clear Sky\";i:1;s:6:\"Island\";i:2;s:9:\"Landscape\";i:3;s:15:\"Nautical Vessel\";i:4;s:15:\"Saltwater Flats\";i:5;s:19:\"Travel Destinations\";i:6;s:9:\"Vacations\";i:7;s:5:\"Water\";i:8;s:5:\"beach\";i:9;s:6:\"greece\";i:10;s:7:\"idyllic\";i:11;s:6:\"lindos\";i:12;s:6:\"rhodes\";i:13;s:3:\"sea\";i:14;s:7:\"shallow\";i:15;s:3:\"sun\";i:16;s:5:\"sunny\";i:17;s:6:\"travel\";}}}'),
(215, 46, '_thumbnail_id', '76'),
(220, 78, '_wp_attached_file', '2020/01/emiraty-foto.jpg'),
(221, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:639;s:4:\"file\";s:24:\"2020/01/emiraty-foto.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"emiraty-foto-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"emiraty-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"emiraty-foto-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"emiraty-foto-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:24:\"emiraty-foto-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 50, '_thumbnail_id', '78'),
(225, 81, '_wp_attached_file', '2020/02/turcziya-foto.jpg'),
(226, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:25:\"2020/02/turcziya-foto.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"turcziya-foto-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"turcziya-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"turcziya-foto-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"turcziya-foto-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:25:\"turcziya-foto-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 54, '_thumbnail_id', '81'),
(232, 83, '_edit_last', '1'),
(233, 83, '_edit_lock', '1581614036:1'),
(234, 84, '_wp_attached_file', '2020/02/sochi-foto.jpg'),
(235, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:22:\"2020/02/sochi-foto.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sochi-foto-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sochi-foto-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sochi-foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sochi-foto-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"sochi-foto-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:22:\"sochi-foto-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 83, '_thumbnail_id', '84'),
(239, 83, 'price', '19780'),
(240, 87, '_edit_last', '1'),
(241, 87, '_edit_lock', '1594714383:1'),
(242, 88, '_wp_attached_file', '2020/02/chernogoriya.jpg'),
(243, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1120;s:6:\"height\";i:630;s:4:\"file\";s:24:\"2020/02/chernogoriya.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"chernogoriya-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"chernogoriya-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"chernogoriya-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"chernogoriya-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"chernogoriya-250x141.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:24:\"chernogoriya-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 87, '_thumbnail_id', '88'),
(247, 87, 'price', '42270'),
(248, 90, '_edit_last', '1'),
(249, 90, '_edit_lock', '1594714123:1'),
(250, 91, '_wp_attached_file', '2020/02/majorka.jpg'),
(251, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2020/02/majorka.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"majorka-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"majorka-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"majorka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"majorka-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"majorka-113x150.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:19:\"majorka-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 90, '_thumbnail_id', '91'),
(255, 90, 'price', '48870'),
(256, 93, '_edit_last', '1'),
(257, 93, '_edit_lock', '1581867596:1'),
(258, 94, '_wp_attached_file', '2020/02/1562814623.png'),
(259, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:22:\"2020/02/1562814623.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1562814623-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"1562814623-1024x683.png\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1562814623-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"1562814623-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"1562814623-225x150.png\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:22:\"1562814623-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 93, '_thumbnail_id', '94'),
(265, 96, '_edit_last', '1'),
(266, 96, '_edit_lock', '1581867411:1'),
(267, 97, '_wp_attached_file', '2020/02/amsterdam.jpg'),
(268, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1152;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2020/02/amsterdam.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"amsterdam-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"amsterdam-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"amsterdam-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"amsterdam-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"amsterdam-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:21:\"amsterdam-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 96, '_thumbnail_id', '97'),
(272, 99, '_edit_last', '1'),
(273, 99, '_edit_lock', '1581867210:1'),
(274, 100, '_wp_attached_file', '2020/02/shri-lanka.jpg'),
(275, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:320;s:4:\"file\";s:22:\"2020/02/shri-lanka.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"shri-lanka-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"shri-lanka-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"shri-lanka-240x150.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:22:\"shri-lanka-400x320.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(276, 99, '_thumbnail_id', '100'),
(279, 102, '_edit_last', '1'),
(280, 102, '_edit_lock', '1581867252:1'),
(281, 103, '_wp_attached_file', '2020/02/vnukovo.jpg'),
(282, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:19:\"2020/02/vnukovo.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"vnukovo-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"vnukovo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"vnukovo-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"vnukovo-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:19:\"vnukovo-400x400.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 102, '_thumbnail_id', '103'),
(286, 105, '_edit_last', '1'),
(287, 105, '_edit_lock', '1581867435:1'),
(288, 106, '_wp_attached_file', '2020/02/relax.jpg'),
(289, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:203;s:4:\"file\";s:17:\"2020/02/relax.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"relax-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"relax-183x150.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 105, '_thumbnail_id', '106'),
(291, 116, '_wp_attached_file', '2020/02/favicon.png'),
(292, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:514;s:6:\"height\";i:514;s:4:\"file\";s:19:\"2020/02/favicon.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:19:\"favicon-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(293, 117, '_wp_attached_file', '2020/02/cropped-favicon.png'),
(294, 117, '_wp_attachment_context', 'site-icon'),
(295, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/02/cropped-favicon.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"big-thumb\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-favicon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 122, '_edit_last', '1'),
(300, 122, '_edit_lock', '1582304048:1'),
(301, 123, '_wp_attached_file', '2020/02/sert1.jpg'),
(302, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:188;s:6:\"height\";i:266;s:4:\"file\";s:17:\"2020/02/sert1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"sert1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"sert1-106x150.jpg\";s:5:\"width\";i:106;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(303, 122, '_thumbnail_id', '123'),
(306, 127, '_edit_last', '1'),
(307, 127, '_edit_lock', '1582301893:1'),
(308, 127, '_thumbnail_id', '123'),
(311, 129, '_edit_last', '1'),
(312, 129, '_edit_lock', '1582301916:1'),
(313, 129, '_thumbnail_id', '123'),
(316, 131, '_edit_last', '1'),
(317, 131, '_edit_lock', '1582301932:1'),
(318, 131, '_thumbnail_id', '123'),
(321, 133, '_edit_last', '1'),
(322, 133, '_edit_lock', '1582302335:1'),
(323, 133, '_thumbnail_id', '123'),
(328, 136, '_edit_last', '1'),
(329, 136, '_edit_lock', '1582990817:1'),
(331, 138, '_edit_last', '1'),
(333, 138, '_edit_lock', '1582992795:1'),
(334, 140, '_edit_last', '1'),
(336, 140, '_edit_lock', '1582991698:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2020-01-29 12:32:12', '2020-01-29 09:32:12', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://local.uraltur1.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-01-29 12:32:12', '2020-01-29 09:32:12', '', 0, 'http://local.uraltur1.ru/?page_id=2', 0, 'page', '', 0),
(22, 1, '2020-01-29 13:42:18', '2020-01-29 10:42:18', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-01-29 14:03:35', '2020-01-29 11:03:35', '', 0, 'http://local.uraltur1.ru/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-01-29 13:43:20', '2020-01-29 10:43:20', '', 'Поиск туров', '', 'publish', 'closed', 'closed', '', 'find-tour', '', '', '2020-01-29 13:43:44', '2020-01-29 10:43:44', '', 0, 'http://local.uraltur1.ru/?page_id=23', 0, 'page', '', 0),
(24, 1, '2020-01-29 13:43:20', '2020-01-29 10:43:20', '', 'Поиск туров', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-01-29 13:43:20', '2020-01-29 10:43:20', '', 23, 'http://local.uraltur1.ru/2020/01/29/23-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-01-29 13:44:47', '2020-01-29 10:44:47', '', 'О компании', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-01-29 13:44:57', '2020-01-29 10:44:57', '', 0, 'http://local.uraltur1.ru/?page_id=27', 0, 'page', '', 0),
(28, 1, '2020-01-29 13:44:47', '2020-01-29 10:44:47', '', 'О компании', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2020-01-29 13:44:47', '2020-01-29 10:44:47', '', 27, 'http://local.uraltur1.ru/2020/01/29/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-01-29 13:47:49', '2020-01-29 10:47:49', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-01-29 14:03:35', '2020-01-29 11:03:35', '', 0, 'http://local.uraltur1.ru/?p=29', 2, 'nav_menu_item', '', 0),
(31, 1, '2020-01-29 13:47:49', '2020-01-29 10:47:49', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-01-29 14:03:35', '2020-01-29 11:03:35', '', 0, 'http://local.uraltur1.ru/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2020-01-29 13:47:49', '2020-01-29 10:47:49', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-01-29 14:03:35', '2020-01-29 11:03:35', '', 0, 'http://local.uraltur1.ru/?p=32', 5, 'nav_menu_item', '', 0),
(34, 1, '2020-01-29 14:03:31', '2020-01-29 11:03:31', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2020-01-29 14:03:35', '2020-01-29 11:03:35', '', 0, 'http://local.uraltur1.ru/?p=34', 3, 'nav_menu_item', '', 0),
(38, 1, '2020-01-29 15:43:55', '2020-01-29 12:43:55', 'Предоставляя свои персональные данные Пользователь даёт согласие на обработку, хранение и использование своих персональных данных на основании ФЗ № 152-ФЗ «О персональных данных» от 27.07.2006 г. в следующих целях:\r\n<ul>\r\n 	<li>Осуществление клиентской поддержки</li>\r\n 	<li>Получения Пользователем информации о маркетинговых событиях</li>\r\n 	<li>Проведения аудита и прочих внутренних исследований с целью повышения качества предоставляемых услуг.</li>\r\n</ul>\r\nПод персональными данными подразумевается любая информация личного характера, позволяющая установить личность Пользователя/Покупателя такая как:\r\n<ul>\r\n 	<li>Фамилия, Имя, Отчество</li>\r\n 	<li>Дата рождения</li>\r\n 	<li>Контактный телефон</li>\r\n 	<li>Адрес электронной почты</li>\r\n 	<li>Почтовый адрес</li>\r\n</ul>\r\nПерсональные данные Пользователей хранятся исключительно на электронных носителях и обрабатываются с использованием автоматизированных систем, за исключением случаев, когда неавтоматизированная обработка персональных данных необходима в связи с исполнением требований законодательства.\r\n\r\nКомпания обязуется не передавать полученные персональные данные третьим лицам, за исключением следующих случаев:\r\n<ul>\r\n 	<li>По запросам уполномоченных органов государственной власти РФ только по основаниям и в порядке, установленным законодательством РФ</li>\r\n 	<li>Стратегическим партнерам, которые работают с Компанией для предоставления продуктов и услуг, или тем из них, которые помогают Компании реализовывать продукты и услуги потребителям. Мы предоставляем третьим лицам минимальный объем персональных данных, необходимый только для оказания требуемой услуги или проведения необходимой транзакции.</li>\r\n</ul>\r\nКомпания оставляет за собой право вносить изменения в одностороннем порядке в настоящие правила, при условии, что изменения не противоречат действующему законодательству РФ. Изменения условий настоящих правил вступают в силу после их публикации на Сайте.', 'Соглашение на обработку персональных данных', '', 'publish', 'closed', 'closed', '', 'agreement', '', '', '2020-01-29 15:43:55', '2020-01-29 12:43:55', '', 0, 'http://local.uraltur1.ru/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-01-29 15:43:55', '2020-01-29 12:43:55', 'Предоставляя свои персональные данные Пользователь даёт согласие на обработку, хранение и использование своих персональных данных на основании ФЗ № 152-ФЗ «О персональных данных» от 27.07.2006 г. в следующих целях:\r\n<ul>\r\n 	<li>Осуществление клиентской поддержки</li>\r\n 	<li>Получения Пользователем информации о маркетинговых событиях</li>\r\n 	<li>Проведения аудита и прочих внутренних исследований с целью повышения качества предоставляемых услуг.</li>\r\n</ul>\r\nПод персональными данными подразумевается любая информация личного характера, позволяющая установить личность Пользователя/Покупателя такая как:\r\n<ul>\r\n 	<li>Фамилия, Имя, Отчество</li>\r\n 	<li>Дата рождения</li>\r\n 	<li>Контактный телефон</li>\r\n 	<li>Адрес электронной почты</li>\r\n 	<li>Почтовый адрес</li>\r\n</ul>\r\nПерсональные данные Пользователей хранятся исключительно на электронных носителях и обрабатываются с использованием автоматизированных систем, за исключением случаев, когда неавтоматизированная обработка персональных данных необходима в связи с исполнением требований законодательства.\r\n\r\nКомпания обязуется не передавать полученные персональные данные третьим лицам, за исключением следующих случаев:\r\n<ul>\r\n 	<li>По запросам уполномоченных органов государственной власти РФ только по основаниям и в порядке, установленным законодательством РФ</li>\r\n 	<li>Стратегическим партнерам, которые работают с Компанией для предоставления продуктов и услуг, или тем из них, которые помогают Компании реализовывать продукты и услуги потребителям. Мы предоставляем третьим лицам минимальный объем персональных данных, необходимый только для оказания требуемой услуги или проведения необходимой транзакции.</li>\r\n</ul>\r\nКомпания оставляет за собой право вносить изменения в одностороннем порядке в настоящие правила, при условии, что изменения не противоречат действующему законодательству РФ. Изменения условий настоящих правил вступают в силу после их публикации на Сайте.', 'Соглашение на обработку персональных данных', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-01-29 15:43:55', '2020-01-29 12:43:55', '', 38, 'http://local.uraltur1.ru/2020/01/29/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-01-29 18:34:03', '2020-01-29 15:34:03', 'Вылет из Челябинска. С 11.03.2020 на 11 ночей.', 'Индия, ГОА', '', 'publish', 'open', 'open', '', 'vetnam-nyachang', '', '', '2020-02-13 19:54:18', '2020-02-13 16:54:18', '', 0, 'http://local.uraltur1.ru/?p=40', 0, 'post', '', 0),
(41, 1, '2020-01-29 18:34:03', '2020-01-29 15:34:03', 'с 8 сентября, 8 ночей, на двоих', 'Вьетнам, Нячанг', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-01-29 18:34:03', '2020-01-29 15:34:03', '', 40, 'http://local.uraltur1.ru/2020/01/29/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-01-29 18:40:58', '2020-01-29 15:40:58', 'Вылет из Челябинска. С 17.02.2020 на 14 ночей.', 'Тайланд, Паттайя', '', 'publish', 'open', 'open', '', 'vetnam-mujne', '', '', '2020-02-13 20:00:49', '2020-02-13 17:00:49', '', 0, 'http://local.uraltur1.ru/?p=43', 0, 'post', '', 0),
(45, 1, '2020-01-29 18:40:58', '2020-01-29 15:40:58', 'с 8 сентября, 8 ночей, на двоих', 'Вьетнам, Муйне', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-01-29 18:40:58', '2020-01-29 15:40:58', '', 43, 'http://local.uraltur1.ru/43-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-01-29 18:42:19', '2020-01-29 15:42:19', 'Вылет из Челябинска. С 30.05.2020 и с 28.09.2020 на 11 ночей.', 'Греция, Родос', '', 'publish', 'open', 'open', '', 'oae-shardzha', '', '', '2020-02-13 20:04:44', '2020-02-13 17:04:44', '', 0, 'http://local.uraltur1.ru/?p=46', 0, 'post', '', 0),
(48, 1, '2020-01-29 18:42:19', '2020-01-29 15:42:19', 'с 25 февраля, 7 ночей, на двоих', 'ОАЭ, Шарджа', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-01-29 18:42:19', '2020-01-29 15:42:19', '', 46, 'http://local.uraltur1.ru/46-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-01-29 18:43:37', '2020-01-29 15:43:37', 'Вылет из Челябинска. С 19.02.2020 на 7 ночей.', 'ОАЭ, Абу Даби', '', 'publish', 'open', 'open', '', 'oae-al-hamra', '', '', '2020-02-13 20:06:01', '2020-02-13 17:06:01', '', 0, 'http://local.uraltur1.ru/?p=50', 0, 'post', '', 0),
(52, 1, '2020-01-29 18:43:37', '2020-01-29 15:43:37', 'с 5 февраля, 7 ночей, на двоих', 'ОАЭ, Аль Хамра', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-01-29 18:43:37', '2020-01-29 15:43:37', '', 50, 'http://local.uraltur1.ru/50-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-02-05 18:47:54', '2020-02-05 15:47:54', 'Вылет из Челябинска. Отель  5 звезд, все включено. С 15.03.2020 на 7 ночей.', 'Турция, Анталия', '', 'publish', 'open', 'open', '', 'turcziya-side-premium', '', '', '2020-02-13 20:10:23', '2020-02-13 17:10:23', '', 0, 'http://local.uraltur1.ru/?p=54', 0, 'post', '', 0),
(56, 1, '2020-02-05 18:47:54', '2020-02-05 15:47:54', 'Evren Mah., 27.Cad. 20.SoK. No:6, 07550 Evrenseki / Manavga/Manavgat/Antalya, Турция', 'Турция, Side Premium', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-02-05 18:47:54', '2020-02-05 15:47:54', '', 54, 'http://local.uraltur1.ru/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-02-08 12:10:07', '2020-02-08 09:10:07', '<label> Ваше имя\r\n    [text your-name] </label>\r\n\r\n<label> Ваш телефон (обязательно)\r\n    [email* your-email] </label>\r\n\r\n<label> Ваш e-mail (обязательно)\r\n    [email* your-email] </label>\r\n\r\n<label> Параметры тура\r\n    [textarea your-parameters] </label>\r\n\r\n[submit \"Отправить\"]\n1\nКонтактная форма сайта uraltur.ru\n[your-name] <fromsite@local.uraltur1.ru>\n260443@mail.ru\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Уральский экспресс (http://local.uraltur1.ru)\nReply-To: [your-email]\n\n\n\n\nУральский экспресс \"[your-subject]\"\nУральский экспресс <wordpress@local.uraltur1.ru>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта Уральский экспресс (http://local.uraltur1.ru)\nReply-To: 260443@mail.ru\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Подберите мне тур', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2020-02-08 12:58:22', '2020-02-08 09:58:22', '', 0, 'http://local.uraltur1.ru/?post_type=wpcf7_contact_form&#038;p=57', 0, 'wpcf7_contact_form', '', 0),
(58, 1, '2020-02-12 13:25:16', '2020-02-12 10:25:16', '', 'Турция. Раннее бронирование.', '', 'publish', 'open', 'open', '', 'turcziya-rannee-bronirovanie', '', '', '2020-02-12 13:25:16', '2020-02-12 10:25:16', '', 0, 'http://local.uraltur1.ru/?p=58', 0, 'post', '', 0),
(59, 1, '2020-02-12 13:25:06', '2020-02-12 10:25:06', '', '1-12', '', 'inherit', 'open', 'closed', '', '1-12', '', '', '2020-02-12 13:25:06', '2020-02-12 10:25:06', '', 58, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/1-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-02-12 13:25:16', '2020-02-12 10:25:16', '', 'Турция. Раннее бронирование.', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2020-02-12 13:25:16', '2020-02-12 10:25:16', '', 58, 'http://local.uraltur1.ru/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-02-12 16:19:46', '2020-02-12 13:19:46', 'В Китае нашли вирус', 'Вирус в Китае', '', 'publish', 'open', 'open', '', 'virus-v-kitae', '', '', '2020-02-12 16:19:46', '2020-02-12 13:19:46', '', 0, 'http://local.uraltur1.ru/?p=61', 0, 'post', '', 0),
(62, 1, '2020-02-12 16:19:40', '2020-02-12 13:19:40', '', 'regnum_picture_158090670669197_normal', '', 'inherit', 'open', 'closed', '', 'regnum_picture_158090670669197_normal', '', '', '2020-02-12 16:19:40', '2020-02-12 13:19:40', '', 61, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/regnum_picture_158090670669197_normal.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-02-12 16:19:46', '2020-02-12 13:19:46', 'В Китае нашли вирус', 'Вирус в Китае', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2020-02-12 16:19:46', '2020-02-12 13:19:46', '', 61, 'http://local.uraltur1.ru/61-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-02-13 16:17:26', '2020-02-13 13:17:26', '', 'Греция', '', 'publish', 'open', 'open', '', 'grecziya', '', '', '2020-02-13 16:17:26', '2020-02-13 13:17:26', '', 0, 'http://local.uraltur1.ru/?p=65', 0, 'post', '', 0),
(66, 1, '2020-02-13 16:17:05', '2020-02-13 13:17:05', '', '5e445625279d1380d489def9_Houses_Greece_Oia_475308', '', 'inherit', 'open', 'closed', '', '5e445625279d1380d489def9_houses_greece_oia_475308', '', '', '2020-02-13 16:17:05', '2020-02-13 13:17:05', '', 65, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/5e445625279d1380d489def9_houses_greece_oia_475308.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-02-13 16:17:26', '2020-02-13 13:17:26', '', 'Греция', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-02-13 16:17:26', '2020-02-13 13:17:26', '', 65, 'http://local.uraltur1.ru/65-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-02-13 19:51:45', '2020-02-13 16:51:45', 'Вылет из Челябинска. С 11.03.2020 на 11 ночей.', 'Индия, ГОА', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2020-02-13 19:51:45', '2020-02-13 16:51:45', '', 40, 'http://local.uraltur1.ru/40-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2020-02-13 19:54:12', '2020-02-13 16:54:12', '', 'ГОА ФОТО', '', 'inherit', 'open', 'closed', '', 'goa-foto', '', '', '2020-02-13 19:54:12', '2020-02-13 16:54:12', '', 40, 'http://local.uraltur1.ru/wp-content/uploads/2020/01/goa-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2020-02-13 19:54:18', '2020-02-13 16:54:18', 'Вылет из Челябинска. С 11.03.2020 на 11 ночей.', 'Индия, ГОА', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-02-13 19:54:18', '2020-02-13 16:54:18', '', 40, 'http://local.uraltur1.ru/40-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-02-13 20:00:07', '2020-02-13 17:00:07', '', 'Тай фото', '', 'inherit', 'open', 'closed', '', 'taj-foto', '', '', '2020-02-13 20:00:07', '2020-02-13 17:00:07', '', 43, 'http://local.uraltur1.ru/wp-content/uploads/2020/01/taj-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-02-13 20:00:14', '2020-02-13 17:00:14', 'Вылет из Челябинска. С 17.02.2020 на 14 ночей.', 'Тайланд, Муйне', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-02-13 20:00:14', '2020-02-13 17:00:14', '', 43, 'http://local.uraltur1.ru/43-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-02-13 20:00:49', '2020-02-13 17:00:49', 'Вылет из Челябинска. С 17.02.2020 на 14 ночей.', 'Тайланд, Паттайя', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-02-13 20:00:49', '2020-02-13 17:00:49', '', 43, 'http://local.uraltur1.ru/43-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-02-13 20:03:12', '2020-02-13 17:03:12', 'Вылет из Челябинска. С 30.05.2020 и с 28.09.2020 на 11 ночей.', 'Греция, Родос', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2020-02-13 20:03:12', '2020-02-13 17:03:12', '', 46, 'http://local.uraltur1.ru/46-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2020-02-13 20:03:41', '2020-02-13 17:03:41', '', 'St.Paul\'s Bay, Rhodes Island, Greece', 'Lindos Bay, Rhodes Island, GreeceLindos Bay, Rhodes Island, Greece St.Paul\'s Bay, Rhodes Island, Greece', 'inherit', 'open', 'closed', '', 'st-pauls-bay-rhodes-island-greece', '', '', '2020-02-13 20:03:41', '2020-02-13 17:03:41', '', 46, 'http://local.uraltur1.ru/wp-content/uploads/2020/01/grecziya.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-02-13 20:03:50', '2020-02-13 17:03:50', 'Вылет из Челябинска. С 30.05.2020 и с 28.09.2020 на 11 ночей.', 'Греция, Родос', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2020-02-13 20:03:50', '2020-02-13 17:03:50', '', 46, 'http://local.uraltur1.ru/46-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-02-13 20:05:54', '2020-02-13 17:05:54', '', 'эмираты фото', '', 'inherit', 'open', 'closed', '', 'emiraty-foto', '', '', '2020-02-13 20:05:54', '2020-02-13 17:05:54', '', 50, 'http://local.uraltur1.ru/wp-content/uploads/2020/01/emiraty-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-02-13 20:06:01', '2020-02-13 17:06:01', 'Вылет из Челябинска. С 19.02.2020 на 7 ночей.', 'ОАЭ, Абу Даби', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-02-13 20:06:01', '2020-02-13 17:06:01', '', 50, 'http://local.uraltur1.ru/50-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-02-13 20:08:46', '2020-02-13 17:08:46', 'Вылет из Челябинска. Отель  5 звезд, все включено. С 15.03.2020 на 7 ночей.', 'Турция, Анталия', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2020-02-13 20:08:46', '2020-02-13 17:08:46', '', 54, 'http://local.uraltur1.ru/54-autosave-v1/', 0, 'revision', '', 0),
(81, 1, '2020-02-13 20:09:04', '2020-02-13 17:09:04', '', 'Турция фото', '', 'inherit', 'open', 'closed', '', 'turcziya-foto', '', '', '2020-02-13 20:09:04', '2020-02-13 17:09:04', '', 54, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/turcziya-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-02-13 20:09:13', '2020-02-13 17:09:13', 'Вылет из Челябинска. Отель  5 звезд, все включено. С 15.03.2020 на 7 ночей.', 'Турция, Анталия', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2020-02-13 20:09:13', '2020-02-13 17:09:13', '', 54, 'http://local.uraltur1.ru/54-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-02-13 20:13:03', '2020-02-13 17:13:03', 'Вылет из Челябинска. Авиакомпания Red Wings. С 03.06.2020.', 'Россия, Сочи', '', 'publish', 'open', 'open', '', 'rossiya-sochi', '', '', '2020-02-13 20:13:03', '2020-02-13 17:13:03', '', 0, 'http://local.uraltur1.ru/?p=83', 0, 'post', '', 0),
(84, 1, '2020-02-13 20:12:55', '2020-02-13 17:12:55', '', 'Сочи фото', '', 'inherit', 'open', 'closed', '', 'sochi-foto', '', '', '2020-02-13 20:12:55', '2020-02-13 17:12:55', '', 83, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/sochi-foto.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-02-13 20:13:03', '2020-02-13 17:13:03', 'Вылет из Челябинска. Авиакомпания Red Wings. С 03.06.2020.', 'Россия, Сочи', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-02-13 20:13:03', '2020-02-13 17:13:03', '', 83, 'http://local.uraltur1.ru/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-02-13 20:15:06', '2020-02-13 17:15:06', 'Вылет из Челябинска. Авиакомпания Red Wings. С 03.06.2020.', 'Черногория, Будва', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2020-02-13 20:15:06', '2020-02-13 17:15:06', '', 83, 'http://local.uraltur1.ru/83-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2020-02-13 20:18:21', '2020-02-13 17:18:21', 'Вылет из Екатеринбурга. Прямой перелет на 7 или 14 ночей.', 'Черногория, Будва', '', 'publish', 'open', 'open', '', 'chernogoriya-budva', '', '', '2020-02-13 20:18:21', '2020-02-13 17:18:21', '', 0, 'http://local.uraltur1.ru/?p=87', 0, 'post', '', 0),
(88, 1, '2020-02-13 20:18:11', '2020-02-13 17:18:11', '', 'Черногория', '', 'inherit', 'open', 'closed', '', 'chernogoriya', '', '', '2020-02-13 20:18:11', '2020-02-13 17:18:11', '', 87, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/chernogoriya.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-02-13 20:18:21', '2020-02-13 17:18:21', 'Вылет из Екатеринбурга. Прямой перелет на 7 или 14 ночей.', 'Черногория, Будва', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2020-02-13 20:18:21', '2020-02-13 17:18:21', '', 87, 'http://local.uraltur1.ru/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-02-13 20:20:00', '2020-02-13 17:20:00', 'Вылет из Екатеринбурга. Прямой перелет. С 26/05  по 29/09 на 10 ночей.', 'Испания, Майорка', '', 'publish', 'open', 'open', '', 'ispaniya-majorka', '', '', '2020-02-13 20:20:00', '2020-02-13 17:20:00', '', 0, 'http://local.uraltur1.ru/?p=90', 0, 'post', '', 0),
(91, 1, '2020-02-13 20:19:52', '2020-02-13 17:19:52', '', 'МАЙОРКА', '', 'inherit', 'open', 'closed', '', 'majorka', '', '', '2020-02-13 20:19:52', '2020-02-13 17:19:52', '', 90, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/majorka.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-02-13 20:20:00', '2020-02-13 17:20:00', 'Вылет из Екатеринбурга. Прямой перелет. С 26/05  по 29/09 на 10 ночей.', 'Испания, Майорка', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2020-02-13 20:20:00', '2020-02-13 17:20:00', '', 90, 'http://local.uraltur1.ru/90-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-02-16 17:59:33', '2020-02-16 14:59:33', 'В понедельник Владимир Путин дал старт движению поездов по мосту в Крым лично проехав по нему в кабине машиниста. Президент назвал запуск большим событием, а само сооружение - \"красавцем\".<!--more--> Первым пассажирским поездом, который в ночь на 25 декабря пересечет Керченский пролив по мосту, станет состав, отправившийся двумя днями ранее из Петербурга в Севастополь.', 'В Крым на поезде', '', 'publish', 'open', 'open', '', 'v-krym-na-poezde', '', '', '2020-02-16 18:39:55', '2020-02-16 15:39:55', '', 0, 'http://local.uraltur1.ru/?p=93', 0, 'post', '', 0),
(94, 1, '2020-02-16 17:59:22', '2020-02-16 14:59:22', '', '1562814623', '', 'inherit', 'open', 'closed', '', '1562814623', '', '', '2020-02-16 17:59:22', '2020-02-16 14:59:22', '', 93, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/1562814623.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-02-16 17:59:33', '2020-02-16 14:59:33', 'В понедельник Владимир Путин дал старт движению поездов по мосту в Крым лично проехав по нему в кабине машиниста. Президент назвал запуск большим событием, а само сооружение - \"красавцем\". Первым пассажирским поездом, который в ночь на 25 декабря пересечет Керченский пролив по мосту, станет состав, отправившийся двумя днями ранее из Петербурга в Севастополь.', 'В Крым на поезде', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2020-02-16 17:59:33', '2020-02-16 14:59:33', '', 93, 'http://local.uraltur1.ru/93-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-02-16 18:05:41', '2020-02-16 15:05:41', 'Около трети туристов планируют реже посещать или вовсе отказаться от поездок в Амстердам после ввода городскими властями ограничений на продажу марихуаны иностранцам, сообщает The Guardian. <!--more-->Такие данные опроса озвучила мэр столицы Нидерландов Фемке Халсема.', 'Запрет марихуаны', '', 'publish', 'open', 'open', '', 'zapret-marihuany', '', '', '2020-02-16 18:36:46', '2020-02-16 15:36:46', '', 0, 'http://local.uraltur1.ru/?p=96', 0, 'post', '', 0),
(97, 1, '2020-02-16 18:05:34', '2020-02-16 15:05:34', '', 'amsterdam', '', 'inherit', 'open', 'closed', '', 'amsterdam', '', '', '2020-02-16 18:05:34', '2020-02-16 15:05:34', '', 96, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/amsterdam.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-02-16 18:05:41', '2020-02-16 15:05:41', 'Около трети туристов планируют реже посещать или вовсе отказаться от поездок в Амстердам после ввода городскими властями ограничений на продажу марихуаны иностранцам, <a class=\"external text\" href=\"https://www.theguardian.com/world/2020/feb/13/amsterdam-looks-to-bar-foreign-visitors-from-buying-cannabis-mayor-tourists-red-light-district\" target=\"_blank\" rel=\"nofollow noreferrer noopener\">сообщает</a> The Guardian. Такие данные опроса озвучила мэр столицы Нидерландов Фемке Халсема.', 'Запрет марихуаны', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-02-16 18:05:41', '2020-02-16 15:05:41', '', 96, 'http://local.uraltur1.ru/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-02-16 18:13:25', '2020-02-16 15:13:25', 'Шри-Ланка отменила плату за визы для туристов из России и еще 47 стран с 1 августа 2019 года по 31 января 2020-го. Данная мера была призвана восстановить въездной турпоток после серии терактов.<!--more--> До этого момента виза в республику обходилась путешественникам в 35 долларов при оформлении через консульство, и 40 долларов — при въезде в страну, в аэропорту.В середине января 2020-го в СМИ появилась информация о том, что власти Шри-Ланки намерены продлить выдачу бесплатных виз, однако с 1 февраля визы вновь стали платными.', 'Визы в Шри-Ланку', '', 'publish', 'open', 'open', '', 'vizy-v-shri-lanku', '', '', '2020-02-16 18:34:29', '2020-02-16 15:34:29', '', 0, 'http://local.uraltur1.ru/?p=99', 0, 'post', '', 0),
(100, 1, '2020-02-16 18:13:16', '2020-02-16 15:13:16', '', 'shri-lanka', '', 'inherit', 'open', 'closed', '', 'shri-lanka', '', '', '2020-02-16 18:13:16', '2020-02-16 15:13:16', '', 99, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/shri-lanka.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-02-16 18:13:25', '2020-02-16 15:13:25', 'Шри-Ланка отменила плату за <a class=\"autolink\" href=\"https://www.trn-news.ru/visas\">визы</a> для туристов из <a class=\"autolink\" href=\"https://www.trn-news.ru/russia\">России</a> и еще 47 стран с 1 августа 2019 года по 31 января 2020-го. Данная мера была призвана восстановить въездной <a class=\"autolink\" href=\"https://www.trn-news.ru/tags/418\">турпоток</a> после серии терактов. До этого момента <a class=\"autolink\" href=\"https://www.trn-news.ru/visas\">виза</a> в республику обходилась путешественникам в 35 долларов при оформлении через консульство, и 40 долларов — при въезде в страну, в аэропорту. В середине января 2020-го в СМИ появилась информация о том, что власти Шри-Ланки намерены продлить выдачу бесплатных <a class=\"autolink\" href=\"https://www.trn-news.ru/visas\">виз</a>, однако с 1 февраля <a class=\"autolink\" href=\"https://www.trn-news.ru/visas\">визы</a> вновь стали платными.', 'Визы в Шри-Ланку', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-02-16 18:13:25', '2020-02-16 15:13:25', '', 99, 'http://local.uraltur1.ru/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-02-16 18:16:44', '2020-02-16 15:16:44', 'Авиакомпания Azur Air совместно с туроператором Anex Tour с 6 июня начнет выполнять рейсы из Москвы на Сицилию, билеты в составе туров поступили в продажу. Об этом сообщили в пресс-службе перевозчика.<!--more-->\r\n«Azur Air, крупнейшая чартерная авиакомпания РФ, и ее стратегический партнер, туроператор Anex Tour, открывают полетную программу на остров Сицилия из Москвы.', 'Из Москвы в Сицилию', '', 'publish', 'open', 'open', '', 'iz-moskvy-v-sicziliyu', '', '', '2020-02-16 18:36:11', '2020-02-16 15:36:11', '', 0, 'http://local.uraltur1.ru/?p=102', 0, 'post', '', 0),
(103, 1, '2020-02-16 18:16:37', '2020-02-16 15:16:37', '', 'vnukovo', '', 'inherit', 'open', 'closed', '', 'vnukovo', '', '', '2020-02-16 18:16:37', '2020-02-16 15:16:37', '', 102, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/vnukovo.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-02-16 18:16:44', '2020-02-16 15:16:44', 'Авиакомпания Azur Air совместно с туроператором Anex Tour с 6 июня начнет выполнять рейсы из Москвы на Сицилию, билеты в составе туров поступили в продажу. Об этом сообщили в пресс-службе перевозчика.\r\n«Azur Air, крупнейшая чартерная авиакомпания РФ, и ее стратегический партнер, туроператор Anex Tour, открывают полетную программу на остров Сицилия из Москвы.', 'Из Москвы в Сицилию', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2020-02-16 18:16:44', '2020-02-16 15:16:44', '', 102, 'http://local.uraltur1.ru/102-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-02-16 18:19:54', '2020-02-16 15:19:54', 'Мы открываем продажи туров на летний сезон-2020. Можем предложить вам самые популярные направления с хорошими скидками на проживание. <!--more-->Уже сегодня вы можете забронировать свой идеальный отдых по очень привлекательным ценам и с гибкими условиями оплаты.', 'Ранее бронирование', '', 'publish', 'open', 'open', '', 'ranee-bronirovanie', '', '', '2020-02-16 18:39:24', '2020-02-16 15:39:24', '', 0, 'http://local.uraltur1.ru/?p=105', 0, 'post', '', 0),
(106, 1, '2020-02-16 18:19:49', '2020-02-16 15:19:49', '', 'Relax', '', 'inherit', 'open', 'closed', '', 'relax', '', '', '2020-02-16 18:19:49', '2020-02-16 15:19:49', '', 105, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/relax.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-02-16 18:19:54', '2020-02-16 15:19:54', 'Мы открываем продажи туров на летний сезон-2020. Можем предложить вам самые популярные направления с хорошими скидками на проживание. Уже сегодня вы можете забронировать свой идеальный отдых по очень привлекательным ценам и с гибкими условиями оплаты.', 'Ранее бронирование', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-02-16 18:19:54', '2020-02-16 15:19:54', '', 105, 'http://local.uraltur1.ru/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-02-16 18:26:27', '2020-02-16 15:26:27', 'Около трети туристов планируют реже посещать или вовсе отказаться от поездок в Амстердам после ввода городскими властями ограничений на продажу марихуаны иностранцам, сообщает The Guardian. Такие данные опроса озвучила мэр столицы Нидерландов Фемке Халсема.', 'Запрет марихуаны', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-02-16 18:26:27', '2020-02-16 15:26:27', '', 96, 'http://local.uraltur1.ru/96-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-02-16 18:26:56', '2020-02-16 15:26:56', 'Шри-Ланка отменила плату за визы для туристов из России и еще 47 стран с 1 августа 2019 года по 31 января 2020-го. Данная мера была призвана восстановить въездной турпоток после серии терактов. До этого момента виза в республику обходилась путешественникам в 35 долларов при оформлении через консульство, и 40 долларов — при въезде в страну, в аэропорту. В середине января 2020-го в СМИ появилась информация о том, что власти Шри-Ланки намерены продлить выдачу бесплатных виз, однако с 1 февраля визы вновь стали платными.', 'Визы в Шри-Ланку', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-02-16 18:26:56', '2020-02-16 15:26:56', '', 99, 'http://local.uraltur1.ru/99-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-02-16 18:33:57', '2020-02-16 15:33:57', 'Шри-Ланка отменила плату за визы для туристов из России и еще 47 стран с 1 августа 2019 года по 31 января 2020-го. Данная мера была призвана восстановить въездной турпоток после серии терактов. До этого момента виза в республику обходилась путешественникам в 35 долларов при оформлении через консульство, и 40 долларов — при въезде в страну, в аэропорту. <!--more-->В середине января 2020-го в СМИ появилась информация о том, что власти Шри-Ланки намерены продлить выдачу бесплатных виз, однако с 1 февраля визы вновь стали платными.', 'Визы в Шри-Ланку', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-02-16 18:33:57', '2020-02-16 15:33:57', '', 99, 'http://local.uraltur1.ru/99-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-02-16 18:34:29', '2020-02-16 15:34:29', 'Шри-Ланка отменила плату за визы для туристов из России и еще 47 стран с 1 августа 2019 года по 31 января 2020-го. Данная мера была призвана восстановить въездной турпоток после серии терактов.<!--more--> До этого момента виза в республику обходилась путешественникам в 35 долларов при оформлении через консульство, и 40 долларов — при въезде в страну, в аэропорту.В середине января 2020-го в СМИ появилась информация о том, что власти Шри-Ланки намерены продлить выдачу бесплатных виз, однако с 1 февраля визы вновь стали платными.', 'Визы в Шри-Ланку', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-02-16 18:34:29', '2020-02-16 15:34:29', '', 99, 'http://local.uraltur1.ru/99-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-02-16 18:36:11', '2020-02-16 15:36:11', 'Авиакомпания Azur Air совместно с туроператором Anex Tour с 6 июня начнет выполнять рейсы из Москвы на Сицилию, билеты в составе туров поступили в продажу. Об этом сообщили в пресс-службе перевозчика.<!--more-->\r\n«Azur Air, крупнейшая чартерная авиакомпания РФ, и ее стратегический партнер, туроператор Anex Tour, открывают полетную программу на остров Сицилия из Москвы.', 'Из Москвы в Сицилию', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2020-02-16 18:36:11', '2020-02-16 15:36:11', '', 102, 'http://local.uraltur1.ru/102-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-02-16 18:36:46', '2020-02-16 15:36:46', 'Около трети туристов планируют реже посещать или вовсе отказаться от поездок в Амстердам после ввода городскими властями ограничений на продажу марихуаны иностранцам, сообщает The Guardian. <!--more-->Такие данные опроса озвучила мэр столицы Нидерландов Фемке Халсема.', 'Запрет марихуаны', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-02-16 18:36:46', '2020-02-16 15:36:46', '', 96, 'http://local.uraltur1.ru/96-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-02-16 18:39:24', '2020-02-16 15:39:24', 'Мы открываем продажи туров на летний сезон-2020. Можем предложить вам самые популярные направления с хорошими скидками на проживание. <!--more-->Уже сегодня вы можете забронировать свой идеальный отдых по очень привлекательным ценам и с гибкими условиями оплаты.', 'Ранее бронирование', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2020-02-16 18:39:24', '2020-02-16 15:39:24', '', 105, 'http://local.uraltur1.ru/105-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-02-16 18:39:55', '2020-02-16 15:39:55', 'В понедельник Владимир Путин дал старт движению поездов по мосту в Крым лично проехав по нему в кабине машиниста. Президент назвал запуск большим событием, а само сооружение - \"красавцем\".<!--more--> Первым пассажирским поездом, который в ночь на 25 декабря пересечет Керченский пролив по мосту, станет состав, отправившийся двумя днями ранее из Петербурга в Севастополь.', 'В Крым на поезде', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2020-02-16 18:39:55', '2020-02-16 15:39:55', '', 93, 'http://local.uraltur1.ru/93-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-02-18 15:08:04', '2020-02-18 12:08:04', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-02-18 15:08:04', '2020-02-18 12:08:04', '', 0, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/favicon.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2020-02-18 15:08:22', '2020-02-18 12:08:22', 'http://local.uraltur1.ru/wp-content/uploads/2020/02/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2020-02-18 15:08:22', '2020-02-18 12:08:22', '', 0, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2020-02-21 19:19:25', '2020-02-21 16:19:25', '', 'Сертификат 1', '', 'publish', 'open', 'open', '', 'sertifikat-1', '', '', '2020-02-21 19:19:25', '2020-02-21 16:19:25', '', 0, 'http://local.uraltur1.ru/?p=122', 0, 'post', '', 0),
(123, 1, '2020-02-21 19:19:14', '2020-02-21 16:19:14', '', 'sert1', '', 'inherit', 'open', 'closed', '', 'sert1', '', '', '2020-02-21 19:19:14', '2020-02-21 16:19:14', '', 122, 'http://local.uraltur1.ru/wp-content/uploads/2020/02/sert1.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-02-21 19:19:25', '2020-02-21 16:19:25', '', 'Сертификат 1', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2020-02-21 19:19:25', '2020-02-21 16:19:25', '', 122, 'http://local.uraltur1.ru/122-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2020-02-21 19:20:33', '2020-02-21 16:20:33', '', 'Сертификат 2', '', 'publish', 'open', 'open', '', 'sertifikat-2', '', '', '2020-02-21 19:20:33', '2020-02-21 16:20:33', '', 0, 'http://local.uraltur1.ru/?p=127', 0, 'post', '', 0),
(128, 1, '2020-02-21 19:20:33', '2020-02-21 16:20:33', '', 'Сертификат 2', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2020-02-21 19:20:33', '2020-02-21 16:20:33', '', 127, 'http://local.uraltur1.ru/127-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-02-21 19:20:54', '2020-02-21 16:20:54', '', 'Сертификат 3', '', 'publish', 'open', 'open', '', 'sertifikat-3', '', '', '2020-02-21 19:20:54', '2020-02-21 16:20:54', '', 0, 'http://local.uraltur1.ru/?p=129', 0, 'post', '', 0),
(130, 1, '2020-02-21 19:20:54', '2020-02-21 16:20:54', '', 'Сертификат 3', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2020-02-21 19:20:54', '2020-02-21 16:20:54', '', 129, 'http://local.uraltur1.ru/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2020-02-21 19:21:11', '2020-02-21 16:21:11', '', 'Сертификат 4', '', 'publish', 'open', 'open', '', 'sertifikat-4', '', '', '2020-02-21 19:21:11', '2020-02-21 16:21:11', '', 0, 'http://local.uraltur1.ru/?p=131', 0, 'post', '', 0),
(132, 1, '2020-02-21 19:21:11', '2020-02-21 16:21:11', '', 'Сертификат 4', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2020-02-21 19:21:11', '2020-02-21 16:21:11', '', 131, 'http://local.uraltur1.ru/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2020-02-21 19:21:31', '2020-02-21 16:21:31', '', 'Сертификат 5', '', 'publish', 'open', 'open', '', 'sertifikat-5', '', '', '2020-02-21 19:21:56', '2020-02-21 16:21:56', '', 0, 'http://local.uraltur1.ru/?p=133', 0, 'post', '', 0),
(134, 1, '2020-02-21 19:21:31', '2020-02-21 16:21:31', '', 'Сертификат 5', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2020-02-21 19:21:31', '2020-02-21 16:21:31', '', 133, 'http://local.uraltur1.ru/133-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2020-02-29 18:42:38', '2020-02-29 15:42:38', '', 'pay-step1', '', 'publish', 'closed', 'closed', '', 'pay-step1', '', '', '2020-02-29 18:42:38', '2020-02-29 15:42:38', '', 0, 'http://local.uraltur1.ru/?page_id=136', 0, 'page', '', 0),
(137, 1, '2020-02-29 18:42:38', '2020-02-29 15:42:38', '', 'pay-step1', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2020-02-29 18:42:38', '2020-02-29 15:42:38', '', 136, 'http://local.uraltur1.ru/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-02-29 18:42:49', '2020-02-29 15:42:49', '', 'pay-step2', '', 'publish', 'closed', 'closed', '', 'pay-step2', '', '', '2020-02-29 18:42:49', '2020-02-29 15:42:49', '', 0, 'http://local.uraltur1.ru/?page_id=138', 0, 'page', '', 0),
(139, 1, '2020-02-29 18:42:49', '2020-02-29 15:42:49', '', 'pay-step2', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2020-02-29 18:42:49', '2020-02-29 15:42:49', '', 138, 'http://local.uraltur1.ru/138-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-02-29 18:42:59', '2020-02-29 15:42:59', '', 'pay-step3', '', 'publish', 'closed', 'closed', '', 'pay-step3', '', '', '2020-02-29 18:42:59', '2020-02-29 15:42:59', '', 0, 'http://local.uraltur1.ru/?page_id=140', 0, 'page', '', 0),
(141, 1, '2020-02-29 18:42:59', '2020-02-29 15:42:59', '', 'pay-step3', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2020-02-29 18:42:59', '2020-02-29 15:42:59', '', 140, 'http://local.uraltur1.ru/140-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-07-14 11:10:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-14 11:10:27', '0000-00-00 00:00:00', '', 0, 'http://local.uraltur1.ru/?p=142', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_responsive_menu`
--

CREATE TABLE `wp_responsive_menu` (
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_responsive_menu`
--

INSERT INTO `wp_responsive_menu` (`name`, `value`) VALUES
('accordion_animation', 'off'),
('active_arrow_font_icon', ''),
('active_arrow_font_icon_type', 'font-awesome'),
('active_arrow_image', ''),
('active_arrow_image_alt', ''),
('active_arrow_shape', '▲'),
('admin_theme', 'dark'),
('animation_speed', '0.5'),
('animation_type', 'slide'),
('arrow_position', 'right'),
('auto_expand_all_submenus', 'off'),
('auto_expand_current_submenus', 'off'),
('breakpoint', '768'),
('button_background_colour', '#005ec4'),
('button_background_colour_active', '#005ec4'),
('button_background_colour_hover', '#005ec4'),
('button_click_animation', 'boring'),
('button_click_trigger', '#responsive-menu-button'),
('button_distance_from_side', '5'),
('button_distance_from_side_unit', '%'),
('button_font', ''),
('button_font_icon', ''),
('button_font_icon_type', 'font-awesome'),
('button_font_icon_when_clicked', ''),
('button_font_icon_when_clicked_type', 'font-awesome'),
('button_font_size', '14'),
('button_font_size_unit', 'px'),
('button_height', '55'),
('button_height_unit', 'px'),
('button_image', ''),
('button_image_alt', ''),
('button_image_alt_when_clicked', ''),
('button_image_when_clicked', ''),
('button_left_or_right', 'right'),
('button_line_colour', '#ffffff'),
('button_line_colour_active', '#ffffff'),
('button_line_colour_hover', '#ffffff'),
('button_line_height', '3'),
('button_line_height_unit', 'px'),
('button_line_margin', '5'),
('button_line_margin_unit', 'px'),
('button_line_width', '25'),
('button_line_width_unit', 'px'),
('button_position_type', 'fixed'),
('button_push_with_animation', 'off'),
('button_text_colour', '#ffffff'),
('button_title', ''),
('button_title_line_height', '13'),
('button_title_line_height_unit', 'px'),
('button_title_open', ''),
('button_title_position', 'left'),
('button_top', '15'),
('button_top_unit', 'px'),
('button_transparent_background', 'off'),
('button_trigger_type', 'click'),
('button_width', '55'),
('button_width_unit', 'px'),
('custom_css', ''),
('custom_walker', ''),
('desktop_menu_options', '{}'),
('desktop_menu_positioning', 'fixed'),
('desktop_menu_side', ''),
('desktop_menu_to_hide', ''),
('desktop_menu_width', ''),
('desktop_menu_width_unit', '%'),
('enable_touch_gestures', ''),
('excluded_pages', NULL),
('external_files', 'off'),
('fade_submenus', 'off'),
('fade_submenus_delay', '100'),
('fade_submenus_side', 'left'),
('fade_submenus_speed', '500'),
('header_bar_adjust_page', NULL),
('header_bar_background_color', '#ffffff'),
('header_bar_breakpoint', '800'),
('header_bar_font', ''),
('header_bar_font_size', '14'),
('header_bar_font_size_unit', 'px'),
('header_bar_height', '80'),
('header_bar_height_unit', 'px'),
('header_bar_html_content', ''),
('header_bar_items_order', '{\"logo\":\"on\",\"title\":\"on\",\"search\":\"on\",\"html content\":\"on\"}'),
('header_bar_logo', ''),
('header_bar_logo_alt', ''),
('header_bar_logo_height', ''),
('header_bar_logo_height_unit', 'px'),
('header_bar_logo_link', ''),
('header_bar_logo_width', ''),
('header_bar_logo_width_unit', '%'),
('header_bar_position_type', 'fixed'),
('header_bar_text_color', '#ffffff'),
('header_bar_title', ''),
('hide_on_desktop', 'off'),
('hide_on_mobile', 'off'),
('inactive_arrow_font_icon', ''),
('inactive_arrow_font_icon_type', 'font-awesome'),
('inactive_arrow_image', ''),
('inactive_arrow_image_alt', ''),
('inactive_arrow_shape', '▼'),
('items_order', '{\"title\":\"on\",\"menu\":\"on\",\"search\":\"\",\"additional content\":\"\"}'),
('keyboard_shortcut_close_menu', '27,37'),
('keyboard_shortcut_open_menu', '32,39'),
('menu_additional_content', ''),
('menu_additional_content_colour', '#ffffff'),
('menu_adjust_for_wp_admin_bar', 'off'),
('menu_appear_from', 'left'),
('menu_auto_height', 'off'),
('menu_background_colour', '#212121'),
('menu_background_image', ''),
('menu_border_width', '1'),
('menu_border_width_unit', 'px'),
('menu_close_on_body_click', 'off'),
('menu_close_on_link_click', 'off'),
('menu_close_on_scroll', 'off'),
('menu_container_background_colour', '#212121'),
('menu_current_item_background_colour', '#212121'),
('menu_current_item_background_hover_colour', '#3f3f3f'),
('menu_current_item_border_colour', '#212121'),
('menu_current_item_border_hover_colour', '#3f3f3f'),
('menu_current_link_colour', '#ffffff'),
('menu_current_link_hover_colour', '#ffffff'),
('menu_depth', '5'),
('menu_depth_0', '5'),
('menu_depth_0_unit', '%'),
('menu_depth_1', '10'),
('menu_depth_1_unit', '%'),
('menu_depth_2', '15'),
('menu_depth_2_unit', '%'),
('menu_depth_3', '20'),
('menu_depth_3_unit', '%'),
('menu_depth_4', '25'),
('menu_depth_4_unit', '%'),
('menu_depth_5', '30'),
('menu_depth_5_unit', '%'),
('menu_depth_side', 'left'),
('menu_disable_scrolling', 'off'),
('menu_font', ''),
('menu_font_icons', '{\"id\":[\"\"],\"icon\":[\"\"],\"type\":[\"\"]}'),
('menu_font_size', '13'),
('menu_font_size_unit', 'px'),
('menu_item_background_colour', '#212121'),
('menu_item_background_hover_colour', '#3f3f3f'),
('menu_item_border_colour', '#212121'),
('menu_item_border_colour_hover', '#212121'),
('menu_item_click_to_trigger_submenu', 'off'),
('menu_link_colour', '#ffffff'),
('menu_link_hover_colour', '#ffffff'),
('menu_links_height', '40'),
('menu_links_height_unit', 'px'),
('menu_links_line_height', '40'),
('menu_links_line_height_unit', 'px'),
('menu_maximum_width', ''),
('menu_maximum_width_unit', 'px'),
('menu_minimum_width', ''),
('menu_minimum_width_unit', 'px'),
('menu_overlay', 'off'),
('menu_overlay_colour', 'rgba(0, 0, 0, 0.7)'),
('menu_search_box_background_colour', '#ffffff'),
('menu_search_box_border_colour', '#dadada'),
('menu_search_box_placeholder_colour', '#c7c7cd'),
('menu_search_box_text', 'Search'),
('menu_search_box_text_colour', '#333333'),
('menu_sub_arrow_background_colour', '#212121'),
('menu_sub_arrow_background_colour_active', '#212121'),
('menu_sub_arrow_background_hover_colour', '#3f3f3f'),
('menu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_border_colour', '#212121'),
('menu_sub_arrow_border_colour_active', '#212121'),
('menu_sub_arrow_border_hover_colour', '#3f3f3f'),
('menu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('menu_sub_arrow_shape_colour', '#ffffff'),
('menu_sub_arrow_shape_colour_active', '#ffffff'),
('menu_sub_arrow_shape_hover_colour', '#ffffff'),
('menu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('menu_text_alignment', 'left'),
('menu_theme', NULL),
('menu_title', ''),
('menu_title_alignment', 'left'),
('menu_title_background_colour', '#212121'),
('menu_title_background_hover_colour', '#212121'),
('menu_title_colour', '#ffffff'),
('menu_title_font_icon', ''),
('menu_title_font_icon_type', 'font-awesome'),
('menu_title_font_size', '13'),
('menu_title_font_size_unit', 'px'),
('menu_title_hover_colour', '#ffffff'),
('menu_title_image', ''),
('menu_title_image_alt', ''),
('menu_title_image_height', ''),
('menu_title_image_height_unit', 'px'),
('menu_title_image_width', ''),
('menu_title_image_width_unit', '%'),
('menu_title_link', ''),
('menu_title_link_location', '_self'),
('menu_to_hide', ''),
('menu_to_use', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e'),
('menu_width', '75'),
('menu_width_unit', '%'),
('menu_word_wrap', 'off'),
('minify_scripts', 'off'),
('mobile_only', 'off'),
('page_wrapper', ''),
('remove_bootstrap', ''),
('remove_fontawesome', ''),
('scripts_in_footer', 'off'),
('shortcode', 'off'),
('show_menu_on_page_load', ''),
('single_menu_font', ''),
('single_menu_font_size', '14'),
('single_menu_font_size_unit', 'px'),
('single_menu_height', '80'),
('single_menu_height_unit', 'px'),
('single_menu_item_background_colour', '#ffffff'),
('single_menu_item_background_colour_hover', '#ffffff'),
('single_menu_item_link_colour', '#000000'),
('single_menu_item_link_colour_hover', '#000000'),
('single_menu_item_submenu_background_colour', '#ffffff'),
('single_menu_item_submenu_background_colour_hover', '#ffffff'),
('single_menu_item_submenu_link_colour', '#000000'),
('single_menu_item_submenu_link_colour_hover', '#000000'),
('single_menu_line_height', '80'),
('single_menu_line_height_unit', 'px'),
('single_menu_submenu_font', ''),
('single_menu_submenu_font_size', '12'),
('single_menu_submenu_font_size_unit', 'px'),
('single_menu_submenu_height', ''),
('single_menu_submenu_height_unit', 'auto'),
('single_menu_submenu_line_height', '40'),
('single_menu_submenu_line_height_unit', 'px'),
('slide_effect_back_to_text', 'Back'),
('smooth_scroll_on', 'off'),
('smooth_scroll_speed', '500'),
('sub_menu_speed', '0.2'),
('submenu_arrow_height', '39'),
('submenu_arrow_height_unit', 'px'),
('submenu_arrow_position', 'right'),
('submenu_arrow_width', '40'),
('submenu_arrow_width_unit', 'px'),
('submenu_border_width', '1'),
('submenu_border_width_unit', 'px'),
('submenu_current_item_background_colour', '#212121'),
('submenu_current_item_background_hover_colour', '#3f3f3f'),
('submenu_current_item_border_colour', '#212121'),
('submenu_current_item_border_hover_colour', '#3f3f3f'),
('submenu_current_link_colour', '#ffffff'),
('submenu_current_link_hover_colour', '#ffffff'),
('submenu_descriptions_on', ''),
('submenu_font', ''),
('submenu_font_size', '13'),
('submenu_font_size_unit', 'px'),
('submenu_item_background_colour', '#212121'),
('submenu_item_background_hover_colour', '#3f3f3f'),
('submenu_item_border_colour', '#212121'),
('submenu_item_border_colour_hover', '#212121'),
('submenu_link_colour', '#ffffff'),
('submenu_link_hover_colour', '#ffffff'),
('submenu_links_height', '40'),
('submenu_links_height_unit', 'px'),
('submenu_links_line_height', '40'),
('submenu_links_line_height_unit', 'px'),
('submenu_sub_arrow_background_colour', '#212121'),
('submenu_sub_arrow_background_colour_active', '#212121'),
('submenu_sub_arrow_background_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_background_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_border_colour', '#212121'),
('submenu_sub_arrow_border_colour_active', '#212121'),
('submenu_sub_arrow_border_hover_colour', '#3f3f3f'),
('submenu_sub_arrow_border_hover_colour_active', '#3f3f3f'),
('submenu_sub_arrow_shape_colour', '#ffffff'),
('submenu_sub_arrow_shape_colour_active', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour', '#ffffff'),
('submenu_sub_arrow_shape_hover_colour_active', '#ffffff'),
('submenu_submenu_arrow_height', '39'),
('submenu_submenu_arrow_height_unit', 'px'),
('submenu_submenu_arrow_width', '40'),
('submenu_submenu_arrow_width_unit', 'px'),
('submenu_text_alignment', 'left'),
('theme_location_menu', ''),
('transition_speed', '0.5'),
('use_desktop_menu', ''),
('use_header_bar', 'off'),
('use_slide_effect', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Главное меню', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Новости', 'news', 0),
(4, 'Предложение дня', 'offer', 0),
(5, 'Слайдер', 'slider', 0),
(6, 'Сертификаты', 'sertificate', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(22, 2, 0),
(29, 2, 0),
(31, 2, 0),
(32, 2, 0),
(34, 2, 0),
(40, 4, 0),
(43, 4, 0),
(46, 4, 0),
(50, 4, 0),
(54, 4, 0),
(58, 5, 0),
(61, 3, 0),
(65, 5, 0),
(83, 4, 0),
(87, 4, 0),
(90, 4, 0),
(93, 3, 0),
(96, 3, 0),
(99, 3, 0),
(102, 3, 0),
(105, 3, 0),
(122, 6, 0),
(127, 6, 0),
(129, 6, 0),
(131, 6, 0),
(133, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 6),
(4, 4, 'category', '', 0, 8),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'site_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '142'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&hidetb=0'),
(23, 1, 'wp_user-settings-time', '1581512871'),
(25, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(26, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:6:{i:0;s:16:\"tagsdiv-post_tag\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'site_admin', '$P$BXfmZeMQsc5uZ2FwS/Ft86OEeX6oZt.', 'site_admin', '260443@mail.ru', '', '2020-01-29 09:32:12', '', 0, 'site_admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_responsive_menu`
--
ALTER TABLE `wp_responsive_menu`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
