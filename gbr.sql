-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Tempo de geração: 08/05/2022 às 18:58
-- Versão do servidor: 5.7.34
-- Versão do PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gbr`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(18, 'action_scheduler/migration_hook', 'complete', '2022-05-03 12:20:18', '2022-05-03 09:20:18', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651580418;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651580418;}', 1, 1, '2022-05-03 12:20:22', '2022-05-03 09:20:22', 0, NULL),
(19, 'action_scheduler/migration_hook', 'complete', '2022-05-03 12:21:23', '2022-05-03 09:21:23', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1651580483;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1651580483;}', 1, 1, '2022-05-03 12:22:23', '2022-05-03 09:22:23', 0, NULL),
(20, 'wp_mail_smtp_summary_report_email', 'pending', '2022-05-09 17:00:00', '2022-05-09 14:00:00', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1652115600;s:18:\"\0*\0first_timestamp\";i:1652115600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1652115600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(21, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-05-04 17:33:35', '2022-05-04 14:33:35', 0, NULL),
(22, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[3]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-05-05 18:15:19', '2022-05-05 15:15:19', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 18, 'action created', '2022-05-03 12:19:18', '2022-05-03 09:19:18'),
(2, 18, 'action started via WP Cron', '2022-05-03 12:20:22', '2022-05-03 09:20:22'),
(3, 18, 'action complete via WP Cron', '2022-05-03 12:20:22', '2022-05-03 09:20:22'),
(4, 19, 'action created', '2022-05-03 12:20:23', '2022-05-03 09:20:23'),
(5, 19, 'action started via WP Cron', '2022-05-03 12:22:23', '2022-05-03 09:22:23'),
(6, 19, 'action complete via WP Cron', '2022-05-03 12:22:23', '2022-05-03 09:22:23'),
(7, 20, 'action created', '2022-05-04 17:33:08', '2022-05-04 14:33:08'),
(8, 21, 'action created', '2022-05-04 17:33:33', '2022-05-04 14:33:33'),
(9, 21, 'action started via Async Request', '2022-05-04 17:33:35', '2022-05-04 14:33:35'),
(10, 21, 'action complete via Async Request', '2022-05-04 17:33:35', '2022-05-04 14:33:35'),
(11, 22, 'action created', '2022-05-05 18:15:15', '2022-05-05 15:15:15'),
(12, 22, 'action started via Async Request', '2022-05-05 18:15:19', '2022-05-05 15:15:19'),
(13, 22, 'action complete via Async Request', '2022-05-05 18:15:19', '2022-05-05 15:15:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-05-02 09:41:21', '2022-05-02 12:41:21', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(1, 58, 'a:4:{s:12:\"cfdb7_status\";s:6:\"unread\";s:4:\"nome\";s:16:\"Sergio INC TESTE\";s:8:\"telefone\";s:12:\"319939284340\";s:5:\"email\";s:29:\"sergioteste@incdigital.com.br\";}', '2022-05-04 14:24:51'),
(2, 58, 'a:4:{s:12:\"cfdb7_status\";s:6:\"unread\";s:4:\"nome\";s:10:\"Sergio Inc\";s:8:\"telefone\";s:10:\"3199294850\";s:5:\"email\";s:27:\"incsergio@incdigital.com.br\";}', '2022-05-04 14:27:53'),
(3, 58, 'a:4:{s:12:\"cfdb7_status\";s:6:\"unread\";s:4:\"nome\";s:16:\"Sergio teste inc\";s:8:\"telefone\";s:16:\"(31) 9 9345 8695\";s:5:\"email\";s:28:\"incsergio1@incdigital.com.br\";}', '2022-05-04 14:48:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_audit_log`
--

CREATE TABLE `wp_defender_audit_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL,
  `event_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `site_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `context` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `blog_id` int(11) NOT NULL,
  `synced` int(11) NOT NULL,
  `ttl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_email_log`
--

CREATE TABLE `wp_defender_email_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_lockout`
--

CREATE TABLE `wp_defender_lockout` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_message` text COLLATE utf8mb4_unicode_520_ci,
  `release_time` int(11) DEFAULT NULL,
  `lock_time` int(11) DEFAULT NULL,
  `lock_time_404` int(11) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `attempt_404` int(11) DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_defender_lockout`
--

INSERT INTO `wp_defender_lockout` (`id`, `ip`, `status`, `lockout_message`, `release_time`, `lock_time`, `lock_time_404`, `attempt`, `attempt_404`, `meta`) VALUES
(1, '::1', 'normal', '', 0, 0, 0, 0, 0, '[]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_lockout_log`
--

CREATE TABLE `wp_defender_lockout_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `log` text COLLATE utf8mb4_unicode_520_ci,
  `ip` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `tried` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_scan`
--

CREATE TABLE `wp_defender_scan` (
  `id` int(11) UNSIGNED NOT NULL,
  `percent` float NOT NULL,
  `total_tasks` tinyint(4) NOT NULL,
  `task_checkpoint` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `is_automation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_defender_scan_item`
--

CREATE TABLE `wp_defender_scan_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `raw_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
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
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/gbr', 'yes'),
(2, 'home', 'http://localhost:8888/gbr', 'yes'),
(3, 'blogname', 'Grupo GBR', 'yes'),
(4, 'blogdescription', 'Maquiné', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sergio@incdigital.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:3;s:27:\"wp-defender/wp-defender.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:5;s:25:\"wp-smush-pro/wp-smush.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gbr', 'yes'),
(41, 'stylesheet', 'gbr', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '82', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1667047280', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"cfdb7_access\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:14:{i:1651782196;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1651782600;a:1:{s:21:\"wdf_maybe_send_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:14:\"thirty_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1800;}}}i:1651783281;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1651785566;a:1:{s:22:\"firewall_clean_up_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1651796325;a:1:{s:22:\"wpmudev_scheduled_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1651797681;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1651839558;a:1:{s:27:\"wpdef_log_rotational_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651840881;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651840894;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651840896;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1651843158;a:1:{s:22:\"wp_defender_clear_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652185156;a:1:{s:21:\"wpdef_clear_scan_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1652186481;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:26:\"Requisição HTTPS falhou.\";}}', 'yes'),
(124, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1651495912;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(138, '_site_transient_timeout_browser_dc841e373c24a2ef75e6616fb920851a', '1652100095', 'no'),
(139, '_site_transient_browser_dc841e373c24a2ef75e6616fb920851a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:14:\"100.0.4896.127\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_20f4df878f211a5689e76acb3f9067a8', '1652100096', 'no'),
(141, '_site_transient_php_check_20f4df878f211a5689e76acb3f9067a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(145, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(159, 'current_theme', 'Inc Digital', 'yes'),
(160, 'theme_mods_gbr', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"header-nav\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(169, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(245, 'acf_version', '5.12.2', 'yes'),
(250, 'wp-smush-settings', 'a:23:{s:4:\"auto\";b:1;s:5:\"lossy\";b:0;s:10:\"strip_exif\";b:1;s:6:\"resize\";b:0;s:9:\"detection\";b:0;s:8:\"original\";b:0;s:6:\"backup\";b:0;s:8:\"no_scale\";b:0;s:10:\"png_to_jpg\";b:0;s:7:\"nextgen\";b:0;s:2:\"s3\";b:0;s:9:\"gutenberg\";b:0;s:10:\"js_builder\";b:0;s:3:\"cdn\";b:0;s:11:\"auto_resize\";b:0;s:4:\"webp\";b:1;s:5:\"usage\";b:0;s:17:\"accessible_colors\";b:0;s:9:\"keep_data\";b:1;s:9:\"lazy_load\";b:0;s:17:\"background_images\";b:1;s:16:\"rest_api_support\";b:0;s:8:\"webp_mod\";b:0;}', 'yes'),
(251, 'wp-smush-install-type', 'existing', 'no'),
(252, 'wp-smush-version', '3.9.8', 'no'),
(256, 'wdp_un_local_themes', 'a:0:{}', 'no'),
(257, 'wdp_un_local_projects', 'a:2:{i:912164;a:3:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"3.9.8\";s:8:\"filename\";s:25:\"wp-smush-pro/wp-smush.php\";}i:1081723;a:3:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"2.8.2\";s:8:\"filename\";s:27:\"wp-defender/wp-defender.php\";}}', 'no'),
(258, 'wdp_un_updates_available', 'a:1:{i:912164;a:7:{s:4:\"type\";s:6:\"plugin\";s:7:\"version\";s:5:\"3.9.8\";s:8:\"filename\";s:25:\"wp-smush-pro/wp-smush.php\";s:3:\"url\";s:41:\"https://wpmudev.com/project/wp-smush-pro/\";s:4:\"name\";s:9:\"Smush Pro\";s:11:\"new_version\";s:5:\"3.9.9\";s:10:\"autoupdate\";s:1:\"1\";}}', 'no'),
(259, 'wdp_un_activated_flag', '0', 'no'),
(262, 'action_scheduler_hybrid_store_demarkation', '17', 'yes'),
(263, 'schema-ActionScheduler_StoreSchema', '6.0.1651685587', 'yes'),
(264, 'schema-ActionScheduler_LoggerSchema', '3.0.1651580356', 'yes'),
(267, 'wd_db_version', '2.8.2', 'no'),
(271, 'action_scheduler_lock_async-request-runner', '1651775548', 'yes'),
(273, 'action_scheduler_migration_status', 'complete', 'yes'),
(299, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":0}', 'yes'),
(375, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1651584125;s:7:\"version\";s:5:\"5.5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(384, 'cfdb7_view_install_date', '2022-05-03 13:25:57', 'yes'),
(794, 'options_whatsapp', '(31) 9 9510 0776', 'no'),
(795, '_options_whatsapp', 'field_62718c71a2d04', 'no'),
(796, 'options_instagram', 'grupogbrmg', 'no'),
(797, '_options_instagram', 'field_62718caba2d05', 'no'),
(798, 'options_logo_gbr', '75', 'no'),
(799, '_options_logo_gbr', 'field_62718f58a2d10', 'no'),
(800, 'options_instagram_gbr', 'grupogbrmg', 'no'),
(801, '_options_instagram_gbr', 'field_62718edca2d08', 'no'),
(802, 'options_email_gbr', 'contato@grupogbrmg.com.br', 'no'),
(803, '_options_email_gbr', 'field_62718eefa2d09', 'no'),
(804, 'options_endereco_gbr', 'Av. Acadêmico Nilo Figueiredo, 2049 loja 04 - Joana Darc. Lagoa Santa - MG', 'no'),
(805, '_options_endereco_gbr', 'field_62718f00a2d0a', 'no'),
(806, 'options_logo_fort', '76', 'no'),
(807, '_options_logo_fort', 'field_62718f6aa2d11', 'no'),
(808, 'options_instagram_fort', 'fortestrategia', 'no'),
(809, '_options_instagram_fort', 'field_62718f24a2d0c', 'no'),
(810, 'options_whatsapp_fort', '(31) 9 98822828', 'no'),
(811, '_options_whatsapp_fort', 'field_62718f38a2d0d', 'no'),
(812, 'options_email_fort', 'xxx@xxx.com.br', 'no'),
(813, '_options_email_fort', 'field_62718f43a2d0e', 'no'),
(814, 'options_endereco_fort', 'Av. Acadêmico Nilo Figueiredo, 2303 SL 114 - Joana Darc, Lagoa Santa - MG', 'no'),
(815, '_options_endereco_fort', 'field_62718f4da2d0f', 'no'),
(1124, 'wdev_logger_wp-smush-pro', 'a:3:{s:6:\"option\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:13:\"global_module\";s:5:\"smush\";}s:7:\"modules\";a:10:{s:5:\"smush\";a:8:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:16:\"is_global_module\";b:1;s:4:\"name\";s:5:\"smush\";}s:3:\"cdn\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:3:\"cdn\";}s:4:\"lazy\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:4:\"lazy\";}s:4:\"webp\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:4:\"webp\";}s:7:\"png2jpg\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:7:\"png2jpg\";}s:6:\"resize\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:6:\"resize\";}s:3:\"dir\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:3:\"dir\";}s:6:\"backup\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:6:\"backup\";}s:3:\"api\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:3:\"api\";}s:12:\"integrations\";a:7:{s:25:\"use_native_filesystem_api\";b:1;s:12:\"max_log_size\";i:10;s:28:\"expected_log_size_in_percent\";d:0.7;s:7:\"log_dir\";s:13:\"uploads/smush\";s:15:\"add_subsite_dir\";b:1;s:10:\"is_private\";b:1;s:4:\"name\";s:12:\"integrations\";}}s:13:\"global_module\";s:5:\"smush\";}', 'no'),
(1215, 'secret_key', 't~V=pl!q4[:+rT()T:Q?%pgF?!t`@of <.S)ctY]^Am@prrQW-R_#RL(ZGuQqrI:', 'no'),
(1235, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1651755562;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(1236, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651755562;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:6:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.12.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.5.6\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.4\";s:27:\"wp-defender/wp-defender.php\";s:5:\"2.8.2\";s:25:\"wp-smush-pro/wp-smush.php\";s:5:\"3.9.8\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.4.0\";}}', 'no'),
(1237, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1651755562;s:7:\"checked\";a:4:{s:3:\"gbr\";s:4:\"2022\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1238, 'wp_mail_smtp_initial_version', '3.4.0', 'no'),
(1239, 'wp_mail_smtp_version', '3.4.0', 'no'),
(1240, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:32:\"contato@fazendinhamaquine.com.br\";s:9:\"from_name\";s:9:\"Grupo GBR\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:30:\"maverick.jsevenprovedor.com.br\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:4:\"user\";s:25:\"contato@grupogbrmg.com.br\";s:4:\"pass\";s:13:\"PG2cZgzvjpNx1\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(1241, 'wp_mail_smtp_activated_time', '1651685586', 'no'),
(1242, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1651685586;}', 'yes'),
(1247, 'wp_mail_smtp_migration_version', '4', 'yes'),
(1248, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(1249, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(1250, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1651685592;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'no'),
(1252, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1651685613;s:9:\"dismissed\";b:0;}', 'yes'),
(1253, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1651774519;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(1260, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1261, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1273, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(1274, 'wp_mail_smtp_lite_sent_email_counter', '3', 'yes'),
(1275, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:1:{i:18;i:3;}', 'yes'),
(1319, 'wp_mail_smtp_mail_key', 'tlwpGLj5uqHOpIk2fg7RBoJ1p6w9PoEZMUVYGSq4hFI=', 'yes'),
(1403, '_transient_timeout_acf_plugin_updates', '1651841962', 'no'),
(1404, '_transient_acf_plugin_updates', 'O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:70:\"cURL error 6: Could not resolve host: connect.advancedcustomfields.com\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}', 'no'),
(1405, '_site_transient_timeout_theme_roots', '1651757362', 'no'),
(1406, '_site_transient_theme_roots', 'a:4:{s:3:\"gbr\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(1409, '_site_transient_timeout_available_translations', '1651785313', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1410, '_site_transient_available_translations', 'a:128:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-18 21:47:24\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-02-24 06:01:42\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.20/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-28 06:54:05\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-25 09:39:54\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-01 16:21:35\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 19:47:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-31 09:09:16\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-02 07:32:55\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-27 11:17:27\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-27 11:17:16\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.9.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-17 12:58:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-01-24 12:26:13\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-01-24 12:22:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.9.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 09:37:19\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-01 20:23:06\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:50\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-01 04:45:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-15 16:05:58\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-01 08:44:40\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 04:45:11\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 04:44:22\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 04:42:59\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 14:14:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-29 15:59:16\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-29 02:25:56\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.15/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-26 16:35:59\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-26 17:36:12\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-16 14:30:05\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-20 16:34:11\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-08 04:04:20\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-12 20:09:11\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-15 12:45:21\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-05 17:19:25\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.27\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.27/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-02-14 22:20:29\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-14 11:09:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 09:38:59\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-05 08:34:00\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-10 01:12:24\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 08:09:26\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-29 23:58:18\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-01-24 08:56:29\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-10 17:24:06\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.15/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-02-23 01:39:33\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-02 01:11:00\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-04 15:22:04\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-12 12:32:07\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"5.5.9\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.9/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-30 21:39:47\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-22 19:23:48\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-12 12:40:41\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.9.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-30 06:48:38\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-05 11:12:39\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-04 07:19:25\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.28\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.28/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-06 15:21:06\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-01 12:49:37\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-05 14:55:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-10 05:43:57\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.10/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-06 04:43:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.9.2\";s:7:\"updated\";s:19:\"2022-01-24 13:37:43\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-02-01 10:20:40\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-04 20:07:24\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-05-01 10:36:06\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.12\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.12/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-28 02:58:38\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.19/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-17 09:38:19\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2022-03-06 15:05:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.10/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-30 13:50:02\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.9.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-06 12:46:43\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-03-14 15:03:38\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.9.3\";s:7:\"updated\";s:19:\"2022-04-01 20:41:20\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.9.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1461, '_transient_timeout_global_styles_gbr', '1651782199', 'no'),
(1462, '_transient_global_styles_gbr', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1651495966'),
(5, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(6, 3, '_wp_trash_meta_status', 'draft'),
(7, 3, '_wp_trash_meta_time', '1651495967'),
(8, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(9, 7, '_edit_lock', '1651496034:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_wp_page_template', 'templates/home.php'),
(12, 9, '_edit_lock', '1651688025:1'),
(13, 11, '_menu_item_type', 'custom'),
(14, 11, '_menu_item_menu_item_parent', '0'),
(15, 11, '_menu_item_object_id', '11'),
(16, 11, '_menu_item_object', 'custom'),
(17, 11, '_menu_item_target', ''),
(18, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(19, 11, '_menu_item_xfn', ''),
(20, 11, '_menu_item_url', '#'),
(22, 12, '_menu_item_type', 'custom'),
(23, 12, '_menu_item_menu_item_parent', '0'),
(24, 12, '_menu_item_object_id', '12'),
(25, 12, '_menu_item_object', 'custom'),
(26, 12, '_menu_item_target', ''),
(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 12, '_menu_item_xfn', ''),
(29, 12, '_menu_item_url', '#'),
(31, 13, '_menu_item_type', 'custom'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '13'),
(34, 13, '_menu_item_object', 'custom'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', '#'),
(40, 14, '_menu_item_type', 'custom'),
(41, 14, '_menu_item_menu_item_parent', '0'),
(42, 14, '_menu_item_object_id', '14'),
(43, 14, '_menu_item_object', 'custom'),
(44, 14, '_menu_item_target', ''),
(45, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 14, '_menu_item_xfn', ''),
(47, 14, '_menu_item_url', '#'),
(49, 15, '_menu_item_type', 'custom'),
(50, 15, '_menu_item_menu_item_parent', '0'),
(51, 15, '_menu_item_object_id', '15'),
(52, 15, '_menu_item_object', 'custom'),
(53, 15, '_menu_item_target', ''),
(54, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 15, '_menu_item_xfn', ''),
(56, 15, '_menu_item_url', '#'),
(58, 16, '_menu_item_type', 'custom'),
(59, 16, '_menu_item_menu_item_parent', '0'),
(60, 16, '_menu_item_object_id', '16'),
(61, 16, '_menu_item_object', 'custom'),
(62, 16, '_menu_item_target', ''),
(63, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 16, '_menu_item_xfn', ''),
(65, 16, '_menu_item_url', '#'),
(72, 20, '_edit_last', '1'),
(73, 20, '_edit_lock', '1651680863:1'),
(74, 47, '_wp_attached_file', '2022/05/banner.jpg'),
(75, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:350;s:4:\"file\";s:18:\"2022/05/banner.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x55.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:55;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x187.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x140.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"banner-1536x280.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:280;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:18:\"banner-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"homepage-thumb\";a:4:{s:4:\"file\";s:17:\"banner-220x40.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:40;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"singlepost-thumb\";a:4:{s:4:\"file\";s:18:\"banner-590x108.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:108;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(76, 9, 'imagem_banner', '47'),
(77, 9, '_imagem_banner', 'field_62711eb9edf0b'),
(78, 9, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(79, 9, '_titulo_conheca', 'field_62711f63edf0d'),
(80, 9, 'iframe', ''),
(81, 9, '_iframe', 'field_62711f7bedf0e'),
(82, 9, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(83, 9, '_titulo_lancamento', 'field_62712044edf10'),
(84, 9, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(85, 9, '_subtitulo_lancamento', 'field_6271211dedf11'),
(86, 9, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(87, 9, '_texto_lancamento', 'field_62712144edf12'),
(88, 9, 'icones_lancamento', '3'),
(89, 9, '_icones_lancamento', 'field_627121cbedf13'),
(90, 9, 'galeria_lancamento', '3'),
(91, 9, '_galeria_lancamento', 'field_627122c8edf16'),
(92, 9, 'link_planta', ''),
(93, 9, '_link_planta', 'field_62712328edf18'),
(94, 9, 'titulo_contato', 'Contato'),
(95, 9, '_titulo_contato', 'field_6271235aedf1a'),
(96, 9, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(97, 9, '_subtitulo_contato', 'field_6271236cedf1b'),
(98, 9, 'titulo_conheca_gbr', 'Conheça a GBR'),
(99, 9, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(100, 9, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(101, 9, '_texto_conheca_gbr', 'field_62712429edf1e'),
(102, 9, 'imagem_conheca_gbr', '55'),
(103, 9, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(104, 9, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(105, 9, '_titulo_parceiro', 'field_6271247eedf21'),
(106, 9, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(107, 9, '_subtitulo_parceiro', 'field_62712491edf22'),
(108, 9, 'imagem_parceiro', '56'),
(109, 9, '_imagem_parceiro', 'field_627124acedf23'),
(110, 48, 'imagem_banner', '47'),
(111, 48, '_imagem_banner', 'field_62711eb9edf0b'),
(112, 48, 'titulo_conheca', ''),
(113, 48, '_titulo_conheca', 'field_62711f63edf0d'),
(114, 48, 'iframe', ''),
(115, 48, '_iframe', 'field_62711f7bedf0e'),
(116, 48, 'titulo_lancamento', ''),
(117, 48, '_titulo_lancamento', 'field_62712044edf10'),
(118, 48, 'subtitulo_lancamento', ''),
(119, 48, '_subtitulo_lancamento', 'field_6271211dedf11'),
(120, 48, 'texto_lancamento', ''),
(121, 48, '_texto_lancamento', 'field_62712144edf12'),
(122, 48, 'icones_lancamento', ''),
(123, 48, '_icones_lancamento', 'field_627121cbedf13'),
(124, 48, 'galeria_lancamento', ''),
(125, 48, '_galeria_lancamento', 'field_627122c8edf16'),
(126, 48, 'link_planta', ''),
(127, 48, '_link_planta', 'field_62712328edf18'),
(128, 48, 'titulo_contato', ''),
(129, 48, '_titulo_contato', 'field_6271235aedf1a'),
(130, 48, 'subtitulo_contato', ''),
(131, 48, '_subtitulo_contato', 'field_6271236cedf1b'),
(132, 48, 'titulo_conheca_gbr', ''),
(133, 48, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(134, 48, 'texto_conheca_gbr', ''),
(135, 48, '_texto_conheca_gbr', 'field_62712429edf1e'),
(136, 48, 'imagem_conheca_gbr', ''),
(137, 48, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(138, 48, 'titulo_parceiro', ''),
(139, 48, '_titulo_parceiro', 'field_6271247eedf21'),
(140, 48, 'subtitulo_parceiro', ''),
(141, 48, '_subtitulo_parceiro', 'field_62712491edf22'),
(142, 48, 'imagem_parceiro', ''),
(143, 48, '_imagem_parceiro', 'field_627124acedf23'),
(144, 47, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:4.345863962035916;s:5:\"bytes\";i:9341;s:11:\"size_before\";i:214940;s:10:\"size_after\";i:205599;s:4:\"time\";d:0.13999999999999999;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:8:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.33;s:5:\"bytes\";i:282;s:11:\"size_before\";i:5288;s:10:\"size_after\";i:5006;s:4:\"time\";d:0.01;}s:5:\"large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.27;s:5:\"bytes\";i:2106;s:11:\"size_before\";i:49327;s:10:\"size_after\";i:47221;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.11;s:5:\"bytes\";i:377;s:11:\"size_before\";i:7384;s:10:\"size_after\";i:7007;s:4:\"time\";i:0;}s:12:\"medium_large\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.97;s:5:\"bytes\";i:1181;s:11:\"size_before\";i:29765;s:10:\"size_after\";i:28584;s:4:\"time\";d:0.01;}s:9:\"1536x1536\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.23;s:5:\"bytes\";i:4082;s:11:\"size_before\";i:96524;s:10:\"size_after\";i:92442;s:4:\"time\";d:0.06;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.22;s:5:\"bytes\";i:259;s:11:\"size_before\";i:4961;s:10:\"size_after\";i:4702;s:4:\"time\";d:0.01;}s:14:\"homepage-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.35;s:5:\"bytes\";i:197;s:11:\"size_before\";i:3101;s:10:\"size_after\";i:2904;s:4:\"time\";d:0.02;}s:16:\"singlepost-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.61;s:5:\"bytes\";i:857;s:11:\"size_before\";i:18590;s:10:\"size_after\";i:17733;s:4:\"time\";d:0.02;}}}'),
(145, 49, 'imagem_banner', '47'),
(146, 49, '_imagem_banner', 'field_62711eb9edf0b'),
(147, 49, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(148, 49, '_titulo_conheca', 'field_62711f63edf0d'),
(149, 49, 'iframe', ''),
(150, 49, '_iframe', 'field_62711f7bedf0e'),
(151, 49, 'titulo_lancamento', ''),
(152, 49, '_titulo_lancamento', 'field_62712044edf10'),
(153, 49, 'subtitulo_lancamento', ''),
(154, 49, '_subtitulo_lancamento', 'field_6271211dedf11'),
(155, 49, 'texto_lancamento', ''),
(156, 49, '_texto_lancamento', 'field_62712144edf12'),
(157, 49, 'icones_lancamento', ''),
(158, 49, '_icones_lancamento', 'field_627121cbedf13'),
(159, 49, 'galeria_lancamento', ''),
(160, 49, '_galeria_lancamento', 'field_627122c8edf16'),
(161, 49, 'link_planta', ''),
(162, 49, '_link_planta', 'field_62712328edf18'),
(163, 49, 'titulo_contato', ''),
(164, 49, '_titulo_contato', 'field_6271235aedf1a'),
(165, 49, 'subtitulo_contato', ''),
(166, 49, '_subtitulo_contato', 'field_6271236cedf1b'),
(167, 49, 'titulo_conheca_gbr', ''),
(168, 49, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(169, 49, 'texto_conheca_gbr', ''),
(170, 49, '_texto_conheca_gbr', 'field_62712429edf1e'),
(171, 49, 'imagem_conheca_gbr', ''),
(172, 49, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(173, 49, 'titulo_parceiro', ''),
(174, 49, '_titulo_parceiro', 'field_6271247eedf21'),
(175, 49, 'subtitulo_parceiro', ''),
(176, 49, '_subtitulo_parceiro', 'field_62712491edf22'),
(177, 49, 'imagem_parceiro', ''),
(178, 49, '_imagem_parceiro', 'field_627124acedf23'),
(179, 50, '_wp_attached_file', '2022/05/dinheiro.png'),
(180, 50, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:48;s:6:\"height\";i:62;s:4:\"file\";s:20:\"2022/05/dinheiro.png\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(181, 50, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:49.664147774979014;s:5:\"bytes\";i:1183;s:11:\"size_before\";i:2382;s:10:\"size_after\";i:1199;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:1:{s:4:\"full\";O:8:\"stdClass\":5:{s:7:\"percent\";d:49.66;s:5:\"bytes\";i:1183;s:11:\"size_before\";i:2382;s:10:\"size_after\";i:1199;s:4:\"time\";d:0.02;}}}'),
(182, 51, '_wp_attached_file', '2022/05/sinal.png'),
(183, 51, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:17:\"2022/05/sinal.png\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(184, 51, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:44.59649122807017;s:5:\"bytes\";i:1271;s:11:\"size_before\";i:2850;s:10:\"size_after\";i:1579;s:4:\"time\";d:0.04;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:1:{s:4:\"full\";O:8:\"stdClass\":5:{s:7:\"percent\";d:44.6;s:5:\"bytes\";i:1271;s:11:\"size_before\";i:2850;s:10:\"size_after\";i:1579;s:4:\"time\";d:0.04;}}}'),
(185, 52, '_wp_attached_file', '2022/05/sinal2.png'),
(186, 52, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:55;s:6:\"height\";i:55;s:4:\"file\";s:18:\"2022/05/sinal2.png\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(187, 52, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:58.93640350877193;s:5:\"bytes\";i:1075;s:11:\"size_before\";i:1824;s:10:\"size_after\";i:749;s:4:\"time\";d:0.02;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:1:{s:4:\"full\";O:8:\"stdClass\":5:{s:7:\"percent\";d:58.94;s:5:\"bytes\";i:1075;s:11:\"size_before\";i:1824;s:10:\"size_after\";i:749;s:4:\"time\";d:0.02;}}}'),
(188, 53, '_wp_attached_file', '2022/05/barro.jpg'),
(189, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:723;s:6:\"height\";i:407;s:4:\"file\";s:17:\"2022/05/barro.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"barro-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"barro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:17:\"barro-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"homepage-thumb\";a:4:{s:4:\"file\";s:17:\"barro-220x124.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"singlepost-thumb\";a:4:{s:4:\"file\";s:17:\"barro-590x332.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(190, 53, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.052042501038216;s:5:\"bytes\";i:5975;s:11:\"size_before\";i:98727;s:10:\"size_after\";i:92752;s:4:\"time\";d:0.09000000000000001;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:5:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.11;s:5:\"bytes\";i:1188;s:11:\"size_before\";i:16711;s:10:\"size_after\";i:15523;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.24;s:5:\"bytes\";i:450;s:11:\"size_before\";i:7213;s:10:\"size_after\";i:6763;s:4:\"time\";d:0.04;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.58;s:5:\"bytes\";i:306;s:11:\"size_before\";i:4650;s:10:\"size_after\";i:4344;s:4:\"time\";d:0.01;}s:14:\"homepage-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.42;s:5:\"bytes\";i:574;s:11:\"size_before\";i:8947;s:10:\"size_after\";i:8373;s:4:\"time\";d:0.01;}s:16:\"singlepost-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.65;s:5:\"bytes\";i:3457;s:11:\"size_before\";i:61206;s:10:\"size_after\";i:57749;s:4:\"time\";d:0.02;}}}'),
(191, 9, 'icones_lancamento_0_icone', '50'),
(192, 9, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(193, 9, 'icones_lancamento_0_texto', '<strong>10%</strong> para pagamento à vista*'),
(194, 9, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(195, 9, 'icones_lancamento_1_icone', '51'),
(196, 9, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(197, 9, 'icones_lancamento_1_texto', '<strong>Sinal</strong> de <strong>10%</strong> + 36 parcelas fixas**'),
(198, 9, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(199, 9, 'icones_lancamento_2_icone', '52'),
(200, 9, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(201, 9, 'icones_lancamento_2_texto', '<strong>Sinal</strong> de <strong>10%</strong> e em até 180x***'),
(202, 9, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(203, 9, 'galeria_lancamento_0_imagem', '53'),
(204, 9, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(205, 9, 'galeria_lancamento_1_imagem', '55'),
(206, 9, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(207, 54, 'imagem_banner', '47'),
(208, 54, '_imagem_banner', 'field_62711eb9edf0b'),
(209, 54, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(210, 54, '_titulo_conheca', 'field_62711f63edf0d'),
(211, 54, 'iframe', ''),
(212, 54, '_iframe', 'field_62711f7bedf0e'),
(213, 54, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(214, 54, '_titulo_lancamento', 'field_62712044edf10'),
(215, 54, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(216, 54, '_subtitulo_lancamento', 'field_6271211dedf11'),
(217, 54, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(218, 54, '_texto_lancamento', 'field_62712144edf12'),
(219, 54, 'icones_lancamento', '3'),
(220, 54, '_icones_lancamento', 'field_627121cbedf13'),
(221, 54, 'galeria_lancamento', '2'),
(222, 54, '_galeria_lancamento', 'field_627122c8edf16'),
(223, 54, 'link_planta', ''),
(224, 54, '_link_planta', 'field_62712328edf18'),
(225, 54, 'titulo_contato', ''),
(226, 54, '_titulo_contato', 'field_6271235aedf1a'),
(227, 54, 'subtitulo_contato', ''),
(228, 54, '_subtitulo_contato', 'field_6271236cedf1b'),
(229, 54, 'titulo_conheca_gbr', ''),
(230, 54, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(231, 54, 'texto_conheca_gbr', ''),
(232, 54, '_texto_conheca_gbr', 'field_62712429edf1e'),
(233, 54, 'imagem_conheca_gbr', ''),
(234, 54, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(235, 54, 'titulo_parceiro', ''),
(236, 54, '_titulo_parceiro', 'field_6271247eedf21'),
(237, 54, 'subtitulo_parceiro', ''),
(238, 54, '_subtitulo_parceiro', 'field_62712491edf22'),
(239, 54, 'imagem_parceiro', ''),
(240, 54, '_imagem_parceiro', 'field_627124acedf23'),
(241, 54, 'icones_lancamento_0_icone', '50'),
(242, 54, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(243, 54, 'icones_lancamento_0_texto', '10% para pagamento à vista*'),
(244, 54, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(245, 54, 'icones_lancamento_1_icone', '51'),
(246, 54, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(247, 54, 'icones_lancamento_1_texto', 'Sinal de 10% + 36 parcelas fixas**'),
(248, 54, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(249, 54, 'icones_lancamento_2_icone', '52'),
(250, 54, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(251, 54, 'icones_lancamento_2_texto', 'Sinal de 10% e em até 180x***'),
(252, 54, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(253, 54, 'galeria_lancamento_0_imagem', '53'),
(254, 54, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(255, 54, 'galeria_lancamento_1_imagem', '53'),
(256, 54, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(257, 55, '_wp_attached_file', '2022/05/gbr.jpg'),
(258, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:594;s:6:\"height\";i:419;s:4:\"file\";s:15:\"2022/05/gbr.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"gbr-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"gbr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:15:\"gbr-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"homepage-thumb\";a:4:{s:4:\"file\";s:15:\"gbr-220x155.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"singlepost-thumb\";a:4:{s:4:\"file\";s:15:\"gbr-590x416.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(259, 55, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:3.005638719205209;s:5:\"bytes\";i:1791;s:11:\"size_before\";i:59588;s:10:\"size_after\";i:57797;s:4:\"time\";d:0.06;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:5:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:3.43;s:5:\"bytes\";i:418;s:11:\"size_before\";i:12196;s:10:\"size_after\";i:11778;s:4:\"time\";d:0.01;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.07;s:5:\"bytes\";i:240;s:11:\"size_before\";i:5899;s:10:\"size_after\";i:5659;s:4:\"time\";d:0.01;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.97;s:5:\"bytes\";i:220;s:11:\"size_before\";i:4425;s:10:\"size_after\";i:4205;s:4:\"time\";d:0.01;}s:14:\"homepage-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:4.53;s:5:\"bytes\";i:362;s:11:\"size_before\";i:8000;s:10:\"size_after\";i:7638;s:4:\"time\";d:0.01;}s:16:\"singlepost-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:1.9;s:5:\"bytes\";i:551;s:11:\"size_before\";i:29068;s:10:\"size_after\";i:28517;s:4:\"time\";d:0.02;}}}'),
(260, 56, '_wp_attached_file', '2022/05/pp.jpg'),
(261, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:522;s:6:\"height\";i:522;s:4:\"file\";s:14:\"2022/05/pp.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"pp-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"pp-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:14:\"pp-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"homepage-thumb\";a:4:{s:4:\"file\";s:14:\"pp-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(262, 56, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:6.097608935032247;s:5:\"bytes\";i:3101;s:11:\"size_before\";i:50856;s:10:\"size_after\";i:47755;s:4:\"time\";d:0.07;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:4:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";d:5.65;s:5:\"bytes\";i:1476;s:11:\"size_before\";i:26147;s:10:\"size_after\";i:24671;s:4:\"time\";d:0.03;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.41;s:5:\"bytes\";i:520;s:11:\"size_before\";i:8112;s:10:\"size_after\";i:7592;s:4:\"time\";d:0.02;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:7.22;s:5:\"bytes\";i:397;s:11:\"size_before\";i:5496;s:10:\"size_after\";i:5099;s:4:\"time\";d:0.01;}s:14:\"homepage-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:6.38;s:5:\"bytes\";i:708;s:11:\"size_before\";i:11101;s:10:\"size_after\";i:10393;s:4:\"time\";d:0.01;}}}'),
(263, 57, 'imagem_banner', '47'),
(264, 57, '_imagem_banner', 'field_62711eb9edf0b'),
(265, 57, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(266, 57, '_titulo_conheca', 'field_62711f63edf0d'),
(267, 57, 'iframe', ''),
(268, 57, '_iframe', 'field_62711f7bedf0e'),
(269, 57, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(270, 57, '_titulo_lancamento', 'field_62712044edf10'),
(271, 57, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(272, 57, '_subtitulo_lancamento', 'field_6271211dedf11'),
(273, 57, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(274, 57, '_texto_lancamento', 'field_62712144edf12'),
(275, 57, 'icones_lancamento', '3'),
(276, 57, '_icones_lancamento', 'field_627121cbedf13'),
(277, 57, 'galeria_lancamento', '2'),
(278, 57, '_galeria_lancamento', 'field_627122c8edf16'),
(279, 57, 'link_planta', ''),
(280, 57, '_link_planta', 'field_62712328edf18'),
(281, 57, 'titulo_contato', 'Contato'),
(282, 57, '_titulo_contato', 'field_6271235aedf1a'),
(283, 57, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(284, 57, '_subtitulo_contato', 'field_6271236cedf1b'),
(285, 57, 'titulo_conheca_gbr', 'Conheça a GBR'),
(286, 57, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(287, 57, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(288, 57, '_texto_conheca_gbr', 'field_62712429edf1e'),
(289, 57, 'imagem_conheca_gbr', '55'),
(290, 57, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(291, 57, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(292, 57, '_titulo_parceiro', 'field_6271247eedf21'),
(293, 57, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(294, 57, '_subtitulo_parceiro', 'field_62712491edf22'),
(295, 57, 'imagem_parceiro', '56'),
(296, 57, '_imagem_parceiro', 'field_627124acedf23'),
(297, 57, 'icones_lancamento_0_icone', '50'),
(298, 57, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(299, 57, 'icones_lancamento_0_texto', '10% para pagamento à vista*'),
(300, 57, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(301, 57, 'icones_lancamento_1_icone', '51'),
(302, 57, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(303, 57, 'icones_lancamento_1_texto', 'Sinal de 10% + 36 parcelas fixas**'),
(304, 57, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(305, 57, 'icones_lancamento_2_icone', '52'),
(306, 57, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(307, 57, 'icones_lancamento_2_texto', 'Sinal de 10% e em até 180x***'),
(308, 57, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(309, 57, 'galeria_lancamento_0_imagem', '53'),
(310, 57, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(311, 57, 'galeria_lancamento_1_imagem', '53'),
(312, 57, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(313, 58, '_form', '<div class=\"container_form\">[text* nome id:nome class:form-control placeholder \"Nome*\"][tel* telefone id:form-tel class:form-control placeholder \"Telefone*\"][email* email id:email class:form-control placeholder \"E-mail*\"][submit \"Enviar\"]</div>'),
(314, 58, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"Formulário de contato\";s:6:\"sender\";s:32:\"contato@fazendinhamaquine.com.br\";s:9:\"recipient\";s:43:\"elisabeteh.ferreira@squadperformance.com.br\";s:4:\"body\";s:49:\"Nome: [nome]\nTelefone: [telefone]\nE-mail: [email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(315, 58, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:40:\"[_site_title] <sergio@incdigital.com.br>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:122:\"Corpo da mensagem:\n[your-message]\n\n-- \nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(316, 58, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:27:\"Agradecemos a sua mensagem.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:63:\"Um ou mais campos possuem um erro. Verifique e tente novamente.\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(317, 58, '_additional_settings', ''),
(318, 58, '_locale', 'pt_BR'),
(322, 59, 'imagem_banner', '47'),
(323, 59, '_imagem_banner', 'field_62711eb9edf0b'),
(324, 59, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(325, 59, '_titulo_conheca', 'field_62711f63edf0d'),
(326, 59, 'iframe', ''),
(327, 59, '_iframe', 'field_62711f7bedf0e'),
(328, 59, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(329, 59, '_titulo_lancamento', 'field_62712044edf10'),
(330, 59, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(331, 59, '_subtitulo_lancamento', 'field_6271211dedf11'),
(332, 59, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(333, 59, '_texto_lancamento', 'field_62712144edf12'),
(334, 59, 'icones_lancamento', '3'),
(335, 59, '_icones_lancamento', 'field_627121cbedf13'),
(336, 59, 'galeria_lancamento', '2'),
(337, 59, '_galeria_lancamento', 'field_627122c8edf16'),
(338, 59, 'link_planta', ''),
(339, 59, '_link_planta', 'field_62712328edf18'),
(340, 59, 'titulo_contato', 'Contato'),
(341, 59, '_titulo_contato', 'field_6271235aedf1a'),
(342, 59, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(343, 59, '_subtitulo_contato', 'field_6271236cedf1b'),
(344, 59, 'titulo_conheca_gbr', 'Conheça a GBR'),
(345, 59, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(346, 59, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(347, 59, '_texto_conheca_gbr', 'field_62712429edf1e'),
(348, 59, 'imagem_conheca_gbr', '55'),
(349, 59, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(350, 59, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(351, 59, '_titulo_parceiro', 'field_6271247eedf21'),
(352, 59, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(353, 59, '_subtitulo_parceiro', 'field_62712491edf22'),
(354, 59, 'imagem_parceiro', '56'),
(355, 59, '_imagem_parceiro', 'field_627124acedf23'),
(356, 59, 'icones_lancamento_0_icone', '50'),
(357, 59, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(358, 59, 'icones_lancamento_0_texto', '<strong>10%</strong> para pagamento à vista*'),
(359, 59, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(360, 59, 'icones_lancamento_1_icone', '51'),
(361, 59, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(362, 59, 'icones_lancamento_1_texto', '<strong>Sinal</strong> de <strong>10%</strong> + 36 parcelas fixas**'),
(363, 59, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(364, 59, 'icones_lancamento_2_icone', '52'),
(365, 59, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(366, 59, 'icones_lancamento_2_texto', '<strong>Sinal</strong> de <strong>10%</strong> e em até 180x***'),
(367, 59, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(368, 59, 'galeria_lancamento_0_imagem', '53'),
(369, 59, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(370, 59, 'galeria_lancamento_1_imagem', '53'),
(371, 59, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(375, 60, '_edit_last', '1'),
(376, 60, '_edit_lock', '1651610922:1'),
(377, 75, '_wp_attached_file', '2022/05/logo-footer.png'),
(378, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:69;s:4:\"file\";s:23:\"2022/05/logo-footer.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo-footer-150x69.png\";s:5:\"width\";i:150;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:22:\"logo-footer-120x69.png\";s:5:\"width\";i:120;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(379, 75, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:31.059353869271224;s:5:\"bytes\";i:4134;s:11:\"size_before\";i:13310;s:10:\"size_after\";i:9176;s:4:\"time\";d:0.09;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:2:{s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";d:31.84;s:5:\"bytes\";i:2342;s:11:\"size_before\";i:7356;s:10:\"size_after\";i:5014;s:4:\"time\";d:0.08;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";d:30.1;s:5:\"bytes\";i:1792;s:11:\"size_before\";i:5954;s:10:\"size_after\";i:4162;s:4:\"time\";d:0.01;}}}'),
(380, 76, '_wp_attached_file', '2022/05/logo-fort.png'),
(381, 76, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:71;s:6:\"height\";i:86;s:4:\"file\";s:21:\"2022/05/logo-fort.png\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(382, 76, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:34.004212497074654;s:5:\"bytes\";i:1453;s:11:\"size_before\";i:4273;s:10:\"size_after\";i:2820;s:4:\"time\";d:0.01;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:1:{s:4:\"full\";O:8:\"stdClass\":5:{s:7:\"percent\";i:34;s:5:\"bytes\";i:1453;s:11:\"size_before\";i:4273;s:10:\"size_after\";i:2820;s:4:\"time\";d:0.01;}}}'),
(383, 9, 'link_do_video', 'https://www.youtube.com/watch?v=z8Eqdn62xZg'),
(384, 9, '_link_do_video', 'field_62711f7bedf0e'),
(385, 77, 'imagem_banner', '47'),
(386, 77, '_imagem_banner', 'field_62711eb9edf0b'),
(387, 77, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(388, 77, '_titulo_conheca', 'field_62711f63edf0d'),
(389, 77, 'iframe', ''),
(390, 77, '_iframe', 'field_62711f7bedf0e'),
(391, 77, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(392, 77, '_titulo_lancamento', 'field_62712044edf10'),
(393, 77, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(394, 77, '_subtitulo_lancamento', 'field_6271211dedf11'),
(395, 77, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(396, 77, '_texto_lancamento', 'field_62712144edf12'),
(397, 77, 'icones_lancamento', '3'),
(398, 77, '_icones_lancamento', 'field_627121cbedf13'),
(399, 77, 'galeria_lancamento', '2'),
(400, 77, '_galeria_lancamento', 'field_627122c8edf16'),
(401, 77, 'link_planta', ''),
(402, 77, '_link_planta', 'field_62712328edf18'),
(403, 77, 'titulo_contato', 'Contato'),
(404, 77, '_titulo_contato', 'field_6271235aedf1a'),
(405, 77, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(406, 77, '_subtitulo_contato', 'field_6271236cedf1b'),
(407, 77, 'titulo_conheca_gbr', 'Conheça a GBR'),
(408, 77, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(409, 77, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(410, 77, '_texto_conheca_gbr', 'field_62712429edf1e'),
(411, 77, 'imagem_conheca_gbr', '55'),
(412, 77, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(413, 77, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(414, 77, '_titulo_parceiro', 'field_6271247eedf21'),
(415, 77, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(416, 77, '_subtitulo_parceiro', 'field_62712491edf22'),
(417, 77, 'imagem_parceiro', '56'),
(418, 77, '_imagem_parceiro', 'field_627124acedf23'),
(419, 77, 'icones_lancamento_0_icone', '50'),
(420, 77, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(421, 77, 'icones_lancamento_0_texto', '<strong>10%</strong> para pagamento à vista*'),
(422, 77, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(423, 77, 'icones_lancamento_1_icone', '51'),
(424, 77, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(425, 77, 'icones_lancamento_1_texto', '<strong>Sinal</strong> de <strong>10%</strong> + 36 parcelas fixas**'),
(426, 77, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(427, 77, 'icones_lancamento_2_icone', '52'),
(428, 77, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(429, 77, 'icones_lancamento_2_texto', '<strong>Sinal</strong> de <strong>10%</strong> e em até 180x***'),
(430, 77, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(431, 77, 'galeria_lancamento_0_imagem', '53'),
(432, 77, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(433, 77, 'galeria_lancamento_1_imagem', '53'),
(434, 77, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(435, 77, 'link_do_video', 'https://www.youtube.com/watch?v=z8Eqdn62xZg'),
(436, 77, '_link_do_video', 'field_62711f7bedf0e'),
(437, 9, 'galeria_lancamento_2_imagem', '56'),
(438, 9, '_galeria_lancamento_2_imagem', 'field_62712311edf17'),
(439, 78, 'imagem_banner', '47'),
(440, 78, '_imagem_banner', 'field_62711eb9edf0b'),
(441, 78, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(442, 78, '_titulo_conheca', 'field_62711f63edf0d'),
(443, 78, 'iframe', ''),
(444, 78, '_iframe', 'field_62711f7bedf0e'),
(445, 78, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(446, 78, '_titulo_lancamento', 'field_62712044edf10'),
(447, 78, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(448, 78, '_subtitulo_lancamento', 'field_6271211dedf11'),
(449, 78, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(450, 78, '_texto_lancamento', 'field_62712144edf12'),
(451, 78, 'icones_lancamento', '3'),
(452, 78, '_icones_lancamento', 'field_627121cbedf13'),
(453, 78, 'galeria_lancamento', '3'),
(454, 78, '_galeria_lancamento', 'field_627122c8edf16'),
(455, 78, 'link_planta', ''),
(456, 78, '_link_planta', 'field_62712328edf18'),
(457, 78, 'titulo_contato', 'Contato'),
(458, 78, '_titulo_contato', 'field_6271235aedf1a'),
(459, 78, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(460, 78, '_subtitulo_contato', 'field_6271236cedf1b'),
(461, 78, 'titulo_conheca_gbr', 'Conheça a GBR'),
(462, 78, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(463, 78, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(464, 78, '_texto_conheca_gbr', 'field_62712429edf1e'),
(465, 78, 'imagem_conheca_gbr', '55'),
(466, 78, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(467, 78, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(468, 78, '_titulo_parceiro', 'field_6271247eedf21'),
(469, 78, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(470, 78, '_subtitulo_parceiro', 'field_62712491edf22'),
(471, 78, 'imagem_parceiro', '56'),
(472, 78, '_imagem_parceiro', 'field_627124acedf23'),
(473, 78, 'icones_lancamento_0_icone', '50'),
(474, 78, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(475, 78, 'icones_lancamento_0_texto', '<strong>10%</strong> para pagamento à vista*'),
(476, 78, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(477, 78, 'icones_lancamento_1_icone', '51'),
(478, 78, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(479, 78, 'icones_lancamento_1_texto', '<strong>Sinal</strong> de <strong>10%</strong> + 36 parcelas fixas**'),
(480, 78, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(481, 78, 'icones_lancamento_2_icone', '52'),
(482, 78, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(483, 78, 'icones_lancamento_2_texto', '<strong>Sinal</strong> de <strong>10%</strong> e em até 180x***'),
(484, 78, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(485, 78, 'galeria_lancamento_0_imagem', '53'),
(486, 78, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(487, 78, 'galeria_lancamento_1_imagem', '55'),
(488, 78, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(489, 78, 'link_do_video', 'https://www.youtube.com/watch?v=z8Eqdn62xZg'),
(490, 78, '_link_do_video', 'field_62711f7bedf0e'),
(491, 78, 'galeria_lancamento_2_imagem', '56'),
(492, 78, '_galeria_lancamento_2_imagem', 'field_62712311edf17'),
(493, 80, '_wp_attached_file', '2022/05/Provisório-GBR.png'),
(494, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:430;s:4:\"file\";s:28:\"2022/05/Provisório-GBR.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Provisório-GBR-272x300.png\";s:5:\"width\";i:272;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Provisório-GBR-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"sidebar-thumb\";a:4:{s:4:\"file\";s:28:\"Provisório-GBR-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"homepage-thumb\";a:4:{s:4:\"file\";s:28:\"Provisório-GBR-163x180.png\";s:5:\"width\";i:163;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}'),
(495, 80, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:284740;s:10:\"size_after\";i:284740;s:4:\"time\";d:0.19;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:4:{s:6:\"medium\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:150201;s:10:\"size_after\";i:150201;s:4:\"time\";d:0.07;}s:9:\"thumbnail\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:45777;s:10:\"size_after\";i:45777;s:4:\"time\";d:0.07;}s:13:\"sidebar-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:29999;s:10:\"size_after\";i:29999;s:4:\"time\";d:0.02;}s:14:\"homepage-thumb\";O:8:\"stdClass\":5:{s:7:\"percent\";i:0;s:5:\"bytes\";i:0;s:11:\"size_before\";i:58763;s:10:\"size_after\";i:58763;s:4:\"time\";d:0.03;}}}'),
(496, 9, 'imagem_banner_mobile', '80'),
(497, 9, '_imagem_banner_mobile', 'field_6272878d590f3'),
(498, 81, 'imagem_banner', '47'),
(499, 81, '_imagem_banner', 'field_62711eb9edf0b'),
(500, 81, 'titulo_conheca', 'CONHEÇA AS FAZENDINHAS MAQUINÉ'),
(501, 81, '_titulo_conheca', 'field_62711f63edf0d'),
(502, 81, 'iframe', ''),
(503, 81, '_iframe', 'field_62711f7bedf0e'),
(504, 81, 'titulo_lancamento', '<p style=\"text-align: center;\">Lançamento</p>'),
(505, 81, '_titulo_lancamento', 'field_62712044edf10'),
(506, 81, 'subtitulo_lancamento', 'Fazendinhas <strong>Maquiné</strong>'),
(507, 81, '_subtitulo_lancamento', 'field_6271211dedf11'),
(508, 81, 'texto_lancamento', 'A combinação perfeita entre natureza, conforto e privacidade está aqui. Compre a sua fazendinha na divisa dos municípios Paraopebas e Cordisburgo, próximo da Gruta de Maquiné e Sete Lagoas. Fácil acesso da MG-231. São 94 glebas de 20.000m² 100% legalizadas e o espaço conta ainda com área de lazer composta por brinquedos de madeira e espaço para pequenos eventos.'),
(509, 81, '_texto_lancamento', 'field_62712144edf12'),
(510, 81, 'icones_lancamento', '3'),
(511, 81, '_icones_lancamento', 'field_627121cbedf13'),
(512, 81, 'galeria_lancamento', '3'),
(513, 81, '_galeria_lancamento', 'field_627122c8edf16'),
(514, 81, 'link_planta', ''),
(515, 81, '_link_planta', 'field_62712328edf18'),
(516, 81, 'titulo_contato', 'Contato'),
(517, 81, '_titulo_contato', 'field_6271235aedf1a'),
(518, 81, 'subtitulo_contato', 'Fale com o nosso time de corretores para mais informações e garanta a sua gleba na  melhor região de cordisburgo.'),
(519, 81, '_subtitulo_contato', 'field_6271236cedf1b'),
(520, 81, 'titulo_conheca_gbr', 'Conheça a GBR'),
(521, 81, '_titulo_conheca_gbr', 'field_627123c2edf1d'),
(522, 81, 'texto_conheca_gbr', 'O Grupo GBR está desde 2011 desenvolvendo e produzindo diversos empreendimentos em MG, sempre com excelência na entrega e foco na satisfação dos clientes e investidores.'),
(523, 81, '_texto_conheca_gbr', 'field_62712429edf1e'),
(524, 81, 'imagem_conheca_gbr', '55'),
(525, 81, '_imagem_conheca_gbr', 'field_6271243eedf1f'),
(526, 81, 'titulo_parceiro', 'Seja nosso\r\n\r\ncorretor parceiro'),
(527, 81, '_titulo_parceiro', 'field_6271247eedf21'),
(528, 81, 'subtitulo_parceiro', 'Venha trabalhar conosco.'),
(529, 81, '_subtitulo_parceiro', 'field_62712491edf22'),
(530, 81, 'imagem_parceiro', '56'),
(531, 81, '_imagem_parceiro', 'field_627124acedf23'),
(532, 81, 'icones_lancamento_0_icone', '50'),
(533, 81, '_icones_lancamento_0_icone', 'field_6271229dedf14'),
(534, 81, 'icones_lancamento_0_texto', '<strong>10%</strong> para pagamento à vista*'),
(535, 81, '_icones_lancamento_0_texto', 'field_627122a8edf15'),
(536, 81, 'icones_lancamento_1_icone', '51'),
(537, 81, '_icones_lancamento_1_icone', 'field_6271229dedf14'),
(538, 81, 'icones_lancamento_1_texto', '<strong>Sinal</strong> de <strong>10%</strong> + 36 parcelas fixas**'),
(539, 81, '_icones_lancamento_1_texto', 'field_627122a8edf15'),
(540, 81, 'icones_lancamento_2_icone', '52'),
(541, 81, '_icones_lancamento_2_icone', 'field_6271229dedf14'),
(542, 81, 'icones_lancamento_2_texto', '<strong>Sinal</strong> de <strong>10%</strong> e em até 180x***'),
(543, 81, '_icones_lancamento_2_texto', 'field_627122a8edf15'),
(544, 81, 'galeria_lancamento_0_imagem', '53'),
(545, 81, '_galeria_lancamento_0_imagem', 'field_62712311edf17'),
(546, 81, 'galeria_lancamento_1_imagem', '55'),
(547, 81, '_galeria_lancamento_1_imagem', 'field_62712311edf17'),
(548, 81, 'link_do_video', 'https://www.youtube.com/watch?v=z8Eqdn62xZg'),
(549, 81, '_link_do_video', 'field_62711f7bedf0e'),
(550, 81, 'galeria_lancamento_2_imagem', '56'),
(551, 81, '_galeria_lancamento_2_imagem', 'field_62712311edf17'),
(552, 81, 'imagem_banner_mobile', '80'),
(553, 81, '_imagem_banner_mobile', 'field_6272878d590f3'),
(554, 82, '_wp_attached_file', '2022/05/favicon.jpg'),
(555, 82, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:102;s:6:\"height\";i:77;s:4:\"file\";s:19:\"2022/05/favicon.jpg\";s:10:\"image_meta\";a:11:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(556, 82, 'wp-smpro-smush-data', 'a:2:{s:5:\"stats\";a:8:{s:7:\"percent\";d:8.562179057825407;s:5:\"bytes\";i:767;s:11:\"size_before\";i:8958;s:10:\"size_after\";i:8191;s:4:\"time\";i:0;s:11:\"api_version\";s:3:\"1.0\";s:5:\"lossy\";b:0;s:9:\"keep_exif\";i:0;}s:5:\"sizes\";a:1:{s:4:\"full\";O:8:\"stdClass\":5:{s:7:\"percent\";d:8.56;s:5:\"bytes\";i:767;s:11:\"size_before\";i:8958;s:10:\"size_after\";i:8191;s:4:\"time\";i:0;}}}'),
(557, 83, '_wp_trash_meta_status', 'publish'),
(558, 83, '_wp_trash_meta_time', '1651686104');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
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
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-05-02 09:41:21', '2022-05-02 12:41:21', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2022-05-02 09:41:21', '2022-05-02 12:41:21', '', 0, 'http://localhost:8888/gbr/?p=1', 0, 'post', '', 1),
(2, 1, '2022-05-02 09:41:21', '2022-05-02 12:41:21', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost:8888/gbr/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2022-05-02 09:52:46', '2022-05-02 12:52:46', '', 0, 'http://localhost:8888/gbr/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-05-02 09:41:21', '2022-05-02 12:41:21', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost:8888/gbr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2022-05-02 09:52:47', '2022-05-02 12:52:47', '', 0, 'http://localhost:8888/gbr/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-05-02 09:41:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-05-02 09:41:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/gbr/?p=4', 0, 'post', '', 0),
(5, 1, '2022-05-02 09:52:46', '2022-05-02 12:52:46', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost:8888/gbr/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-05-02 09:52:46', '2022-05-02 12:52:46', '', 2, 'http://localhost:8888/gbr/?p=5', 0, 'revision', '', 0),
(6, 1, '2022-05-02 09:52:47', '2022-05-02 12:52:47', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost:8888/gbr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2022-05-02 09:52:47', '2022-05-02 12:52:47', '', 3, 'http://localhost:8888/gbr/?p=6', 0, 'revision', '', 0),
(7, 1, '2022-05-02 09:52:49', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-05-02 09:52:49', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/gbr/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-05-02 09:52:51', '2022-05-02 12:52:51', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-gbr', '', '', '2022-05-02 09:52:51', '2022-05-02 12:52:51', '', 0, 'http://localhost:8888/gbr/2022/05/02/wp-global-styles-gbr/', 0, 'wp_global_styles', '', 0),
(9, 1, '2022-05-02 09:54:30', '2022-05-02 12:54:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-05-04 11:04:42', '2022-05-04 14:04:42', '', 0, 'http://localhost:8888/gbr/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-05-02 09:54:30', '2022-05-02 12:54:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-02 09:54:30', '2022-05-02 12:54:30', '', 9, 'http://localhost:8888/gbr/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Conheça', '', 'publish', 'closed', 'closed', '', 'conheca', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Fazendinha Maquiné', '', 'publish', 'closed', 'closed', '', 'fazendinha-maquine', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=12', 2, 'nav_menu_item', '', 0),
(13, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Fale Conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=13', 3, 'nav_menu_item', '', 0),
(14, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Sobre a GBR', '', 'publish', 'closed', 'closed', '', 'sobre-a-gbr', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Seja nosso corretor', '', 'publish', 'closed', 'closed', '', 'seja-nosso-corretor', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=15', 5, 'nav_menu_item', '', 0),
(16, 1, '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 'Área do cliente', '', 'publish', 'closed', 'closed', '', 'area-do-cliente', '', '', '2022-05-02 09:57:08', '2022-05-02 12:57:08', '', 0, 'http://localhost:8888/gbr/?p=16', 6, 'nav_menu_item', '', 0),
(20, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_62711eadb6ccd', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 0, 'http://localhost:8888/gbr/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_62711eb2edf0a', '', '', '2022-05-03 09:50:13', '2022-05-03 12:50:13', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:10:\"1920 x 350\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Banner', 'imagem_banner', 'publish', 'closed', 'closed', '', 'field_62711eb9edf0b', '', '', '2022-05-03 09:50:13', '2022-05-03 12:50:13', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Conheça', 'conheca', 'publish', 'closed', 'closed', '', 'field_62711f54edf0c', '', '', '2022-05-04 11:03:21', '2022-05-04 14:03:21', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=23', 3, 'acf-field', '', 0),
(24, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Título', 'titulo_conheca', 'publish', 'closed', 'closed', '', 'field_62711f63edf0d', '', '', '2022-05-04 11:03:21', '2022-05-04 14:03:21', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=24', 4, 'acf-field', '', 0),
(25, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Link completo do vídeo. ex: https://www.youtube.com/watch?v=z8Eqdn62xZg\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link do vídeo', 'link_do_video', 'publish', 'closed', 'closed', '', 'field_62711f7bedf0e', '', '', '2022-05-04 11:03:21', '2022-05-04 14:03:21', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=25', 5, 'acf-field', '', 0),
(26, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Lançamento', 'lancamento', 'publish', 'closed', 'closed', '', 'field_62711f91edf0f', '', '', '2022-05-04 11:03:21', '2022-05-04 14:03:21', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=26', 6, 'acf-field', '', 0),
(27, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Título', 'titulo_lancamento', 'publish', 'closed', 'closed', '', 'field_62712044edf10', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=27', 7, 'acf-field', '', 0),
(28, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Subtítulo', 'subtitulo_lancamento', 'publish', 'closed', 'closed', '', 'field_6271211dedf11', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=28', 8, 'acf-field', '', 0),
(29, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Texto', 'texto_lancamento', 'publish', 'closed', 'closed', '', 'field_62712144edf12', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=29', 9, 'acf-field', '', 0),
(30, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'icones', 'icones_lancamento', 'publish', 'closed', 'closed', '', 'field_627121cbedf13', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=30', 10, 'acf-field', '', 0),
(31, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icone', 'icone', 'publish', 'closed', 'closed', '', 'field_6271229dedf14', '', '', '2022-05-03 09:50:13', '2022-05-03 12:50:13', '', 30, 'http://localhost:8888/gbr/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'texto', 'texto', 'publish', 'closed', 'closed', '', 'field_627122a8edf15', '', '', '2022-05-03 09:50:13', '2022-05-03 12:50:13', '', 30, 'http://localhost:8888/gbr/?post_type=acf-field&p=32', 1, 'acf-field', '', 0),
(33, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Galeria', 'galeria_lancamento', 'publish', 'closed', 'closed', '', 'field_627122c8edf16', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=33', 11, 'acf-field', '', 0),
(34, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_62712311edf17', '', '', '2022-05-03 09:50:13', '2022-05-03 12:50:13', '', 33, 'http://localhost:8888/gbr/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}', 'Link planta', 'link_planta', 'publish', 'closed', 'closed', '', 'field_62712328edf18', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=35', 12, 'acf-field', '', 0),
(36, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Contato', 'contato', 'publish', 'closed', 'closed', '', 'field_62712354edf19', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=36', 13, 'acf-field', '', 0),
(37, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo_contato', 'publish', 'closed', 'closed', '', 'field_6271235aedf1a', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=37', 14, 'acf-field', '', 0),
(38, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo_contato', 'publish', 'closed', 'closed', '', 'field_6271236cedf1b', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=38', 15, 'acf-field', '', 0),
(39, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Conheça a GBR', 'conheca_a_gbr', 'publish', 'closed', 'closed', '', 'field_627123b5edf1c', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=39', 16, 'acf-field', '', 0),
(40, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Título', 'titulo_conheca_gbr', 'publish', 'closed', 'closed', '', 'field_627123c2edf1d', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=40', 17, 'acf-field', '', 0),
(41, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'texto_conheca_gbr', 'publish', 'closed', 'closed', '', 'field_62712429edf1e', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=41', 18, 'acf-field', '', 0),
(42, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_conheca_gbr', 'publish', 'closed', 'closed', '', 'field_6271243eedf1f', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=42', 19, 'acf-field', '', 0),
(43, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Parceiro', 'parceiro', 'publish', 'closed', 'closed', '', 'field_6271245aedf20', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=43', 20, 'acf-field', '', 0),
(44, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Título', 'titulo_parceiro', 'publish', 'closed', 'closed', '', 'field_6271247eedf21', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=44', 21, 'acf-field', '', 0),
(45, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Subtítulo', 'subtitulo_parceiro', 'publish', 'closed', 'closed', '', 'field_62712491edf22', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=45', 22, 'acf-field', '', 0),
(46, 1, '2022-05-03 09:50:13', '2022-05-03 12:50:13', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Foto', 'imagem_parceiro', 'publish', 'closed', 'closed', '', 'field_627124acedf23', '', '', '2022-05-04 11:03:22', '2022-05-04 14:03:22', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&#038;p=46', 23, 'acf-field', '', 0),
(47, 1, '2022-05-03 09:52:55', '2022-05-03 12:52:55', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2022-05-03 09:52:55', '2022-05-03 12:52:55', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-05-03 09:53:01', '2022-05-03 12:53:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-03 09:53:01', '2022-05-03 12:53:01', '', 9, 'http://localhost:8888/gbr/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-05-03 09:56:24', '2022-05-03 12:56:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-03 09:56:24', '2022-05-03 12:56:24', '', 9, 'http://localhost:8888/gbr/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-05-03 09:58:30', '2022-05-03 12:58:30', '', 'dinheiro', '', 'inherit', 'open', 'closed', '', 'dinheiro', '', '', '2022-05-03 09:58:30', '2022-05-03 12:58:30', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/dinheiro.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2022-05-03 09:59:00', '2022-05-03 12:59:00', '', 'sinal', '', 'inherit', 'open', 'closed', '', 'sinal', '', '', '2022-05-03 09:59:00', '2022-05-03 12:59:00', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/sinal.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2022-05-03 09:59:31', '2022-05-03 12:59:31', '', 'sinal2', '', 'inherit', 'open', 'closed', '', 'sinal2', '', '', '2022-05-03 09:59:31', '2022-05-03 12:59:31', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/sinal2.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2022-05-03 10:00:43', '2022-05-03 13:00:43', '', 'barro', '', 'inherit', 'open', 'closed', '', 'barro', '', '', '2022-05-03 10:00:43', '2022-05-03 13:00:43', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/barro.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2022-05-03 10:00:53', '2022-05-03 13:00:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-03 10:00:53', '2022-05-03 13:00:53', '', 9, 'http://localhost:8888/gbr/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-05-03 10:03:18', '2022-05-03 13:03:18', '', 'gbr', '', 'inherit', 'open', 'closed', '', 'gbr', '', '', '2022-05-03 10:03:18', '2022-05-03 13:03:18', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/gbr.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2022-05-03 10:04:43', '2022-05-03 13:04:43', '', 'pp', '', 'inherit', 'open', 'closed', '', 'pp', '', '', '2022-05-03 10:04:43', '2022-05-03 13:04:43', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/pp.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2022-05-03 10:04:48', '2022-05-03 13:04:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-03 10:04:48', '2022-05-03 13:04:48', '', 9, 'http://localhost:8888/gbr/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-05-03 10:22:05', '2022-05-03 13:22:05', '<div class=\"container_form\">[text* nome id:nome class:form-control placeholder \"Nome*\"][tel* telefone id:form-tel class:form-control placeholder \"Telefone*\"][email* email id:email class:form-control placeholder \"E-mail*\"][submit \"Enviar\"]</div>\n1\nFormulário de contato\ncontato@fazendinhamaquine.com.br\nelisabeteh.ferreira@squadperformance.com.br\nNome: [nome]\r\nTelefone: [telefone]\r\nE-mail: [email]\n\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <sergio@incdigital.com.br>\n[your-email]\nCorpo da mensagem:\r\n[your-message]\r\n\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nAgradecemos a sua mensagem.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nUm ou mais campos possuem um erro. Verifique e tente novamente.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'Contato', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1', '', '', '2022-05-05 15:15:55', '2022-05-05 18:15:55', '', 0, 'http://localhost:8888/gbr/?post_type=wpcf7_contact_form&#038;p=58', 0, 'wpcf7_contact_form', '', 0),
(59, 1, '2022-05-03 15:23:56', '2022-05-03 18:23:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-03 15:23:56', '2022-05-03 18:23:56', '', 9, 'http://localhost:8888/gbr/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-05-03 17:11:04', '2022-05-03 20:11:04', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Ajustes do Tema', 'ajustes-do-tema', 'publish', 'closed', 'closed', '', 'group_62718c468e9a8', '', '', '2022-05-03 17:27:15', '2022-05-03 20:27:15', '', 0, 'http://localhost:8888/gbr/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2022-05-03 17:11:04', '2022-05-03 20:11:04', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Geral', 'geral', 'publish', 'closed', 'closed', '', 'field_62718c4d910b2', '', '', '2022-05-03 17:11:04', '2022-05-03 20:11:04', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=61', 0, 'acf-field', '', 0),
(62, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_62718c71a2d04', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=62', 1, 'acf-field', '', 0),
(63, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_62718caba2d05', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=63', 2, 'acf-field', '', 0),
(64, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer GBR', 'footer', 'publish', 'closed', 'closed', '', 'field_62718cb8a2d06', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=64', 3, 'acf-field', '', 0),
(65, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo_gbr', 'publish', 'closed', 'closed', '', 'field_62718f58a2d10', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=65', 4, 'acf-field', '', 0),
(66, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram_gbr', 'publish', 'closed', 'closed', '', 'field_62718edca2d08', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=66', 5, 'acf-field', '', 0),
(67, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'email_gbr', 'publish', 'closed', 'closed', '', 'field_62718eefa2d09', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=67', 6, 'acf-field', '', 0),
(68, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço', 'endereco_gbr', 'publish', 'closed', 'closed', '', 'field_62718f00a2d0a', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=68', 7, 'acf-field', '', 0),
(69, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Footer FORT', 'footer_fort', 'publish', 'closed', 'closed', '', 'field_62718f1aa2d0b', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=69', 8, 'acf-field', '', 0),
(70, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo_fort', 'publish', 'closed', 'closed', '', 'field_62718f6aa2d11', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=70', 9, 'acf-field', '', 0),
(71, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instagram', 'instagram_fort', 'publish', 'closed', 'closed', '', 'field_62718f24a2d0c', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=71', 10, 'acf-field', '', 0),
(72, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Whatsapp', 'whatsapp_fort', 'publish', 'closed', 'closed', '', 'field_62718f38a2d0d', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=72', 11, 'acf-field', '', 0),
(73, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'email_fort', 'publish', 'closed', 'closed', '', 'field_62718f43a2d0e', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=73', 12, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2022-05-03 17:26:42', '2022-05-03 20:26:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço', 'endereco_fort', 'publish', 'closed', 'closed', '', 'field_62718f4da2d0f', '', '', '2022-05-03 17:26:42', '2022-05-03 20:26:42', '', 60, 'http://localhost:8888/gbr/?post_type=acf-field&p=74', 13, 'acf-field', '', 0),
(75, 1, '2022-05-03 17:28:45', '2022-05-03 20:28:45', '', 'logo-footer', '', 'inherit', 'open', 'closed', '', 'logo-footer', '', '', '2022-05-03 17:28:45', '2022-05-03 20:28:45', '', 0, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/logo-footer.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2022-05-03 17:29:53', '2022-05-03 20:29:53', '', 'logo-fort', '', 'inherit', 'open', 'closed', '', 'logo-fort', '', '', '2022-05-03 17:29:53', '2022-05-03 20:29:53', '', 0, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/logo-fort.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2022-05-04 10:29:35', '2022-05-04 13:29:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-04 10:29:35', '2022-05-04 13:29:35', '', 9, 'http://localhost:8888/gbr/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-05-04 10:55:36', '2022-05-04 13:55:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-04 10:55:36', '2022-05-04 13:55:36', '', 9, 'http://localhost:8888/gbr/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-05-04 11:03:21', '2022-05-04 14:03:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Banner mobile', 'imagem_banner_mobile', 'publish', 'closed', 'closed', '', 'field_6272878d590f3', '', '', '2022-05-04 11:03:21', '2022-05-04 14:03:21', '', 20, 'http://localhost:8888/gbr/?post_type=acf-field&p=79', 2, 'acf-field', '', 0),
(80, 1, '2022-05-04 11:04:01', '2022-05-04 14:04:01', '', 'Provisório GBR', '', 'inherit', 'open', 'closed', '', 'provisorio-gbr', '', '', '2022-05-04 11:04:01', '2022-05-04 14:04:01', '', 9, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/Provisório-GBR.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2022-05-04 11:04:42', '2022-05-04 14:04:42', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-05-04 11:04:42', '2022-05-04 14:04:42', '', 9, 'http://localhost:8888/gbr/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-05-04 14:41:13', '2022-05-04 17:41:13', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2022-05-04 14:41:13', '2022-05-04 17:41:13', '', 0, 'http://localhost:8888/gbr/wp-content/uploads/2022/05/favicon.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2022-05-04 14:41:44', '2022-05-04 17:41:44', '{\n    \"blogdescription\": {\n        \"value\": \"Maquin\\u00e9\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-04 17:41:44\"\n    },\n    \"site_icon\": {\n        \"value\": 82,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-05-04 17:41:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '39d8732c-3e04-43d0-90fe-fe2cd83edced', '', '', '2022-05-04 14:41:44', '2022-05-04 17:41:44', '', 0, 'http://localhost:8888/gbr/2022/05/04/39d8732c-3e04-43d0-90fe-fe2cd83edced/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_smush_dir_images`
--

CREATE TABLE `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `file_time` int(10) UNSIGNED DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'gbr', 'gbr', 0),
(3, 'Menu Topo', 'menu-topo', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(11, 3, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
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
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'inc'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"9396b59a1f5f852f996b8be30de53e99dddd1c5e90f78ead547deccddf9fac14\";a:4:{s:10:\"expiration\";i:1651841481;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:122:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\";s:5:\"login\";i:1651668681;}s:64:\"ed57793dc0f6ce6f06771797394fb2d2a39f5654a26dee733f224c9e2d1fe9eb\";a:4:{s:10:\"expiration\";i:1651865188;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:122:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\";s:5:\"login\";i:1651692388;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1651582609');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
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
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'inc', '$P$B.uMyYz6.w5AC6cxn80130E6Fn6l6l.', 'inc', 'sergio@incdigital.com.br', 'http://localhost:8888/gbr', '2022-05-02 12:41:21', '', 0, 'inc');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Outro SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/gbr\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2022-05-04 23:19:27'),
(2, 'Mailer: Outro SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"\\/Applications\\/MAMP\\/htdocs\\/gbr\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":314}', 0, '2022-05-04 23:25:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_summary_report_email', 'W10=', '2022-05-04 17:33:08'),
(2, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-05-04 17:33:33'),
(3, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-05-05 18:15:15');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Índices de tabela `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Índices de tabela `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Índices de tabela `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Índices de tabela `wp_defender_audit_log`
--
ALTER TABLE `wp_defender_audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_type` (`event_type`),
  ADD KEY `action_type` (`action_type`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `context` (`context`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `wp_defender_email_log`
--
ALTER TABLE `wp_defender_email_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `source` (`source`);

--
-- Índices de tabela `wp_defender_lockout`
--
ALTER TABLE `wp_defender_lockout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `status` (`status`),
  ADD KEY `attempt` (`attempt`),
  ADD KEY `attempt_404` (`attempt_404`);

--
-- Índices de tabela `wp_defender_lockout_log`
--
ALTER TABLE `wp_defender_lockout_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `type` (`type`),
  ADD KEY `tried` (`tried`);

--
-- Índices de tabela `wp_defender_scan`
--
ALTER TABLE `wp_defender_scan`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_defender_scan_item`
--
ALTER TABLE `wp_defender_scan_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`),
  ADD KEY `image_size` (`image_size`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices de tabela `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_defender_audit_log`
--
ALTER TABLE `wp_defender_audit_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_defender_email_log`
--
ALTER TABLE `wp_defender_email_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_defender_lockout`
--
ALTER TABLE `wp_defender_lockout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_defender_lockout_log`
--
ALTER TABLE `wp_defender_lockout_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_defender_scan`
--
ALTER TABLE `wp_defender_scan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_defender_scan_item`
--
ALTER TABLE `wp_defender_scan_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1463;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=559;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de tabela `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
