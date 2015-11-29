-- phpMyAdmin SQL Dump
-- version 4.2.12
-- http://www.phpmyadmin.net
--
-- Host: rdbms
-- Erstellungszeit: 08. Sep 2015 um 17:56
-- Server Version: 5.5.44-log
-- PHP-Version: 5.3.27


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_aps_options`
--

CREATE TABLE IF NOT EXISTS `jos_aps_options` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ;

--
-- Daten für Tabelle `jos_aps_options`
--

INSERT INTO `jos_aps_options` (`name`, `value`) VALUES
('autologin_token', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
`bid` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(90) NOT NULL DEFAULT 'banner',
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(150) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL
) AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 90, '2011-11-27 11:32:16', NULL, '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 477, 1, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla! Das populärste und meistgenutzte Open Source CMS Projekt der Welt.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 477, 1, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode - Entwicklung und Verbreitung einfach gemacht.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla!-Erweiterungen', 'joomla-extensions', 0, 472, 1, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla!-Komponenten, Module, Plugins und Sprachen.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla!-Shop', 'joomla-shop', 0, 472, 1, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFür alle Ihre Vorlieben von Joomla!.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla!-Promo-Shop', 'joomla-promo-shop', 0, 428, 2, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla!-Promo-Books', 'joomla-promo-books', 0, 367, 1, 'shop-ad-books.jpg', 'http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
`cid` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(150) DEFAULT NULL
) AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(150) NOT NULL DEFAULT '',
  `image_position` varchar(90) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(150) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) AUTO_INCREMENT=44 ;

--
-- Daten für Tabelle `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Aktuell', '', 'aktuelle-nachrichten', 'taking_notes.jpg', '1', 'left', 'Die aktuellen Nachrichten vom Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(42, 0, 'Fotos', '', 'fotos', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(35, 0, 'Sonstig', '', 'sonstig', '', 'com_weblinks', 'left', '', 1, 65, '2012-12-02 18:23:47', NULL, 2, 0, 0, ''),
(3, 0, 'Kurzmeldungen', '', 'kurzmeldungen', '', '1', 'left', '', 1, 65, '2009-05-15 17:28:19', NULL, 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Business: Allgemein', '', 'Business-Allgemein', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(6, 0, 'Linux', '', 'linux', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(7, 0, 'Internet', '', 'internet', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(12, 0, 'Kontakte', '', 'kontakte', '', 'com_contact_details', 'left', 'Kontakt Details für diese Webseite', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text Werbung', '', 'text-werbung', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Eigenschaften', '', 'eigenschaften', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Plattformen', '', 'plattformen', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(36, 0, 'Sportvereine', '', 'sportvereine', '', 'com_weblinks', 'left', 'In dieser Kategorie sind Links zu anderen Sportvereinen, die in unserer Meisterschaft sind.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(39, 0, 'Vorstand', '', 'vorstand', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(38, 0, 'Anfänge', '', 'anfang', '', '5', 'left', 'Über die Anfänge des Vereins', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(37, 0, 'Webteam', '', 'webteam', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(33, 0, 'Joomla!-Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(41, 0, 'Trainer', '', 'trainer', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(43, 0, 'Präsident', '', 'praesident', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` text NOT NULL,
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) AUTO_INCREMENT=131 ;

--
-- Daten für Tabelle `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banner', '', 0, 0, '', 'Banner', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banner', '', 0, 1, 'option=com_banners', 'Aktive Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Kunden', '', 0, 1, 'option=com_banners&c=client', 'Kunden', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Weblinks', 'option=com_weblinks', 0, 0, '', 'Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'Existierende Weblinks anzeigen', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Kategorien', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Weblink Kategorien', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Kontakte', 'option=com_contact', 0, 0, '', 'Kontaktdetails bearbeiten', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Kontakte', '', 0, 7, 'option=com_contact', 'Kontaktdetails bearbeiten', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Kategorien', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Kontakt Kategorien', '', 2, 'js/ThemeOffice/categories.png', 1, '', 1),
(10, 'Umfragen', 'option=com_poll', 0, 0, 'option=com_poll', 'Umfragen', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'Newsfeeds', 'option=com_newsfeeds', 0, 0, '', 'Newsfeeds', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(13, 'Kategorien', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Kategorien', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'Benutzer', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Suche', 'option=com_search', 0, 0, 'option=com_search', 'Statistiken durchsuchen', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Kategorien', '', 0, 1, 'option=com_categories&section=com_banner', 'Kategorien', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail an', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Medien', '', 0, 0, 'option=com_media', 'Medien', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\n\n', 1),
(20, 'Artikel', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Konfiguration', '', 0, 0, '', 'Konfiguration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Sprachen', '', 0, 0, '', 'Sprachen', 'com_languages', 0, '', 1, 'site=de-DE\nadministrator=de-DE\n\n', 1),
(24, 'Massen E-Mail', '', 0, 0, '', 'Massen E-Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menü Editor', '', 0, 0, '', 'Menü Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Nachrichten', '', 0, 0, '', 'Nachrichten', 'com_messages', 0, '', 1, '', 1),
(28, 'Module', '', 0, 0, '', 'Module', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugins', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Templates', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'Benutzer', '', 0, 0, '', 'Benutzer', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'iWebCal', 'option=com_iwebcal', 0, 0, 'option=com_iwebcal', 'iWebCal', 'com_iwebcal', 0, 'js/ThemeOffice/component.png', 0, 'calendardateformat=day\nlinkdateformat=dd/mm/yyyy\n', 1),
(35, 'New Calendar', '', 0, 34, 'option=com_iwebcal&task=newCalendar', 'New Calendar', 'com_iwebcal', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(36, 'Help', '', 0, 34, 'option=com_iwebcal&task=info', 'Help', 'com_iwebcal', 1, 'js/ThemeOffice/component.png', 0, '', 1),
(37, 'Readme', '', 0, 34, 'option=com_iwebcal&task=readme', 'Readme', 'com_iwebcal', 2, 'js/ThemeOffice/component.png', 0, '', 1),
(130, 'About', '', 0, 127, 'option=com_easybook&task=about', 'About', 'com_easybook', 2, 'components/com_easybook/images/easybook_info.png', 0, '', 1),
(45, 'Image Browser', 'option=com_imagebrowser', 0, 0, 'option=com_imagebrowser', 'Image Browser', 'com_imagebrowser', 0, 'js/ThemeOffice/component.png', 0, 'mode=1\n', 1),
(46, 'EventList', 'option=com_eventlist', 0, 0, 'option=com_eventlist', 'EventList', 'com_eventlist', 0, '../administrator/components/com_eventlist/assets/images/eventlist.png', 0, 'display_num=15\ncat_num=4\nempty_cat=0\nfilter=1\ndisplay=1\nicons=1\nshow_print_icon=1\nshow_email_icon=1\n\n', 1),
(123, 'EasyCaptcha', 'option=com_easycaptcha', 0, 0, 'option=com_easycaptcha', 'EasyCaptcha', 'com_easycaptcha', 0, 'components/com_easycaptcha/images/easycaptcha_ico.png', 0, '', 1),
(124, 'Manage Captchas', '', 0, 123, 'option=com_easycaptcha', 'Manage Captchas', 'com_easycaptcha', 0, 'components/com_easycaptcha/images/easycaptcha_manage.png', 0, '', 1),
(112, 'Fussball', 'option=com_fussball', 0, 0, 'option=com_fussball', 'Fussball', 'com_fussball', 0, 'js/ThemeOffice/component.png', 0, 'saison=1\n', 1),
(113, 'Saisonliste verwalten', '', 0, 112, 'option=com_fussball&view=saisonliste', 'Saisonliste verwalten', 'com_fussball', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(114, 'Mannschaft verwalten', '', 0, 112, 'option=com_fussball&view=mannschaften', 'Mannschaft verwalten', 'com_fussball', 1, 'js/ThemeOffice/component.png', 0, '', 1),
(115, 'Spieler verwalten', '', 0, 112, 'option=com_fussball&view=spielerliste', 'Spieler verwalten', 'com_fussball', 2, 'js/ThemeOffice/component.png', 0, '', 1),
(116, 'Spiele eintragen', '', 0, 112, 'option=com_fussball&view=spiele', 'Spiele eintragen', 'com_fussball', 3, 'js/ThemeOffice/component.png', 0, '', 1),
(117, 'Spieler Attribute verwalten', '', 0, 112, 'option=com_fussball&view=attribute', 'Spieler Attribute verwalten', 'com_fussball', 4, 'js/ThemeOffice/component.png', 0, '', 1),
(125, 'Upload Captcha', '', 0, 123, 'option=com_easycaptcha&controller=captcha&task=upload', 'Upload Captcha', 'com_easycaptcha', 1, 'components/com_easycaptcha/images/easycaptcha_package.png', 0, '', 1),
(126, 'About', '', 0, 123, 'option=com_easycaptcha&task=about', 'About', 'com_easycaptcha', 2, 'components/com_easycaptcha/images/easycaptcha_info.png', 0, '', 1),
(127, 'EasyBook', 'option=com_easybook', 0, 0, 'option=com_easybook', 'EasyBook', 'com_easybook', 0, 'components/com_easybook/images/easybook_ico.png', 0, 'show_logo=0\nsend_mail=1\nentries_perpage=5\nentries_order=DESC\nshow_introtext=0\nintrotext=\nsupport_bbcode=1\nsupport_smilie=1\nsupport_link=0\nsupport_mail=1\nsupport_pic=0\nwordwrap=1\nmaxlength=75\nrating_max=5\nshow_rating=0\nenable_log=0\nshow_mail=1\nrequire_mail=0\nshow_home=0\nshow_icq=0\nshow_aim=0\nshow_msn=0\nshow_yah=0\nshow_skype=0\ndefault_published=1\nbadwordfilter=1\nenable_captcha=1\nadd_acl=0\nadmin_acl=20\n\n', 1),
(128, 'Manage Entries', '', 0, 127, 'option=com_easybook', 'Manage Entries', 'com_easybook', 0, 'components/com_easybook/images/easybook_edit.png', 0, '', 1),
(129, 'Badwordfilter', '', 0, 127, 'option=com_easybook&controller=badwords', 'Badwordfilter', 'com_easybook', 1, 'components/com_easybook/images/easybook_unhappy.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` text,
  `address` text,
  `suburb` text,
  `state` text,
  `country` text,
  `postcode` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(60) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT ''
) AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Manfred Rosskamp', 'Manni', '', 'Dorenfeldweg 4', 'Velen', '', '', '46342', '', '', '', '', 'top', 'manfred.rosskamp@web.de', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=0\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=0\nshow_postcode=1\nshow_country=0\nshow_telephone=0\nshow_mobile=0\nshow_fax=0\nshow_webpage=1\nshow_misc=0\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 62, 37, 0, '', ''),
(8, 'Michael Trepmann', 'michael-trepmann', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 4, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 90, 37, 0, '', ''),
(4, 'Rainer Hövelbrinks', 'rainer-hoevelbrinks', 'Kassierer', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 3, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 39, 0, '', ''),
(5, 'Norbert Rosskamp', 'norbert-rosskamp', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 3, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 65, 37, 0, '', ''),
(6, 'Michael Raida', 'michael-raida', 'Präsident', '', '', '', '', '', '', '', '', '', NULL, 'M.Raida@t-online.de', 0, 1, 0, '0000-00-00 00:00:00', 4, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 64, 43, 0, '', ''),
(7, 'Christian Thesing', 'christian-thesing', 'Trainer', '', '', '', '', '', '', '', '', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 5, 'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=0\nshow_mobile=0\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 86, 41, 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
`id` int(11) unsigned NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` text NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` text NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL
) AUTO_INCREMENT=153 ;

--
-- Daten für Tabelle `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(71, 'Tabelle 2008', 'tabelle-2008', '', '<p>Die <a href="/images/ergebnisse.pdf">Abschlusstabelle der Saison 2008</a> (Stand 20.10.2008) im PDF-Format.<p>\r\n\r\n<!--\r\nIm folgenden ist die Tabelle, der Internetseite von Cosmos dargestellt (Stand: keine Ahnung):\r\n<iframe src="http://www.b-ones.de/cosmos/tabelle.htm" width="520" height="370" name="tabelle">\r\n  <p>Ihr Browser kann leider keine eingebetteten Frames anzeigen:\r\n  Sie k&ouml;nnen die eingebettete Seite &uuml;ber den folgenden Verweis\r\n  aufrufen: <a href="http://www.b-ones.de/cosmos/tabelle.htm">Tabelle</a></p>\r\n</iframe>\r\n\r\n-->', '', 1, 0, 0, 0, '2008-06-23 14:06:05', 62, '', '2008-10-25 16:40:56', 62, 62, '2009-05-14 18:32:25', '2008-06-23 14:06:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 11, 0, 17, '', '', 0, 219, 'robots=\nauthor='),
(72, 'Trainingsanzüge', 'trainingsanzuege', '', 'Endlich ist es soweit: <strong>Die neuen Trainingsanzüge sind da!</strong> Am Samstag bei den Spielen bzw. am Sonntag können die Trainingsanzüge gegen Bezahlung bei Michael Raida abgeholt werden.', '', -2, 1, 0, 1, '2008-06-24 13:08:41', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-06-23 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 27, '', '', 0, 56, ''),
(73, 'Alte Herren - Junggesellen', 'alte-herren-junggesellen', '', '<p>Am Samstag ist es wieder soweit: Das Spiel Alte Herren gegen Junggesellen. Vorher spielt um 13:30 Uhr unsere Jugend gegen die Jugend von Fiat Gescher. Anschließend findet ein Spiel der Minikicker gegen eine Ramsdorfer Auswahl statt. </p><p>Danach wird''s ernst für die Junggesellen und die Alten Herren. Wir bitten um gute Beteiligung (auch bei den Zuschauern). </p><p>Für die Junggesellen ist um 18:00 Uhr treffen <img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-wink.gif" border="0" alt="Wink" title="Wink" />. </p>', '', -2, 1, 0, 1, '2008-06-24 13:17:05', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-06-23 23:00:00', '2008-06-30 14:17:47', '', '', '', 1, 0, 60, '', '', 0, 8, ''),
(74, 'Pokalturnier', 'pokalturnier', '', '<p><strong>WIR GRATULIEREN DER "MOPPENTRUPPE" AUS RAMSDORF ZUM SIEG</strong></p><p><strong>BEIM DIESJÄHRIGEN POKALTURNIER ! ! ! ! ! </strong></p><p><strong>DANK DER MERH GESCHOSSENEN TOREN HABEN SIE SICH GEGEN DIE</strong></p><p><strong>MANNSCHAFT VOM SV HOLTHAUSEN DURCHGESETZT</strong></p><p><strong>================================================= </strong></p><p>&nbsp;</p><p>Hier der aktuelle Spielplan für unser Pokalturnier: </p><table border="0" width="442" height="184" align="left"><tbody><tr><td>11:00 Uhr </td><td>SV Holthausen </td><td>- SC Brinker Jungs </td></tr><tr><td>11:35 Uhr<br /></td><td>Moppentruppe</td><td>- VFL Ramsdorf 3 <br /></td></tr><tr><td>12:10 Uhr </td><td>FC Nordick </td><td>- SV Holthausen <br /></td></tr><tr><td> 12:45 Uhr<br /></td><td>SC Brinker Jungs<br /></td><td> - Moppentruppe<br /></td></tr><tr><td> 13:20 Uhr<br /></td><td> Vfl Ramsdorf 3<br /></td><td> - FC Nordick<br /></td></tr><tr><td> 13:55 Uhr<br /></td><td> SV Holthausen<br /></td><td> - Moppentruppe</td></tr><tr><td> 14:30 Uhr<br /></td><td> SC Brinker Jungs<br /></td><td> - Vfl Ramsdorf 3<br /></td></tr><tr><td> 15:05 Uhr<br /></td><td> FC Nordick<br /></td><td>- Moppentruppe<br /></td></tr><tr><td> 15:40 Uhr<br /></td><td> Vfl Ramsdorf<br /></td><td>- SV Holthausen<br /></td></tr><tr><td> 16:15 Uhr<br /></td><td> SC Brinker Jungs<br /></td><td> - FC Nordick<br /></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Anschließend ist um 17:00 Uhr die Siegerehrung. </p>', '', -2, 1, 0, 1, '2008-06-24 13:21:12', 65, '', '2008-07-02 09:21:32', 64, 0, '0000-00-00 00:00:00', '2008-06-23 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 61, '', '', 0, 88, 'robots=\nauthor='),
(75, 'Alt gegen Jung', 'alt-gegen-jung', '', 'Am 28.06.08 fand wieder das Spiel der Alten Herren gegen die Junggesellen statt.\r\nDas Spiel endete mit einem 2:1 Erfolg für die Alten Herren\r\nFür die Alten Herren spielten: S.Föcing(1 Tor), A. Bünte(1 Tor),J.Döring, M.Eichhorn, A.Kerkhoff, N.Rosskamp, H.Strump, L.Rosskamp, B.Enning, H.Holtkamp, F.Süling, S. Többer, M.Treppmann\r\nFür die Junggesellen spielten: B.Sicking, D.Holtkamp, U.Kleining, M.Rosskamp, C.Deppe, T.Bone Winkel(1 Tor), Chr.Thesing, J.Storks, M.Raida, St.Hüging, T.Selting, L.Robert, H.Dirking, J.Rosskamp, S.Böing', '', -2, 1, 0, 1, '2008-07-11 13:27:25', 71, '', '2009-03-25 12:29:13', 64, 0, '0000-00-00 00:00:00', '2008-07-11 13:27:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 62, '', '', 2, 103, 'robots=\nauthor='),
(76, 'SPIELABSAGE - Bröker Jungs', 'spielabsage-broeker-jungs', '', '<p><strong>Aufgrund eines Trauerfalles im Umfeld der Mannschaft der Bröker Jungs</strong></p><p><strong>muss das Spiel ( Termin: 09.08.08 ) verschoben werden ! ! ! ! </strong></p><p><strong>Ein neuer Termin steht noch nicht fest ! ! ! ! !</strong></p><p><strong> </strong></p><p>&nbsp;</p>', '', -2, 0, 0, 0, '2008-08-08 06:53:22', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-08-07 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 1, '', '', 0, 0, ''),
(77, 'SPIELABSAGE - Bröker Jungs', 'spielabsage-broeker-jungs', '', '<p><strong>Aufgrund eines Trauerfalles im näheren Umfeld der Mannschaft von den Bröker Jungs </strong></p><p><strong>muss das Spiel ( Termin: 09.08.08 ) leider abgesagt werden ! ! ! ! !</strong></p><p><strong>Ein neuer Termin steht noch nicht fest ! ! ! ! !</strong> <br /> </p>', '', -2, 1, 0, 1, '2008-08-08 06:55:44', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-08-07 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 66, '', '', 0, 24, ''),
(78, 'Spielabsage Lupine Weseke', 'spielabsage-lupine-weseke', '', '<p><strong>Das Spiel gegen Lupine Weseke wurde abgesagt.</strong> Lupine kriegt nicht genug Leute zusammen. Wenn''s mit den Terminen passt, wird das Spiel in den September verlegt.</p><p><u><strong>NEUER SPIELTERMIN: 13.09.2008 ( Samstag ) </strong></u></p>', '', -2, 1, 0, 1, '2008-08-12 16:21:18', 65, '', '2008-09-14 09:01:15', 64, 0, '0000-00-00 00:00:00', '2008-08-11 21:00:00', '2008-09-14 10:00:52', '', '', '', 3, 0, 65, '', '', 2, 27, ''),
(79, 'Arbeiteinsatz Schule', 'arbeiteinsatz-schule', '', 'Am Samstag ab 9:30 Uhr wird wollen wir die Schule für das Kinderschützenfest schüssig machen. Bitte um zahlreiches Erscheinen!', '', 0, 1, 0, 3, '2008-09-02 05:40:03', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-09-01 23:00:00', '2008-09-07 06:40:58', '', '', '', 1, 0, 3, '', '', 0, 3, ''),
(80, '...', '2008-09-13-16-25-41', '', '<p>...</p>', '', -2, 1, 0, 1, '2008-09-11 16:28:39', 64, '', '2008-09-13 16:25:41', 64, 0, '0000-00-00 00:00:00', '2008-09-10 21:00:00', '2008-09-13 17:30:03', '', '', '', 3, 0, 64, '', '', 0, 17, ''),
(81, 'Saison Feier (1 Jährige Meisterschaft)', 'saison-feier-1-jaehrige-meisterschaft', '', '<p>Im Anschluss an das letzte Spiel gegen Timpen (DAS WIR NATÜRLICH MIT EINEM 3er BEENDEN) soll unsere "einjährige Meisterschaftsfeier" beim Coach in der Hütte stattfinden. Geplant ist wie letztes Jahr ein Kickerturnier. Es gibt eine Kleinigkeit zu futtern und ein paar kalte Getränke!</p><p>Wer keine Zeit hat, meldet sich bitte bei Twix, Rainer, Andi oder bei mir ab. </p>', '', -2, 1, 0, 1, '2008-10-13 15:40:29', 65, '', '2008-10-14 19:51:56', 63, 0, '0000-00-00 00:00:00', '2008-10-12 22:00:00', '2008-10-20 15:40:09', '', '', '', 2, 0, 59, '', '', 0, 15, ''),
(82, 'Meisterfeier von Cosmos Weseke', 'meisterfeier-von-cosmos-weseke', '', '<p>Tach zusammen,</p><p>am kommenden Samstag <strong>( 25.08.08 )</strong> findet die diesjährige Meisterfeier statt.</p><p>Beginn ist um <strong>20 Uhr im Weseker Ecke</strong> ( Ramsdorfer Str.?? / Weseke )</p><p>Veranstalter sind die Cosmonauten aus Weseke, die auch in diesem Jahr wieder </p><p>den Pokal geholt haben <em>( wie langweilig )</em></p><p>Zahlreiches Erscheinen ist angesagt und erwünscht.</p><p>Treffen an der schule würde sich anbieten ( ca. 19:30 Uhr ) </p>\r\n\r\n<p><a href="/images/Einladung_Saisonabschluss.pdf">Einladung zur Meisterschaftsfeier </a>\r\n</p>', '', -2, 1, 0, 1, '2008-10-22 12:50:20', 64, '', '2008-10-25 16:45:14', 62, 0, '0000-00-00 00:00:00', '2008-10-21 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 58, '', '', 0, 26, 'robots=\nauthor='),
(83, 'Freundschaftsspiel am 5. November 2008', 'freundschaftsspiel-am-5-november-2008', '', '<p>Am 5. November habe wir ein Freundschaftsspiel gegen RW Trimbach.</p><p>Anstoß ist um 19 Uhr in Holthausen - Treffen ist um 18 Uhr</p><p>Bitte zahlreich und pünktlich erscheinen...</p><p>&nbsp;</p>', '', -2, 1, 0, 1, '2008-10-22 19:28:22', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-10-21 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 57, '', '', 0, 17, ''),
(84, 'Spielerversammlung + Arbeitseinsatz', 'spielerversammlung', '', '<h4 align="center"><font face="arial,helvetica,sans-serif">Am <strong>22. November</strong> findet die diesjährige Spielerversammlung statt.</font></h4> <h4 align="center"><font face="arial,helvetica,sans-serif">Beginn ist um <strong>18 Uhr</strong> bei Schütte ! ! ! ! !!<br /> </font></h4> <h4 align="center"><font face="arial,helvetica,sans-serif"><u>Bitte zahlreich und pünktlich erscheinen ! ! ! ! ! ! </u></font></h4><p> </p><p align="center"><font color="#ff0000"> <strong>ARBEITSEINSTAZ AN DER SCHULE:</strong></font></p><p align="center"><font color="#ff0000"><u><strong>22.11.08 ab 9:30 Uhr</strong></u></font></p><p align="center">Auf dem Programm stehen:</p><p align="center">- Rasenmähe</p><p align="center">- Laub haken</p><p align="center">- Kabine usw. sauber machen </p>', '', 0, 1, 0, 3, '2008-11-05 13:51:42', 64, '', '2009-02-26 08:07:42', 64, 0, '0000-00-00 00:00:00', '2008-11-04 22:00:00', '0000-00-00 00:00:00', '', '', '', 3, 0, 6, '', '', 2, 24, ''),
(85, 'Tabelle 2009', 'tabelle-2009', '', 'Der<a href="images/tabelle2009.pdf"> Spielplan und die Tabelle</a> (Stand 12.05.2009) im PDF-Format sind jetzt online.', '', 1, 0, 0, 0, '2008-11-29 10:58:56', 62, '', '2009-05-14 18:35:28', 62, 0, '0000-00-00 00:00:00', '2008-11-29 10:58:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nlanguage=\nkeyref=\nreadmore=', 4, 0, 16, '', '', 0, 201, 'robots=\nauthor='),
(86, 'Saison 2008', 'saison-2008', '', '<p>Die Saison 2008 ist vorbei und hat folgendermaßen geendet:</p>\r\n\r\n\r\n<table border="1">\r\n<tr><th align="center">Platz</th><th align="center"> Verein</th><th align="center"> Spiele</th><th colspan="3" align="center"> Tore </th><th align="center">Diff.</th><th> Punkte</th></tr>\r\n<tr><td>1.</td><td> Cosmos Weseke </td><td>16</td><td> 85 </td><td>:</td><td> 20 </td><td> + 65 </td><td>44</td></tr>\r\n<tr><td>2.</td><td> Tornado Timpen </td><td>16</td><td> 75 </td><td>:</td><td> 22 </td><td>+ 53 </td><td>38</td></tr>\r\n<tr><td>3.</td><td> SF Klein Reken </td><td>16</td><td> 60 </td><td>:</td><td> 30 </td><td>+ 30 </td><td>33</td></tr>\r\n<tr><td>4.</td><td> SC Brinker Jungs </td><td>16</td><td> 44 </td><td>:</td><td> 47 </td><td>– 3 </td><td>21</td></tr>\r\n<tr><td>5.</td><td> SV Holthausen </td><td>16</td><td> 55 </td><td>:</td><td> 64 </td><td>– 9 </td><td>17</td></tr>\r\n<tr><td>6.</td><td> FC Böinghook </td><td>16</td><td> 33 </td><td>:</td><td> 55 </td><td>– 22 </td><td>17</td></tr>\r\n<tr><td>7.</td><td> Bröker Jungs Reken </td><td>16</td><td> 35 </td><td>:</td><td> 62 </td><td>– 27 </td><td>16</td></tr>\r\n<tr><td>8.</td><td> Fortuna Bieling </td><td>16</td><td> 44 </td><td>:</td><td> 90 </td><td>– 46 </td><td>12</td></tr>\r\n<tr><td>9.</td><td> FC Lupine Weseke </td><td>16</td><td> 32 </td><td>:</td><td> 73 </td><td>– 41 </td><td>10</td></tr>\r\n</table>\r\n\r\n<p> </p>\r\n<p>Die <a href="/images/ergebnisse.pdf">Tabelle und Spiel der Saison 2008</a> (Stand 20.10.2008) im PDF-Format.</p>', '', 1, 0, 0, 0, '2008-12-15 17:02:58', 62, '', '2008-12-15 17:30:39', 62, 0, '0000-00-00 00:00:00', '2008-12-15 17:02:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 15, '', '', 0, 1335, 'robots=\nauthor='),
(88, 'Flutlichtanlage', 'flutlichtanlage', '', 'Es wurden am letzten Samstag zwei neue Flutlichter am Sportplatz montiert. Diese sollen dank ihres geringen Leistungsbedarf von 400 Watt den Stromverbrauch reduzieren. Es fehlen dann nur noch zwei Flutlichter, die ausgetauscht werden müssen. Im Zuge dessen sollen auch die Flutlichtmasten der beiden fehlenden Flutlichter ausgetauscht werden.', '', 0, 1, 0, 1, '2009-02-18 18:38:39', 62, '', '2009-11-20 18:14:12', 64, 0, '0000-00-00 00:00:00', '2009-02-18 18:38:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 44, '', '', 0, 51, 'robots=\nauthor='),
(89, 'Rasenmäher und Kellnerliste', 'rasenmaeher-und-kellnerliste', '', 'Die Rasenmäher und Kellnerliste wurde für das Jahr 2009 online gestellt. Zu finden sind diese nach der Anmeldung im Benuztermenü. In der Rasenmäherliste fehlen im Monat Juni und September noch welche. Am besten könnten sich dort die Leute eintragen, die sich im Februar oder November eingetragen haben.', '', 0, 1, 0, 1, '2009-02-18 18:52:14', 62, '', '2009-11-20 18:13:59', 64, 0, '0000-00-00 00:00:00', '2009-02-18 18:45:44', '2009-02-18 18:45:44', '', '', '', 3, 0, 43, '', '', 0, 0, ''),
(90, 'Trainingsbeginn Senioren', 'trainingsbeginn-senioren', '', 'Endlich ist es wieder soweit...\r\n\r\nAb Montag ( 2. März ) starten wir ( Senioren ) mit der Saisonvorbereitung \r\nfür die diesjährige Freiluftsaison.\r\n\r\nBeginn ist, wie immer, püntklich um 19 Uhr in Holthausen am Sportplatz.\r\nDenkt bitte in den ersten Wochen an die Laufschuhe...\r\n\r\nAb Donnerstag ( 26.02 ) startet unsere neu gegründete Ü 30 Mannschaft mit dem \r\nTraining.\r\nAlle Interessierten sind hierzu recht herzlich eingeladen.\r\nTrainingsbeginn ist ebenfalls um 19 Uhr.\r\n\r\nAuch die Jugend und Mini´s werden in Kürze mit dem Training beginnen.\r\nNähere Infos folgen noch.', '', 0, 1, 0, 1, '2009-02-26 08:05:03', 64, 'Twix', '2009-11-20 18:13:43', 64, 0, '0000-00-00 00:00:00', '2009-02-26 07:46:08', '0000-00-00 00:00:00', '', '', '', 4, 0, 42, '', '', 0, 48, ''),
(91, 'Tagestour 2009', 'tagestour-2009', '', '<span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d"><a href="mailto:J-Storks@web.de"><strong>Jan</strong></a> und <a href="mailto:ludgerrosskamp@gmx.de"><strong>Ludger</strong></a> bereiten die diesjährige Tagestour vor. Sie teilen mit, dass diese im Anschluss an das Meisterschaftsspiel gegen Cosmos Weseke am 06.06.09 stattfinden wird. Sie bitten um eine verbindliche Anmeldung bis nächste Woche.</span>', '', 0, 1, 0, 1, '2009-05-02 09:18:47', 62, '', '2009-11-20 18:14:38', 64, 0, '0000-00-00 00:00:00', '2009-05-02 09:18:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 40, '', '', 0, 47, 'robots=\nauthor='),
(92, 'Schützenfest Vorbereitung', 'schuetzenfest-vorbereitung', '', '<p><strong>Noch 6 mal Schlafen, dann ist Schützenfest :-)</strong></p><p>Am Samstag wollen wir die Schule und den Sportplatz Schützenfest vorbereiten. Start ist ab 09:30 Uhr (nicht erst 10:30 Uhr; danke Sibbi (so ist es jetzt richtig..) ): Hecke scheren, Kabine und Pausenraum saubermachen, Schulplatz fegen, Mutterboden am Pflaster und bei den Bäumen anfüllen, Komposthaufen leermachen. Ausserdem gibt''s noch Arbeit an der Vogelstange und am Zeltplatz. Also bitte zahlreich erscheinen! </p>', '', 0, 1, 0, 1, '2009-05-14 08:23:18', 65, '', '2009-11-20 18:13:29', 64, 0, '0000-00-00 00:00:00', '2009-05-14 08:14:54', '2009-05-20 08:14:54', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 39, '', '', 0, 3, 'robots=\nauthor='),
(48, 'Test 123', 'test-123', '', 'Hi, dies ist nur ein Test 321', '', -2, 1, 0, 1, '2008-01-04 09:23:53', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-01-04 01:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 68, '', '', 0, 2, ''),
(49, 'Turniersieger des BSG Foseco Hallenturniers', 'turniersieger', '', '<p><img src="images/stories/sieger.jpg" border="0" width="632" height="473" /></p><p>Als wir am 12.Januar zu unserem dritten Hallentunier starteten, hat noch keiner mit einem Tuniersieg gerechnet.<br /><br />Nachdem wir dann die Vorrunde glanzvoll mit drei Siegen überstanden hatten, haben wir dann in der Zwischenrunde weiter zwei Spiele gewonnen und eins unentschieden gespielt. Somit waren wir auch in der Zwischenrunde Gruppenerste und sind dann direkt ins Finale gekommen. Im Finale haben wir dann gegen SV Burlo ein 1:1 rausgespielt und sie dann im Elfmeterschießen besiegt. </p>', '', 0, 1, 0, 1, '2008-01-22 17:11:58', 62, '', '2008-01-22 17:43:34', 62, 0, '0000-00-00 00:00:00', '2008-01-22 17:11:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 55, '', '', 0, 69, 'robots=\nauthor='),
(50, 'Trainingsbeginn', 'trainingsbeginn', '', '<p>Montag (11. Februar) beginnt die Vorbereitung der Senioren auf die neue Freiluftsaison.</p><p>Treffen ist, wie immer, um 19 Uhr in Holthausen. <strong>Denkt an die Laufschuhe! </strong></p>', '', 0, 1, 0, 1, '2008-02-07 10:25:42', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-02-06 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 54, '', '', 0, 74, ''),
(51, 'Gründung', 'gruendung', '', '<p>Auf Einladung der KLJB Ramsdorf findet zum Erntedankfest am 24. Oktober 1971 ein Fußballspiel zwischen den "Alten Herren" von Holthausen-Bleking und Ostendorf-Krückling auf dem Ramsdorfer Sportplatz statt. </p><p><img src="/images/stories/geschichte/mannschaft_1_stunde.jpg" border="0" alt="Die Mannschaft der ersten Stunde" title="Die Mannschaft der ersten Stunde" width="613" height="319" /></p><p><i>Die Mannschaft von Holthausen-Bleking vom 24.10.1971: obere Reihe von links: Franz Bone-Winkel, Josef Niehues, Josef Holtkamp, Alois Föcking, Franz Dillhagen, Josef Stenert, Josef Effing, Heinz Strump. untere Reihe: Hubert Gehling, Adolf Ebbing, Alois Knuf, Franz Räwer </i></p><p>In geliehenen Trickots wurde das Spiel, nach hartem aber fairem Kampf, von Holthausen-Bleking mit 1:0 gewonnen. <br />Am Abend dann trafen sich Spieler und Schlachtenbummler zur fröhlichen Runde in der Gastwirtschaft Föcking, um den Erfolg gebührend zu feiern. Nach langen Diskussionen kam erstmalig die Idee, einen Verein zu gründen.</p><p>Auch zum Erntedankfest 1972 fand wieder der Vergleich zwischen Holthausen-Bleking und Ostendorf-Krückling statt. Wieder endet das Spiel 1:0 für Holthausen-Bleking. Aus der Idee wurde nach diesem Spiel ein fester Entschluß:</p><blockquote><p><strong>Wir gründen einen Verein mit einem eigenen Sportgelände und auch eingenen Trikots!</strong> </p></blockquote><p><img src="/images/stories/geschichte/siegermannschaft1972.jpg" border="0" alt="Siegermannschaft 1972" title="Siegermannschaft 1972" width="609" height="417" /> </p><p><i>Siegermannschaft von 1972: obere Reihe von links: Josef Effing, Josef Holtkamp, Franz Bone-Winkel, Josef Stenert, Alois Föcking, Franz Räwer, Josef Niehues. untere Reihe: Heinz Strump, Alois Ebbing, Hubert Gehling, Franz Dillhagen, Alois Knuf.</i> </p><p>Das Gemeindgrundstück an der ehemaligen Schule Holthausen, bis dahin noch von Herrn Lehrer Anton Lutter und Herrn Heinz Strump in Pacht, bietet sich als Sportplatz an. Nachdem beide ihr Grundstück zur Verfügung gestellt haben, kann mit den Arbeiten begonnen werden. Nach langen schweißtreibenden Arbeiten wird aus dem Acker ein Fußballfeld.</p><p>Im August 1973 ist es dann endlich soweit. </p>', '', 1, 5, 0, 38, '2008-02-09 13:06:37', 65, '', '2008-12-20 09:19:53', 62, 0, '0000-00-00 00:00:00', '2008-02-09 13:06:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 17, 0, 2, '', '', 0, 706, 'robots=\nauthor='),
(53, 'Impressum', 'impressum', '', '<p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong>Verantwortlich:</strong><br />Holthausener Sportverein </font></p> 						<p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><strong>Gestaltung und Inhalt:</strong><br /><a href="index.php?option=com_contact&view=category&catid=37&Itemid=63">Webteam</a></font></p><p><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#666666">© Copyright Holthausener Sportverein 2008</font></p> 						<hr size="1" noshade="noshade" /> 						  						<p><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black"><strong>Haftungsauschluss bei eigenen Inhalten</strong><br /> 								Die Inhalte dieser Website werden mit größtmöglicher Sorgfalt recherchiert und implementiert. Fehler im Bearbeitungsvorgang sind dennoch nicht auszuschließen. Hinweise und Korrekturen senden Sie bitte an den Webmaster. Eine Haftung für die Richtigkeit, Vollständigkeit und Aktualität dieser Webseiten kann trotz sorgfältiger Prüfung nicht übernommen werden. Der Holthausener Sportverein übernimmt insbesondere keinerlei Haftung, für eventuelle Schäden oder Konsequenzen, die durch die direkte oder indirekte Nutzung der angebotenen Inhalte entstehen.<br /> 								Die Inhalte fremder Seiten, auf die der </font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black">Holthausener Sportverein</font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black"> mittels Links hinweist, spiegeln nicht die Meinung des </font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black">Holthausener Sportverein</font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black"> wieder, sondern dienen lediglich der Information und der Darstellung von Zusammenhängen. Für die Inhalte fremder Websites sind deren Inhaber selbst verantwortlich.<br /> 								<br /> 								<strong>Haftungsauschluss bei Querverweisen und Links<br /> 								</strong>Diese Feststellungen gelten für alle innerhalb des eigenen Internetangebotes gesetzten Links und Verweise. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargebotener Informationen entstehen, haftet allein der Anbieter der Seite, auf welche verwiesen wurde.<br />  								Für die Inhalte fremder Websites, auf die mittels Links verwiesen wird, sind allein deren Inhaber verantwortlich. Es wird in diesem Zusammenhang ausdrücklich betont, dass der </font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black">Holthausener Sportverein </font><font face="Verdana, Arial, Helvetica, sans-serif" size="1" color="black">sich von den Inhalten sämtlicher verlinkter fremder Websites distanziert und somit jegliche Haftung für die Inhalte fremder Websites ausgeschlossen wird.</font></p>', '', 1, 0, 0, 0, '2008-02-17 12:27:37', 62, '', '2008-02-17 12:49:39', 62, 0, '0000-00-00 00:00:00', '2008-02-17 12:27:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 19, '', '', 0, 1198, 'robots=\nauthor='),
(52, 'Arbeitseinsatz Sportplatz', 'arbeitseinsatz-sportplatz', '', '<p class="MsoNormal">Hallo Zusammen,</p><p class="MsoNormal">das erste Training in 2008 haben alle heil überstanden... und der erste Arbeitseinsatz steht vor der Tür. Am kommenden Samstag (16. Februar 2008) wollen wi die Hecken scheren, stutzen, schneiden und die Torräume begradigen und neuen Rasen einpflanzen bzw. ausrollen.</p><p class="MsoNormal">Deswegen treffen wir uns am Samstag um 9 Urh an der Schule!!!</p><p class="MsoNormal">Wer hat sollte bitte eine Motor-Heckenschere bzw. entsprechendes Werkzeug zur Erd-Bewegung mitbringen.</p><strong><u><font face="Trebuchet MS" size="3"></font></u></strong>', '', 0, 1, 0, 1, '2008-02-12 07:55:58', 65, '', '0000-00-00 00:00:00', 0, 65, '2009-05-18 06:36:06', '2008-02-11 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 53, '', 'Arbeitseinsatz Hecke scheren', 0, 93, ''),
(54, 'Freundschaftsspiel gegen RW Trimbach', 'freundschaftsspiel-gegen-rw-trimbach', '', '<p>Hallo Leute,</p><p> unser erstes Freundschaftsspiel steht fest: Wir spielen am 4. März gegen RW Trimbach aus Südlohn. Treffen ist um 18:30 am Platz. Wir spielen in Holthausen. Bitte zahlreich und pünktlich erscheinen. Am Montag vorher (3.März) ist ganz normal Training.</p>', '', 0, 1, 0, 3, '2008-02-28 07:38:19', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-02-27 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 5, '', '', 0, 78, ''),
(55, 'Wahl der Trainingsanzüge', 'wahl-der-trainingsanzuege', '', '<p>Als Ergebnis der Wahl der Trainingsanzüge kann man sagen, dass die Farbe schwarz gefolgt von blau und rot gewonnen hat.</p><p>Da in den letzten paar Tage die Wahl manipuliert worden ist, habe ich die Umfrage herausgenommen. Es hat zum Beispiel am 03.03.2008 jemand versucht durch häufiges Wählen von blau, diese Farbe doch noch an erste Stelle zu bringen.</p><p>Es tut mir Leid, dass die Wahl nicht sicherer ist. Ich habe zwar gehofft, dass jeder so ehrlich ist und nur einmal wählt, aber naja.  (Bei einer nächsten Wahl müsste man es so machen, dass sich jeder mit Benuztername und Passwort anmeldet, um wählen zu dürfen).</p><p>Ich denke aber, dass man den Trend trotzdem gut erkennen konnte: Schwarz vor Blau vor Rot. </p>', '', 0, 1, 0, 1, '2008-03-04 16:36:52', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-03-04 16:36:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 51, '', '', 0, 71, 'robots=\nauthor='),
(56, 'Unerwartetes neues Wahlergebnis von Dienstag', 'unerwartetes-neues-wahlergebnis-von-dienstag', '', '<p>Guten Tag,</p><p>trotz der vorher durchgeführten Wahl, die als Ergebnis Schwarz hatte, wurde am Dienstag Abend nach der soundsovielten Wahl beschlossen, dass die neuen Trainingsanzüge gemäß unseren Vereinsfarben <font color="#ff0000"><strong>rot</strong></font> sein werden.</p>', '', 0, 1, 0, 1, '2008-03-05 16:38:53', 62, '', '2008-03-05 16:46:41', 62, 0, '0000-00-00 00:00:00', '2008-03-05 16:38:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 50, '', '', 0, 88, 'robots=\nauthor='),
(57, 'Rasenmäherliste 2009', 'rasenmaeherliste-2009', '', '<table border="0" width="592" height="317" style="font-size: 14pt"><tbody><tr><td style="background-color: #d7dcde"><strong>März </strong></td><td style="background-color: #d7dcde"><strong>Juli<br /></strong> </td></tr><tr><td>Jan Storks<br /></td><td>Buddy<br /></td></tr><tr><td>Pocke</td><td>Benny<br /></td></tr><tr><td> J.Roßkamp</td><td>Twix<br /></td></tr><tr><td style="background-color: #d7dcde"><strong>April <br /></strong></td><td style="background-color: #d7dcde"><strong>August <br /></strong></td></tr><tr><td>Uli Kleining<br /></td><td>Hubert Haselhoff <br /></td></tr><tr><td>Sven Böing <br /></td><td>Georg Mäsing <br /></td></tr><tr><td> M. Roßkamp</td><td>Rainer Hövelbrinks <br /></td></tr><tr><td align="left" style="background-color: #d7dcde"><strong>Mai <br /></strong></td><td align="left" style="background-color: #d7dcde"><strong>September <br /></strong></td></tr><tr><td>Pute <br /></td><td> </td></tr><tr><td>Andy Bünte<br /></td><td> </td></tr><tr><td> Hendrik Dirking<br /></td><td> </td></tr><tr><td style="background-color: #d7dcde"><strong>Juni <br /></strong></td><td style="background-color: #d7dcde"><strong>Oktober <br /></strong></td></tr><tr><td>M. Hövelbrinks<br /></td><td>Carsten <br /></td></tr><tr><td> </td><td>Sibbi <br /></td></tr><tr><td> </td><td>A. Kerkhoff <br /></td></tr></tbody></table>', '', -2, 0, 0, 0, '2008-03-05 16:51:22', 62, '', '2009-02-18 18:20:28', 62, 0, '0000-00-00 00:00:00', '2008-03-05 14:51:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', 'kakask', 1, 99, 'robots=\nauthor='),
(58, 'Kellnerliste 2009', 'kellnerliste-2009', '', '<table border="1" cellspacing="2" width="618" height="164"><tbody><tr><td align="center" style="background-color: #c4c6ca"><p><strong> Schützenfest Üben</strong></p><p><strong>17.05.2009 </strong></p></td><td align="center" style="background-color: #c4c6ca"><p><strong> Pokaltunier</strong></p><p><strong>28.06.2009  </strong></p></td><td align="center" style="background-color: #c4c6ca"><p><strong>Kinderschützenfest</strong></p><p><strong>Nachmittags 05.09.09 </strong></p></td><td align="center" style="background-color: #c4c6ca"><p><strong>Schützenfestnachfeier</strong></p><p><strong>Abends 05.09.09 </strong></p></td></tr><tr><td> R. Hövelbrinks</td><td>St. Nieland<br /></td><td>C. Deppe<br /></td><td>Pute<br /></td></tr><tr><td>L. Roßkamp<br /></td><td>G. Mäsing<br /></td><td>Sibbi <br /></td><td>J. Roßkamp<br /></td></tr><tr><td>M. Hövelbrinks</td><td> </td><td>A.Kerkhoff <br /></td><td> </td></tr><tr><td>H. Haselhoff</td><td> </td><td align="center">**************** <br /></td><td> </td></tr><tr><td> </td><td> </td><td align="center">**************** <br /></td><td> </td></tr></tbody></table>', '', -2, 0, 0, 0, '2008-03-05 17:01:35', 62, '', '2009-02-18 18:16:21', 62, 0, '0000-00-00 00:00:00', '2008-03-05 16:01:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 1, 78, 'robots=\nauthor='),
(59, 'Freundschaftsspiel', 'freundschaftsspiel', '', '<p>Hallo zusammen,</p><p>unser nächsten Freundschaftsspiel findet am Montag, den <strong><u>17. März</u></strong> in Holthausen statt.</p><p>Unser Gegner ist dann <strong>FIAT Gescher.</strong></p><p>Anstoss ist um 19:30 Uhr.</p><p>Bitte zahlreich und pünktlich erscheinen.</p><p>PS: Aus dem geplanten Spiel gegen SUS Hochmoor wird leider nichts. </p>', '', 0, 1, 0, 1, '2008-03-06 17:55:33', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-03-05 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 49, '', '', 0, 86, ''),
(60, '1:1 im ersten Freundschaftsspiel', '11-im-ersten-freundschaftsspiel', '', '<p>Am Dienstag kamen wir in unserem ersten Freiluftspiel dieser Saison</p><p> gegen die Mannschaft von RW Trimbach zu einem gerechten 1:1 Unentschieden.</p><p>Trimbach ging nach einer Flanke und einem "Durcheinander" im 16er in Fühurung.</p><p>Nach ca. 10 Min in Halbzeit 2 glichen wir aus - Eigentor durch einen Spieler von Trimbach.</p><p>Dafür, dass die unser erstes Spiel war sah die Sache recht ordentlich aus.</p><p>Man muss auch dabei sagen, dass wir insgesamt 16 Feldspieler (! ! !) zur Verfügung hatten und </p><p>dementsprechend durchgewechselt haben, damit alle Spieler zum Einsatz kamen.</p><p>&nbsp;</p><p>&nbsp;</p>', '', 0, 1, 0, 1, '2008-03-06 18:54:43', 64, '', '2008-03-07 21:45:58', 64, 0, '0000-00-00 00:00:00', '2008-03-05 22:00:00', '0000-00-00 00:00:00', '', '', '', 2, 0, 48, '', '', 0, 99, ''),
(61, 'Neue Trainings - / Freizeitanzüge', 'neue-trainings--freizeitanzuege', '', '<p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="center"><font face="Times New Roman" size="3" color="#000000">Hallo Vereinsmitglieder,</font></p><font face="Times New Roman" size="3" color="#000000"> </font> <p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">wie die meisten von Euch ja wissen wollen wir vom Sportverein neue </font><font face="Times New Roman" size="3" color="#000000">Trainings – bzw. Freizeitanzüge anschaffen.</font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">Nach langem Hin und Her haben wir uns nun endlich für </font><font face="Times New Roman" size="3" color="#000000">eine Farbkombination entschieden – </font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000"><strong><u>schwarze Hosen / <font color="#ff0000">rotes Oberteil</font></u></strong></font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">Durch einige Sponsoren steht uns ein wenig Geld zur Verfügung </font><font face="Times New Roman" size="3" color="#000000">um einen Teil der Kosten zu übernehmen.</font></p><p align="left"><strong><span style="font-size: 10pt; color: red"><font face="Times New Roman">( gilt für einen Anzug ! ! ! wer beide Modelle oder andere Artikel haben möchte</font></span></strong><strong><span style="font-size: 10pt; color: red"><font face="Times New Roman"><span> </span>muss die Kosten hierfür selber übernehmen. )</font></span></strong><font face="Times New Roman" size="3" color="#000000"> </font> </p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">Je nach Anzugart und Größe liegt der Eigenanteil </font></p><p align="left"><font face="Times New Roman" size="3" color="#000000"> </font><u><font size="3"><font color="#000000"><span style="font-family: Wingdings"><span>à</span></span><font face="Times New Roman"> für Kinder / Jugendliche ( bis Gr. 164 ) bei:</font></font></font></u><font face="Times New Roman"><span><font color="#000000"><font size="3">-</font><span style="font: 7pt ''Times New Roman''">         </span></font></span></font></p><p align="left"><font face="Times New Roman"><span></span></font><font face="Times New Roman"><strong><font size="3"><font color="#000000">Trainingsanzug: ca. 15,00 €</font></font></strong></font><font face="Times New Roman"><span><font color="#000000"><font size="3">-</font><span style="font: 7pt ''Times New Roman''">        </span></font></span></font></p><p align="left"><font face="Times New Roman"><span><font color="#000000"><span style="font: 7pt ''Times New Roman''"> </span></font></span><strong><font size="3"><font color="#000000">Freizeitanzug: ca. 20,00 €</font></font></strong></font><font face="Times New Roman" size="3" color="#000000"> </font></p><p align="left"><u><font size="3"><font color="#000000"><span style="font-family: Wingdings"><span>à</span></span><font face="Times New Roman"> für Erwachsene ( Gr. S – XXXL ) bei:</font></font></font></u><font face="Times New Roman"><span><font color="#000000"><font size="3">-</font><span style="font: 7pt ''Times New Roman''">       </span></font></span></font></p><p align="left"><font face="Times New Roman"><span><font color="#000000"><span style="font: 7pt ''Times New Roman''"> </span></font></span><strong><font size="3"><font color="#000000">Trainingsanzug: ca. 20,00 €</font></font></strong></font><font face="Times New Roman"><span><font color="#000000"><font size="3">-</font><span style="font: 7pt ''Times New Roman''">         </span></font></span></font></p><p align="left"><font face="Times New Roman"><span></span><strong><font size="3"><font color="#000000">Freizeitanzug: ca. 25,00 €</font></font></strong></font><font face="Times New Roman" size="3" color="#000000"> </font> </p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">Die genauen Kosten können wir erst ermitteln, wenn wir wissen wie viele Mitglieder einen Anzug haben möchten. </font><font face="Times New Roman" size="3" color="#000000">Deutlich höher wird der Zuzahlungsbetrag allerdings nicht werden.</font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font color="#000000"><font face="Times New Roman"><font size="3">Auf dem Rücken </font><span style="font-size: 10pt">( nur bei den Anzügen )</span><font size="3"> wird der Schriftzug </font></font></font><font size="3"><font color="#000000"><font face="Times New Roman"><strong>„SV Holthausen“</strong> </font></font></font><font face="Times New Roman" size="3" color="#000000">stehen</font></p><p align="left"><font face="Times New Roman" size="3" color="#000000"> </font><font face="Times New Roman" size="3" color="#000000">Neben den Anzügen können weitere Produkte mitbestellt werden. </font><font face="Times New Roman" size="3" color="#000000">Diese Kosten müssen dann von jedem selbst übernommen werden </font><span style="font-size: 10pt"><font color="#000000"><font face="Times New Roman">( siehe Preisliste ).</font></font></span><font face="Times New Roman" size="3" color="#000000"> </font> </p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman" size="3" color="#000000">Wenn Ihr einen Anzug oder Ähnliches bestellen wollt tragt Euch bitte in die Liste </font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font color="#000000"><font face="Times New Roman"><span style="font-size: 10pt">( liegt zu Trainingszeiten der Senioren in der Kabine aus )</span><font size="3"> ein</font></font></font></p><p style="margin: 0cm 0cm 0pt; text-align: center" class="MsoNormal" align="left"><font face="Times New Roman"><font size="3"><font color="#000000"><span> </span>oder ruft mich bitte an oder schickt mir eine Email </font></font><font color="#000000"><span style="font-size: 10pt">( gilt auch für Rückfragen )</span><font size="3">:</font></font></font></p><p align="left">&nbsp;</p>', '', 0, 1, 0, 1, '2008-03-07 22:29:54', 64, '', '2008-03-07 22:33:45', 64, 0, '0000-00-00 00:00:00', '2008-03-06 21:00:00', '0000-00-00 00:00:00', '', '', '', 3, 0, 47, '', '', 0, 109, ''),
(62, 'Großes Training', 'grosses-training', '', '<p><strong>Tach Leute!</strong></p><p><strong>Ich erinnere an unser GROßES Grün-Donnerstag Training. Es finden dieses Jahr ZWEI Trainingseinheiten statt <img src="/plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-surprised.gif" border="0" alt="Surprised" title="Surprised" /> !</strong></p>', '', 0, 1, 0, 3, '2008-03-17 16:56:47', 65, '', '2009-03-25 12:25:20', 64, 0, '0000-00-00 00:00:00', '2008-03-16 22:00:00', '0000-00-00 00:00:00', '', '', '', 3, 0, 4, '', '', 2, 94, ''),
(63, 'Zweites Spiel - Erster Sieg', 'zweites-spiel-erster-sieg', '', '<p>Unser zweites Vorbereitungsspiel haben wir am 17.03 verdient mit <strong>7 : 2</strong> gegen FIAT Gescher gewonnen. </p><p>Nachdem wir gut begonnen haben und uns in den ersten 10 Min. ein paar gute Tormöglichkeiten erspielt hatten wurde der Gast aus Gescher stärker und kam durch zwei individuelle Fehler zu zwei Treffern.</p><p>Bei beiden Gegentoren sah unsere Defensivabteilung nicht unbedingt gut aus.</p><p>Trotz der Gegentreffer ließen wir aber die Köpfe nicht hängen und gingen noch in der ersten Halbzeit durch zwei schöne Treffer ( besonders das zweite Tor war sehenswert ) von Stefan Hüging und einem Tor von Norbert Roßkamp in Führung.</p><p>Nachdem Seitenwechsel und etlichen Spielerwechsel ( <u>insgesamt kamen gestern 20 Spieler zum Einsatz</u> ) haben wir das Spiel immer mehr in den Griff bekommen und uns weitere gute Möglichkeiten erspielt, die dann auch zu den weiteren Treffern durch Norbert Roßkamp, zweimal Benny Sicking und einem "tollen" Schuß aus ca. 30 mtr von Alex Kerkhoff führten.</p><p>Besonders erfreulich war die große Anzahl der Spieler, die auch alle eingesetzt wurden und das trotz der vielen Wechsel in der Halbzeit der Spielfluss nicht gelitten hat und wir in beiden Halbzeiten eine gute Partie abgeliefert haben.</p><p>So kann es weitergehen . . .  <br /> </p><p> </p><p> </p>', '', -2, 1, 0, 1, '2008-03-18 10:55:23', 64, '', '2009-03-25 12:24:43', 64, 0, '0000-00-00 00:00:00', '2008-03-17 22:00:00', '0000-00-00 00:00:00', '', '', '', 3, 0, 41, '', '', 2, 96, ''),
(64, 'Arbeitseinsatz', 'arbeitseinsatz', '', '<p>Hallo zusammen,</p><p>am Karfreitag wollen wir doch noch ein wenig was tun . . .</p><p>Treffen ist um 10 Uhr an der Schule.</p><p> Bitte zahlreich erscheinen.</p><p>&nbsp;</p>', '', -2, 1, 0, 1, '2008-03-20 10:56:08', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-03-19 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 35, '', '', 0, 44, ''),
(65, 'Neue Adressliste', 'neue-adressliste', '', '<font face="Trebuchet MS" size="3"><span style="font-size: 12pt; font-family: ''Trebuchet MS''">Wir wollen eine aktuelle Adressliste machen.</span></font> <p class="MsoNormal"><font face="Trebuchet MS" size="3"><span style="font-size: 12pt; font-family: ''Trebuchet MS''">Hierzu bitte ich Euch mir eben Eure aktuellen Daten ( Name, Adresse, Festnetz, Handy, Email, Geb. – Datum ) zu zumailen ( <a href="mailto:M.Raida@t-online.de">M.Raida@t-online.de</a> ) oder gebt Sie mir </span></font><font face="Trebuchet MS" size="3"><span style="font-size: 12pt; font-family: ''Trebuchet MS''">beim Training oder beim nächsten Spiel.</span></font></p><p class="MsoNormal"><font face="Trebuchet MS" size="3"></font></p><font face="Trebuchet MS" size="3"><span style="font-size: 12pt; font-family: ''Trebuchet MS''"></span></font> ', '', -2, 1, 0, 1, '2008-03-24 17:15:55', 64, '', '2009-03-25 12:24:12', 64, 0, '0000-00-00 00:00:00', '2008-03-23 23:00:00', '0000-00-00 00:00:00', '', '', '', 2, 0, 30, '', '', 2, 90, ''),
(66, 'Arbeitseinsatz', 'arbeitseinsatz', '', '<p>Am Samstag wollen wir endlich unsere Torräume begradigen und mit frischem Grün belegen.</p><p>Deswegen treffen wir uns um <strong>10 Uhr</strong> an der holthausener Schule ! ! ! !</p><p><strong>Bitte ZAHLREICH und pünktlich erscheinen ! ! ! !</strong></p><p>&nbsp;</p>', '', -2, 1, 0, 1, '2008-04-08 18:01:11', 64, '', '2008-04-08 18:02:27', 64, 0, '0000-00-00 00:00:00', '2008-04-07 21:00:00', '0000-00-00 00:00:00', '', '', '', 3, 0, 52, '', '', 0, 56, ''),
(67, 'Sauber machen . . .', 'sauber-machen---', '', '<p>. . . an der Schule ! ! ! ! !</p><p>Am Samstag ist um 10 Uhr treffen an der Schule um die Anlagen, den </p><p>Rasenplatz und die Parkplätze für das Schützenfest - Üben am Sonntag </p><p>auf Vordermann zu bringen ! ! ! !</p><p>Bitte zahlreich erscheinen ! ! ! ! <br /> </p>', '', -2, 1, 0, 1, '2008-04-23 13:23:55', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-04-22 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 46, '', '', 0, 48, ''),
(68, 'Spielverlegung', 'spielverlegung', '', '<p>INFO an ALLE        </p><p>Das Spiel gegen Tor. Timpen wird verlegt.</p><p>Tornado hat darum gebeten, weil in Weseke an dem </p><p>Samstag Hooksturnier ist.</p><p>Neuer Termin wird noch vereinbart. <br /> </p>', '', -2, 1, 0, 1, '2008-05-23 12:16:37', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-05-22 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 67, '', '', 0, 58, ''),
(87, 'Junggesellen Generalversammlung', 'junggesellen-generalversammlung', '', 'Zur diesjährigen Generalversammlung des Junggesellenverein läd der Vorstand recht herzlich am 28. Februar ein. Sie findet um 19:30 Uhr in den Katakomben des Vereinshaus Holthausen statt.', '', 0, 1, 0, 1, '2009-02-18 18:35:19', 62, '', '2009-11-20 18:14:24', 64, 0, '0000-00-00 00:00:00', '2009-02-18 18:35:19', '2009-02-28 23:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 45, '', '', 0, 2, 'robots=\nauthor='),
(69, 'Kleinfeldturnier "Lupine Cup"', 'kleinfeldturnier-qlupine-cupq', '', '<p><strong>Das Kleinfeldturnier von Lupine Weseke</strong></p><p><strong>fällt aufgrund mangelnder Teilnehmer leider aus.</strong></p>', '', -2, 1, 0, 1, '2008-06-19 16:12:04', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-06-18 23:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 63, '', '', 0, 44, '');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(70, 'Tabelle', 'tabelle', '', '<span style="font-size: 8pt"> </span>  <table border="1" cellspacing="0" cellpadding="0" class="MsoNormalTable" style="border: medium none ; border-collapse: collapse">  <tbody><tr>   <td width="61" valign="top" style="border: 1pt solid windowtext; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 46.05pt; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <p style="margin: 3pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 12pt; font-family: Arial; color: white; font-style: normal">Platz</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 155.9pt; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <h4 style="margin: 3pt 0cm">Verein</h4>   </td>   <td width="66" valign="top" style="border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 49.65pt; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <p style="margin: 3pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 12pt; font-family: Arial; color: white; font-style: normal">Spiele</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 70.85pt; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <p style="margin: 3pt 0cm" class="MsoNormal"><strong><span style="font-size: 12pt; font-family: Arial; color: white; font-style: normal"><span>      </span>Tore</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 2cm; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <p style="margin: 3pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 12pt; font-family: Arial; color: white; font-style: normal">Diff.</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0cm 3.5pt; background: black none repeat scroll 0% 50%; width: 2cm; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial">   <p style="margin: 3pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 12pt; font-family: Arial; color: white; font-style: normal">Punkte</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">1.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>Cosmos Weseke</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">46 : 13</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">+ 33</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">18</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">2.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">Tornado Timpten</span></strong></td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">5</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>   </span>32 : 4</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">+ 28</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">15</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">3.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>SF Klein Reken</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>   </span>19 : 7</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">+ 12</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">12</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">4.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>SV Holthausen</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">23 : 25</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>   </span>2</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>9</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">5.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>Fortuna Bieling</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">7</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">25 : 39</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>  </span>14</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>9</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>SC Brinker Jungs</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">16 : 21</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>   </span>5</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>6</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">7.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>FC Böinghook</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">5</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">11 : 25</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>  </span>14</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>6</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">8.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>Bröker Jungs Reken</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">6</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">11 : 36</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>  </span>25</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>3</span></strong></p>   </td>  </tr>  <tr>   <td width="61" valign="top" style="border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; border-width: medium 1pt 1pt; padding: 0cm 3.5pt; width: 46.05pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">9.</span></strong></p>   </td>   <td width="208" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 155.9pt">   <p style="margin: 5pt 0cm" class="MsoNormal"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span> </span>FC Lupine Weseke</span></strong></p>   </td>   <td width="66" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 49.65pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">4</span></strong></p>   </td>   <td width="94" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 70.85pt">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>8 : 21</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal">–<span>  </span>13</span></strong></p>   </td>   <td width="76" valign="top" style="border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; border-width: medium 1pt 1pt medium; padding: 0cm 3.5pt; width: 2cm">   <p style="margin: 5pt 0cm; text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 14pt; font-family: Arial; font-style: normal"><span>  </span>0</span></strong></p>   </td>  </tr> </tbody></table>  <p class="MsoNormal"><span style="font-family: Arial; font-style: normal"> </span></p>  <p class="MsoNormal"><span style="font-family: Arial; font-style: normal"> </span></p>  <p class="MsoNormal"><span style="font-family: Arial; font-style: normal"> </span></p>  <p class="MsoNormal"><span style="font-family: Arial; font-style: normal">Stand: 19.06.08</span></p>', '', 0, 0, 0, 0, '2008-06-22 18:11:03', 63, '', '0000-00-00 00:00:00', 0, 62, '2011-09-18 09:13:47', '2008-06-22 18:11:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 18, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Kurzfassung ;-)', 'kurzfassung', '', 'Der Verein wurde 1975 glaube ich gegründet und besteht bis jetzt. Damals wurde noch mit Schweinsblasen gespielten, die dann um ca. 1985 von ordentlichen Lederbällen ersetzt wurden. <img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-wink.gif" border="0" alt="Wink" title="Wink" />', '', 1, 5, 0, 38, '2008-01-04 07:29:30', 62, '', '2008-02-09 13:11:30', 65, 0, '0000-00-00 00:00:00', '2008-01-04 07:29:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=0\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 1, '', '', 0, 539, 'robots=\nauthor='),
(46, 'bla', 'blub', '', 'Hallo Hallo', '', -2, 1, 0, 1, '2008-01-04 05:45:34', 62, '', '2008-01-04 09:48:49', 62, 0, '0000-00-00 00:00:00', '2008-01-04 05:45:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 69, '', '', 0, 2, 'robots=\nauthor='),
(47, 'Hallentunier der Bröker Jungs', 'hallentunier-der-broeker-jungs', '', '<p>Das Hallentunier der Bröker Jungs fand am 29.12.2007 in Groß Reken in der Dreifachturnhalle statt. Wir haben uns dazu am K+K um 11:15 getroffen.</p><p>Das erste Spiel gegen die "Die warmen Brüder" haben wir ganz überragend mit einem 4:1 gewonnen. Das zweite und dritte Spiel hätten wir auch gewonnen, wenn wir nicht soviel Pech gehabt hätten. So dass wir die Spiele 1:2 verloren haben und aus der Vorrunde ausgeschieden sind. </p>', '', 0, 1, 0, 1, '2008-01-04 07:53:06', 62, '', '2008-06-27 10:54:26', 62, 0, '0000-00-00 00:00:00', '2008-01-04 07:53:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 56, '', '', 0, 112, 'robots=\nauthor='),
(93, 'Graben saubermachen', 'graben-saubermachen', '', '<div class="description event_desc">   			<p>Ist ist mal wieder soweit! Freitag und Samstag steht das jährliche Grabensauber machen an. Jetzt ist das Wetter noch so, dass man gut durch die Gräben kommt.</p><p>Also bitte zahlreich erscheinen und Werkzeug (Schüppe, Gabel, Freischneide) mitbringen! Es direkt im Graben am Barnsfeld los.</p>  		</div>', '', 0, 1, 0, 3, '2009-08-25 08:49:58', 65, '', '2009-11-20 18:15:00', 64, 0, '0000-00-00 00:00:00', '2009-08-25 08:48:16', '2009-09-06 08:48:00', '', '', '', 2, 0, 1, '', '', 0, 5, ''),
(94, 'Flutlichter', 'flutlichter', '', '<p>Letzten Samstag wurden auch die letzten beiden Flutlichter samt Masten ausgetauscht! Jetzt können wir auch wieder lange draußen spielen :-) . Der ausgiebige Test gestern bei der Spielnachbesprechung hat gezeigt, dass man die Flutlichter wohl sogar von Schulze Döring sehen kann!</p>', '', 0, 1, 0, 1, '2009-08-25 08:56:35', 65, '', '2009-11-20 18:15:31', 64, 0, '0000-00-00 00:00:00', '2009-08-25 08:51:06', '2010-01-24 23:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 38, '', '', 0, 10, 'robots=\nauthor='),
(95, 'Willingen', 'willingen', '', '<p>Willingen ruft! Noch 53 mal Schlafen. </p><p>Wir treffen uns am Freitag den 6.11 um 12:30 Uhr an der Holthausener Schule. Bitte seid pünktlich! </p>', '', 0, 1, 0, 1, '2009-10-12 16:28:32', 65, '', '2009-11-20 18:14:50', 64, 0, '0000-00-00 00:00:00', '2009-10-12 16:28:32', '2009-11-11 23:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 37, '', '', 0, 9, 'robots=\nauthor='),
(96, 'Abschluss 2009', 'abschluss-2009', '', '<p>Die Saison 2009 ist vorbei und hat folgendermaßen geendet: </p> <table border="1" cellspacing="1" cellpadding="1" style="width: 590px; height: 309px">     <tbody>         <tr>             <td style="font-weight: bold; color: #ffffff; font-family: Verdana; background-color: #000080; text-align: center"><font size="3" style="background-color: #000080">Rang</font></td>             <td valign="top" style="font-weight: bold; background-color: #000080; text-align: center"><font face="Verdana" size="3" style="background-color: #000080" color="#ffffff">            Verein          </font></td>             <td style="font-weight: bold; color: #ffffff; font-family: Verdana; background-color: #000080; text-align: center"><font size="3" style="background-color: #000080">Spiele</font></td>              <td style="font-weight: bold; color: #ffffff; font-family: Verdana; background-color: #000080; text-align: center"><font size="3" style="background-color: #000080">    Tore    </font></td>             <td style="font-weight: bold; color: #ffffff; font-family: Verdana; background-color: #000080; text-align: center"><font size="3" style="background-color: #000080">  Diff.   </font></td>             <td style="font-weight: bold; color: #ffffff; font-family: Verdana; background-color: #000080; text-align: center"><font size="3" style="background-color: #000080">Punkte</font></td>         </tr>         <tr>              <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">1.</span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><span style="font-size: large"><font style="font-weight: bold; font-family: Verdana">SF Klein Reken</font></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">70 : 20</span><span style="font-size: medium"><span><br />             </span></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">+ 50</span><span style="font-size: medium"><br />              </span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">42</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">2.</span><span style="font-size: medium"><span><br />             </span></span></td>             <td valign="top" style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><strong>FC Böinghook</strong></span><span style="font-size: medium"><strong><span><br />              </span></strong></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span><span style="font-size: medium"><span><br />             </span></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">51 : 42</span><span style="font-size: medium"><span><br />             </span></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">+ 9</span><span style="font-size: medium"><span><br />             </span></span></td>              <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">29</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">3.</span></td>             <td valign="top" style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><strong><span style="font-size: large">SV Holthausen</span></strong></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>              <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">45 : 36</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">+ 9</span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">27</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">4.<br />             </span></td>              <td valign="top" style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><strong>FC Lupine Weseke</strong></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">54 : 39</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">+ 15</span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">26</span></td>         </tr>          <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">5.</span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><span style="font-size: large"><strong><span style="font-family: Verdana">Tornado Timpen</span></strong></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">36 : 39</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">- 3</span></td>              <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">18</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">5.</span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><span style="font-size: large"><strong><span style="font-family: Verdana">Cosmos Weseke</span></strong></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">39 : 45</span></td>              <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">- 6<br />             </span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">18</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">7.</span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><strong><span style="font-size: large"><span style="font-family: Verdana">Brinker Jungs<br />              </span></span></strong></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">45 : 42<br />             </span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">+ 3<br />             </span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>          </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">8.</span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><strong><span style="font-family: Verdana"><span style="font-size: large">Fortuna Bieling</span></span></strong></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">16</span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">32 : 72<br />             </span></td>              <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">- 40</span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large">15</span></td>         </tr>         <tr>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><font face="Verdana" style="background-color: #ffff99" color="#993300">9.</font></span></td>             <td valign="top" style="color: #800000; background-color: #ffff99; text-align: center"><span style="font-size: medium"><font size="4"><strong><font face="Verdana" style="background-color: #ffff99" color="#993300">Bröker Jungs Reken</font></strong></font></span></td>              <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><span style="font-family: Verdana">16</span></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><font face="Verdana" style="background-color: #ffff99" color="#993300">25 : 62</font></span><span style="font-size: medium"><font face="Verdana" style="background-color: #ffff99" color="#993300"><br />             </font></span></td>             <td style="color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><font face="Verdana" style="background-color: #ffff99" color="#993300">- 37</font></span><span style="font-size: medium"><font face="Verdana" style="background-color: #ffff99" color="#993300"><br />             </font></span></td>             <td style="font-weight: bold; color: #800000; font-family: Verdana; background-color: #ffff99; text-align: center"><span style="font-size: large"><strong>8</strong></span></td>         </tr>              </tbody>  </table>', '', 1, 0, 0, 0, '2009-11-28 09:17:48', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-11-28 09:17:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 14, '', '', 0, 1152, 'robots=\nauthor='),
(97, 'Frohe Weihnachten...', 'frohe-weihnachten', '', 'Der Sportverein wünscht allen Spielern, Trainern, Mitgliedern und Fans ein frohes Weihnachtsfest 2009 und einen guten (nicht zu tiefen) Rutsch in das Jahr 2010 ! ! ! !', '', 0, 1, 0, 1, '2009-12-23 17:37:32', 64, '', '2013-04-16 09:46:13', 64, 0, '0000-00-00 00:00:00', '2009-12-23 17:36:00', '2010-01-10 17:36:00', '', '', '', 4, 0, 36, '', '', 0, 6, ''),
(98, 'Trainingsbeginn der Senioren', 'trainingsbeginn-der-senioren', '', 'Guten Tach Mädels, endlich geht es wieder los ! ! ! ! !  Am Montag starten wir mit unserem Freilufttraining ! ! ! ! ! Treffen ist um 19 Uhr am Sportplatz.  Denkt bitte bei den ersten Trainingseinheiten an die Laufschuhe ! ! ! !  Aufgrund der Wetterlage und den Platzverhältnissen wird es eher nicht der Fall sein, dass Wir was mit dem Ball auf dem Platz machen können. Bringt aber trotzdem auch Fußballschuhe mit.  Ich wünsche Euch noch eine schöne Restwoche…  Ciao Twix', '', 0, 1, 0, 1, '2010-02-18 18:45:47', 64, '', '2013-04-16 09:46:02', 64, 0, '0000-00-00 00:00:00', '2010-02-18 18:45:20', '2010-03-22 18:45:00', '', '', '', 3, 0, 34, '', '', 0, 4, ''),
(99, 'Seniorentraining - WICHTIGE ÄNDERUNG', 'seniorentraining-wichtige-aenderung', '', 'Guten Tach zusammen,  leider ist die Wetterlage immer noch nicht besser, sodass wir unser Montagstraining etwas umgestalten werden...  Wir treffen uns an den kommenden Montage um 19:45 Uhr an der Sporthalle (in der wir ab November "trainiert" haben) in Ramsdorf. Von da aus werden wir zu erst eine Runde joggen gehen ( Kondition lässt grüßen ) und werden anschliessend noch ein wenig den Ball dazu nehmen... ...Training soll ja auch Spaß machen :-)  Bitte diese Info weitergeben ! ! !   Das Trainerteam  Denkt bitte an die Lauf - und Hallenschuhe ! ! ! ! ! !', '', 0, 1, 0, 1, '2010-02-25 18:45:55', 64, '', '2013-04-16 09:45:48', 64, 0, '0000-00-00 00:00:00', '2010-02-25 18:37:35', '2010-03-15 18:37:00', '', '', '', 2, 0, 33, '', '', 0, 2, '');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(100, 'Rasenmäherliste 2010', 'rasenmaeherliste-2010', '', '<p><font size="3" color="#dc2300">Zum Rasenmäherdienst gehören der Rasenplatz, die Parkplätze am Kloaverblatt und Weg zum Schützenfestplatz.</font></p><p> </p><p> 		 	 <table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="195" height="27" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>Februar</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>März</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>April</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>Mai</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>Juni</u></strong></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Inbetriebnahme und </td> 			<td align="CENTER" style="border: 1px solid #000000">Inbetriebnahme und </td> 			<td align="CENTER" style="border: 1px solid #000000">Buddy</td> 			<td align="CENTER" style="border: 1px solid #000000">Icke</td> 			<td align="CENTER" style="border: 1px solid #000000">Rossi</td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Einweisung durch</td> 			<td align="CENTER" style="border: 1px solid #000000">Einweisung durch</td> 			<td align="CENTER" style="border: 1px solid #000000">Twix</td> 			<td align="CENTER" style="border: 1px solid #000000">Niele</td> 			<td align="CENTER" style="border: 1px solid #000000">Jan Storks</td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Martin und Georg</td> 			<td align="CENTER" style="border: 1px solid #000000">Martin und Georg</td> 			<td align="CENTER" style="border: 1px solid #000000">Andy Bünte</td> 			<td align="CENTER" style="border: 1px solid #000000"> </td> 			<td align="CENTER" style="border: 1px solid #000000">Gomez</td> 		</tr> 	</tbody> </table>  </p><p>  		 	 <table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="195" height="27" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>Juli</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>August</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>September</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>Oktober</u></strong></td> 			<td width="195" align="CENTER" style="border: 1px solid #000000" bgcolor="#83caff"><strong><u>November</u></strong></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Martin Hövelbrinks</td> 			<td align="CENTER" style="border: 1px solid #000000">Benny</td> 			<td align="CENTER" style="border: 1px solid #000000">Mäkkes</td> 			<td align="CENTER" style="border: 1px solid #000000">Jan Storks</td> 			<td align="CENTER" style="border: 1px solid #000000">Alex</td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Jürgen Roßkamp</td> 			<td align="CENTER" style="border: 1px solid #000000">Rainer Hövelbrinks</td> 			<td align="CENTER" style="border: 1px solid #000000">Hubsi</td> 			<td align="CENTER" style="border: 1px solid #000000">Gomez</td> 			<td align="CENTER" style="border: 1px solid #000000">Sven</td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border: 1px solid #000000">Manni</td> 			<td align="CENTER" style="border: 1px solid #000000">Hendrik Dirking</td> 			<td align="CENTER" style="border: 1px solid #000000">Sibbi</td> 			<td align="CENTER" style="border: 1px solid #000000">König</td> 			<td align="CENTER" style="border: 1px solid #000000">Lukas</td> 		</tr> 	</tbody> </table> </p><p> </p><p> </p>', '', 0, 0, 0, 0, '2010-03-01 19:18:54', 62, '', '2012-02-03 08:31:27', 64, 62, '2013-04-16 06:32:18', '2010-03-01 19:18:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 13, '', '', 1, 34, 'robots=\nauthor='),
(101, 'Kellnerliste 2010', 'kellnerliste-2010', '', ' 	 <table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="195" height="32" align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" bgcolor="#83caff"><strong><u>Schützenfest - Üben</u></strong></td> 			<td width="195" align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" bgcolor="#83caff"><strong><u>HSV Pokalturnier</u></strong></td> 			<td width="195" align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" bgcolor="#83caff"><strong><u>Kinderschützenfest</u></strong></td> 			<td width="195" align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" bgcolor="#83caff"><strong><u>Schützenfestnachfeier</u></strong></td> 		</tr> 		<tr> 			<td height="32" align="CENTER" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000" bgcolor="#83caff"><strong><u>02. Mai 10</u></strong></td> 			<td align="CENTER" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000" bgcolor="#83caff"><strong><u>27. Jun 10</u></strong></td> 			<td align="CENTER" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000" bgcolor="#83caff"><strong><u>04. Sep 10</u></strong></td> 			<td align="CENTER" style="border-left: 1px solid #000000; border-right: 1px solid #000000; border-bottom: 1px solid #000000" bgcolor="#83caff"><strong><u>04. Sep 10</u></strong></td> 		</tr> 		<tr> 			<td height="32" align="CENTER" style="border: 1px solid #000000">Icke</td> 			<td align="CENTER" style="border: 1px solid #000000">Mäkkes</td> 			<td align="CENTER" style="border: 1px solid #000000">Twix</td> 			<td align="CENTER" style="border: 1px solid #000000">Manni</td> 		</tr> 		<tr> 			<td height="32" align="CENTER" style="border: 1px solid #000000">Martin Hövelbrinks</td> 			<td align="CENTER" style="border: 1px solid #000000">Hubsi</td> 			<td align="CENTER" style="border: 1px solid #000000">Benny</td> 			<td align="CENTER" style="border: 1px solid #000000">Heiner</td> 		</tr> 		<tr> 			<td height="32" align="CENTER" style="border: 1px solid #000000">Rossi</td> 			<td align="CENTER" style="border: 1px solid #000000">Sibbi</td> 			<td align="CENTER" style="border: 1px solid #000000">Buddy</td> 			<td align="CENTER" style="border: 1px solid #000000">Hendrik Dirking</td> 		</tr> 		<tr> 			<td height="32" align="CENTER" style="border: 1px solid #000000">Luder Roßkamp</td> 			<td align="CENTER" style="border: 1px solid #000000"> </td> 			<td align="CENTER" style="border: 1px solid #000000"> </td> 			<td align="CENTER" style="border: 1px solid #000000">Ente</td> 		</tr> 	</tbody> </table>', '', 1, 0, 0, 0, '2010-03-01 19:27:23', 62, '', '0000-00-00 00:00:00', 0, 62, '2010-03-01 19:30:27', '2010-03-01 19:27:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 10, '', '', 1, 18, 'robots=\nauthor='),
(102, 'Rasenmäherliste und Kellnerliste', 'rasenmaeherliste-und-kellnerliste', '', '<p>Im Benutzerbereich befinden sich jetzt die neue Kellnerliste und Rasenmäherliste für das Jahr 2010. In den Benutzerbereich gelangt man durch eine Anmeldung. </p>', '', -2, 1, 0, 1, '2010-03-01 19:32:19', 62, '', '2010-03-01 19:38:07', 62, 0, '0000-00-00 00:00:00', '2010-03-01 19:32:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 10, '', '', 0, 469, 'robots=\nauthor='),
(103, 'Arbeitseinsatz am 20.03.2010', 'arbeitseinsatz-am-20032010', '', 'Guten Abend zusammen,  das Wetter wird langsam aber sicher besser und somit können die Arbeiten am Rasenplatz und drum herum starten ! ! ! !  Damit wird endlich wieder auf unserem Platz trainieren können muss aber noch einiges gemacht werden… Die Reste von der Hecke, die im Herbst gestutzt worden ist, müssen vom Platz beseitigt werden…genauso die Hügel der  Maulwürfe, die den Platz zieren ! ! ! ! !  Es gibt also einiges zu tun ! ! ! ! !  Des wegen treffen wir uns am 20. März um 9:30 Uhr am Platz um die vielen Dinge, die anstehen mit möglichst vielen Personen zu erledigen ! ! ! ! !  Tragt Euch also den Termin bitte in den Kalender oder ins Handy ! ! ! !  Bis dahin findet das Training in Ramsdorf statt…d.h. wir werden erst ne Runde laufen ( Laufschuhe nicht vergessen ) und gehen danach in die Halle und bewegen uns mit Ball. Wäre schön, wenn sich ein paar mehr Leute beim Training versammeln würden…  Wünsche Euch ein schönes Wochenende…  Ciao Twix  PS. Auf unserer Homepage findet Ihr die Spieltermine für diese Saison ! ! ! !', '', 0, 1, 0, 1, '2010-03-11 19:47:05', 64, '', '2013-04-16 09:45:31', 64, 0, '0000-00-00 00:00:00', '2010-03-11 19:46:26', '2010-03-22 19:46:00', '', '', '', 2, 0, 32, '', '', 0, 2, ''),
(104, 'Training', 'training', '', 'Guten Tach zusammen,  der Platz sieht gut aus, das Wetter wir besser und das Gründonnerstagstraining steht vor der Tür ?  Ab Montag, den 29.03.10 werden wir wieder in Holthausen auf dem Rasenplatz trainieren ! ! ! ! Trainingsbeginn ist 19 Uhr AUF DEM PLATZ ! ! ! ! !   Wünsche ne schöne Restwoche…  Ciao Trainer  PS: Bitte zahlreich erscheinen…umso schöner ist das für Alle ! ! ! !', '', 0, 1, 0, 1, '2010-03-23 18:01:17', 64, '', '2013-04-16 09:45:18', 64, 0, '0000-00-00 00:00:00', '2010-03-23 18:00:41', '2010-03-30 18:00:00', '', '', '', 2, 0, 31, '', '', 0, 2, ''),
(105, 'Training / Arbeitseinsatz', 'training-arbeitseinsatz', '', 'Hallo zusammen,   das erste „Freilufttraining“ haben wir hinter uns… …die Beteiligung war schon nicht schlecht, aber es darf gern ein bisschen mehr sein ! ! !    Also…nächsten Montag 19 Uhr in Holthausen ! ! !    Ups…einen Trainingstermin habe ich da wohl vergessen… Am Donnerstag findet unser jährliches Gründonnerstagstraining statt ? Beginn ist um 19 Uhr…mal schauen wie viele Leute da aktiv sein werden ?   Am Freitag ( Karfreitag ) steht dann unser jährlicher Oster-Arbeitseinsatz an… Es gibt rund um den Sportplatz / Schule einiges zu tun ! ! ! ! Des wegen wird jede helfende Hand benötigt ! ! ! ! Bitte ZAHLREICH erscheinen… Beginn ist um 10 Uhr ! ! ! !', '', 0, 1, 0, 1, '2010-03-29 20:05:43', 64, '', '2013-04-16 09:45:03', 64, 0, '0000-00-00 00:00:00', '2010-03-29 20:04:39', '2010-04-03 20:04:00', '', '', '', 2, 0, 29, '', '', 0, 2, ''),
(106, 'Training - Arbeitseinsatz - Meisterschaftsspiel', 'training-arbeitseinsatz-meisterschaftsspiel', '', 'Guten Tach Männers,  das erste Meisterschaftsspiel konnten wir positiv gestalten ( 3:0 gegen Bröker Jungs ) ! ! ! ! So darf es die nächsten Spiele gerne weitergehen :-)  Um das zu auch so hin zu bekommen werden wir in den Wochen, in denen wir am Montag ein  Meisterschaftsspiel haben und dadurch das Montagstraining ausfällt, zusätzlich am Donnerstag trainieren ! ! ! !  Das bedeutet, dass wir diese Woche ( KW 16 ) erstmalig auch am Donnerstag trainieren werden. Trainingsbeginn ist wie gewohnt um 19 Uhr ! ! !  --> Die Trainingseinheiten werden auf der Liste notiert ! ! ! !   Am Samstag starten wir einen kleinen Arbeitseinsatz am Sportgelände ! ! !  Beginn ist um 9:30 Uhr ! ! ! ! Da das SCHÜTZENFEST vor der Tür steht muss am Sportplatz und drum herum einiges getan werden. Des Weiteren sollen die Fundamente und gleichzeitig die Hülsen für unser Fangnetz  gegraben bzw. einbetoniert werden ! ! ! ! Es wäre wirklich ne schöne Sache, wenn mal ein paar Leute mehr kommen würden ! ! ! ! Irgendwie sieht man immer nur die gleichen Personen ! ! ! ! Und das muss ja nicht sein…je mehr kommen, desto schneller bekommen wir die Sachen auch fertig ! ! ! !  Am Montag ( 26.04.10 ) haben wir unser nächstes Meisterschaftsspiel. Gegner sind dann die Cosmonauten aus Weseke ! ! !  Anstoß ist um 19 Uhr in Holthausen. Treffen um 18 Uhr ! ! !  Bitte zahlreich ( Spieler + Zuschauer ) erscheinen ! ! ! !  Das ist es erstmal von meiner Seite ! ! ! !  Wir sehen uns Donnerstag / Samstag / Montag  Ciao Twix', '', 0, 1, 0, 1, '2010-04-20 21:35:16', 64, '', '2013-04-16 09:44:47', 64, 0, '0000-00-00 00:00:00', '2010-04-20 21:34:16', '2010-04-27 21:34:00', '', '', '', 2, 0, 28, '', '', 0, 2, ''),
(107, 'Meisterschaft', 'meisterschaft', '', '<p>Die Hinrunde der Meisterschaft ist abgeschlossen. Im folgenden die Tabelle der Hinrunde:</p><p> 		 	 <table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="82" height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5">Platz</font></td> 			<td width="338" align="CENTER" style="border: 1px solid #000000"><font size="5">Mannschaft</font></td> 			<td width="112" align="CENTER" style="border: 1px solid #000000"><font size="5">Spiele</font></td> 			<td width="116" align="CENTER" style="border: 1px solid #000000"><font size="5">Punkte</font></td> 			<td width="116" align="CENTER" style="border: 1px solid #000000"><font size="5">Tore</font></td> 			<td width="116" align="CENTER" style="border: 1px solid #000000"><font size="5">G - Tore</font></td> 			<td width="116" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">Diff.</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">1</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Cosmos Weseke</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">8</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">21</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">41</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">11</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">30</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">2</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">SF Klein - Reken</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">9</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">19</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">32</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">19</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">13</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">3</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">SV Holthausen</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">9</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">15</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">29</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">18</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">11</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">4</font></td> 			<td align="LEFT" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5">Viktoria Beckmann</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5">9</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5" color="#ff0000">14</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5">30</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="5">18</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 255) rgb(0, 0, 0)"><font size="5">12</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">5</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Brinker Jungs</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">8</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">12</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">25</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">17</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">8</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">6</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Tornado Timpen</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">8</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">12</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">14</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">24</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">-10</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">7</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Bröker Jungs</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">9</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">10</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">16</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">26</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">-10</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">8</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Fortuna Bieling</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">9</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">6</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">18</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">46</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">-28</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255)"><font size="6">9</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">FC Lupine</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">8</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">5</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">21</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">30</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">-9</font></td> 		</tr> 		<tr> 			<td height="53" align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 255)"><font size="6">10</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">FC Böinghook</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">9</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">5</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">20</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">37</font></td> 			<td align="CENTER" style="border-width: 1px; border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0)"><font size="5">-17</font></td> 		</tr> 	</tbody> </table></p><p><a href="images/torschtzen%20senioren%202010.xls">Torschützen</a></p><p><a href="images/rote%20karten%20senioren%202010.xls">Rote Karten</a></p><p><a href="images/spielplan%20senioren%202010.xls">Spielplan</a> </p><p> </p>', '', -2, 1, 0, 1, '2010-07-25 16:34:49', 62, '', '2010-07-25 16:46:55', 62, 0, '0000-00-00 00:00:00', '2010-07-25 16:34:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 11, '', '', 0, 481, 'robots=\nauthor='),
(108, 'Saisonabschluss 2010', 'saisonabschluss', '', '<p>Tag,</p><p>die Saison ist zu Ende. Auf der Spielerversammlung am 20.11.2010 bei Schütte wurde der Abschlussbericht, die Kasselage, die nächsten Termine, und vieles weitere besprochen.</p><p><table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td colspan="7" width="829" height="43" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 255) rgb(0, 0, 255) rgb(0, 0, 0); border-width: 1px"><font size="6" color="#0000ff">Abschlußtabelle Saison 2010</font></td> 			</tr> 		<tr> 			<td colspan="7" height="43" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px" bgcolor="#ccffff"><font size="6" color="#ccffff"><br /></font></td> 			</tr> 		<tr> 			<td height="30" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5">Platz</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">Mannschaft</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">Spiele</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">Punkte</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">Tore</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">G - Tore</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">Diff.</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">1</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Cosmos Weseke</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">36</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">66</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">22</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">44</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">2</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">SF Klein - Reken</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">28</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">40</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">22</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">18</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">3</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">SV Holthausen</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">24</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">49</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">28</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">21</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">4</font></td> 			<td align="LEFT" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5">Brinker Jungs</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5">13</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5" color="#ff0000">22</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5">38</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="5">28</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 255) rgb(0, 0, 0); border-width: 1px"><font size="5">10</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">5</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Viktoria Beckmann</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">14</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">30</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">29</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">1</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">6</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Tornado Timpen</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">14</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">22</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">44</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">-22</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">7</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">FC Lupine </font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">33</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">36</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">-3</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">8</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Bröker Jungs </font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">21</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">35</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">-14</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="6">9</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">Fortuna Bieling </font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">10</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">30</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">63</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">-33</font></td> 		</tr> 		<tr> 			<td height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 255); border-width: 1px"><font size="6">10</font></td> 			<td align="LEFT" style="border: 1px solid #000000"><font size="5">FC Böinghook</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">13</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5" color="#ff0000">8</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">23</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="5">45</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="5">-22</font></td> 		</tr> 	</tbody></table></p><p> </p><table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td colspan="5" width="715" height="36" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 255) rgb(0, 0, 255) rgb(0, 0, 0); border-width: 1px"><font size="6" color="#0000ff">Torschützen Saison 2010</font></td> 			</tr> 		<tr> 			<td colspan="5" height="17" align="LEFT" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px" bgcolor="#ccffff"><font color="#99ccff"><br /></font></td> 			</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">Platz</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Vorname</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Name</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Verein</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">Tore</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">1</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Deppe</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Carsten</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">SV Holthausen</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">14</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">2</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Herzog</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Pascal</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Cosmos Weseke</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">13</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">3</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Stienen</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Michael</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">SFR</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">12</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">4</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Schlüter</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Alexander Achim</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Cosmos Weseke</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">12</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">5</font></td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"><font size="4">Stenert</font></td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"><font size="4">Andre</font></td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000"><font size="4">Cosmos Weseke</font></td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #0000ff"><font size="4">12</font></td> 		</tr> 		<tr> 			<td height="27" align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 0) rgb(0, 0, 255); border-width: 1px"><font size="4">6</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Thesing</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">Christian</font></td> 			<td align="CENTER" style="border: 1px solid #000000"><font size="4">SV Holthausen</font></td> 			<td align="CENTER" style="border-style: solid; border-color: rgb(0, 0, 0) rgb(0, 0, 255) rgb(0, 0, 0) rgb(0, 0, 0); border-width: 1px"><font size="4">11</font></td> 		</tr> 	</tbody></table><p> </p><p> </p>', '', 1, 0, 0, 0, '2010-12-04 07:29:31', 62, '', '2011-01-11 23:11:34', 62, 0, '0000-00-00 00:00:00', '2010-12-04 07:29:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 11, '', '', 0, 1198, 'robots=\nauthor='),
(109, 'Einladung zur Generalversammlung', 'einladung-zur-generalversammlung', '', '<p>Der Vorstand des Sportverein lädt recht herzlich zur diesjährigen Generalversammlung am 15.01 um 18:30 Uhr ein. </p><p>20:00 Uhr: Gemütliches Beisammensein mit TANZ</p><p> Tagesordnung:</p> <ol><li>Begrüßung </li><li>Vorlage der Jahresbilanz</li><li>Beschlussfassung über das Jahr 2010/2011</li><li>Neuwahlen bzw.Wiederwahlen</li><li>Ehrungen</li><li>Verschiedenes</li></ol>', '', -2, 1, 0, 1, '2011-01-11 23:01:30', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-11 23:01:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 13, '', '', 0, 401, 'robots=\nauthor='),
(110, '40 Jahre - Jubiläum', '40-jahre-jubilaeum', '', '<p> </p><table border="0"><tbody><tr><td><img src="images/stories/logov1_100x100.png" border="0" align="middle" /></td><td valign="middle"><h2><strong>40 J</strong><strong>ahre Sportverein Holthausen-Bleking - dieses Jubiläum würden wir gerne gemeinsam mit Euch feiern.</strong></h2></td></tr></tbody></table><p>Hierzu ist folgender Ablauf geplant:</p><hr width="100%" size="2" /><ul><li>Sonntag, 19. Juni, ab 11 Uhr:Turnier Alte Herren</li></ul><ul><li>Donnerstag, 23. Juni, 14:30 Uhr: Spiel der Jugendmannschaft<br />Donnerstag, 23. Juni, 16:30 Uhr: Alte Herren - Junggesellen</li></ul><ul><li>Samstag, 25. Juni, ab 11 Uhr: Turnier Senioren<br />Samstag, 25. Juni, ab 20 Uhr: Jubiläumsfeier mit Pokalverleihung</li></ul><hr width="100%" size="2" /><p>Wir freuen uns auf Euer Kommen!</p><p align="right">Der Vorstand </p><p> </p><p> </p><p> </p><p> </p><br /><p> </p>', '', -2, 0, 0, 0, '2011-05-22 09:18:39', 65, '', '2011-05-22 10:01:40', 65, 0, '0000-00-00 00:00:00', '2011-05-22 09:18:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 496, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(111, 'Aktuelle Spieltabelle', 'aktuell-spieltabelle', '', '<p><span style="color: #06144b; font-family: tahoma, verdana, arial; font-size: 13px; line-height: normal; background-color: #2e3839" class="Apple-style-span"><table border="3" cellspacing="0" cellpadding="4" style="page-break-before: always; width: 697px; height: 397px"><tbody><tr><td colspan="6" width="100%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><p><font color="#ffffcc"><font face="Verdana, sans-serif"><font size="6"><strong><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #000080">      Tabelle Meisterschaft 2011</span></strong></font></font></font></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><p style="margin-left: 0.01cm; margin-right: 0.01cm; text-indent: 0.03cm" align="LEFT"><font color="#ffffcc"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><strong><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent">Rang</span></strong></font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><h1 style="margin-left: 0.54cm; margin-right: -0.02cm; margin-top: 0cm" class="western" align="LEFT"><font color="#ffffcc"><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><br />Verein</font></font></span></font></h1></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><p style="margin-left: 0.01cm; margin-right: 0.01cm; text-indent: 0.19cm" align="LEFT"><font color="#ffffcc"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><strong><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent">Spiele</span></strong></font></font></font></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><p style="margin-left: 0.01cm; margin-right: 0.01cm; text-indent: 0.87cm" align="LEFT"><font color="#ffffcc"><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><strong>Tore</strong></font></font></span></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><p style="margin-left: 0.01cm; margin-right: 0.01cm; text-indent: 0.56cm" align="LEFT"><font color="#ffffcc"><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><strong>Diff.</strong></font></font></span></font></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#000080"><h3 style="margin-left: 0.01cm; margin-right: 0.01cm; text-indent: 0.26cm; margin-top: 0cm" class="western" align="LEFT"><font color="#ffffcc"><font face="Verdana, sans-serif"><font size="3" style="font-size: 13pt"><span style="background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent"><br /> Punkte</span></font></font></font></h3></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><span style="font-size: x-large"><span style="color: #0000ff"><span style="font-family: Verdana"><strong>Meister</strong></span></span></span><br /></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><h2 style="margin-left: 0.4cm; margin-right: -0.01cm; margin-top: 0cm" class="western" align="LEFT"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><strong><span style="color: #0000ff"><span style="font-size: large"><br /></span><span style="font-size: x-large"><span style="color: #800000">SV Holthausen</span></span></span><br /></strong></font></font></font></h2></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-family: Verdana"><span style="font-size: large"><span>14<br /></span></span></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="text-align: left"><span style="font-family: Verdana"><span style="font-size: large"><font color="#7e0021">  67 : 19</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"> <br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="font-size: large"><font color="#7e0021">+ 48<br /></font></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-family: Verdana"><span style="font-size: large"><span><span style="font-weight: bold">40</span></span></span></span></span><span style="font-size: large"><br /></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span>2.</span></font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><span><strong>SF Klein Reken</strong></span></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span><strong><br /></strong></span></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-size: large"><span style="font-family: Verdana">14</span></span></span><span style="font-size: large"><span style="font-family: Verdana"><br /></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">46 : 30</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">+ 16</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-size: large"><span style="font-family: Verdana"><span style="font-weight: bold">28</span></span></span></span><span style="font-size: large"><span style="font-family: Verdana"><br /></span></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span>3.</span></font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><span><strong>FC Lupine Weseke</strong></span></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span><strong><br /></strong></span></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><span style="color: #800000">14</span></span></span><span style="color: #800000"><span style="font-size: larger"><span style="font-family: Verdana, sans-serif"><br /></span></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">42 : 29</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">+ 13</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="font-size: large"><span style="color: #800000"><span style="font-weight: bold">25</span></span></span></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4">4.</font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><strong>FC Cosmos Weseke</strong></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><strong><br /></strong></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><span style="color: #800000">14<br /></span></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">33 : 38</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><font color="#7e0021"><span style="font-family: Verdana, sans-serif"> <span style="font-family: Verdana">- 5</span></span></font></span><span style="font-size: larger"><font color="#7e0021"><span style="font-family: Verdana, sans-serif"><br /></span></font></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="color: #800000"><span style="font-size: large"><strong>16</strong></span></span></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4">5.</font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><span><strong>SC</strong></span></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span><strong> Brinker Jungs<br /></strong></span></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="font-size: large"><span style="color: #800000"><span>14<br /></span></span></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">31 : 37</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021"> - 6</font></span></span><span style="font-size: larger"><font color="#7e0021"><font face="Verdana, sans-serif"><br /></font></font></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021"><strong>15</strong></font></span></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4">6.</font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><span><strong>FC Böinghook</strong></span></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><span><strong><br /></strong></span></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-size: large"><span style="font-family: Verdana">14</span></span></span><span style="font-size: large"><span style="font-family: Verdana"><br /></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">34 : 47<br /></font></span></span></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><font color="#7e0021"><span style="font-family: Verdana">- 13</span></font></span><span style="font-size: larger"><font color="#7e0021"><span style="font-family: Verdana, sans-serif"><br /></span></font></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><strong><span style="font-size: large"><span style="font-family: Verdana"><span><span style="font-weight: bold">14<br /></span></span></span></span></strong></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4">7.</font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><strong>Fortuna Bieling</strong></font></font></strong></span><strong><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><strong><br /></strong></font></font></font></strong></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="font-size: large"><font color="#7e0021">14</font></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="font-family: Verdana"><font color="#7e0021">29 : 51</font></span></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><span style="font-size: large"><font color="#7e0021">- 22</font></span></span><span style="font-size: larger"><font color="#7e0021"><span style="font-family: Verdana, sans-serif"><br /></span></font></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-family: Verdana"><span style="font-size: large"><span style="font-weight: bold">11</span></span></span></span><span style="font-family: Verdana"><span style="font-size: large"><br /></span></span></p></td></tr><tr><td width="9%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4">8.</font></font></font></p></td><td width="39%" valign="TOP" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p style="margin-left: 0.4cm; margin-right: -0.01cm" align="LEFT"><span style="font-size: large"><strong><font color="#7e0021"><font face="Verdana, sans-serif"><strong><span style="background-image: none; background-attachment: scroll; background-origin: initial; background-clip: initial; background-color: transparent; background-position: 0% 0%; background-repeat: repeat repeat">Bröker Jungs Reken</span></strong></font></font></strong></span></p></td><td width="12%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><span style="color: #800000"><span style="font-family: Verdana">14</span></span></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-size: large"><font color="#7e0021"><font face="Verdana, sans-serif"><span style="font-family: Verdana">15 : 46</span></font></font></span><font color="#7e0021"><font face="Verdana, sans-serif"><font size="4"><br /></font></font></font></p></td><td width="13%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="font-family: Verdana"><font color="#7e0021"><span style="font-size: large"><span>- 31<br /></span></span></font></span></p></td><td width="14%" style="font-family: tahoma, verdana, arial; font-size: 13px; color: #06144b" bgcolor="#ffffcc"><p align="CENTER"><span style="color: #800000"><span style="font-family: Verdana"><span style="font-size: large"><span style="font-weight: bold">8</span></span></span></span><span style="font-family: Verdana"><span style="font-size: large"><br /></span></span></p></td></tr></tbody></table><br />                    <strong><span style="color: #000080"><span style="font-family: Verdana">aktualisiert am 27.09.2011</span></span></strong></span></p>', '', 1, 0, 0, 0, '2011-06-07 20:48:36', 62, '', '2011-10-01 09:24:11', 62, 62, '2011-10-01 09:24:11', '2011-06-07 20:48:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 12, '', '', 0, 1498, 'robots=\nauthor='),
(112, 'Spielplan Turnier Alte Herren am 19. Juni', 'spielplan-turnier-alte-herren-am-19-juni', '', '<table border="0" cellspacing="3" cellpadding="5"><tbody><tr><td>1<br /></td><td>13:00 </td><td>Brinker Jungs </td><td>Moppentruppe  <br /></td></tr><tr><td>2</td><td>13:25</td><td>SuS Hochmoor <br /></td><td>RW Trimbach<br /></td></tr><tr><td>3 <br /></td><td>13:50 <br /></td><td>Moppentruppe <br /></td><td>SV Holthausen</td></tr><tr><td>4 <br /></td><td>14:15 <br /></td><td>RW Trimbach</td><td>Brinker Jungs</td></tr><tr><td>5 <br /></td><td>14:40 <br /></td><td>SV Holthausen</td><td>SuS Hochmoor</td></tr><tr><td>6 <br /></td><td>15:05 <br /></td><td>Moppentruppe</td><td>RW Trimbach</td></tr><tr><td>7 <br /></td><td>15:30 <br /></td><td>SV Holthausen</td><td> Brinker Jungs</td></tr><tr><td>8 <br /></td><td>15:55 <br /></td><td>SuS Hochmoor</td><td>Moppentruppe</td></tr><tr><td>9 <br /></td><td>16:20 <br /></td><td>RW Trimbach</td><td>SV Holthausen</td></tr><tr><td>10 <br /></td><td>16:45 <br /></td><td>Brinker Jungs</td><td>SuS Hochmoor</td></tr></tbody></table>', '', -2, 1, 0, 1, '2011-06-13 12:41:41', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-13 12:41:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 389, 'robots=\nauthor='),
(113, 'Pokalturnier Alte Herren', 'pokalturnier-alte-herren', '', '<p>Die Moppentruppe aus Ramsdorf konnte sich letztlich mit einer starken Leistung in einem ausgeglichenem Turnier durchsetzen und gewann mit 9 Punkten vor RW Trimbach. Unsere eigene Mannschaft konnte den dirtten Platz erreichen. </p><p><img src="images/stories/p1010881.jpg" border="0" width="799" height="598" />  </p><p><img src="images/stories/p1010874.jpg" border="0" />  </p><p><img src="images/stories/p1010876.jpg" border="0" />  </p><p><img src="images/stories/p1010884.jpg" border="0" />  </p><p><img src="images/stories/p1010887.jpg" border="0" /> </p><h1><span class="caption">Abschlusstabelle</span></h1><table border="0" width="358" style="height: 94px"><tbody><tr><td><address> </address></td><td><address>Mannschaft </address></td><td><address> Punkte</address></td><td><address>Tore </address></td><td><address>Diff </address></td></tr><tr><td><address>1. </address></td><td><address>Moppentruppe </address></td><td><address>9 </address></td><td><address>7:4 </address></td><td><address>3 </address></td></tr><tr><td><address>2. </address></td><td><address>RW Trimbach </address></td><td><address>7 </address></td><td><address>6:4 </address></td><td><address>2</address></td></tr><tr><td><address>3. </address></td><td><address>SV Holthausen </address></td><td><address>6 </address></td><td><address>4:2 </address></td><td><address>2 </address></td></tr><tr><td><address>4. </address></td><td><address>SUS Hochmoor </address></td><td><address>6 </address></td><td><address>3:3 </address></td><td><address>0 </address></td></tr><tr><td><address>5. </address></td><td><address>Brinker Jungs </address></td><td><address>1 </address></td><td><address>2:9 </address></td><td><address>-7 <br /></address></td></tr></tbody></table>', '', -2, 1, 0, 1, '2011-06-20 15:24:26', 65, '', '2011-07-03 11:25:52', 65, 0, '0000-00-00 00:00:00', '2011-06-20 15:24:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 15, '', '', 0, 443, 'robots=\nauthor='),
(114, 'Neue Vereinsfahne', 'neue-vereinsfahne', '', '<p>Pünktlich zu unserem 40 jährigem Vereinsjubiläum haben wir auch eine neue Vereinsfahne bekommen. Die alte Fahne ist mittlerweile in die Jahre gekommen und hat (wie wir auch ;-) ) schon einige Höhen und Tiefen mitgemacht. Daher ist unser Jubiläum auch Anlass für eine neue Fahne.</p><p><img src="images/stories/p1010878.jpg" border="0" /> </p>', '', -2, 1, 0, 1, '2011-06-23 07:34:07', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-23 07:34:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 14, '', '', 0, 426, 'robots=\nauthor='),
(128, 'Meisterschaftsparty', 'meisterschaftsparty', '', '<p>Die Meisterschaftsfeier findet nun am 8. Oktober 2011 statt ! ! ! </p><blockquote>Ort: Autohof in Weseke<br />Uhrzeit: ab 20Uhr<br />Treffen: Wir treffen uns um 18 Uhr an der Schule... Um 19 Uhr werden wr dann mit dem Planwagen Richtung Weseke aufbrechen und unseren Meisterpokal entgegen nehmen <br /></blockquote><p><img src="images/fotos/2011_LetztesMeiserschaftsSpiel/IMG_3544.JPG" border="0" width="800" height="600" /></p><p><a href="index.php?option=com_content&view=article&id=129:saison-2011-letztes-meisterschaftsspiel&catid=42:fotos&Itemid=59">Weitere Bilder vom letzten Meiserschaftsspiel gib''s hier oder in der Rubrik Fotos..</a> </p>', '', -2, 1, 0, 1, '2011-10-05 09:12:00', 64, '', '2011-10-06 16:39:27', 65, 0, '0000-00-00 00:00:00', '2011-10-05 09:10:57', '2011-10-08 09:10:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 5, '', '', 0, 9, 'robots=\nauthor='),
(129, 'Saison 2011 - Letztes Meisterschaftsspiel', 'saison-2011-letztes-meisterschaftsspiel', '', '<p><img src="images/fotos/2011_LetztesMeiserschaftsSpiel/IMG_3521.JPG" border="0" alt="mt_gallery: Saison 2011 - Letztes Meisterschaftsspiel" /></p>', '', -2, 6, 0, 42, '2011-10-06 16:24:24', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-10-06 16:24:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 378, 'robots=\nauthor='),
(130, 'Pizza Essen', 'pizza-essen', '', '<div align="left">Beim Jugendtraining am gestrigen Montag wurde mal Pizza gebacken. Leckere Salami-, Thunfisch- und Kochschinken Pizzen wurden von den Kids belegt und im Backofen geschoben.</div><div align="left"> </div>', '', 0, 1, 0, 1, '2011-11-13 17:21:32', 90, '', '2012-09-11 14:54:07', 64, 0, '0000-00-00 00:00:00', '2011-11-13 17:21:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 25, '', '', 0, 157, 'robots=\nauthor='),
(115, 'Junggesellen vs Altherren 2008', 'junggesellen-vs-altherren-2008', '', '<p><img src="images/fotos/Junggesellen_VS_Altherren_2008/hpim2003.jpg" border="0" alt="mt_gallery: Junggesellen vs Altherren 2008" /></p>', '', 1, 6, 0, 42, '2011-07-02 15:58:50', 62, '', '2011-07-02 16:16:26', 62, 0, '0000-00-00 00:00:00', '2011-07-02 15:58:50', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 8, '', '', 0, 687, 'robots=\nauthor='),
(116, 'Junggesellen vs Altherren 2004', 'junggesellen-vs-altherren-2004', '', '<p><img src="images/fotos/Junggesellen_VS_Altherren_2004/DSCF0001.JPG" border="0" alt="mt_gallery: Junggesellen vs Altherren 2004" /></p>', '', 1, 6, 0, 42, '2011-07-02 16:17:25', 62, '', '0000-00-00 00:00:00', 0, 62, '2011-07-02 16:20:09', '2011-07-02 16:17:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 605, 'robots=\nauthor='),
(117, 'Jugend vs Damen', 'jugend-vs-damen', '', '<p><img src="images/fotos/Jugend_VS_Damen/DSCF0127.JPG" border="0" alt="mt_gallery: Jugend vs Damen" /></p>', '', 1, 6, 0, 42, '2011-07-02 16:19:27', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-02 16:19:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 6, '', '', 0, 597, 'robots=\nauthor='),
(118, 'Turnier 2004', 'turnier-2004', '', '<p><img src="images/fotos/Turnier_2004/DSCF0011.JPG" border="0" alt="mt_gallery: Turnier 2004" /></p>', '', 1, 6, 0, 42, '2011-07-02 16:24:14', 62, '', '2011-07-02 16:26:01', 62, 0, '0000-00-00 00:00:00', '2011-07-02 16:24:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 5, '', '', 0, 647, 'robots=\nauthor='),
(119, 'Jugendspiel, Alte Herren - Junggesellen', 'jugendspiel-alte-herren-junggesellen', '', '<h1>Alte Herren - Junggesellen</h1><p> Zum ersten Mal kam dieses Jahr die neue Regelung zum Zuge, dass sich die Mannschaft der Alten Herren nicht mehr aus den Verheirateten zusammensetzt, sondern dass alle Spieler älter 27 Jahre zur Alt-Herren Mannschaft gehören. Bei dem im Vergleich zum Vorjahr deutlich ausgeglicherem Spiel mit Vorteilen bei den Alten Herren konnten sich dann doch die Junggesellen mit knappem Vorsprung aufgrund der glücklicheren Tore durchsetzen. </p><p>Die zahlreich erschienen Zuschauer kamen voll auf Ihre Kosten.</p><p><img src="images/stories/p1010937.jpg" border="0" /> <img src="images/stories/p1010934.jpg" border="0" /> </p><h1>Spiel der Jugend gegen Fiat Gescher</h1><p>Beim dem fast schon traditionellen Spiel der Jugend gegen Fiat Gescher konnten sich diesmal die Hothausener Jungs in einem spannenden Spiel durchsetzen.</p><p> <img src="images/stories/p1010910.jpg" border="0" /> <img src="images/stories/p1010917.jpg" border="0" /> </p>', '', -2, 0, 0, 0, '2011-07-03 11:06:37', 65, '', '2011-07-03 11:24:35', 65, 0, '0000-00-00 00:00:00', '2011-07-03 11:06:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 532, 'robots=\nauthor='),
(120, '40 Jähriges Jubiläum - Pokalturnier Senioren', '40-jaehriges-jubilaeum-pokalturnier-senioren', '', '<h1>Jubiläumsfeier<br /></h1><p>Den Abschluss der Feierlichkeiten bildete die Jubiläumsfeier Abends am 25.6.2011 in unserem Vereinsheim in der Holthausener Schule. Hier möchten wir uns ganz herzlichen bei den Gästen für die zahlreichen Glückwünsche und Präsente bedanken. Auf der Pokalverleihung konnten wir unter anderem dem Turniersieger des Seniorenturniers zu dem Sieg beglückwünschen.</p><p><img src="images/stories/img_3510.jpg" border="0" /> </p><p> </p><h1>Seniorenturnier</h1><p>Beim Turnier der Senioren spielten insgesamt 8 Mannschaften um den Pokal. Die eigene Mannschaft konnte leider nur den 5 Platz belegen. Sieger wurde der FC Lupine, die sich im Endspiel gegen die Brinker Jungs mit einem 2:0 durchsetzen konnten.</p><p> </p><table border="0" width="170" height="78"><tbody><tr><td><address>1. </address></td><td><address>Lupine Weseke </address></td></tr><tr><td><address>2. </address></td><td><address>Brinker Jungs</address></td></tr><tr><td><address>3. </address></td><td><address>Landjugend Ramsdorf </address></td></tr><tr><td><address>4. </address></td><td><address>Tornado Timpen </address></td></tr><tr><td><address>5. </address></td><td><address>SV Holthausen</address></td></tr><tr><td><address>6. </address></td><td><address>SF Klein Reken </address></td></tr><tr><td><address>7. </address></td><td><address>VFL Ramsdorf 3 </address></td></tr><tr><td><address>8. </address></td><td><address>Inferno Velen <br /></address></td></tr></tbody></table><p> </p><p><img src="images/stories/img_3489.jpg" border="0" /> <img src="images/stories/img_3503.jpg" border="0" /></p><p><img src="images/stories/img_3495.jpg" border="0" /> <img src="images/stories/img_3499.jpg" border="0" /></p><p><img src="images/stories/img_3490.jpg" border="0" />  <img src="images/stories/img_3492.jpg" border="0" /></p><p><img src="images/stories/img_3504.jpg" border="0" />  <img src="images/stories/img_3501.jpg" border="0" /></p><p><a href="index.php?option=com_content&view=article&id=123:40-jahre-hsv-turnier-senioren&catid=42:fotos&Itemid=59">Weitere Bilder siehe Rubrik Fotos ...</a></p>', '', -2, 1, 0, 1, '2011-07-03 11:08:23', 65, '', '2011-07-03 13:41:11', 65, 0, '0000-00-00 00:00:00', '2011-07-03 11:08:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 12, '', '', 0, 517, 'robots=\nauthor='),
(121, '40 Jahre HSV - Turnier Alte Herren', '40-jahre-hsv-turnier-alte-herren', '', '<p><img src="images/fotos/2011_AlteHerrenTurnier/P1010875.JPG" border="0" alt="mt_gallery: 40 Jahre HSV - Turnier Alte Herren" /></p>', '', -2, 6, 0, 42, '2011-07-03 13:19:55', 65, '', '2011-07-03 13:23:56', 65, 0, '0000-00-00 00:00:00', '2011-07-03 13:19:55', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 260, 'robots=\nauthor='),
(122, '40 Jahre HSV - Alte Herren-Junggesellen und Jugendspiel', '40-jahre-hsv-alte-herren-junggesellen-und-jugendspiel', '', '<p><img src="images/fotos/2011_Junggesellen-AlteHerren/P1010910.JPG" border="0" alt="mt_gallery: 40 Jahre HSV - Alte Herren-Junggesellen und Jugendspiel" /></p>', '', -2, 6, 0, 42, '2011-07-03 13:25:16', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-03 13:25:16', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 287, 'robots=\nauthor='),
(123, '40 Jahre HSV - Turnier Senioren', '40-jahre-hsv-turnier-senioren', '', '<p><img src="images/fotos/2011_Seniorenturnier-Feier/IMG_3489.JPG" border="0" alt="mt_gallery: 40 Jahre HSV - Turnier Senioren" /></p>', '', -2, 6, 0, 42, '2011-07-03 13:26:40', 65, '', '2011-07-03 13:30:43', 65, 0, '0000-00-00 00:00:00', '2011-07-03 13:26:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 338, 'robots=\nauthor='),
(124, 'Toller Erfolg unserer Jugendmannschaft', 'toller-erfolg-unserer-jugendmannschaft', '', '<p>Am vergangenen Sonntag nahm unsere Jugendmannschaft am Turnier von TG Hengeler Wendfeld teil. Von fünf teilnehmenden Mannschaften belegte sie einen guten dritten Platz.</p><p>Im einzelnen:<br />HSV - DJK Stadtlohn 2:0<br />HSV - FC Fiat Gescher 1:1<br />HSV - TG Hengeler Wendfeld 1:1<br />HSV - SuS Stadtlohn 1:1</p><p>Dickes Lob an Michael Trepmann als Trainer und Organisator.</p><p><img src="images/stories/p1020085.jpg" border="0" /> </p>', '', -2, 1, 0, 1, '2011-07-25 15:46:22', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-07-25 15:46:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 9, '', '', 0, 464, 'robots=\nauthor='),
(125, 'DFB & Mc Donald`s Fussballabzeichen', 'dfb-a-mc-donalds-fussballabzeichen', '', '<p>Am 13.08.2011 hatte der Fc-Fiat 1960e.V. die HSV-Jugend zu ihren Sommerfest eingeladen.Wir hatten die Möglichkeit am Samstagnachmittag dort das DFB & Mc Donald`s Fussballabzeichen zu machen. Bei besten Wetter konnte man die fünf Stationen durchlaufen und dabei Punkte sammeln, ab einer bestimmten Punktzahl erhielt man die Auszeichnung in Gold, Silber oder Bronze. Die Spieler mussten sich beim Torschuss, Köpfen, Dribbeln, Passen und Flanken beweisen. Zudem konnten alle Plätze in der McDonald''s Fußball Eskorte gewinnen.</p><p><img src="images/stories/jugend%20fiat%20gescher%20bild1.jpg" border="0" /> <img src="images/stories/jugend%20fiat%20gescher%20bild2.jpg" border="0" /></p><p>Ein großes Lob für die gut durch organisierte Veranbstaltung. Alle hatten viel Spaß und am Ende konnten sogar drei Spieler eine Goldauszeichnung vorweisen.</p> <p><img src="images/stories/jugend%20fiat%20gescher%20bild3.jpg" border="0" /></p>', '', -2, 1, 0, 1, '2011-08-23 16:44:27', 90, '', '2011-08-23 17:00:56', 65, 0, '0000-00-00 00:00:00', '2011-08-23 16:44:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 8, '', '', 0, 494, 'robots=\nauthor='),
(126, 'HSV - Meister 2011', 'hsv-meister-2011', '', '<p>Es ist geschafft! <strong>Nach nur 11 von 14 Spielen steht bereits fest, dass wir Meister der Hobbyliga sind</strong>! Passend zum 40 Jährigen Jubiläum haben wir das jetzt nach 30 Jahren Durststrecke durch Klasse Leistungen endlich geschafft. </p><p>Die akutelle Tabelle führen wir mit 33 Punkten (11 Spiele) und einen Torverhältnis von 54 zu 13 Toren vor Lupine mit 21 Punkte (11 Spiele) und Klein Reken mit 19 Punkten (10 Spiele) ungeschlagen und uneinholbar an!</p>', '', -2, 1, 0, 1, '2011-09-02 16:13:19', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-09-02 16:13:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 16, '', '', 0, 409, 'robots=\nauthor='),
(127, 'Letztes Meisterschaftsspiel - Meisterschaftsparty', 'letztes-meisterschaftsspiel-meisterschaftsparty', '', '<p>Samstag steht unser letztes Meisterschaftsspiel an. Gespielt wird in Holthausen gegen SF Klein Reken. Anstoß ist um 16:30 Uhr. Anschließend wollen wir beim Bier und Würstchen unsere Meisterschaft feiern. </p><p>Änderung (siehe unten): <strike>Abends gehts dann mit Planwagen weiter nach Weseke zur Meisterschaftsfeier von Cosmos Weseke! </strike></p><p><strong>Wir würden uns über eine gute Beteiligung bei den Spielern und bei unseren Fans freuen! </strong></p><p> </p><h1>! Änderung ! </h1><p>Die Meisterschaftsfeier wurde vom Veranstalter Cosmos Weseke verschoben. Geplant ist jetzt der 8.10.2011. Also können wir unseren Titel in aller Ruhe in Holthausen beim Würstchen und Bier feiern! </p>', '', 0, 1, 0, 1, '2011-09-20 07:32:30', 65, '', '2011-10-06 16:29:03', 65, 64, '2013-04-16 09:47:51', '2011-09-20 07:32:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 26, '', '', 0, 9, 'robots=\nauthor='),
(131, 'Spieltabelle 2012', 'spieltabelle-2012', '', '<p>Die aktuelle Spieltabelle zur Saison 2012 befindet sich auf der <a href="http://www.liga-borken.de" target="_blank">Liga Seite</a>. </p><ul><li><a href="index.php?option=com_fussball&view=spiele&Itemid=91">Alle Spiele von Holthausen</a></li><li><a href="index.php?option=com_fussball&view=spielerliste&Itemid=92">Spielerliste von Holthausen</a> </li></ul>', '', 1, 0, 0, 0, '2011-11-13 18:40:54', 62, '', '2012-03-08 17:34:07', 62, 0, '0000-00-00 00:00:00', '2011-11-13 18:40:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 9, '', '', 0, 1544, 'robots=\nauthor='),
(132, 'Meisterschaft', 'meisterschaft', '', '<h4>Holthausen holt ungeschlagen den Meistertitel</h4><p align="justify">Ungeschlagen sicherte sich der <strong>SV Holthausen</strong> in diesem Jahr den Meistertitel der Fußball-Hobbyliga. Mit 12 Punkten Vorsprung wies der Titelträger die Konkurrenz mehr als deutlich in die Schranken. Den Serienmeistern der vergangenen zehn Jahre, SF Reken und Cosmos Weseke, ließen die Holthausener nicht den Hauch einer Chance. Insgesamt gewann der neue Meister von 14 Spielen 13 und spielte gegen den FC Lupine 3:3.</p><p align="justify">Der Titel des Torschützenkönigs ging ebenfalls nach Holthausen. Die 17 Tore von <strong>Carsten Deppe</strong> waren nicht zu toppen. Dahinter kommen Mannschaftskollege <strong>Joschi Kamp</strong>, Michael Stienen von den Sportfreunden Klein Reken und Marius Schulze Beiering vom FC Lupine auf zehn Saisontoren.</p>', '', -2, 1, 0, 1, '2011-11-27 11:17:44', 90, '', '2012-02-12 13:41:40', 65, 0, '0000-00-00 00:00:00', '2011-11-27 11:17:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 17, '', '', 0, 482, 'robots=\nauthor='),
(133, 'Webseite für die Hobbyliga Kreis Borken', 'webseite-fuer-die-hobbyliga-kreis-borken', '', 'So, es ist soweit. Die neue Liga Seite ist online und findet man unter <a href="http://www.liga-borken.de" target="_blank">http://www.liga-borken.de</a>. Dort werden künftig alle Spieltermine, Ergebnisse, ... rund um unsere Hobbyliga zu finden sein.', '', -2, 1, 0, 1, '2012-02-24 15:27:06', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-02-24 15:27:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 19, '', '', 0, 425, 'robots=\nauthor='),
(134, 'fdfdd', 'fdfdd', '', '<img src="images/stories/img_3490.jpg" border="0" />', '', -2, 1, 0, 1, '2012-03-04 17:30:09', 90, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-04 17:30:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 22, '', '', 0, 1, 'robots=\nauthor='),
(135, 'HSV Wochenende', 'hsv-wochenende', '', '<p>Am kommenden Wochenende (23-24 Juni) ist es wieder soweit: Jugendspiel, Alte Herren - Junggesellen und HSV Pokalturnier!</p><p>Wir starten Samstag um 10 Uhr mit Aufräumen/Aufbauen.. Nachmittags     spielt um ca. 14:30 Uhr unsere Jugend gegen Fiat Gescher.     Anschließend das Spiel Alte Herren - Junggesellen.<br />     Am Sonntag startet das Turnier um 11 Uhr. Wir treffen uns um 10 Uhr! </p>', '', 0, 1, 0, 1, '2012-06-16 08:45:45', 65, '', '2012-09-11 14:53:38', 64, 0, '0000-00-00 00:00:00', '2012-06-16 08:45:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 24, '', '', 0, 49, 'robots=\nauthor='),
(136, 'HSV Pokalturnier am 24.06', 'hsv-pokalturnier-am-2406', '', '<p>Am Sonntag (24.06) veranstalten wir unser HSV-Pokalturnier. Beginn ist um 11 Uhr</p><p><strong>Folgende Mannschaften nehmen Teil:</strong></p>  <table border="0" cellpadding="0" width="199" style="height: 121px"> <tbody> <tr><td>1. <br /></td><td>VFL Ramsdorf III</td></tr> <tr><td>2.</td><td> SF Klein Reken</td></tr> <tr><td>3.</td><td> Lupine Weseke<br /></td></tr> <tr><td>4.</td><td> Inferno Velen<br /></td></tr> <tr><td>5.</td><td> Brinker Jungs<br /></td></tr> <tr><td>6.</td><td> SV Holthausen<br /></td></tr> </tbody> </table> <p><strong> </strong></p><p><strong>Spielplan:</strong></p><table border="1" cellpadding="2" width="415" style="height: 364px"><tbody><tr><td>1. <br /></td><td> 11:00 </td><td>VFL Ramsdorf III</td><td>SF Klein Reken</td></tr><tr><td>2.</td><td> 11:23</td><td>Lupine Weseke<br /></td><td>Inferno Velen<br /></td></tr><tr><td>3.<br /></td><td> 11:46</td><td>Brinker Jungs</td><td>SV Holthausen<br /></td></tr><tr><td>4.<br /></td><td> 12:09</td><td>VFL Ramsdorf III</td><td>Lupine Weseke</td></tr><tr><td>5.<br /></td><td> 12:32</td><td>SF Klein Reken</td><td>Brinker Jungs</td></tr><tr><td>6.<br /></td><td> 12:55</td><td>Inferno Velen</td><td>SV Holthausen</td></tr><tr><td>7.<br /></td><td> 13:18</td><td>Brinker Jungs</td><td>VFL Ramsdorf III <br /></td></tr><tr><td>8.<br /></td><td> 13:41</td><td>SF Klein Reken</td><td>Inferno Velen</td></tr><tr><td>9.<br /></td><td> 14:04</td><td>SV Holthausen</td><td>Lupine Weseke</td></tr><tr><td>10.<br /></td><td> 14:27</td><td>VFL Ramsdorf III</td><td>Inferno Velen</td></tr><tr><td>11.<br /></td><td> 14:50</td><td>SV Holthausen</td><td>SF Klein Reken</td></tr><tr><td>12.<br /></td><td> 15:13</td><td>Lupine Weseke</td><td>Brinker Jungs</td></tr><tr><td>13.<br /></td><td> 15:36</td><td>SV Holthausen</td><td>VFL Ramsdorf III</td></tr><tr><td>14.<br /></td><td> 15:59</td><td>SF Klein Reken</td><td>Lupine Weseke</td></tr><tr><td>15.<br /></td><td> 16:22</td><td>Inferno Velen</td><td>Brinker Jungs</td></tr></tbody></table><p align="left"> </p><p align="left">Wir wünschen allen Mannschaften viel Glück! </p>', '', 0, 1, 0, 1, '2012-06-16 08:48:58', 65, '', '2013-04-16 09:47:22', 64, 0, '0000-00-00 00:00:00', '2012-06-16 08:48:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 23, '', '', 0, 53, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(137, 'MEISTERSCHAFTSFEIER HOBBYLIGA BORKEN', 'meisterschaftsfeier-hobbyliga-borken', '', '<p>Hallo HSVler, Hallo Holthausener, Hallo Gäste,</p><p>am <u><strong>20. Oktober</strong></u> findet in Holthausen die diesjährige Meisterschaftsfeier der Hobbyliga Borken statt.</p><p>Wir vom HSV sind in diesem Jahr Ausrichter, weil wir im Jahr 2011 die Meisterschaft gewonnen haben.</p><p>Zu der Meisterschaftsfeier sind neben den Spielern und TRainern der teilnehmenden Mannschaften</p><p>selbstverständlich alle Gönner und Freunde des Holthausener Sport Verein eingeladen ! ! !</p><p> </p><p>Nähere Infos zu der Feier folgen in den nächsten Tagen ! ! ! !</p><p> </p>', '', -2, 1, 0, 1, '2012-09-11 14:59:57', 64, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-09-11 14:55:55', '2013-09-21 15:00:00', '', '', '', 1, 0, 21, '', '', 0, 290, ''),
(138, 'Tagestour Sportverein', 'tagestour-sportverein', '', '<p>Die (zweite <img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-wink.gif" border="0" alt="Wink" title="Wink" /> )Tagestour findet am Samstag den 29. September statt! Treffen ist um 17:00 Uhr an der Schule. <strong>Wichtig: </strong>Bitte bis zum 17.9. bei Markus Eichhorn (02862-414431) oder Stefan Többer (02863-760570) anmelden. Kosten ca. 40-50 € plus Getränk. Es werden lustige Sachen gemacht :-) </p>', '', -2, 1, 0, 1, '2012-09-12 18:54:25', 65, '', '2012-09-12 19:13:02', 65, 0, '0000-00-00 00:00:00', '2012-09-12 18:54:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 20, '', '', 0, 297, 'robots=\nauthor='),
(139, 'Meisterschaft 2012 - der Endspurt ! ! !', 'meisterschaft-2012-der-endspurt-', '', '<p class="MsoNormal">Guten Tag zusammen,</p>    <p class="MsoNormal">nach der ärgerlichen Niederlagen gegen die Brinker Jungs fanden wir gegen die SF Klein Reken wieder in die Erfolgsspur zurück – und wie ! ! ! !</p>      <p class="MsoNormal">Mit 4 zu 1 haben wir die Rekener wieder nach Hause geschickt und gleichzeitig das Fünkchen Hoffnung auf die mögliche Meisterschaft im Keim erstickt.</p>      <p class="MsoNormal">Was die Meisterschaft betrifft ist alles noch offen…</p><p class="MsoNormal">Aktuell ist Lupine Weseke an der Tabellenspitze, aber die Cosmonauten (leider, leider) haben noch die</p>  <p class="MsoNormal">Chance vorbei zu ziehen. Dazu müssen Sie allerdings aus den letzten drei Spielen (zweimal gegen die Brinker und gegen uns)</p>  <p class="MsoNormal">mindestens 6 Punkte holen um mit Lupine punktemäßig gleich zuziehen.</p>  <p class="MsoNormal">Bei Punktgleichheit wäre Cosmos Weseke Meister, denn Sie haben im direkten Vergleich die besseren Karten (ein Sieg und ein Unentschieden).</p>    <p class="MsoNormal">Von daher werden die letzten Saisonspiele noch einmal so richtig spannend werden ! ! ! !</p>  <p class="MsoNormal"><u>Hoffentlich wird die richtige Mannschaft in diesem Jahr Meister </u><u><span style="font-family: Wingdings"><span>J</span></span> (wir werden alles dafür tun, oder???!!!)</u></p>    <p class="MsoNormal"> Hier nun nochmals die Daten für die letzten beiden <strong>Meisterschaftsspiele</strong>:</p>    <p class="MsoNormal"><strong>19.09.2012</strong><span>                          </span>Heimspiel gegen Cosmos Weseke<span>          </span>Anstoß: 18:45 Uhr<span>           </span>Treffen: 18:00 Uhr</p>      <p class="MsoNormal"><strong>24.09.2012</strong><span>                          </span>Heimspiel gegen Fortuna Bieling<span>             </span>Anstoß: 19:00 Uhr<span>           </span>Treffen: 18:00 Uhr </p>  <p class="MsoNormal">Am 26.09.2012 haben wir ein Freundschaftsspiel gegen die Altherren von SUS Hochmoor.</p>  <p class="MsoNormal">Anstoß ist ebenfalls um 19 Uhr – Treffen ca. 18 Uhr.</p>    <p class="MsoNormal">Bitte zu allen drei Spielen – <u>beim Freundschaftsspiel sind besonders die älteren Spieler des HSV angesprochen</u> – zahlreich und pünktlich erscheinen.</p>    <p class="MsoNormal">Gerade gegen Cosmos Weseke hoffe und erwarte ich die gleichen Jungs wie gegen SF Klein Reken auf dem Platz zu sehen…schließlich wollen wir die Cosmonauten bei uns zu Hause – in Holthausen – schlagen ! ! ! ! !</p>      <p class="MsoNormal">Wünsche Euch ein schönes Wochenende ! ! ! ! </p>  <p class="MsoNormal">Bis die Tage <span style="font-family: Wingdings"><span>à</span></span>Montag ist Training.</p>    <p class="MsoNormal">Ciao Twix</p>    <p class="MsoNormal">PS. HSV Tagestour am 29.09.2012 ! ! ! Anmeldungen dafür bitte bei Stefan Többer und/oder Markus Eichhorn.</p>  <p class="MsoNormal"><span>       </span>Weitere Infos dazu habt Ihr per Mail/WhatsApp erhalten.</p>  <p class="MsoNormal"> </p>  <p class="MsoNormal"><strong><u><span style="font-size: 18pt; color: red">20. Oktober 2012 MEISTERSCHAFTSFEIER in </span></u></strong></p><p class="MsoNormal"><strong><u><span style="font-size: 18pt; color: red">der Holthausener Schule</span></u></strong></p>', '', -2, 1, 0, 1, '2012-09-13 12:44:04', 64, '', '2012-09-13 12:49:15', 64, 0, '0000-00-00 00:00:00', '2012-09-13 12:41:00', '2014-10-03 12:41:00', '', '', '', 2, 0, 18, '', '', 0, 299, ''),
(140, 'Spieltabelle 2013', 'spieltabelle-2013', '', '<p>Die aktuelle Spieltabelle zur Saison 2013 befindet sich auf der <a href="http://www.liga-borken.de" target="_blank">Liga Seite</a>. </p><ul><li><a href="index.php?option=com_fussball&view=spiele&Itemid=95">Alle Spiele von Holthausen</a></li><li><a href="index.php?option=com_fussball&view=spielerliste&Itemid=96">Spielerliste von Holthausen</a> </li></ul>', '', 1, 0, 0, 0, '2011-11-13 18:40:54', 62, '', '2013-01-18 11:58:40', 62, 0, '0000-00-00 00:00:00', '2011-11-13 18:40:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 8, '', '', 0, 984, 'robots=\nauthor='),
(141, 'Rasenmäherliste 2013', 'rasenmaeherliste-2013', '', '<table border="0" cellspacing="0" cellpadding="0" width="745" height="216"><tbody><tr height="26" style="height: 20.1pt"> <td class="xl133" height="26" style="height: 20.1pt"><font color="#000000"><strong>19.01.2013</strong></font></td> <td class="xl132"><font color="#000000"><strong>25.01.2013</strong></font></td> <td class="xl132" style="border-left: medium none"><font color="#000000"><strong>28.04.2013</strong></font></td> <td class="xl131" style="border-left: medium none"><font color="#000000"><strong>29/30.06.2013</strong></font></td> <td class="xl132"><font color="#000000"><strong>07.09.2013</strong></font></td> <td class="xl132" style="border-left: medium none"><font color="#000000"><strong>07.09.2013</strong></font></td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl134" height="26" style="height: 20.1pt"><font color="#000000"><strong>Generalversammlung</strong></font></td> <td class="xl135"><font color="#000000"><strong>Generalversammlung</strong></font></td> <td class="xl135" style="border-left: medium none"><font color="#000000"><strong>Schützenfest<span> </span></strong></font></td> <td class="xl136" style="border-left: medium none"><font color="#000000"><strong>HSV</strong></font></td> <td class="xl135"><font color="#000000"><strong>Kinder</strong></font></td> <td class="xl135" style="border-left: medium none"><font color="#000000"><strong>Schützenfest-</strong></font></td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl137" height="26" style="height: 20.1pt"><font color="#000000"><strong>Sportverein</strong></font></td> <td class="xl138"><font color="#000000"><strong>Schützenverein</strong></font></td> <td class="xl139" style="border-left: medium none"><font color="#000000"><strong>Üben</strong></font></td> <td class="xl140" style="border-left: medium none"><font color="#000000"><strong>Wochenende</strong></font></td> <td class="xl141"><font color="#000000"><strong>Schützenfest</strong></font></td> <td class="xl141" style="border-left: medium none"><font color="#000000"><strong>nachfeier</strong></font></td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl129" height="26" style="height: 20.1pt; border-top: medium none">Stefan  Thesing</td> <td class="xl128">Michael Trepmann</td> <td class="xl143" style="border-left: medium none; border-top: medium none">Jürgen  Roßkamp</td> <td class="xl143" style="border-left: medium none">Benny Sicking</td> <td class="xl144" style="border-left: medium none">Carsten Deppe</td> <td class="xl146">Simon Zehnpfennig</td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl110" height="26" style="height: 20.1pt; border-top: medium none">Manni  Roßkamp</td> <td class="xl70" style="border-top: medium none">Norbert Roßkamp</td> <td class="xl70" style="border-left: medium none; border-top: medium none"> </td> <td class="xl72" style="border-left: medium none; border-top: medium none">Michael  Raida</td> <td class="xl145" style="border-left: medium none; border-top: medium none">Stefan  Hüging</td> <td class="xl70" style="border-top: medium none"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl110" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl70" style="border-top: medium none">Hubert Dirking</td> <td class="xl70" style="border-left: medium none; border-top: medium none"> </td> <td class="xl72" style="border-left: medium none; border-top: medium none">Chr.  Thesing</td> <td class="xl145" style="border-left: medium none; border-top: medium none">Seb.  Sieverding</td> <td class="xl70" style="border-top: medium none"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl110" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl72" style="border-top: medium none">M. Grave</td> <td class="xl70" style="border-left: medium none; border-top: medium none"> </td> <td class="xl70" style="border-left: medium none; border-top: medium none"> </td> <td class="xl110" style="border-left: medium none; border-top: medium none"> </td> <td class="xl70" style="border-top: medium none"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl112" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl71" style="border-top: medium none"> </td> <td class="xl71" style="border-left: medium none; border-top: medium none"> </td> <td class="xl71" style="border-left: medium none; border-top: medium none"> </td> <td class="xl127" style="border-left: medium none; border-top: medium none"> </td> <td class="xl126" style="border-top: medium none"> </td></tr></tbody></table>', '', 1, 0, 0, 0, '2013-04-16 06:32:35', 62, '', '2013-04-16 06:45:45', 62, 0, '0000-00-00 00:00:00', '2013-04-16 06:32:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 7, '', '', 1, 8, 'robots=\nauthor='),
(142, 'Kellnerliste 2013', 'kellnerliste-2013', '', '<table border="0" cellspacing="0" cellpadding="0" width="535" height="281"><tbody><tr height="20" style="height: 15pt"> <td class="xl109" colspan="3" height="20" style="height: 15pt"><font color="#FF0000"><strong>Rasenplatz, Parkplätze am Kloaverblatt, Weg zum Schützenfestplatz</strong></font></td> <td colspan="3"> </td></tr> <tr height="18" style="height: 13.5pt"> <td colspan="6" height="18" style="height: 13.5pt"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl114" height="26" style="height: 20.1pt"><strong><font color="#000000">März</font></strong></td> <td class="xl114" style="border-left: medium none"><strong><font color="#000000">April</font></strong></td> <td class="xl114" style="border-left: medium none"><strong><font color="#000000">Mai</font></strong></td> <td class="xl114" style="border-left: medium none"><strong><font color="#000000">Juni</font></strong></td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl110" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl72" style="border-top: medium none">Jürgen Roßkamp</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Hendrik  Strump</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Stefan  Thesing</td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl110" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl145" style="border-top: medium none">Andy Bünte</td> <td class="xl72" style="border-top: medium none">Michael Raida</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Manni  Roßkamp</td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl112" height="26" style="height: 20.1pt; border-top: medium none"> </td> <td class="xl112" style="border-top: medium none"> </td> <td class="xl71" style="border-top: medium none"> </td> <td class="xl73" style="border-left: medium none; border-top: medium none">Norbert  Roßkamp</td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl96" colspan="4" height="26" style="height: 20.1pt"> </td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl113" height="26" style="height: 20.1pt"><strong><font color="#000000">Juli</font></strong></td> <td class="xl114"><strong><font color="#000000">August</font></strong></td> <td class="xl114" style="border-left: medium none"><strong><font color="#000000">September</font></strong></td> <td class="xl114" style="border-left: medium none"><strong><font color="#000000">Oktober</font></strong></td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl145" height="26" style="height: 20.1pt; border-top: medium none">Hendrik Strump</td> <td class="xl72" style="border-top: medium none">Rainer Hövelbrinks</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Stefan  Hüging</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Lukas  Robert</td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl145" height="26" style="height: 20.1pt; border-top: medium none">Chr.  Thesing#</td> <td class="xl72" style="border-top: medium none">Benny Sicking</td> <td class="xl72" style="border-left: medium none; border-top: medium none">Carsten  Deppe</td> <td class="xl70" style="border-left: medium none; border-top: medium none"> </td> <td colspan="2"> </td></tr> <tr height="26" style="height: 20.1pt"> <td class="xl147" height="26" style="height: 20.1pt; border-top: medium none">Martin  Hövelbrinks</td> <td class="xl73" style="border-top: medium none">Georg Mäsing</td> <td class="xl73" style="border-left: medium none; border-top: medium none">Daniel  Holtkamp</td> <td class="xl71" style="border-left: medium none; border-top: medium none"> </td> <td colspan="2"> </td></tr></tbody></table>', '', 1, 0, 0, 0, '2013-04-16 06:42:32', 62, '', '2013-04-16 06:45:31', 62, 0, '0000-00-00 00:00:00', '2013-04-16 06:42:32', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 6, '', '', 1, 10, 'robots=\nauthor='),
(143, 'Vorherige Saisons', 'vorherige-saisons', '', '_', '', 1, 0, 0, 0, '2013-04-16 06:51:18', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-04-16 06:51:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 5, '', '', 0, 675, 'robots=\nauthor='),
(144, 'HSV Wochenende', 'hsv-wochenende', '', '<p> </p><p>      Normal   0         21         false   false   false      DE   X-NONE   X-NONE                                                     MicrosoftInternetExplorer4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Normale Tabelle"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-priority:99; 	mso-style-qformat:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Calibri","sans-serif";}    </p><p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 28pt; color: red">HSV – WOCHENENDE</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 28pt; color: red">29/30. Juni 2013</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"> </p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><u><span style="font-size: 22pt">Samstag 29.06</span></u></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><u><span style="font-size: 10pt"><span style="text-decoration: none"> </span></span></u></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><u><span style="font-size: 18pt">Aufräumen und Saubermachen</span></u></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Beginn: 9:30 Uhr</span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 22pt; color: red">Freundschaftsspiel von der Jugendmannschaft</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Anstoß ca. 14:30 Uhr</span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 22pt; color: red">Fußballspiel: ALT – JUNG</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Anstoß ca. 16:30 Uhr</span></p>  <p style="margin-left: 36pt; text-align: center; text-indent: -18pt" class="MsoNoSpacing" align="center"><span style="font-size: 18pt; font-family: Wingdings"><span>è<span style="font: 7pt ''Times New Roman''">     </span></span></span><span style="font-size: 18pt">anschließend gemütlicher Ausklang</span></p>  <p style="margin-left: 36pt; text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><u><span style="font-size: 22pt">Sonntag 30.06</span></u></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><u><span style="font-size: 10pt"><span style="text-decoration: none"> </span></span></u></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><u><span style="font-size: 18pt">Aufräumen, saubermachen und aufbauen fürs Pokalturnier</span></u></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Treffen: 10 Uhr</span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 22pt; color: red">HSV Pokalturnier</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Turnierstart: 11 Uhr</span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 18pt">Siegerehrung ca. 17 Uhr</span></p>', '', 1, 1, 0, 1, '2013-06-26 11:45:25', 64, '', '0000-00-00 00:00:00', 0, 90, '2013-07-18 08:22:58', '2013-06-26 11:44:13', '2013-07-03 11:44:00', '', '', '', 1, 0, 6, '', '', 0, 17, ''),
(145, 'Meisterschaft 2013', 'meisterschaft-2013', '', '<img src="images/stories/sam_4665.jpg" border="0" /><p style="text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 72pt; line-height: 115%">HSV</span></strong></p>  <p style="text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 72pt; line-height: 115%">MEISTER</span></strong></p>  <p style="text-align: center" class="MsoNormal" align="center"><strong><span style="font-size: 72pt; line-height: 115%">2013</span></strong></p><p style="text-align: center" class="MsoNormal" align="center"><u><em><strong>Glückwunsch an Spieler und Trainer</strong></em></u></p><p style="text-align: center" class="MsoNormal" align="center">Die Meisterschaftsfeier findet am 28.09  </p><p style="text-align: center" class="MsoNormal" align="center">im Autohof in Weseke statt.</p><p style="text-align: center" class="MsoNormal" align="center"> </p>', '', 1, 1, 0, 1, '2013-09-20 13:00:36', 64, '', '2014-08-25 10:12:21', 64, 0, '0000-00-00 00:00:00', '2013-09-20 12:57:41', '2014-10-01 12:57:00', '', '', '', 5, 0, 4, '', '', 0, 292, ''),
(146, 'Tag der offenen Tür - Holthausener Schule', 'tag-der-offenen-tuer-holthausener-schule', '', '<p> </p><p>                                                                                                                                                                                                                                                                                                                                                                                                                                   /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Normale Tabelle"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-priority:99; 	mso-style-qformat:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman","serif";}    </p><p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Am kommenden Sonntag (9.02) findet in der Holthausener Schule der „Tag der offenen Tür“ statt.</span></p>    <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Los geht es am Sonntag ab 11 Uhr.</span></p>  <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Einen festen Ablaufplan für den Tag gibt es nicht…es soll locker und entspannt ablaufen</span></p>    <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Nach der Begrüßung und einigen Fakten und Daten zur Schule und zur Renovierung durch den Präsidenten des Schützenvereins</span><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> wird das Kuchenbuffet und die Theke „eröffnet“</span>  </p><p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Im Klassenzimmer wird Paul alte Bilder der Schule ausstellen und bei Bedarf auch einige Sätze dazu sagen.</span></p>  <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Im Laufe der Tages werden ebenfalls die Jagdhornbläser ihr Können unter Beweis stellen und die Besucher</span><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> mit lieblichen Klängen verwöhnen.</span>  </p><p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Ebenfalls werden über den Beamer Bilder vom Schützenfest, Veranstaltungen vom Sportverein usw. gezeigt.</span></p>      <p style="text-indent: -18pt" class="MsoListParagraph"><span style="font-size: 12pt; font-family: Wingdings"><span>è<span style="font: 7pt ''Times New Roman''"> </span></span></span><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">KKaffee, Kuchen, Schnittchen gegen Spende – alles andere (Würstchen und Getränke 1,00 €)</span></p>  <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNormal"><strong><u><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''; color: red">Der Verkauf der Getränke soll hauptsächlich durch Leute vom Sportverein erfolgen…</span></u></strong></p>  <p class="MsoNormal"><strong><u><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''; color: red">Deswegen bitte ich Euch möglichst zahlreich zu erscheinen und dann auch beim</span></u></strong></p>  <p class="MsoNormal"><strong><u><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''; color: red">Thekendienst zu helfen ! ! ! ! !</span></u></strong></p>    <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Aufbauen für den Tag der offenen Tür ist am Freitag ab 19:30 Uhr</span></p>    <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''">Ich hoffe viele von Euch am Sonntag in der Schule zu sehen – vor und hinter der Theke</span></p>  <p class="MsoNormal"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p><br /><p> </p>', '', 0, 1, 0, 1, '2014-02-06 10:32:48', 64, '', '2014-02-17 10:00:37', 64, 0, '0000-00-00 00:00:00', '2014-02-06 10:29:00', '2014-02-09 10:29:00', '', '', '', 2, 0, 3, '', '', 2, 0, ''),
(148, 'Rasenmäher 2014', 'rasenmaeher-2014', '', '<font size="3" color="#FF0000">Rasenplatz, Parkplätze am Kloaverblatt, Weg zum Schützenfestplatz</font> <table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="168" height="29" align="LEFT"> </td> 			<td width="168" align="LEFT"> </td> 			<td width="168" align="LEFT"> </td> 			<td width="168" align="LEFT"> </td> 		</tr> 		<tr> 			<td height="29" align="LEFT"> </td> 			<td align="LEFT"> </td> 			<td align="LEFT"> </td> 			<td align="LEFT"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>März</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>April</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>Mai</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>Juni</u></strong></td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Jürgenn Roßkamp</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Gomez</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Twix</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">N. Roßkamp</td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">XXX</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Manni Roßkamp</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Jan Storks</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">G. Mäsing</td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 3px solid #000000; border-left: 3px solid #000000">XXX</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 3px solid #000000; border-left: 3px solid #000000">Carsten Thiehoff</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">Hendrik Strump</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER"> </td> 			<td align="CENTER"> </td> 			<td align="CENTER"> </td> 			<td align="CENTER"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 3px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000"><strong><u>Juli</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>August</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>September</u></strong></td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000"><strong><u>Oktober</u></strong></td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Rainer Hövelbrinks</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Buddy</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Mäkkes</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Bernd Trepmann</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Dackel</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Hubsi</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 3px solid #000000; border-left: 3px solid #000000">Benny</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">Stiff</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">Sibbi</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">XXX</td> 		</tr> 	</tbody> </table>', '', 1, 0, 0, 0, '2014-02-15 16:56:11', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-02-15 16:56:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 11, 'robots=\nauthor='),
(147, 'Spieltabelle 2014', 'spieltabelle-2014', '', '<p>Die aktuelle Spieltabelle zur Saison 2014 befindet sich auf der <a href="http://www.liga-borken.de" target="_blank">Liga Seite</a>. </p><ul><li><a href="index.php?option=com_fussball&view=spiele&Itemid=101">Alle Spiele von Holthausen</a></li><li><a href="index.php?option=com_fussball&view=spielerliste&Itemid=103">Spielerliste von Holthausen</a> </li></ul>', '', 1, 0, 0, 0, '2014-02-15 16:47:02', 62, '', '2014-10-03 12:50:51', 62, 0, '0000-00-00 00:00:00', '2014-02-15 16:47:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 582, 'robots=\nauthor='),
(149, 'Kellnerliste 2014', 'kellnerliste-2014', '', '<table border="0" cellspacing="0"> 	 	<tbody> 		<tr> 			<td width="168" height="29" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000"><strong><font size="3">18.01.2014</font></strong></td> 			<td width="168" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000"><strong><font size="3">24.01.2014</font></strong></td> 			<td width="168" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000"><strong><font size="3">25.05.2014</font></strong></td> 			<td width="168" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000"><strong><font size="3">28/29.06.2014</font></strong></td> 			<td width="168" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000"><strong><font size="3">06.09.2014</font></strong></td> 			<td width="168" align="CENTER" style="border-top: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000"><strong><font size="3">06.09.2014</font></strong></td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-left: 3px solid #000000" bgcolor="#99CCFF"><strong>Generalversammlung</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Generalversammlung</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Schützenfest </strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000" bgcolor="#99CCFF"><strong>HSV</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Kinder</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Schützenfest-</strong></td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-bottom: 3px solid #000000; border-left: 3px solid #000000" bgcolor="#99CCFF"><strong>Sportverein</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Schützenverein</strong></td> 			<td align="CENTER" style="border-bottom: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Üben</strong></td> 			<td align="CENTER" style="border-left: 3px solid #000000" bgcolor="#99CCFF"><strong>Wochenende</strong></td> 			<td align="CENTER" style="border-bottom: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>Schützenfest</strong></td> 			<td align="CENTER" style="border-bottom: 3px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000" bgcolor="#99CCFF"><strong>nachfeier</strong></td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 3px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Manni Roßkamp</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Stefan Többer</td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000">Rainer Hövelbrinks</td> 			<td align="CENTER" style="border-width: 3px 3px 1px; border-style: solid; border-color: #000000">Mäkkes</td> 			<td align="CENTER" style="border-bottom: 1px solid #000000; border-left: 3px solid #000000">Gomez</td> 			<td align="CENTER" style="border-bottom: 1px solid #000000; border-left: 3px solid #000000; border-right: 3px solid #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Steffen Uphues</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Norbert Roßkamp</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Ludger Roßkamp</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Sibbi</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Benny</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000"> </td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Michael Raida</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Martin Hövelbrinks</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">Hubsi</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Jan Storks</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">XXX</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">XXX</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000">XXX</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 3px solid #000000">Stiff</td> 			<td align="CENTER" style="border-width: 1px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 		<tr> 			<td height="29" align="CENTER" style="border-top: 1px solid #000000; border-bottom: 3px solid #000000; border-left: 3px solid #000000">XXX</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">XXX</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000"> </td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000">XXX</td> 			<td align="CENTER" style="border-top: 1px solid #000000; border-bottom: 3px solid #000000; border-left: 3px solid #000000">Buddy</td> 			<td align="CENTER" style="border-width: 1px 3px 3px; border-style: solid; border-color: #000000"> </td> 		</tr> 	</tbody> </table>', '', 1, 0, 0, 0, '2014-02-15 16:58:34', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-02-15 16:58:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 10, 'robots=\nauthor='),
(150, 'WM 2014', 'wm-2014', '', '<p><u><strong>In ein paar Woche geht die Fußball WM 2014 los ! ! ! ! </strong></u></p><p>Unter der Rubrik "Termine" habe ich die Spieltermine der Vorrunde und die möglichen, weiteren Termine (Finalrunde)</p><p>der dt. Nationalmannschaft eingetragen ! ! ! ! ! ! !</p><p> </p><p>Selbstverständlich werden wir versuchen wieder zu jedem Spiel ein <strong><u>Public Viewing</u></strong> in der Holthausener Schule</p><p>zu veranstalten ! ! ! ! </p><p> </p><p>Nähere Infos dazu werden wir dann kurzfristig per Email, Aushang, WhatsApp bekannt geben. </p>', '', 0, 1, 0, 1, '2014-05-07 10:58:59', 64, '', '2014-07-24 06:39:54', 64, 0, '0000-00-00 00:00:00', '2014-05-06 23:00:00', '2014-07-12 23:00:00', '', '', '', 2, 0, 2, '', '', 0, 69, ''),
(151, 'HSV - WOCHENENDE', 'hsv-wochenende', '', '<p> </p><p> </p><p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 28pt; font-family: ''Arial'',''sans-serif''; color: red">HSV – Fußballwochenende</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 10pt; font-family: ''Arial'',''sans-serif''; color: red"> </span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 28pt; font-family: ''Arial'',''sans-serif''; color: red">28. + 29. Juni 2014</span></strong></p>  <p class="MsoNoSpacing"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><strong><u><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">Samstag</span></u></strong><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>            </span>10 Uhr<span>                 </span>Aufräumen + Aufbauen</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>                            </span>14:30 Uhr<span>  </span><span>         </span>Spiel der Jugendmannschaft</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>                            </span>16 Uhr<span>                 </span><strong>ALT – Jung</strong></span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p style="margin-left: 106.2pt; text-indent: 0.3pt" class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">Anschließend gemütlich Ausklang bei Fassbier und Schnitzel am Sportplatz ! ! ! ! !</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><strong><u><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">Sonntag</span></u></strong><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>             </span>10 Uhr<span>                 </span>Aufräumen + Aufbauen</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>                            </span>11 Uhr<span>                 </span><strong>HSV Pokalturnier</strong></span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p style="margin-left: 212.4pt; text-indent: -105.9pt" class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">ca. 17 Uhr <span>         </span>letzte Spiel anschließend Siegerehrung und gemütlicher Ausklang</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">Montag aufräumen und „Fass-leer-machen“</span></strong></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''">Kellnerdienst am Sonntag:<span>           </span>S. Sieverding</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>                                               </span><span>         </span>St. Hüging</span></p>  <p class="MsoNoSpacing"><span style="font-size: 14pt; font-family: ''Arial'',''sans-serif''"><span>                                               </span><span>         </span>C. Deppe</span></p>  <p class="MsoNoSpacing"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 24pt; font-family: ''Arial'',''sans-serif''; color: red">WIR LADEN ALLE RECHT HERZLICH ZU UNSEREM</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 24pt; font-family: ''Arial'',''sans-serif''; color: red">HSV – FUSSBALLWOCHENDE</span></strong></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><strong><span style="font-size: 24pt; font-family: ''Arial'',''sans-serif''; color: red">EIN</span></strong></p>  <p class="MsoNoSpacing"><span style="font-size: 12pt; font-family: ''Arial'',''sans-serif''"> </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 16pt; font-family: ''Arial'',''sans-serif''">Wir freuen uns auf zahlreiches erscheinen von</span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 16pt; font-family: ''Arial'',''sans-serif''">Freunden und Gästen </span></p>  <p style="text-align: center" class="MsoNoSpacing" align="center"><span style="font-size: 16pt; font-family: ''Arial'',''sans-serif''">am Vereinshaus in Holthausen – Bleking</span></p>  <p class="MsoNoSpacing"> </p>  <p> </p>', '', 0, 1, 0, 1, '2014-06-12 14:40:52', 64, '', '2014-07-24 06:39:41', 64, 0, '0000-00-00 00:00:00', '2014-06-12 14:39:53', '2014-06-30 14:39:00', '', '', '', 3, 0, 1, '', '', 0, 16, ''),
(152, 'Spieltabelle 2015', 'spieltabelle-2015', '', '<p>Die aktuelle Spieltabelle zur Saison 2015 befindet sich auf der <a href="http://www.liga-borken.de" target="_blank">Liga Seite</a>. </p><ul><li><a href="index.php?option=com_fussball&view=spiele&Itemid=105">Alle Spiele von Holthausen</a></li><li><a href="index.php?option=com_fussball&view=spielerliste&Itemid=107">Spielerliste von Holthausen</a> </li></ul>', '', 1, 0, 0, 0, '2014-02-15 16:47:02', 62, '', '2014-12-22 18:18:31', 62, 0, '0000-00-00 00:00:00', '2014-02-15 16:47:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 122, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ;

--
-- Daten für Tabelle `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(48, 23),
(102, 20),
(46, 24),
(107, 19),
(145, 1),
(144, 2),
(109, 18),
(77, 22),
(78, 21),
(110, 17),
(119, 13),
(112, 16),
(113, 15),
(114, 14),
(120, 12),
(124, 11),
(125, 10),
(126, 9),
(138, 4),
(128, 8),
(132, 7),
(133, 6),
(139, 3),
(137, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(150) NOT NULL DEFAULT ''
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
`id` int(11) NOT NULL,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=59 ;

--
-- Daten für Tabelle `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Manfred Rosskamp', 0),
(11, 'users', '63', 0, 'Patrick Schlautmann', 0),
(12, 'users', '64', 0, 'Michael Raida', 0),
(13, 'users', '65', 0, 'Norbert Roßkamp', 0),
(14, 'users', '66', 0, 'Sebastian Sieverding', 0),
(15, 'users', '67', 0, 'Ludger Roßkamp', 0),
(16, 'users', '68', 0, 'Lukas', 0),
(17, 'users', '69', 0, 'Deborah', 0),
(18, 'users', '70', 0, 'Sven Böing', 0),
(19, 'users', '71', 0, 'Daniel Holtkamp', 0),
(20, 'users', '72', 0, 'Stefan Hüging', 0),
(21, 'users', '73', 0, 'Benny', 0),
(22, 'users', '74', 0, 'Jürgen Roßkamp', 0),
(27, 'users', '79', 0, 'Hövelbrinks', 0),
(25, 'users', '77', 0, 'hendrik', 0),
(28, 'users', '80', 0, 'Robert', 0),
(29, 'users', '81', 0, 'Tommy', 0),
(30, 'users', '82', 0, 'Carsten', 0),
(48, 'users', '100', 0, 'SugihMiriam', 0),
(32, 'users', '84', 0, 'Alexander Kerkhoff', 0),
(33, 'users', '85', 0, 'Markus Eichhorn', 0),
(34, 'users', '86', 0, 'Thesing', 0),
(35, 'users', '87', 0, 'Schlottbom, Michael', 0),
(36, 'users', '88', 0, 'Jan Storks', 0),
(49, 'users', '101', 0, 'MarzecHuey', 0),
(38, 'users', '90', 0, 'michael trepmann', 0),
(47, 'users', '99', 0, 'Andreas Schlüter', 0),
(50, 'users', '102', 0, 'ShirinMarcella', 0),
(51, 'users', '103', 0, 'MaureenHuong', 0),
(52, 'users', '104', 0, 'TakiraJanaka', 0),
(53, 'users', '105', 0, 'MartensX', 0),
(54, 'users', '106', 0, 'christian', 0),
(55, 'users', '107', 0, 'kevin', 0),
(56, 'users', '108', 0, 'Jaleb Norrio', 0),
(57, 'users', '109', 0, 'Christian Bone', 0),
(58, 'users', '110', 0, 'Chris Bartholme', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT ''
) AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
`section_id` int(11) NOT NULL,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0'
) ;

--
-- Daten für Tabelle `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(18, '', 15),
(18, '', 16),
(18, '', 17),
(18, '', 18),
(18, '', 20),
(18, '', 21),
(18, '', 22),
(18, '', 25),
(18, '', 27),
(18, '', 28),
(18, '', 29),
(18, '', 30),
(18, '', 32),
(18, '', 33),
(18, '', 34),
(18, '', 35),
(18, '', 36),
(18, '', 47),
(18, '', 48),
(18, '', 49),
(18, '', 50),
(18, '', 51),
(18, '', 52),
(18, '', 53),
(18, '', 54),
(18, '', 55),
(18, '', 56),
(18, '', 57),
(18, '', 58),
(21, '', 14),
(23, '', 19),
(24, '', 12),
(24, '', 38),
(25, '', 10),
(25, '', 11),
(25, '', 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` text NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_easybook`
--

CREATE TABLE IF NOT EXISTS `jos_easybook` (
`id` int(10) NOT NULL,
  `gbip` varchar(15) NOT NULL DEFAULT '',
  `gbname` varchar(40) NOT NULL DEFAULT '',
  `gbmail` varchar(60) DEFAULT NULL,
  `gbmailshow` tinyint(1) NOT NULL DEFAULT '1',
  `gbloca` varchar(50) DEFAULT NULL,
  `gbpage` varchar(150) DEFAULT NULL,
  `gbvote` int(10) DEFAULT NULL,
  `gbtext` text NOT NULL,
  `gbdate` datetime DEFAULT NULL,
  `gbcomment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `gbicq` varchar(20) DEFAULT NULL,
  `gbaim` varchar(50) DEFAULT NULL,
  `gbmsn` varchar(50) DEFAULT NULL,
  `gbyah` varchar(50) DEFAULT NULL,
  `gbskype` varchar(50) DEFAULT NULL
) AUTO_INCREMENT=247 ;

--
-- Daten für Tabelle `jos_easybook`
--

INSERT INTO `jos_easybook` (`id`, `gbip`, `gbname`, `gbmail`, `gbmailshow`, `gbloca`, `gbpage`, `gbvote`, `gbtext`, `gbdate`, `gbcomment`, `published`, `gbicq`, `gbaim`, `gbmsn`, `gbyah`, `gbskype`) VALUES
(4, '80.140.212.66', 'Heiner S.', 'heiner.sunderhaus@gmx.de', 1, '', '', 5, 'Joa Manni haste ganz ordentlich gemacht ;), hat Sibbi wohl recht, sollte man vielleicht beim nächsten Training von jedem mal nen Foto machen für die Hp für den aktuellen Kader......', '2008-02-17 19:07:19', NULL, 1, '', '', '', '', ''),
(2, '91.0.164.109', 'Rossi', 'nr@altergarten4.de', 1, '', '', 0, 'Sieht doch schon ganz ordentlich aus.', '2008-02-04 17:17:31', NULL, 1, '', '', '', '', ''),
(3, '87.139.55.26', 'Sibbi', 'ssieverding@kassen-partner.de', 1, '', 'www.dedoennemanns.de', 0, 'Das meine ich auch!\r\nKönnte/Sollte man nich vielleicht auch nen bisl über unsere Mannschaft schreiben? Aktueller Kader oder so?!?\r\n\r\nschönes WE\r\nmfg\r\nSibbi 8) ', '2008-02-08 10:43:37', NULL, 1, '', '', '', '', ''),
(5, '217.86.157.120', 'Manni', 'manfred.rosskamp@web.de', 1, '', '', 0, 'Die Fotos sollte man vielleicht besser vor einem Spiel machen, damit die Spieler auch Trikos anhaben.', '2008-02-18 09:04:13', NULL, 1, '', '', '', '', ''),
(6, '62.226.88.65', 'Sven B.', 'svenB.1992@web.de', 1, '', '', 2, 'Hi Manni dickes loob  ;)  hast die hp echt gut hinbekommen. Vielleicht kann man die seite noch etwas erneuern wie fotos usw. aber das hat ja noch zeit ist ja schon gut das es überhaupt eine hp gibt haut rein 8) ', '2008-02-19 08:10:50', NULL, 1, '', '', '', '', ''),
(7, '80.140.82.98', 'Benny', 'bennysicking@web.de', 1, '', '', 0, 'moin moin,\r\n\r\nfind die Hp auch wohl ganz gut vllt kann man di noch ein bisschen übersichtlicher gestalten oder so ...\r\nwäre auch dafür das drauf steht wer wie viele Spiele/Tore/Trainingseinheiten u.s.w. hat !! kannste dir ja mal überlegen ne  ;)  aber sonst echt gut gemacht .... 8)  gruß benny   :grin ', '2008-02-19 13:34:20', NULL, 1, '', '', '', '', ''),
(8, '80.140.123.88', 'Buddy', 'buddy-h@gmx.de', 1, '', '', 0, 'Mahlzeit, ich bin für die schwarzen oder die blauen Anzüge.Wird mal zeit das da was kommt! Bis dan buddy', '2008-02-28 15:01:15', NULL, 1, '', '', '', '', ''),
(9, '91.0.238.9', 'Mäkkes', 'carsten-deppe@t-online.de', 1, '', 'www.dedoennemanns.de', 0, 'Mahlzeit !!!\r\n\r\nHabt ihr echt gut hinbekommen die Seite ! Dickes Lob!!!\r\n\r\nWollt noch mal kurz sagen das ich für Namen auf den Anzügen bin, aber das hab ich ja gestern schon mehrmals gesagt  ;) ', '2008-03-05 16:30:18', NULL, 1, '', '', '', '', ''),
(10, '91.56.100.84', 'Twix', 'twix.raida@gmx.de', 1, '', '', 0, 'Klasse, die neue Umfrage ! ! ! !', '2008-03-05 21:19:03', NULL, 1, '', '', '', '', ''),
(13, '91.0.137.16', 'Rossi', 'nr@altergarten4.de', 1, '', '', 0, 'Habe einen neuen Menüpunkt Saison 2008 hinzugefügt. Hier werden die Spieleberichte und Statistiken der Saison angezeigt. \r\nHoffe das Buddy das immer recht aktuell hält ;-)', '2008-03-22 14:53:50', NULL, 1, '', '', '', '', ''),
(14, '80.140.74.134', 'Buddy', 'buddy-h@gmx.de', 1, '', '', 0, 'Ich werds versuchen rossi ;) ', '2008-03-23 16:48:36', NULL, 1, '', '', '', '', ''),
(15, '91.56.92.89', 'hendrik', 'h.dirking@gmx.de', 1, '', '', 5, 'hey echt geile hp! habter richtig gut hinbekommen!   ;)  dickes lob! henne', '2008-04-27 12:42:25', NULL, 1, '', '', '', '', ''),
(16, '91.0.172.70', 'Patrick', 'patrick@schlautmanns.de', 1, '', '', 0, 'Mahlzeit! gleich wird gesoffen 8)  und zwar 3 Tage lang. Also bis glixx ', '2008-04-30 15:01:55', NULL, 1, '', '', '', '', ''),
(17, '192.168.2.145', 'Manni', 'manfred.rosskamp@web.de', 1, '', '', 0, 'Schützenfest ist leider vorbei. Aber dafür hab ichs geschafft schonmal die Spieler-Fotos reinzusetzten. Man müsste die dann nur noch mit den Spielern verknüpfen (Vielleicht mit Steckbriefen?) \r\nWir müssen aber demnächst noch wieder Fotos machen, da nicht alle dabei waren.', '2008-05-03 13:42:01', NULL, 1, '', '', '', '', ''),
(18, '91.56.119.70', 'Buddy', 'buddy-h@gmx.de', 1, '', '', 0, 'Moin,Moin!\r\nIch habe jetzt auch alle Tunierspiele eingetragen. Die Torschützen passen zwar nicht zu den Spielen, aber ich denke das is eh nich so wichtig, da eh nur die Gesamtstatisik zählt. Hoffe ihr seid zufrieden (besonders Benny). ', '2008-06-20 14:58:04', NULL, 1, '', '', '', '', ''),
(19, '89.247.169.238', 'Ike', 'eichhorn-ike@gmx.de', 1, '', '', 0, 'Moin Moin,\r\n\r\nmorgen 14 Uhr Treffen war richtig??\r\nWir wollen ja nichts verpassen.\r\n', '2008-07-25 14:33:25', NULL, 1, '', '', '', '', ''),
(20, '192.168.2.145', 'Manni', 'manfred.rosskamp@web.de', 1, '', '', 0, 'Joh, Treffen ist um 14:00 Uhr an der Holthausener Schule', '2008-07-26 09:47:16', NULL, 1, '', '', '', '', ''),
(23, '91.0.172.213', 'Patrick Schlautmann', 'patrick@schlautmanns.de', 1, '', '', 0, 'moin jungs! ich hoffe mal samstag seid ihr auch alle dabei! Also ich bin wieder fit und hoffe mal das wir richtig geil mit drei Punkten in den Abend starten können. also bis dann!', '2008-10-14 19:49:42', NULL, 1, '', '', '', '', ''),
(22, '62.226.109.228', 'ze (für benny auch see)', 'm.trepmann@google.de', 1, '', '', 4, 'cosmos 0!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\r\nhsv 4 8)  8)  8)  8)  8) ', '2008-08-29 13:57:42', NULL, 1, '', '', '', '', ''),
(27, '91.56.101.39', 'hendrik', 'h.dirking@gmx.de', 1, '', '', 0, 'moin moin asllen ein frohes neues jahr! bis denne! henne 8) ', '2009-01-01 15:41:05', NULL, 1, '', '', '', '', ''),
(28, '192.168.178.23', 'Rossi', 'nr@altergarten4.de', 1, '', '', 0, 'Endlich wieder draußen Training! Hoffe auf gute Beteiligung trotz mäßigem Wetter.. ', '2009-02-25 18:53:31', NULL, 1, '', '', '', '', ''),
(29, '192.168.178.23', 'Twix', 'M.Raida@t-online.de', 1, '', '', 0, 'Ja was war denn gestern mit den "schönwetter" Fussballern der Ü 30 los ? ? ? ?\r\nLicht an - Licht aus und keinen auf dem Platz gesehen...  :p ', '2009-02-27 08:42:20', NULL, 1, '', '', '', '', ''),
(30, '192.168.178.23', 'Mäkkes', 'carsten-deppe@t-online.de', 1, '', '', 0, 'Freu mich auch endlich wieder draußen Training !!!! Kann sein das ich etwas später komme weil ich noch keine Zeit hatte mir laufschuhe zu kaufen  ;) ', '2009-03-01 13:41:16', NULL, 1, '', '', '', '', ''),
(31, '192.168.178.23', '???', 'm.raida@t-online.de', 1, '', '', 5, ' :upset wann kommt heiner mal zum Jugendtraining ', '2009-04-15 09:08:07', NULL, 1, '', '', '', '', ''),
(32, '192.168.178.23', 'Rossi', 'n-ross@gmx.de', 1, '', '', 0, 'Noch 6 mal Schlafen, dann ist Schützenfest  :) ', '2009-05-14 08:27:02', NULL, 1, '', '', '', '', ''),
(33, '192.168.178.23', 'Manni', 'manfred.rosskamp@web.de', 1, '', '', 0, 'Das Zelt steht  :grin ', '2009-05-14 18:21:03', NULL, 1, '', '', '', '', ''),
(34, '192.168.178.23', 'Mäkkes', 'carsten-deppe@t-online.de', 1, '', '', 0, 'Ey Buddy da fehlen glauch ich noch wohl Tore und meine Gelbe Karte von Timpen;-)', '2009-08-05 16:20:56', NULL, 1, '', '', '', '', ''),
(35, '192.168.178.23', 'Rossi', 'nr@gmx.de', 1, '', '', 0, 'Tach Leute,\r\nbald geht''s auf Spielerfahrt (6.-8. November). Bitte an alle die, die mitfahren und die noch nicht bezahlt haben: Geld überweisen!', '2009-08-25 09:00:13', NULL, 1, '', '', '', '', ''),
(36, '192.168.178.23', 'Mäkkes', 'carsten-deppe@t-online.de', 1, '', 'www.dedoennemanns.de', 0, 'Tach Buddy !\r\nHoffe du denkst noch daran das Spiel gegen Brinker einzutragen .\r\nBes de Daage :zzz ', '2009-09-01 19:28:48', NULL, 1, '', '', '', '', ''),
(37, '192.168.178.23', 'IKÄÄ', 'eichhorn-ike@gmx.de', 1, '', '', 0, 'Wie oft müssen wir noch schlafen, bis zur großen Tour?????????? :p  :p  :p ', '2009-09-17 19:34:41', NULL, 1, '', '', '', '', ''),
(41, '192.168.178.23', 'Rossi', 'n-ross@gmx.de', 1, '', '', 0, 'Ab heute noch 53 mal Schlafen!', '2009-10-12 16:35:56', NULL, 1, '', '', '', '', ''),
(46, '192.168.178.23', 'buddy', 'buddy-h@gmx.de', 1, '', '', 0, 'morgen gehts los!!', '2009-11-05 13:23:16', NULL, 1, '', '', '', '', ''),
(216, '0.0.0.0', 'Rossi', '', 1, '', NULL, 0, '[B]Schützenfest![/B] Ist nicht mehr weit! Mit dem Zählen überlasse ich diesmal anderen..', '2010-04-20 16:11:30', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(217, '0.0.0.0', 'buddy', 'buddy-h@gmx.de', 1, '', NULL, 0, 'Es steht ein Zelt!! :grin ', '2010-05-06 16:09:44', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(227, '0.0.0.0', 'Jürgen', '', 1, 'Neuseeland', NULL, 0, 'viele Grüße aus Neuseeland!', '2010-08-08 06:32:12', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(230, '0.0.0.0', 'IKE', 'eichhorn-ike@gmx.de', 1, 'Holthausen', NULL, 0, 'Frohe Weihnachten und einen guten Rutsch ins neue Jahr.', '2010-12-23 20:51:38', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(232, '0.0.0.0', 'Gomez', '', 1, '', NULL, 0, 'Tabelle:\r\nhttp://www.fc-cosmos-weseke.de.tl/Tabelle-2011.htm\r\nsieht gut aus  :) ', '2011-06-07 12:46:00', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(233, '0.0.0.0', 'Rossi', '', 1, '', NULL, 0, 'Buddy, wir warten alle sensüchtig auf die Ergenisse der Saison 2011 ...', '2011-06-23 07:57:21', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(234, '0.0.0.0', 'Manni', '', 1, '', NULL, 0, 'Rossi, gute Beiträge von dir zum Jubiläum. Nur hätteste auch erwähnen können, dass die Junggesellen mit 5:3 und deutlich mehr Torchancen gewonnen haben ;)', '2011-07-03 12:29:52', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(235, '0.0.0.0', 'Buddy', '', 1, '', NULL, 0, 'So ich habe mal angefangen die spiele einzutragen, ', '2011-07-04 15:36:26', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(236, '0.0.0.0', 'gomez', '', 1, '', NULL, 0, 'buddy dat sind noch lange nicht alle! ***', '2011-07-06 14:55:28', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(245, '0.0.0.0', 'buddy', 'buddy-h@gmx.de', 1, '', NULL, 0, 'schöne grüße an den hsv aus dem sonnigen florida..... 8)  8)  8) ', '2012-03-15 17:08:58', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(238, '0.0.0.0', 'Gomez', '', 1, '', NULL, 0, 'MEISTER!!!!', '2011-08-30 13:52:51', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(239, '0.0.0.0', 'Mäkkes', '', 1, '', NULL, 0, ' :grin  :grin  :grin  :grin  :grin  :grin  :grin  :grin \r\nMEISTER :grin  :grin  :grin  :grin  :grin  :grin  :grin ', '2011-08-30 16:23:14', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(240, '0.0.0.0', 'Mäkkes', '', 1, '', NULL, 0, ' :grin  :grin  :grin  :grin  :grin  :grin  :grin  :grin \r\nMEISTER :grin  :grin  :grin  :grin  :grin  :grin  :grin ', '2011-08-30 16:23:19', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(241, '0.0.0.0', 'Mäkkes', '', 1, '', NULL, 0, ' :grin  :grin  :grin  :grin  :grin  :grin  :grin  :grin \r\nMEISTER :grin  :grin  :grin  :grin  :grin  :grin  :grin ', '2011-08-30 16:23:21', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(242, '0.0.0.0', 'Buddy', '', 1, '', NULL, 0, 'ungeschlagen..... :grin  :grin  :grin  8)  8)  :grin  :grin  8)  8)  8) ', '2011-09-27 19:48:16', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(243, '0.0.0.0', 'Der Papst', '', 1, 'Holthausen', NULL, 0, 'Oh Ladies\r\nder Abend gestern war so schön mit euch... ich denke wir haben unsere Meisterschaft zum dritten mal hervoragend gefeiert.... und das war nicht das letzte mal...gruß :upset ', '2011-10-09 18:13:20', NULL, 1, NULL, NULL, NULL, NULL, NULL),
(244, '0.0.0.0', 'Mäkkes', 'carsten-deppe@t-online.de', 1, '', NULL, 0, 'Hi Leute ! \r\nWollt nur kurz bekannt geben das wir uns am Freitag um 12.00 Uhr treffen es geht so ca. um 13.00 Uhr dann mit dem Bus los richtung Willingen !!!\r\n\r\nBis denn ', '2011-10-31 11:40:32', NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_easybook_badwords`
--

CREATE TABLE IF NOT EXISTS `jos_easybook_badwords` (
`id` int(10) NOT NULL,
  `word` varchar(255) NOT NULL DEFAULT ''
) AUTO_INCREMENT=534 ;

--
-- Daten für Tabelle `jos_easybook_badwords`
--

INSERT INTO `jos_easybook_badwords` (`id`, `word`) VALUES
(2, 'analdrilling'),
(3, '20six'),
(4, 'ndsfrwudG'),
(5, 'Tadalafil'),
(6, 'hosting'),
(7, 'avacor'),
(8, 'gation'),
(9, 'ruptcy'),
(10, 'obli'),
(11, 'morta'),
(12, 'remoV'),
(13, 'fffd5'),
(14, 'ffffd5'),
(15, 'Wavefrt'),
(16, 'Cialis'),
(17, 'eyebrow-upper-left-corner'),
(18, 'B0000AZJVC'),
(19, 'right-topnav-default-2'),
(20, 'edit1'),
(21, 'display-variation'),
(22, 'erection'),
(23, 'wvvvvv'),
(24, 'mpage.jp'),
(25, '20six.de'),
(26, 'o o o o o o o o o o o o o'),
(27, 'aasgeier'),
(28, 'abspritzer'),
(29, 'sdfds'),
(30, 'ackerfresse'),
(31, 'affenarsch'),
(32, 'affenhirn'),
(33, 'affenkotze'),
(34, 'afterlecker'),
(35, 'aktivex.info'),
(36, 'almosenarsch'),
(37, 'amazing'),
(38, 'am-sperma-riecher'),
(39, 'anal*'),
(40, 'analadmiral'),
(41, 'analbesamer'),
(42, 'analbohrer'),
(43, 'analdrill'),
(44, 'analentjungferer'),
(45, 'analerotiker'),
(46, 'analfetischist'),
(47, 'analförster'),
(48, 'anal-frosch'),
(49, 'analnegerdildo'),
(50, 'analratte'),
(51, 'analritter'),
(52, 'aok-chopper'),
(53, 'armleuchter'),
(54, 'arsch'),
(55, 'arschaufreißer'),
(56, 'arschbackenschänder'),
(57, 'arschbesamer'),
(58, 'ärsche'),
(59, 'arschentjungferer'),
(60, 'arschficker'),
(61, 'arschgeburt'),
(62, 'arschgefickte gummifotze'),
(63, 'arschgeige'),
(64, 'arschgesicht'),
(65, 'arschhaarfetischist'),
(66, 'arschhaarrasierer'),
(67, 'arschhöhlenforscher'),
(68, 'arschkrampe'),
(69, 'arschkratzer'),
(70, 'arschlecker'),
(71, 'arschloch'),
(72, 'arschlöcher'),
(73, 'arschmade'),
(74, 'arschratte'),
(75, 'arschzapfen'),
(76, 'arsebandit'),
(77, 'arsehole'),
(78, 'arsejockey'),
(79, 'arselicker'),
(80, 'arsenuts'),
(81, 'arsewipe'),
(82, 'assel'),
(83, 'assfuck'),
(84, 'assfucking'),
(85, 'assgrabber'),
(86, 'asshol'),
(87, 'asshole'),
(88, 'asshole'),
(89, 'assi'),
(90, 'assrammer'),
(91, 'assreamer'),
(92, 'asswipe'),
(93, 'astlochficker'),
(94, 'auspufflutscher'),
(95, 'bad motherfucker'),
(96, 'badass'),
(97, 'badenutte'),
(98, 'bananenstecker'),
(99, 'bastard'),
(100, 'bastard'),
(101, 'bauernschlampe'),
(102, 'beating the meat'),
(103, 'beef curtains'),
(104, 'beef flaps'),
(105, 'behindis'),
(106, 'bekloppter'),
(107, 'muttergeficktes'),
(108, 'beklopter'),
(109, 'bettnässer'),
(110, 'betrüger'),
(111, 'Betrüger'),
(112, 'bettpisser'),
(113, 'bettspaltenficker'),
(114, 'biatch'),
(115, 'bimbo'),
(116, 'bitch'),
(117, 'bitches'),
(118, 'bitchnutte'),
(119, 'bitsch'),
(120, 'bizzach'),
(121, 'blechfotze'),
(122, 'blödmann'),
(123, 'blogspoint'),
(124, 'blow job'),
(125, 'bohnenfresser'),
(126, 'boob'),
(127, 'boobes'),
(128, 'boobie'),
(129, 'boobies'),
(130, 'boobs'),
(131, 'booby'),
(132, 'boy love'),
(133, 'breasts'),
(134, 'brechfurz'),
(135, 'bückfleisch'),
(136, 'bückstück'),
(137, 'bückvieh'),
(138, 'buggery'),
(139, 'bullensohn'),
(140, 'bullshit'),
(141, 'bummsen'),
(142, 'bumsen'),
(143, 'bumsklumpen'),
(144, 'buschnutte'),
(145, 'busty'),
(146, 'butt pirate'),
(147, 'buttfuc'),
(148, 'buttfuck'),
(149, 'buttfucker'),
(150, 'buttfucking'),
(151, 'carpet muncher'),
(152, 'carpet munchers'),
(153, 'carpetlicker'),
(154, 'carpetlickers'),
(155, 'chausohn'),
(156, 'clitsuck'),
(157, 'clitsucker'),
(158, 'clitsucking'),
(159, 'cock'),
(160, 'cock sucker'),
(161, 'cockpouch'),
(162, 'cracka'),
(163, 'crap'),
(164, 'craper'),
(165, 'crapers'),
(166, 'crapping'),
(167, 'craps'),
(168, 'cunt'),
(169, 'cunt'),
(170, 'cunts'),
(171, 'dachlattengesicht'),
(172, 'dackelficker'),
(173, 'dickhead'),
(174, 'dicklicker'),
(175, 'diplomarschloch'),
(176, 'doofi'),
(177, 'douglette'),
(178, 'drecksack'),
(179, 'drecksau'),
(180, 'dreckschlitz'),
(181, 'dreckschüppengesicht'),
(182, 'drecksfotze'),
(183, 'drecksmösendagmar'),
(184, 'drecksnigger'),
(185, 'drecksnutte'),
(186, 'dreckspack'),
(187, 'dreckstürke'),
(188, 'dreckvotze'),
(189, 'dumbo'),
(190, 'dummschwätzer'),
(191, 'dumpfbacke'),
(192, 'dünnpfifftrinker'),
(193, 'eichellecker'),
(194, 'eierkopf'),
(195, 'eierlutscher'),
(196, 'eiswürfelpisser'),
(197, 'ejaculate'),
(198, 'entenfisterer'),
(199, 'epilepi'),
(200, 'epilepis'),
(201, 'epileppis'),
(202, 'fagette'),
(203, 'fagitt'),
(204, 'fäkalerotiker'),
(205, 'faltenficker'),
(206, 'fatass'),
(207, 'ferkelficker'),
(208, 'ferkel-ficker'),
(209, 'fettarsch'),
(210, 'fettsack'),
(211, 'fettsau'),
(212, 'feuchtwichser'),
(213, 'fick'),
(214, 'fick*'),
(215, 'fickarsch'),
(216, 'fickdreck'),
(217, 'ficken'),
(218, 'ficker'),
(219, 'fickfehler'),
(220, 'fickfetzen'),
(221, 'fickfresse'),
(222, 'fickfrosch'),
(223, 'fickfucker'),
(224, 'fickgelegenheit'),
(225, 'fickgesicht'),
(226, 'fickmatratze'),
(227, 'ficknudel'),
(228, 'ficksau'),
(229, 'fickschlitz'),
(230, 'fickschnitte'),
(231, 'fickschnitzel'),
(232, 'fingerfuck'),
(233, 'fingerfucking'),
(234, 'fisch-stinkender hodenfresser'),
(235, 'fistfuck'),
(236, 'fistfucking'),
(237, 'flachtitte'),
(238, 'flussfotze'),
(239, 'fotze'),
(240, 'fotzenforscher'),
(241, 'fotzenfresse'),
(242, 'fotzenknecht'),
(243, 'fotzenkruste'),
(244, 'fotzenkuchen'),
(245, 'fotzenlecker'),
(246, 'fotzenlöckchen'),
(247, 'fotzenpisser'),
(248, 'fotzenschmuser'),
(249, 'fotzhobel'),
(250, 'frisösenficker'),
(251, 'frisösenfotze'),
(252, 'fritzfink'),
(253, 'froschfotze'),
(254, 'froschfotzenficker'),
(255, 'froschfotzenleder'),
(256, 'fuck'),
(257, 'fucked'),
(258, 'fucker'),
(259, 'fucker'),
(260, 'fucking'),
(261, 'fuckup'),
(262, 'fudgepacker'),
(263, 'futtgesicht'),
(264, 'gay lord'),
(265, 'geilriemen'),
(266, 'gesichtsfotze'),
(267, 'göring'),
(268, 'großmaul'),
(269, 'gummifotzenficker'),
(270, 'gummipuppenbumser'),
(271, 'gummisklave'),
(272, 'hackfresse'),
(273, 'hafensau'),
(274, 'hartgeldhure'),
(275, 'heil hitler'),
(276, 'hi hoper'),
(277, 'hinterlader'),
(278, 'hirni'),
(279, 'hitler'),
(280, 'hodenbeißer'),
(281, 'hodensohn'),
(282, 'homo'),
(283, 'hosenpisser'),
(284, 'hosenscheißer'),
(285, 'hühnerficker'),
(286, 'huhrensohn'),
(287, 'hundeficker'),
(288, 'hundesohn'),
(289, 'hurenlecker'),
(290, 'hurenpeter'),
(291, 'hurensohn'),
(292, 'hurentocher'),
(293, 'idiot'),
(294, 'idioten'),
(295, 'itakker'),
(296, 'ittaker'),
(297, 'jack off'),
(298, 'jackass'),
(299, 'jackshit'),
(300, 'jerk off'),
(301, 'jizz'),
(302, 'judensau'),
(303, 'kackarsch'),
(304, 'kacke'),
(305, 'kacken'),
(306, 'kackfass'),
(307, 'kackfresse'),
(308, 'kacknoob'),
(309, 'kaktusficker'),
(310, 'kanacke'),
(311, 'kanake'),
(312, 'kanaken'),
(313, 'kanaldeckelbefruchter'),
(314, 'kartoffelficker'),
(315, 'kinderficken'),
(316, 'kinderficker'),
(317, 'kinderporno'),
(318, 'kitzler fresser'),
(319, 'klapposkop'),
(320, 'klolecker'),
(321, 'klötenlutscher'),
(322, 'knoblauchfresser'),
(323, 'konzentrationslager'),
(324, 'kotgeburt'),
(325, 'kotnascher'),
(326, 'kümmeltürke'),
(327, 'kümmeltürken'),
(328, 'lackaffe'),
(329, 'lebensunwert'),
(330, 'lesbian'),
(331, 'lurchi'),
(332, 'lustbolzen'),
(333, 'lutscher'),
(334, 'magerschwanz'),
(335, 'manwhore'),
(336, 'masturbate'),
(337, 'meat puppet'),
(338, 'missgeburt'),
(339, 'mißgeburt'),
(340, 'mistsau'),
(341, 'miststück'),
(342, 'mitternachtsficker'),
(343, 'mohrenkopf'),
(344, 'mokkastübchenveredler'),
(345, 'mongo'),
(346, 'möse'),
(347, 'mösenficker'),
(348, 'mösenlecker'),
(349, 'mösenputzer'),
(350, 'möter'),
(351, 'mother fucker'),
(352, 'mother fucking'),
(353, 'motherfucker'),
(354, 'muschilecker'),
(355, 'muschischlitz'),
(356, 'mutterficker'),
(357, 'nazi'),
(358, 'nazis'),
(359, 'neger'),
(360, 'nigga'),
(361, 'nigger'),
(362, 'niggerlover'),
(363, 'niggers'),
(364, 'niggerschlampe'),
(365, 'nignog'),
(366, 'nippelsauger'),
(367, 'nutte'),
(368, 'nuttensohn'),
(369, 'nuttenstecher'),
(370, 'nuttentochter'),
(371, 'ochsenpimmel'),
(372, 'ölauge'),
(373, 'oral sex'),
(374, 'penis licker'),
(375, 'penis licking'),
(376, 'penis sucker'),
(377, 'penis sucking'),
(378, 'penis'),
(379, 'peniskopf'),
(380, 'penislecker'),
(381, 'penislutscher'),
(382, 'penissalat'),
(383, 'penner'),
(384, 'pferdearsch'),
(385, 'phentermine'),
(386, 'pimmel'),
(387, 'pimmelkopf'),
(388, 'pimmellutscher'),
(389, 'pimmelpirat'),
(390, 'pimmelprinz'),
(391, 'pimmelschimmel'),
(392, 'pimmelvinni'),
(393, 'pindick'),
(394, 'piss off'),
(395, 'piss'),
(396, 'pissbirne'),
(397, 'pissbotte'),
(398, 'pisse'),
(399, 'pisser'),
(400, 'pissetrinker'),
(401, 'pissfisch'),
(402, 'pissflitsche'),
(403, 'pissnelke'),
(404, 'polacke'),
(405, 'polacken'),
(406, 'poop'),
(407, 'popellfresser'),
(408, 'popostecker'),
(409, 'popunterlage'),
(410, 'porn'),
(411, 'porno'),
(412, 'pornografie'),
(413, 'pornoprengel'),
(414, 'pottsau'),
(415, 'prärieficker'),
(416, 'prick'),
(417, 'quiff'),
(418, 'randsteinwichser'),
(419, 'rasierte votzen'),
(420, 'rimjob'),
(421, 'rindsriemen'),
(422, 'ritzenfummler'),
(423, 'rollbrooden'),
(424, 'roseten putzer'),
(425, 'roseten schlemmer'),
(426, 'rosettenhengst'),
(427, 'rosettenkönig'),
(428, 'rosettenlecker'),
(429, 'rosettentester'),
(430, 'sackfalter'),
(431, 'sackgesicht'),
(432, 'sacklutscher'),
(433, 'sackratte'),
(434, 'saftarsch'),
(435, 'sakfalter'),
(436, 'schamhaarlecker'),
(437, 'schamhaarschädel'),
(438, 'schandmaul'),
(439, 'scheisse'),
(440, 'scheisser'),
(441, 'scheissgesicht'),
(442, 'scheisshaufen'),
(443, 'scheißhaufen'),
(444, 'schlammfotze'),
(445, 'schlampe'),
(446, 'schleimmöse'),
(447, 'schlitzpisser'),
(448, 'schmalspurficker'),
(449, 'schmeue'),
(450, 'schmuckbert'),
(451, 'schnuddelfresser'),
(452, 'schnurbeltatz'),
(453, 'schrumpelfotze'),
(454, 'schwanzlurch'),
(455, 'schwanzlutscher'),
(456, 'schweinepriester'),
(457, 'schweineschwanzlutscher'),
(458, 'schwuchtel'),
(459, 'schwutte'),
(460, 'sex'),
(461, 'shiter'),
(462, 'shiting'),
(463, 'shitlist'),
(464, 'shitomatic'),
(465, 'shits'),
(466, 'shitty'),
(467, 'shlong'),
(468, 'shut the fuckup'),
(469, 'sieg heil'),
(470, 'sitzpisser'),
(471, 'skullfuck'),
(472, 'skullfucker'),
(473, 'skullfucking'),
(474, 'slut'),
(475, 'smegmafresser'),
(476, 'spack'),
(477, 'spacko'),
(478, 'spaghettifresser'),
(479, 'spastard'),
(480, 'spasti'),
(481, 'spastis'),
(482, 'spermafresse'),
(483, 'spermarutsche'),
(484, 'spritzer'),
(485, 'stinkschlitz'),
(486, 'stricher'),
(487, 'suck my cock'),
(488, 'suck my dick'),
(489, 'threesome'),
(490, 'tittenficker'),
(491, 'tittenspritzer'),
(492, 'titties'),
(493, 'titty'),
(494, 'tunte'),
(495, 'untermensch'),
(496, 'vagina'),
(497, 'vergasen'),
(498, 'viagra'),
(499, 'volldepp'),
(500, 'volldeppen'),
(501, 'vollhorst'),
(502, 'vollidiot'),
(503, 'vollpfosten'),
(504, 'vollspack'),
(505, 'vollspacken'),
(506, 'vollspasti'),
(507, 'vorhaut'),
(508, 'votze'),
(509, 'votzenkopf'),
(510, 'wanker'),
(511, 'wankers'),
(512, 'weichei'),
(513, 'whoar'),
(514, 'whore'),
(515, 'wichsbart'),
(516, 'wichsbirne'),
(517, 'wichser'),
(518, 'wichsfrosch'),
(519, 'wichsgriffel'),
(520, 'wichsvorlage'),
(521, 'wickspickel'),
(522, 'wixa'),
(523, 'wixen'),
(524, 'wixer'),
(525, 'wixxer'),
(526, 'wixxxer'),
(527, 'wixxxxer'),
(528, 'wurstsemmelfresser'),
(529, 'yankee'),
(530, 'zappler'),
(531, 'zyclon b'),
(532, 'zyklon b'),
(533, 'x x x');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_easycaptchas`
--

CREATE TABLE IF NOT EXISTS `jos_easycaptchas` (
`id` int(10) NOT NULL,
  `name` varchar(70) NOT NULL DEFAULT '0',
  `description` text,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `params` text
) AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `jos_easycaptchas`
--

INSERT INTO `jos_easycaptchas` (`id`, `name`, `description`, `published`, `params`) VALUES
(1, 'Secimg-Captcha', 'This captcha generates an image with a small mathematic task, which has to be solved by the user. This Captcha does not require any graphic librarys.', 0, 'random_min=100000\r\nrandom_max=999999'),
(2, 'Dpaulus-Captcha', 'This captcha generates an image with several numbers which have to be entered. This Captcha requires the GD library with freetype-support.', 1, 'random_min=100000\r\nrandom_max=999999');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_easycaptchas_dpaulus`
--

CREATE TABLE IF NOT EXISTS `jos_easycaptchas_dpaulus` (
  `CodeID` varchar(6) NOT NULL DEFAULT '',
  `CodeMD5` varchar(32) NOT NULL DEFAULT '',
  `codedate` decimal(14,0) NOT NULL DEFAULT '0'
) ;

--
-- Daten für Tabelle `jos_easycaptchas_dpaulus`
--

INSERT INTO `jos_easycaptchas_dpaulus` (`CodeID`, `CodeMD5`, `codedate`) VALUES
('250235', 'fa0ecdc7e081a2eb94b490b809841680', '1425982818');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_easycaptchas_secimg`
--

CREATE TABLE IF NOT EXISTS `jos_easycaptchas_secimg` (
  `CodeID` varchar(6) NOT NULL DEFAULT '',
  `ImageID` varchar(32) NOT NULL DEFAULT '',
  `codedate` decimal(14,0) NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_categories`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_categories` (
`id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `catname` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `catdescription` mediumtext NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `jos_eventlist_categories`
--

INSERT INTO `jos_eventlist_categories` (`id`, `parent_id`, `catname`, `alias`, `catdescription`, `meta_keywords`, `meta_description`, `image`, `published`, `checked_out`, `checked_out_time`, `access`, `groupid`, `ordering`) VALUES
(1, 0, 'Arbeitseinsatz', 'arbeitseinsatz', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 1),
(2, 0, 'Schützenverein', 'schuetzenverein', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 2),
(3, 0, 'Meisterschaftspiel', 'meisterschaftsspiel', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 4),
(4, 0, 'Veranstaltung Sportverein', 'sportverein', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 3),
(5, 0, 'Freundschaftsspiel', 'freundschaftspiel', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 5),
(6, 0, 'Hallenturnier', 'hallenturnier', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 0, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_events`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_events` (
`id` int(11) unsigned NOT NULL,
  `locid` int(11) unsigned NOT NULL DEFAULT '0',
  `catsid` int(11) unsigned NOT NULL DEFAULT '0',
  `dates` date NOT NULL DEFAULT '0000-00-00',
  `enddates` date DEFAULT NULL,
  `times` time DEFAULT NULL,
  `endtimes` time DEFAULT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(15) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `datdescription` mediumtext NOT NULL,
  `meta_keywords` varchar(200) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  `recurrence_number` int(2) NOT NULL DEFAULT '0',
  `recurrence_type` int(2) NOT NULL DEFAULT '0',
  `recurrence_counter` date NOT NULL DEFAULT '0000-00-00',
  `datimage` varchar(100) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registra` tinyint(1) NOT NULL DEFAULT '0',
  `unregistra` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `jos_eventlist_events`
--

INSERT INTO `jos_eventlist_events` (`id`, `locid`, `catsid`, `dates`, `enddates`, `times`, `endtimes`, `title`, `alias`, `created_by`, `modified`, `modified_by`, `author_ip`, `created`, `datdescription`, `meta_keywords`, `meta_description`, `recurrence_number`, `recurrence_type`, `recurrence_counter`, `datimage`, `checked_out`, `checked_out_time`, `registra`, `unregistra`, `published`) VALUES
(1, 1, 1, '2008-02-16', NULL, '09:00:00', NULL, 'Arbeitseinsatz Sportplatz', 'arbeitseinsatz-sportplatz', 62, '0000-00-00 00:00:00', 0, '192.168.2.180', '2008-02-15 17:18:58', '<p class="MsoNormal">Hallo Zusammen,</p><p class="MsoNormal">das erste Training in 2008 haben alle heil überstanden... und der erste Arbeitseinsatz steht vor der Tür. Am kommenden Samstag (16. Februar 2008) wollen wi die Hecken scheren, stutzen, schneiden und die Torräume begradigen und neuen Rasen einpflanzen bzw. ausrollen.</p><p class="MsoNormal">Deswegen treffen wir uns am Samstag um 9 Urh an der Schule!!!</p><p class="MsoNormal">Wer hat sollte bitte eine Motor-Heckenschere bzw. entsprechendes Werkzeug zur Erd-Bewegung mitbringen.</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(2, 2, 2, '2008-02-29', '2008-03-01', '18:30:00', NULL, 'Vereinsschießen', 'vereinsschiessen', 65, '2008-02-17 11:18:19', 65, '91.0.162.154', '2008-02-17 11:16:51', 'Vereinschießen im der Schule. Freitag ab 18:30 Uhr, Samstag ab 18:00 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(27, 0, 3, '2008-09-15', NULL, '19:00:00', NULL, 'Spiel bei den  Brinker Jungs', 'spiel-bei-den-brinker-jungs', 63, '2008-09-14 09:00:08', 64, '91.0.175.99', '2008-03-03 12:58:35', '<p>ACHTUNG ! ! ! ! !</p><p><strong><u>Gespielt wird IN Holthausen und nicht in Weseke ! ! ! ! !</u></strong></p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(4, 0, 3, '2008-04-21', NULL, '19:00:00', NULL, 'Spiel in Klein Reken', 'spiel-in-klein-reken', 63, '2008-02-17 15:55:50', 63, '91.0.182.169', '2008-02-17 15:54:24', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(5, 0, 3, '2008-09-13', NULL, '19:00:00', NULL, 'Spiel bei Lupine Weseke', 'spiel-bei-lupine-weseke', 63, '2008-08-12 19:19:51', 64, '91.0.182.169', '2008-02-17 15:55:32', '<p>Ein neuer Spieltermin ( 13.09 ) steht fest ! ! ! !</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(6, 0, 3, '2008-05-07', NULL, '19:00:00', NULL, 'Spiel beim Böinghookl', 'spiel-beim-boeinghookl', 63, '0000-00-00 00:00:00', 0, '91.0.182.169', '2008-02-17 15:56:35', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(7, 0, 3, '2008-05-21', NULL, '19:00:00', NULL, 'Spiel bei den Bröker Jungs', 'spiel-bei-den-broeker-jungs', 63, '2008-05-13 16:57:42', 64, '91.0.182.169', '2008-02-17 15:57:37', '<p>Achtung: neuer Spieltermin ! ! ! !</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(8, 1, 3, '2008-05-26', NULL, '19:00:00', NULL, 'Spiel gegen Brinker Jungs', 'spiel-gegen-brinker-jungs', 63, '2008-02-17 16:02:15', 63, '91.0.182.169', '2008-02-17 16:01:42', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(9, 0, 3, '2008-05-31', NULL, '15:00:00', NULL, 'Spiel bei Cosmos Weseke', 'spiel-bei-cosmos-weseke', 63, '0000-00-00 00:00:00', 0, '91.0.182.169', '2008-02-17 16:03:16', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(10, 0, 3, '2008-06-24', NULL, '19:00:00', NULL, 'Spiel bei Tornado Timpen', 'spiel-bei-tornado-timpen', 63, '2008-06-12 06:56:15', 62, '91.0.182.169', '2008-02-17 16:04:24', 'Meisterschaftsspiel gegen Tornado Timpen. Anstoß ist um 19 Uhr in Weseke.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(11, 0, 3, '2008-06-16', NULL, '18:30:00', NULL, 'Spiel bei Bieling', 'spiel-bei-bieling', 63, '2008-05-31 10:29:47', 64, '91.0.182.169', '2008-02-17 16:05:29', '<p>Spiel ist vom 14.06 auf den 16.06 verschoben worden ! ! ! !</p><p>Anstoß ist um 18:30 Uhr in Velen.</p><p><strong>Anschließend ist EM - Gucken in der Kabine angesagt ! ! !</strong></p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(12, 1, 3, '2008-08-25', NULL, '19:00:00', NULL, 'Spiel gegen Lupine Weseke', 'spiel-gegen-lupine-weseke', 63, '2008-08-25 06:42:53', 62, '91.0.182.169', '2008-02-17 19:20:11', 'Spiel findet um 19:00 Uhr statt. Treffen ist um 18:00.<br />', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(13, 1, 3, '2008-08-09', NULL, '15:00:00', NULL, 'Spiel gegen Bröker Jungs', 'spiel-gegen-broeker-jungs', 63, '2008-08-08 06:56:40', 64, '91.0.182.169', '2008-02-17 19:21:12', '<strong>DAS SPIEL WURDE ABGESAGT ! ! ! ! !</strong><br />', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(14, 1, 3, '2008-08-18', NULL, '19:00:00', NULL, 'Spiel gegen Bieling', 'spiel-gegen-bieling', 63, '0000-00-00 00:00:00', 0, '91.0.182.169', '2008-02-17 19:22:03', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(15, 1, 3, '2008-08-30', NULL, '15:00:00', NULL, 'Spiel gegen Cosmos Weseke', 'spiel-gegen-cosmos-weseke', 63, '0000-00-00 00:00:00', 0, '91.0.182.169', '2008-02-17 21:18:17', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(16, 2, 2, '2008-03-08', NULL, '19:00:00', NULL, 'Doppelkopf- und Skatturnier', 'doppelkopf', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:30:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(17, 2, 2, '2008-04-19', NULL, '18:30:00', NULL, 'Weinprobe', 'weinprobe', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:33:10', 'Eingeladen ist der Thron, Vorstand und Offiziere des Schützenvereins', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(18, 2, 2, '2008-04-27', NULL, '18:00:00', NULL, 'Schützenfest Üben', 'ueben', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:34:49', 'Üben fürs Schützenfest. Noch drei mal Schlafen <img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" border="0" alt="Smile" title="Smile" />', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(19, 3, 2, '2008-04-30', '2008-05-02', NULL, NULL, 'Schützenfest', 'schuetzenfest', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:36:28', 'Endlich!!', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(20, 1, 4, '2008-06-29', NULL, '11:00:00', NULL, 'Pokalturnier', 'pokalturnier', 65, '2008-02-19 19:43:55', 65, '91.0.153.180', '2008-02-19 19:40:27', 'Wir spielen selber mit!', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(21, 1, 4, '2008-06-28', NULL, NULL, NULL, 'Alte Herren - Junggesellen', 'alte-herren-junggesellen', 65, '2008-06-11 18:19:57', 64, '91.0.153.180', '2008-02-19 19:43:32', '<p>Großes Spiel der Saison! </p><p>VORSPIEL:          13:30 Uhr       Jugend HSV - Fiat Gescher</p><p>                         anschl. Spiel der Mini - Kicker</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(22, 2, 2, '2008-08-16', NULL, '14:00:00', NULL, 'Fahrradtour', 'fahrradtour', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:45:01', 'Bänketour durch Bleking-Holthausen', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(23, 2, 2, '2008-09-06', NULL, '14:00:00', NULL, 'Kinderschützenfest / Schützenfestnachfeier', 'kinderschuetzenfest', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:46:41', '<p>Kinderschützenfest Beginn 14:00 Uhr</p><p>Schützenfestnachfeier Beginn 19:30 Uhr </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(24, 2, 2, '2008-10-02', NULL, '19:00:00', NULL, 'Offiziersfest', 'offiziersfest', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:47:48', 'Die Offiziere laden den Thron und den Vorstand ein.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(25, 2, 2, '2008-12-06', NULL, '17:00:00', NULL, 'Nikolausfeier', 'nikolausfeier', 65, '0000-00-00 00:00:00', 0, '91.0.153.180', '2008-02-19 19:48:27', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(26, 1, 5, '2008-03-04', NULL, '19:30:00', NULL, 'Freundschaftsspiel gegen RW Trimbach', 'freundschaftsspiel-gegen-rw-trimbach', 65, '0000-00-00 00:00:00', 0, '217.7.242.201', '2008-02-28 07:35:31', 'Treffen ist um 18:30 in Holthausen', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(28, 1, 3, '2008-09-22', NULL, '19:00:00', NULL, 'Spiel gegen den Böinghook', 'spiel-gegen-den-boeinghook', 63, '2008-09-18 18:33:15', 64, '91.0.175.99', '2008-03-03 13:00:02', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(29, 1, 3, '2008-10-11', NULL, '15:00:00', NULL, 'Spiel gegen Klein Reken', 'spiel-gegen-klein-reken', 63, '0000-00-00 00:00:00', 0, '91.0.175.99', '2008-03-03 13:01:27', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(30, 1, 3, '2008-10-18', NULL, '15:00:00', NULL, 'Spiel gegen Timpen', 'spiel-gegen-timpen', 63, '0000-00-00 00:00:00', 0, '91.0.175.99', '2008-03-03 13:03:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(31, 1, 5, '2008-03-17', NULL, '19:30:00', NULL, 'Spiel gegen FIAT Gescher', 'spiel-gegen-fiat-gescher', 62, '0000-00-00 00:00:00', 0, '192.168.2.180', '2008-03-06 22:01:10', 'Unser nächsten Freundschaftsspiel findet am Montag, den 17. März in Holthausen statt.\r\nUnser Gegner ist dann FIAT Gescher. Anstoss ist um 19:30 Uhr und Treffen wie immer eine Stunde vorher um 18:30 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(32, 2, 1, '2008-04-12', NULL, '10:00:00', NULL, 'Rasenpflege', 'rasenpflege', 64, '0000-00-00 00:00:00', 0, '91.56.120.140', '2008-04-08 18:04:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(33, 2, 1, '2008-04-26', NULL, '10:00:00', NULL, 'Sauber machen . . .', 'sauber-machen---', 64, '0000-00-00 00:00:00', 0, '62.206.155.186', '2008-04-23 13:21:56', '<p>Am Samstag treffen wir uns um 10 Uhr an der Schule, um die Anlage, den</p><p>Rasenplatz und die Parkplätze für das Schützenfest - Üben am Sonntag auf</p><p>Vordermann zu bringen ! ! ! ! </p><p> Bitte zahlreich erscheinen ! ! ! ! ! <br /> </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(34, 2, 4, '2008-07-26', '2008-07-26', NULL, NULL, 'Fahrradtour Sportverein', 'fahrradtour-sportverein', 65, '0000-00-00 00:00:00', 0, '217.7.242.201', '2008-05-27 08:22:07', '<p>Unser Orga-Team Alex Kerkhoff und ?? haben den Termin bekannt gegeben. Mehr Infos sind noch nicht bekannt.</p><p>Bitte um zahlreiches Erscheinen.</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(35, 0, 4, '2008-06-22', NULL, '09:00:00', '16:00:00', 'Tornado Cup', 'tornado-cup', 62, '2008-06-19 08:16:17', 64, '192.168.2.147', '2008-06-13 13:02:33', '<p>Kleinfeldturnier "Tornado Cup"<br />Ausrichter: Tornado Timpen</p><p>Das Turnier beginnt um 10 Uhr - Treffen ist um 9 Uhr an der Schule</p><p>&nbsp;</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(36, 0, 4, '2008-07-06', NULL, NULL, NULL, 'Lupine Cup - Turnier ist abgesagt worden', 'lupine-cup-turnier-ist-abgesagt-worden', 62, '2008-06-19 14:17:41', 64, '192.168.2.147', '2008-06-13 13:03:37', '<pre>Kleinfeldturnier "Lupine Cup"<br />Ausrichter: Lupine Weseke</pre><pre><u><strong>DAS TURNIER FÄLLT AUS, WEIL SICH ZU WENIG MANNSCHAFTEN </strong></u></pre><pre><u><strong>ANGEMELDET HABEN ! ! ! ! !</strong></u></pre>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(37, 0, 2, '2008-07-19', NULL, '18:00:00', NULL, 'Junggesellen Schützenfest', 'junggesellen-schuetzenfest', 62, '0000-00-00 00:00:00', 0, '192.168.2.145', '2008-07-10 14:00:03', '<p>Wir laden recht herzlich zum diesjährigen Junggesellen Schützenfest ein.<br>\r\nEs findet am 19.Juli 2008 um 18:00 auf dem <b>Hof Hövelbrinks</b> statt.\r\n</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(38, 0, 5, '2008-08-27', NULL, NULL, NULL, 'Spiel gegen Alten Herren von Hochmoor', 'spiel-gegen-alten-herren-von-hochmoor', 62, '0000-00-00 00:00:00', 0, '192.168.2.145', '2008-08-14 10:54:01', 'Freundschaftsspiel gegen Alten Herren von Hochmoor', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(39, 1, 3, '2008-09-29', NULL, '19:00:00', NULL, 'Spiel gegen die Bröker Jungs', 'spiel-gegen-die-broeker-jungs', 64, '0000-00-00 00:00:00', 0, '91.56.118.250', '2008-09-18 18:35:16', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(40, 0, 6, '2008-12-27', NULL, NULL, NULL, 'Hallenturnier Bröker Jungs', 'hallenturnier-broeker-jungs', 62, '2008-12-17 07:11:55', 62, '192.168.2.147', '2008-12-06 09:19:10', 'Hallenturnier der Bröker Jungs näher Informationen folgen noch.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(41, 0, 6, '2009-01-17', NULL, NULL, NULL, 'Hallenturnier SF Klein Reken', 'hallenturnier-sf-klein-reken', 62, '0000-00-00 00:00:00', 0, '192.168.2.147', '2008-12-06 09:21:27', 'Näher Informationen folgen noch.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(42, 2, 4, '2009-01-17', NULL, NULL, NULL, 'HSV - Gerneralversammlung', 'hsv-gerneralversammlung', 62, '2008-12-06 09:28:16', 62, '192.168.2.147', '2008-12-06 09:22:26', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(43, 2, 2, '2009-01-23', NULL, NULL, NULL, 'Schützenverein - Generalversammlung', 'schuetzenverein-generalversammlung', 62, '2008-12-06 09:28:08', 62, '192.168.2.147', '2008-12-06 09:23:10', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(44, 2, 2, '2009-03-06', '2009-03-07', NULL, NULL, 'Vereinsschießen', 'vereinsschiessen', 62, '2008-12-06 09:27:58', 62, '192.168.2.147', '2008-12-06 09:24:21', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(45, 2, 2, '2009-03-14', NULL, NULL, NULL, 'Vereinskarten', 'vereinskarten', 62, '2008-12-06 09:28:25', 62, '192.168.2.147', '2008-12-06 09:24:48', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(46, 2, 2, '2009-04-25', NULL, NULL, NULL, 'Weinprobe', 'weinprobe', 62, '2008-12-06 09:28:33', 62, '192.168.2.147', '2008-12-06 09:25:10', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(47, 2, 2, '2009-05-17', NULL, NULL, NULL, 'Schützefest Vorüben', 'schuetzefest-vorueben', 62, '2008-12-06 09:27:47', 62, '192.168.2.147', '2008-12-06 09:25:50', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(48, 3, 2, '2009-05-20', '2009-05-22', '18:00:00', NULL, 'SCHÜTZENFEST', 'schuetzenfest', 62, '2008-12-06 09:27:30', 62, '192.168.2.147', '2008-12-06 09:27:09', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(49, 0, 2, '2009-08-15', NULL, NULL, NULL, 'Fahrradtour', 'fahrradtour', 62, '0000-00-00 00:00:00', 0, '192.168.2.147', '2008-12-06 09:29:22', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(50, 0, 6, '2009-01-24', NULL, NULL, NULL, 'Hallenturnier Illerhusen', 'hallenturnier-illerhusen', 62, '0000-00-00 00:00:00', 0, '192.168.2.147', '2008-12-06 09:30:13', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(51, 2, 2, '2009-02-28', NULL, '19:30:00', NULL, 'Junggesellen Generalversammlung', 'junggesellen-generalversammlung', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-02-18 18:35:01', '<p>Guten Tag,</p><p>es läd der Vorstand des Junggesellen Vereins Holthausen recht herzlich zur diesjährigen Generalversammlung nach Holthausen in die Katakomben ein. </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(52, 1, 3, '2009-03-30', NULL, '19:00:00', NULL, 'Heimspiel gegen Böinghook', 'heimspiel-gegen-boeinghook', 64, '2009-03-28 11:16:18', 64, '192.168.178.23', '2009-03-28 10:33:55', 'Treffen 18 Uhr / /\r\nAnstoß 19 Uhr / / \r\n\r\nSchiedsrichter: Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(53, 1, 3, '2009-04-08', NULL, '19:00:00', NULL, 'Heimspiel gegen Brinker Jungs', 'heimspiel-gegen-brinker-jungs', 64, '2009-03-28 11:16:42', 64, '192.168.178.23', '2009-03-28 10:36:30', 'Anstoß 19 Uhr / /\r\nTreffen 18 Uhr / / \r\n\r\nSchiedsrichter: Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(54, 1, 4, '2009-04-09', NULL, '19:00:00', NULL, 'GRÜNDONNERSTAGSTRAINING', 'gruendonnerstagstraining', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 10:37:32', 'Ende offen :-)', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(55, 7, 3, '2009-04-18', NULL, '15:00:00', NULL, 'Auswärtsspiel gegen Lupine Weseke', 'auswaertsspiel-gegen-lupine-weseke', 64, '2009-03-28 11:17:05', 64, '192.168.178.23', '2009-03-28 10:39:37', 'Anstoß 15 Uhr / /\r\nTreffen 14 Uhr am Platz', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(56, 8, 3, '2009-04-20', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen SF Klein Reken', 'auswaertsspiel-gegen-sf-klein-reken', 64, '2009-03-28 11:17:27', 64, '192.168.178.23', '2009-03-28 10:43:58', 'Anstoß 15 Uhr / /\r\nTreffen 14 Uhr am Platz', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(57, 1, 3, '2009-04-27', NULL, '19:00:00', NULL, 'Heimspiel gegen Fort. Bieling', 'heimspiel-gegen-fort-bieling', 64, '2009-03-28 11:17:56', 64, '192.168.178.23', '2009-03-28 10:54:34', 'Anstoß 19 Uhr / /\r\nTreffen 18 Uhr / / \r\nSchiedsrichter Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(58, 0, 4, '2009-11-06', '2009-11-08', '12:30:00', NULL, 'GROSSE HSV - TOUR', 'grosse-hsv-tour', 64, '2009-10-12 16:28:04', 65, '192.168.178.23', '2009-03-28 11:03:49', 'Endlich ist es wieder soweit ! !  ! Der HSV geht auf grosse Tour :-)  Drei Tage Spiel, Spaß und Spannung ! ! ! !  WIR FREUEN UNS ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(59, 1, 4, '2009-06-27', '2009-06-28', NULL, NULL, 'HSV Fussballwochenende', 'hsv-fussballwochenende', 64, '2009-03-28 11:07:27', 64, '192.168.178.23', '2009-03-28 11:06:48', 'Großes HSV Fußballwochenende \r\n\r\n\r\nSamstag: Spiel der Mini - Mannschaft\r\n         Spiel der Jugend - Mannschaft\r\n         SPIEL ALT - JUNG inkl. Pokalverleihung an die JUNGEN', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(60, 8, 3, '2009-05-09', NULL, '15:00:00', NULL, 'Auwärtsspiel gegen Bröker Jungs / SPIEL WIRD VERSCHOBEN', 'auwaertsspiel-gegen-broeker-jungs--spiel-wird-verschoben', 64, '2009-04-28 19:38:00', 64, '192.168.178.23', '2009-03-28 11:11:41', 'Anstoß 15 Uhr / /\r\n\r\nTreffen 14 Uhr\r\n\r\nSPIEL WIRD', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(61, 1, 3, '2009-05-13', NULL, '19:00:00', NULL, 'Heimspiel gegn Tor. Timpen', 'heimspiel-gegn-tor-timpen', 64, '2009-03-28 11:18:58', 64, '192.168.178.23', '2009-03-28 11:13:15', 'Anstoß 15 Uhr / /\r\n \r\nTreffen 14 Uhr / /\r\n\r\nSchiedsrichter Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(62, 7, 3, '2009-05-27', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen Böinghook', 'auswaertsspiel-gegen-boeinghook', 64, '2009-03-28 11:15:21', 64, '192.168.178.23', '2009-03-28 11:15:00', 'Anstoß 19 Uhr / /\r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(63, 1, 3, '2009-06-03', NULL, '19:00:00', NULL, 'Heimspiel gegen Lupine Weseke', 'heimspiel-gegen-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:20:50', 'Anstoß 19 Uhr / /\r\nTreffen 18 Uhr / / \r\nSchiedsrichter ? ?', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(64, 1, 3, '2009-06-06', NULL, '15:00:00', NULL, 'Heimspiel gegen Cosmos Weseke', 'heimspiel-gegen-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:21:46', 'Anstoß 15 Uhr / /\r\n\r\nTreffen 14 Uhr / / \r\n\r\nSchiedsrichter ? ?', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(65, 0, 4, '2009-06-15', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen Fort. Bieling', 'auswaertsspiel-gegen-fort-bieling', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:23:45', 'Anstoß 19 Uhr / / \r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(66, 0, 4, '2009-06-11', '2009-06-13', NULL, NULL, 'Hooksturnier in Ramsdorf', 'hooksturnier-in-ramsdorf', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:24:58', 'Weitere Infos folgen rechtzeitig ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(67, 1, 3, '2009-06-30', NULL, '15:00:00', NULL, 'Heimspiel gegen SF Klein Reken', 'heimspiel-gegen-sf-klein-reken', 64, '2009-07-01 17:40:41', 62, '192.168.178.23', '2009-03-28 11:26:12', 'Anstoß 15 Uhr / /   Treffen 14 Uhr / /   Schiedsrichter Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(68, 2, 2, '2009-07-18', NULL, NULL, NULL, 'JUNGGESELLEN SCHÜTZENFEST Holthauen / Bleking', 'junggesellen-schuetzenfest-holthauen--bleking', 64, '2009-07-01 17:41:01', 62, '192.168.178.23', '2009-03-28 11:28:31', 'Weitere Infos folgen rechtzeitig ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(69, 0, 2, '2009-07-11', '2009-07-13', NULL, NULL, 'Schützfest Ramsdorf - Stadt', 'schuetzfest-ramsdorf-stadt', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:29:18', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(70, 1, 3, '2009-08-22', NULL, '15:00:00', NULL, 'Heimspiel gegen Bröker Jungs', 'heimspiel-gegen-broeker-jungs', 64, '2009-08-01 08:44:17', 64, '192.168.178.23', '2009-03-28 11:30:22', 'Anstoß 15 Uhr / /\r\n\r\nTreffen 14 Uhr / / \r\n\r\nSchiedsrichter Thomas Lütjann', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(71, 7, 3, '2009-08-12', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen Brinker Jungs', 'auswaertsspiel-gegen-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:31:24', 'Anstoß 19 Uhr / / \r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(72, 7, 3, '2009-08-26', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen Tor. Timoen', 'auswaertsspiel-gegen-tor-timoen', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:32:28', 'Anstoß 19 Uhr / / \r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(73, 7, 3, '2009-09-26', NULL, '15:00:00', NULL, 'Auswärtsspiel gegen Cosmos Weseke', 'auswaertsspiel-gegen-cosmos-weseke', 64, '2009-08-18 06:46:15', 64, '192.168.178.23', '2009-03-28 11:33:17', 'Anstoß 15 Uhr / /\r\n\r\nTreffen 14 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(74, 2, 2, '2009-09-05', NULL, NULL, NULL, 'Kinderschützenfest und Nachfeier Holthausen-Bleking', 'kinderschuetzenfest-und-nachfeier-holthausen-bleking', 64, '2009-03-28 11:34:38', 64, '192.168.178.23', '2009-03-28 11:34:02', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(75, 0, 4, '2009-11-21', NULL, '18:00:00', NULL, 'HSV Spielerversammlung', 'hsv-spielerversammlung', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-03-28 11:35:37', 'Weitere Infos folgen rechtzeitig ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(76, 0, 4, '2009-06-06', '2009-06-06', '17:00:00', NULL, 'Tagestour 2009', 'tagestour-2009', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-05-02 09:17:44', '<p class="MsoNormal"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d">Jan und Ludger bereiten die diesjährige Tagestour vor. Sie teilen mit, dass diese im Anschluss des Meisterschaftsspiels gegen Cosmos Weseke am 06.06.09 stattfinden wird. </span></p>  <p class="MsoNormal"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d"> </span></p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(77, 8, 3, '2009-09-21', NULL, '19:00:00', NULL, 'Auswärtsspiel gegen Bröker Jungs', 'auswaertsspiel-gegen-broeker-jungs', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-08-01 08:48:23', 'Auswärtsspiel\r\n\r\nAnstoß 19 Uhr\r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(78, 7, 3, '2009-10-10', NULL, NULL, NULL, 'Letzter Spieltag ( Spielfrei ) + Meisterschaftsparty', 'letzter-spieltag--spielfrei---meisterschaftsparty', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-08-01 08:50:22', 'Letzter offizieller Spieltag der Saison 2009\r\n\r\n20 Uhr Meisterschaftsparty \r\nVeranstalter COSMOS WESEKE\r\n\r\nORT usw. wird rechtzeitig bekannt gegeben ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(79, 7, 3, '2009-08-24', NULL, '19:00:00', NULL, 'Meisterschaftsspiel gegen Brinker Jungs', 'meisterschaftsspiel-gegen-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-08-18 06:50:40', 'Anstoß 19 Uhr\r\n\r\nTreffen 18 Uhr', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(80, 1, 1, '2009-08-28', '2009-08-29', '18:00:00', NULL, 'Graben saubermachen', 'graben-saubermachen', 65, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-08-25 08:47:30', '<p>Ist ist mal wieder soweit! Das jährliche Grabensauber machen steht an. Jetzt ist das Wetter noch so, dass man gut durch die Gräben kommt.</p><p>Also bitte zahlreich erscheinen und Werkzeug (Schüppe, Gabel, Freischneide) mitbringen! Es direkt im Graben am Barnsfeld los.</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(81, 10, 6, '2009-12-05', NULL, NULL, NULL, 'Hallenturnier "All Stars"', 'hallenturnier-qall-starsq', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:39:19', 'Spieler werden rechtzeitig bekannt gegeben ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(82, 12, 6, '2009-12-19', NULL, NULL, NULL, 'Hallenturnier SF Klein Reken', 'hallenturnier-sf-klein-reken', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:43:04', 'Teilnehmer werden rechtzeitig bekannt gegeben', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(83, 12, 6, '2010-01-02', NULL, NULL, NULL, 'Hallenturnier Bröker Jungs', 'hallenturnier-broeker-jungs', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:44:01', 'Spieler werden rechtzeitig bekannt gegeben', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(84, 10, 6, '2010-01-15', '2010-01-16', NULL, NULL, 'Hallenturnier BKV Borken', 'hallenturnier-bkv-borken', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:45:09', 'Spieler werden rechtzeitig bekannt gegeben', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(85, 12, 6, '2010-01-24', NULL, NULL, NULL, 'Hallenturnier SV Illerhusen', 'hallenturnier-sv-illerhusen', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:46:06', 'Spieler werden rechtzeitig bekannt gegeben', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(86, 2, 4, '2010-01-16', NULL, NULL, NULL, 'HSV Sportvereinversammlung', 'hsv-sportvereinversammlung', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:47:20', 'EINLADUNG FOLGT', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(87, 2, 2, '2010-01-22', NULL, NULL, NULL, 'Generalversammlung Schützenverein', 'generalversammlung-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-11-05 11:48:26', 'Einladung folgt', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(88, 13, 6, '2010-01-23', NULL, NULL, NULL, 'Hallenturnier BSG Foseco', 'hallenturnier-bsg-foseco', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-12-18 15:55:58', 'Weitere Einzelheiten werden noch bekannt gegeben.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(89, 14, 6, '2010-02-06', NULL, NULL, NULL, 'tecis Soccer Cup', 'tecis-soccer-cup', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2009-12-23 13:48:23', 'Weitere Einzelheiten werden rechtzeitig bekannt gegeben.', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(90, 2, 2, '2010-02-20', '2010-02-20', '19:30:00', '23:59:00', 'Junggesellen Generalversammlung', 'junggesellen-generalversammlung', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-17 06:46:48', 'Am kommenden Samstag dem 20.02.2010 findet um 19:30 Uhr die diesjährige <br />Generalversammlung des Junggesellen Schützenverein Holthausen-Bleking in der <br />Kabine in Holthausen statt. <br /><br />Es ladet freundlichst ein:<br />DER VORSTAND<br /><br />Mit freundlichen Grüßen<br /><br />Manfred Rosskamp', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(91, 1, 4, '2010-02-22', NULL, '19:00:00', NULL, 'Trainingsbeginn der Senioren', 'trainingsbeginn-der-senioren', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-18 18:45:05', 'Guten Tach Mädels,\r\nendlich geht es wieder los ! ! ! ! !\r\n\r\nAm Montag starten wir mit unserem Freilufttraining ! ! ! ! !\r\nTreffen ist um 19 Uhr am Sportplatz.\r\n\r\nDenkt bitte bei den ersten Trainingseinheiten an die Laufschuhe ! ! ! !\r\n\r\nAufgrund der Wetterlage und den Platzverhältnissen wird es eher nicht der Fall sein, dass\r\nWir was mit dem Ball auf dem Platz machen können.\r\nBringt aber trotzdem auch Fußballschuhe mit.\r\n\r\nIch wünsche Euch noch eine schöne Restwoche…\r\n\r\nCiao Twix', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(92, 1, 3, '2010-04-19', NULL, '19:00:00', NULL, 'HEIMSPIEL gegen die Bröker Jungs ( Reken )', 'heimspiel-gegen-die-broeker-jungs--reken-', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:42:50', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(93, 1, 3, '2010-04-26', NULL, '19:00:00', NULL, 'HEIMSPIEL gegen Cosmos Weseke', 'heimspiel-gegen-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:43:41', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(94, 10, 3, '2010-05-22', NULL, '15:00:00', NULL, 'AUSWÄRTSSPIEL gegen die Beckmann ( Borken )', 'auswaertsspiel-gegen-die-beckmann--borken-', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:44:42', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(95, 7, 3, '2010-05-29', NULL, '15:00:00', NULL, 'AUSWÄRTSSPIEL gegen Lupine Weseke', 'auswaertsspiel-gegen-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:45:26', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(96, 7, 3, '2010-05-31', NULL, '19:00:00', NULL, 'AUSWÄRTSSPIEL gegen Böinghook', 'auswaertsspiel-gegen-boeinghook', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:46:09', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(97, 1, 3, '2010-06-07', NULL, '19:00:00', NULL, 'HEIMSPIEL gegen die Brinker Jungs', 'heimspiel-gegen-die-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:46:50', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(98, 1, 3, '2010-06-30', NULL, '15:00:00', NULL, 'HEIMSPIEL gegen Tornado Timpen', 'heimspiel-gegen-tornado-timpen', 64, '2010-06-10 19:07:55', 64, '192.168.178.23', '2010-02-27 06:47:31', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(99, 15, 3, '2010-06-21', NULL, '19:00:00', NULL, 'AUSWÄRTSSPIEL gegen Fortuna Bieling', 'auswaertsspiel-gegen-fortuna-bieling', 64, '2010-06-11 09:53:16', 64, '192.168.178.23', '2010-02-27 06:51:32', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(100, 1, 3, '2010-07-17', NULL, '15:00:00', NULL, 'HEIMSPIEL gegen SF Klein Reken', 'heimspiel-gegen-sf-klein-reken', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:53:19', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(101, 2, 2, '2010-05-02', NULL, '18:00:00', NULL, 'Schützenfest Üben', 'schuetzenfest-ueben', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:54:19', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(102, 3, 2, '2010-05-12', '2010-02-12', '18:00:00', NULL, 'S C H Ü T Z E N F E S T ! ! ! ! ! ! ! ! ! ! ! !', 's-c-h-ue-t-z-e-n-f-e-s-t------------', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:55:25', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(103, 3, 2, '2010-05-12', NULL, '18:00:00', NULL, 'S CH Ü T Z E N F E S T ! ! ! ! ! ! ! ! ! !', 's-ch-ue-t-z-e-n-f-e-s-t----------', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 06:57:09', 'DREI TAGE SPIEL, SPASS UND SPANNUNG IN HOLTHAUSEN - Bleking :-)', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(104, 0, 4, '2010-06-03', NULL, NULL, NULL, 'Hooksturnier in Ramsdorf', 'hooksturnier-in-ramsdorf', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 07:01:30', 'Hooksturnier in Ramsdorf\r\nAusrichter VFL Ramsdorf\r\n\r\nDonnerstag / Freitag / Samstag', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(105, 0, 2, '2010-07-10', NULL, NULL, NULL, 'Schützenfest Ramsdorf', 'schuetzenfest-ramsdorf', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-02-27 07:02:32', 'Schützenfest Ramsdorf bis zum 12.07.10', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(106, 1, 1, '2010-03-20', NULL, '09:30:00', NULL, 'Arbeitseinsatz am Rasenplatz', 'arbeitseinsatz-am-rasenplatz', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-03-11 19:48:23', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(107, 0, 2, '2010-07-17', '2010-07-17', '18:00:00', '23:59:00', 'Junggesellen Schützenfest', 'junggesellen-schuetzenfest', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-06-08 19:46:07', '<p>Es wird herzlichst zum diesjährigen Junggesellen Schützenfest auf Hof Roßkamp eingeladen.</p><p>Programm:</p><ul><li>18:00 Uhr Antreten</li><li>20:00 Uhr Festball</li></ul> ', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(108, 1, 3, '2010-06-16', NULL, NULL, NULL, 'HEIMSPIEL gegen V. Beckmann', 'heimspiel-gegen-v-beckmann', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-06-10 19:10:02', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(109, 7, 3, '2010-06-23', NULL, NULL, NULL, 'AUSWÄRTSSPIEL gegen Lupine Weseke', 'auswaertsspiel-gegen-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '192.168.178.23', '2010-06-10 19:11:05', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(110, 2, 4, '2011-01-15', '2011-01-15', '18:30:00', '23:59:00', 'Generalversammlung Sportverein', 'generalversammlung-sportverein', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:01:22', '<p>Der Vorstand des Sportverein lädt recht herzlich zur diesjährigen Generalversammlung am 15.01 um 18:30 Uhr ein. </p><p>20:00 Uhr: Gemütliches Beisammensein mit TANZ</p><p> Tagesordnung:</p><ol><li>Begrüßung </li><li>Vorlage der Jahresbilanz</li><li>Beschlussfassung über das Jahr 2010/2011</li><li>Neuwahlen bzw.Wiederwahlen</li><li>Ehrungen</li><li>Verschiedenes</li></ol>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(111, 2, 2, '2011-01-21', '2011-01-21', NULL, NULL, 'Generalversammlung Schützenverein', 'generalversammlung-schuetzenverein', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:02:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(112, 1, 4, '2011-04-21', '2011-04-21', '19:00:00', NULL, 'Gründonnerstagstraining', 'gruendonnerstagstraining', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:04:06', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(113, 2, 2, '2011-03-12', '2011-03-12', '19:00:00', NULL, 'Generalversammlung Junggesellen', 'generalversammlung-junggesellen', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:05:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(114, 3, 2, '2011-06-01', '2011-06-03', '18:00:00', NULL, 'Schützenfest :)', 'schuetzenfest-', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:07:16', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(115, 0, 4, '2011-06-24', '2011-06-26', NULL, NULL, '40 Jahre SV Holthausen', '40-jahre-sv-holthausen', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:08:53', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(116, 0, 4, '2011-11-04', '2011-11-06', NULL, NULL, 'Große HSV Tour', 'grosse-hsv-tour', 62, '0000-00-00 00:00:00', 0, '192.168.178.23', '2011-01-11 23:09:50', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(117, 2, 4, '2011-11-12', '2011-11-12', '18:30:00', NULL, 'Spielerversammlung', 'spielerversammlung', 62, '2011-10-05 09:06:54', 64, '192.168.178.23', '2011-01-11 23:10:38', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(118, 7, 4, '2011-10-08', '2011-10-08', '18:00:00', NULL, 'Meisterschaftsparty', 'meisterschaftsparty', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2011-10-05 09:08:57', '<p>Die Meisterschaftsfeier findet im Autohof in Weseke statt ! ! ! !</p><p>Beginn ist um 20 Uhr</p><p>Wir  treffen uns um 18 Uhr in Holthausen an der Schule und fahren dann ab 19 Uhr</p><p>gemeinsam mit dem Planwagen nach Weseke ! ! ! ! </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(119, 1, 4, '2011-11-12', '2011-11-12', '10:00:00', NULL, 'Sportplatz saubermachen', 'sportplatz-saubermachen', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2011-10-05 09:10:17', '<p>Sportplatz usw. für den Winter sauber machen ! ! ! ! ! !</p><p>&nbsp;</p><p>BITTE ZAHLREICH ERSCHEINEN ! ! ! ! ! </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(120, 2, 4, '2012-02-27', NULL, '19:30:00', '21:30:00', 'Versammlung zur Hobbyliga Saison 2012', 'versammlung-zur-hobbyliga-saison-2012', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-02-03 08:30:43', '<p>Versammlung zur Hobbyliga Saison 2012 mit allen teilnehmenden Mannschaften.</p><p><br />Folgende Themen werden u.a. besprochen: - Ablauf / Spielmodus / Regel für die kommende Saison</p><p>                                                               - Spieltermine 2012</p><p>                                                              - Termin Meisterschaftsfeier 2012</p><p>                                                              - Vorstellung und Erklärung der Internetseite für  </p><p>                                                                die kommende Saison</p><p>                                                              - Verschiedenes </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(121, 2, 2, '2012-03-16', '2012-03-17', '18:30:00', NULL, 'Holthausen Vereinsschießen', 'holthausen-vereinsschiessen', 90, '0000-00-00 00:00:00', 0, '91.0.128.64', '2012-03-04 16:59:04', '<p>Besonderheit: Schießkino am Samstag</p><p>Freitag: 18:30 Uhr </p><p>Samstag:  18:00 Uhr</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(122, 2, 2, '2012-03-24', NULL, '19:00:00', NULL, 'Vereinskarten', 'vereinskarten', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:45:47', '<p>Vereinskarten in </p><p>Skat und Doppelkopf </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(123, 2, 2, '2012-04-28', NULL, '18:30:00', NULL, 'Weinprobe', 'weinprobe', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:47:52', 'Weinprobe', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(124, 2, 2, '2012-05-06', NULL, '18:00:00', NULL, 'Schützenfestvorüben', 'schuetzenfestvorueben', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:49:33', 'Schützenfestvorüben', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1);
INSERT INTO `jos_eventlist_events` (`id`, `locid`, `catsid`, `dates`, `enddates`, `times`, `endtimes`, `title`, `alias`, `created_by`, `modified`, `modified_by`, `author_ip`, `created`, `datdescription`, `meta_keywords`, `meta_description`, `recurrence_number`, `recurrence_type`, `recurrence_counter`, `datimage`, `checked_out`, `checked_out_time`, `registra`, `unregistra`, `published`) VALUES
(125, 3, 2, '2012-05-16', '2012-05-18', '18:00:00', NULL, 'Schützenfest', 'schuetzenfest', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:50:47', 'Schützenfest', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(126, 1, 4, '2012-06-24', NULL, '11:00:00', NULL, 'Pokaltunier', 'pokaltunier', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:52:18', 'Pokaltunier', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(127, 2, 2, '2012-08-18', NULL, '14:00:00', NULL, 'Fahrradtour', 'fahrradtour', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:54:51', '<img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-cool.gif" border="0" alt="Cool" title="Cool" />', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(128, 1, 2, '2012-09-01', NULL, '14:00:00', NULL, 'Kinderschützenfest', 'kinderschuetzenfest', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:56:24', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(129, 2, 2, '2012-09-01', NULL, '20:00:00', NULL, 'Schützenfest Nachfeier', 'schuetzenfest-nachfeier', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 15:57:43', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(130, 3, 2, '2012-09-08', NULL, '14:00:00', NULL, 'Kaiserschießen', 'kaiserschiessen', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 16:00:23', 'In Ramsdorf', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(131, 2, 2, '2012-10-02', NULL, '19:00:00', NULL, 'Offiziersfest', 'offiziersfest', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 16:01:45', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(132, 0, 2, '2012-12-06', NULL, '17:30:00', NULL, 'Nikolausfeier', 'nikolausfeier', 90, '0000-00-00 00:00:00', 0, '217.228.126.116', '2012-03-07 16:02:48', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(133, 1, 4, '2012-04-14', NULL, '15:00:00', NULL, 'Tagestour', 'tagestour', 90, '2012-03-28 11:32:53', 90, '217.228.99.221', '2012-03-28 11:30:12', 'wir feuen uns auf eine große Tagestour nach Jahre langer Vorbereitungszeit der Organisatoren', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(134, 1, 4, '2012-04-05', NULL, '19:00:00', NULL, 'Gründonnerstagtraining', 'gruendonnerstagtraining', 90, '2012-03-28 11:33:16', 90, '217.228.99.221', '2012-03-28 11:32:17', 'Fußballschuhe nicht vergesen', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(135, 1, 1, '2012-04-06', NULL, '10:00:00', NULL, 'Arbeitseinsatz Frühjahrsputz', 'arbeitseinsatz-fruehjahrsputz', 90, '0000-00-00 00:00:00', 0, '217.228.99.221', '2012-03-28 11:39:51', 'Bitte zahlreiches Erscheinen', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(136, 1, 1, '2012-05-05', NULL, '10:00:00', NULL, 'Arbeitseinsatz', 'arbeitseinsatz', 90, '0000-00-00 00:00:00', 0, '217.83.166.163', '2012-05-02 15:59:07', 'Arbeitseinsatz: Vorbereitungen auf Schützenfest Hotlhausen!!!', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(137, 1, 3, '2012-09-19', NULL, '18:45:00', '21:00:00', 'Heimspiel gegen Cosmos Weseke', 'heimspiel-gegen-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-09-11 14:48:39', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(138, 1, 3, '2012-09-24', NULL, '19:00:00', '21:00:00', 'Heimspiel gegen Fortuna Bieling', 'heimspiel-gegen-fortuna-bieling', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-09-11 14:49:15', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(139, 1, 5, '2012-09-26', NULL, '19:00:00', '21:00:00', 'Heimspiel gegen SuS Hochmoor "Alte Herren"', 'heimspiel-gegen-sus-hochmoor-qalte-herrenq', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-09-11 14:51:26', 'Schön wäre es, wenn von unseren "Altherrenspielern" einige dabei sein würden ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(140, 2, 4, '2012-10-20', NULL, '19:30:00', '04:00:00', 'MEISTERSCHAFTSFEIER Hobbyliga Borken', 'meisterschaftsfeier-hobbyliga-borken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-09-11 14:52:59', 'Weitere Informationen folgen in den nächsten Tage ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(141, 12, 6, '2012-12-29', '2012-12-29', '10:00:00', '16:00:00', 'Hallenturnier der Sportfreunde Klein Reken', 'hallenturnier-der-sportfreunde-klein-reken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-12-17 11:55:05', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(142, 13, 6, '2013-01-06', '2013-01-06', '10:00:00', '16:00:00', 'Hallenturnier des BKV Borken', 'hallenturnier-des-bkv-borken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-12-17 11:58:19', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(143, 2, 4, '2013-01-19', '2013-01-19', '19:00:00', '22:00:00', 'Generalversammlung Holthausener Sportverein', 'generalversammlung-holthausener-sportverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-12-17 12:04:55', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(144, 2, 2, '2013-01-25', '2013-01-25', '18:30:00', '22:00:00', 'Generalversammlung Schützenverein', 'generalversammlung-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2012-12-17 12:06:39', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(145, 16, 4, '2012-12-17', '2013-02-18', '21:00:00', '22:30:00', 'Hallentraining in Ramsdorf', 'hallentraining-in-ramsdorf', 64, '2012-12-17 12:28:43', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-02-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(146, 16, 4, '2012-12-24', '2013-02-25', '21:00:00', '22:30:00', 'Hallentraining in Ramsdorf', 'hallentraining-in-ramsdorf', 64, '2012-12-17 12:28:43', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-02-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(147, 16, 4, '2012-12-31', '2013-03-04', '21:00:00', '22:30:00', 'Hallentraining in Ramsdorf', 'hallentraining-in-ramsdorf', 64, '2012-12-17 12:28:43', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-02-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(148, 16, 4, '2013-01-07', '2013-03-11', '21:00:00', '22:30:00', 'Hallentraining in Ramsdorf', 'hallentraining-in-ramsdorf', 64, '2012-12-17 12:28:43', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-02-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(149, 16, 4, '2013-01-14', '2013-03-18', '21:00:00', '22:30:00', 'Hallentraining in Ramsdorf', 'hallentraining-in-ramsdorf', 64, '2012-12-17 12:28:43', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-02-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(150, 1, 4, '2013-03-04', '2013-11-18', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(151, 3, 2, '2013-05-08', '2013-05-10', '18:00:00', NULL, 'Schützenfest', 'schuetzenfest', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:43:57', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(152, 2, 2, '2013-04-28', NULL, '18:00:00', NULL, 'Schützenfest Vorüben', 'schuetzenfest-vorueben', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:48:11', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(153, 2, 2, '2013-06-30', NULL, NULL, NULL, 'Pokaltunier', 'pokaltunier', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:49:58', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(154, 2, 2, '2013-08-17', NULL, NULL, NULL, 'Fahrradtour', 'fahrradtour', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:51:41', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(155, 2, 2, '2013-09-07', NULL, NULL, NULL, 'Kinderschützenfest/Schützenfestnachfeier', 'kinderschuetzenfestschuetzenfestnachfeier', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:53:07', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(156, 2, 2, '2013-10-02', NULL, NULL, NULL, 'Offiziersfest', 'offiziersfest', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:54:22', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(157, 2, 2, '2013-12-06', NULL, NULL, NULL, 'Nikolausfeier', 'nikolausfeier', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 18:55:24', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(158, 1, 4, '2013-04-06', NULL, NULL, NULL, 'Kreispokal HHT Stadtlohn', 'kreispokal-hht-stadtlohn', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 19:01:12', 'Heim', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(159, 0, 4, '2013-04-20', NULL, NULL, NULL, 'Kreispokal HHT Stadtlohn', 'kreispokal-hht-stadtlohn', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 19:02:28', 'Auswärts', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(160, 3, 2, '2013-07-20', NULL, NULL, NULL, 'Schützenfestjunggesellen', 'schuetzenfestjunggesellen', 90, '0000-00-00 00:00:00', 0, '217.83.180.7', '2013-04-01 19:05:33', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(161, 1, 3, '2013-04-15', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Lupine Weseke', 'meisterschaftsspiel-gg-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 12:56:47', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(162, 7, 3, '2013-04-24', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Brinker Jungs', 'meisterschaftsspiel-gg-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 12:57:44', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(163, 1, 3, '2013-05-15', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg SF Klein Reken', 'meisterschaftsspiel-gg-sf-klein-reken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 12:58:32', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(164, 15, 3, '2013-05-27', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Fortuna Bieling', 'meisterschaftsspiel-gg-fortuna-bieling', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 12:59:38', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(165, 7, 3, '2013-06-19', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Cosmos Weseke', 'meisterschaftsspiel-gg-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:01:42', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(166, 7, 3, '2013-06-24', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Lupine Weseke', 'meisterschaftsspiel-gg-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:02:24', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(167, 1, 3, '2013-09-04', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Cosmos Weseke', 'meisterschaftsspiel-gg-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:02:57', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(168, 8, 3, '2013-09-11', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg SF Klein Reken', 'meisterschaftsspiel-gg-sf-klein-reken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:03:33', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(169, 1, 3, '2013-09-16', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Fortuna Bieling', 'meisterschaftsspiel-gg-fortuna-bieling', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:04:29', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(170, 1, 3, '2013-09-25', NULL, '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Brinker Jungs', 'meisterschaftsspiel-gg-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:05:02', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(171, 7, 3, '2013-09-28', NULL, '19:30:00', '00:00:00', 'MEISTERSCHAFTSFEIER (Ausrichter Cosmos Weseke)', 'meisterschaftsfeier-ausrichter-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:06:15', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(172, 1, 4, '2013-06-29', '2013-06-30', '14:00:00', '18:00:00', 'HSV Wochenende', 'hsv-wochenende', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:11:40', '<p>SAMSTAG:   Spiel der Jugend</p><p>                  ALT gg JUNG</p><p>                  gemütlicher Ausklang am Sportplatz</p><p>&nbsp;</p><p>SONNTAG:   HSV Pokalturnier</p><p>&nbsp;</p><p>&nbsp;</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(173, 2, 4, '2013-04-27', NULL, '10:00:00', '14:00:00', 'AUFRÄUMEN fürs Schützenfest - Üben', 'aufraeumen-fuers-schuetzenfest-ueben', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:36:44', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(174, 2, 4, '2013-04-29', NULL, '19:00:00', '20:00:00', 'Aufräumen und Schule sauber machen (nach dem Üben)=', 'aufraeumen-und-schule-sauber-machen-nach-dem-ueben', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:37:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(175, 2, 4, '2013-05-06', NULL, '18:00:00', '22:00:00', 'AUFRÄUMEN fürs SCHÜTZENFEST', 'aufraeumen-fuers-schuetzenfest', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:38:47', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(176, 2, 4, '2013-05-13', NULL, '18:00:00', '21:00:00', 'Aufräumen und Schule sauber machen (nach dem Schützenfest)', 'aufraeumen-und-schule-sauber-machen-nach-dem-schuetzenfest', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-04-15 13:39:38', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(177, 15, 3, '2013-07-08', NULL, '19:00:00', NULL, 'Pokalspiel in Velen gegen Fortuna Bieling', 'pokalspiel-in-velen-gegen-fortuna-bieling', 64, '2013-05-28 07:15:50', 64, '62.72.74.26', '2013-04-22 15:18:34', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(178, 1, 3, '2013-07-27', NULL, NULL, NULL, 'Pokalspiel gegen Fortuna Bieling', 'pokalspiel-gegen-fortuna-bieling', 64, '2013-05-28 07:16:25', 64, '62.72.74.26', '2013-04-22 15:18:53', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(179, 2, 4, '2013-11-23', '2013-11-23', '18:30:00', '24:00:00', 'Spielerversammlung', 'spielerversammlung', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2013-11-13 06:22:09', '<p>Die diesjährige Spielerversammlung findet am 23.11.13 auf dem Hof Holtkamp (Barnsfeld) statt.</p><p>Nähere Infos folgen. </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(180, 1, 4, '2013-03-11', '2013-11-25', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(181, 1, 4, '2013-03-18', '2013-12-02', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(182, 1, 4, '2013-03-25', '2013-12-09', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(183, 1, 4, '2013-04-01', '2013-12-16', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(184, 1, 4, '2013-04-08', '2013-12-23', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(185, 1, 4, '2013-04-15', '2013-12-30', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(186, 1, 4, '2013-04-22', '2014-01-06', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(187, 1, 4, '2013-04-29', '2014-01-13', '19:00:00', '21:00:00', 'MONTAGS: Training HSV Senioren und Alte Herren', 'montags-training-hsv-senioren-und-alte-herren', 64, '2013-03-21 15:04:06', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(188, 1, 4, '2013-12-02', '2014-02-24', '21:00:00', '22:30:00', 'MONTAGS: Hallentraining HSV Senioren und Alte Herren', 'montags-hallentraining-hsv-senioren-und-alte-herren', 64, '2014-01-17 09:58:26', 64, '62.72.74.26', '2012-12-17 12:10:36', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2013-11-18', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(189, 2, 4, '2014-01-18', '2014-01-18', '19:00:00', '00:00:00', 'Generalversammlung vom Sportverein', 'generalversammlung-vom-sportverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-17 09:57:23', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(190, 2, 2, '2014-01-24', '2014-01-24', '18:30:00', '24:00:00', 'Generalversammlung vom Schützenverein', 'generalversammlung-vom-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-17 09:59:19', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(191, 2, 2, '2014-02-09', '2014-02-09', '11:00:00', '17:00:00', 'Tag der offenen Tür - Holthausener Schule', 'tag-der-offenen-tuer-holthausener-schule', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-20 07:30:13', 'Besichtigung der renovierten Schule', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(192, 0, 4, '2014-01-22', '2014-01-22', '19:30:00', '20:00:00', 'Versammlung des Altkreises Ahaus', 'versammlung-des-altkreises-ahaus', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-21 07:47:02', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(193, 2, 4, '2014-02-17', '2014-02-17', '19:30:00', '21:30:00', 'Versammlung Hobbyliga Borken', 'versammlung-hobbyliga-borken', 64, '2014-01-21 07:48:08', 64, '62.72.74.26', '2014-01-21 07:47:51', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(194, 2, 2, '2014-03-14', '2014-03-15', '18:30:00', '23:00:00', 'Vereinsschießen', 'vereinsschiessen', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-21 07:49:00', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(195, 2, 2, '2014-03-22', '2014-03-22', '19:00:00', '24:00:00', 'Vereinskarten', 'vereinskarten', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-01-21 07:49:40', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(196, 1, 4, '2014-03-10', '2014-03-10', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(197, 1, 4, '2014-03-29', '2014-03-29', '14:30:00', '16:15:00', 'Pokalspiel gegen Pauskickers / Heimspiel', 'pokalspiel-gegen-pauskickers--heimspiel', 64, '2014-03-06 08:37:42', 64, '62.72.74.26', '2014-03-06 08:36:44', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(198, 15, 3, '2014-04-14', '2014-04-14', '18:30:00', '20:15:00', 'Meisterschaftsspiel gg Fort. Bieling / Auswärts', 'meisterschaftsspiel-gg-fort-bieling--auswaerts', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-06 08:39:34', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(199, 1, 4, '2014-04-17', '2014-04-17', '18:30:00', '23:55:00', 'GRÜNDONNERSTAGSTRAINING ! ! ! ! ! ! ! ! ! ! !', 'gruendonnerstagstraining-----------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-06 08:42:35', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(200, 2, 1, '2014-04-18', '2014-04-18', '11:00:00', '16:00:00', 'Schule aufräumen usw ! ! ! ! ! !', 'schule-aufraeumen-usw------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-06 08:45:26', 'WER SAUFEN KANN (beim Gründonnerstagstraining), KANN AUCH ARBEITEN ! ! ! ! !', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(201, 17, 4, '2014-07-12', '2014-07-12', '14:30:00', '16:15:00', 'Pokalspiel gegen Buttenstadt / Auswärts', 'pokalspiel-gegen-buttenstadt--auswaerts', 64, '2014-07-24 06:38:31', 64, '62.72.74.26', '2014-03-06 08:47:47', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(202, 2, 2, '2014-04-26', '2014-04-26', '18:30:00', '23:55:00', 'Weinprobe', 'weinprobe', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-06 08:48:24', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(203, 1, 3, '2014-05-05', '2014-05-05', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Lupine Weseke / Heim', 'meisterschaftsspiel-gg-lupine-weseke--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:46:16', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(204, 1, 4, '2014-06-14', '2014-06-14', '14:30:00', '16:15:00', 'Pokalspiel gg Pauskicker / Auswärts', 'pokalspiel-gg-pauskicker--auswaerts', 64, '2014-06-05 10:55:00', 64, '62.72.74.26', '2014-03-08 09:47:04', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(205, 1, 3, '2014-05-14', '2014-05-14', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg SF Klein Reken / Heim', 'meisterschaftsspiel-gg-sf-klein-reken--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:47:56', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(206, 7, 3, '2014-05-19', '2014-05-19', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Cosmos Weseke / Auswärts', 'meisterschaftsspiel-gg-cosmos-weseke--auswaerts', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:48:52', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(207, 2, 1, '2014-05-24', '2014-05-24', '10:00:00', '16:00:00', 'AUFRÄUMEN UND SAUBERMACHEN fürs Schützenfest', 'aufraeumen-und-saubermachen-fuers-schuetzenfest', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:50:07', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(208, 2, 2, '2014-05-25', '2014-05-25', '18:00:00', '23:55:00', 'SCHÜTZENFEST - ÜBEN', 'schuetzenfest-ueben', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:51:06', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(209, 3, 2, '2014-05-28', '2014-05-30', '18:00:00', '00:00:00', 'SCHÜTZENFEST ! ! ! ! ! ! ! !', 'schuetzenfest--------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:52:16', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(210, 7, 3, '2014-06-11', '2014-06-11', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Brinker Jungs / Auswärts', 'meisterschaftsspiel-gg-brinker-jungs--auswaerts', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:53:32', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(211, 1, 4, '2014-06-28', '2014-06-29', '14:00:00', '18:00:00', 'HSV - WOCHENENDE (Alt-Jung / Pokalturnier)', 'hsv-wochenende-alt-jung--pokalturnier', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:54:45', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(212, 7, 3, '2014-07-02', '2014-07-02', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Lupine Weseke / Auswärts', 'meisterschaftsspiel-gg-lupine-weseke--auswaerts', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 09:56:47', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(213, 1, 3, '2014-07-07', '2014-07-07', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Brinker Jungs / Heim', 'meisterschaftsspiel-gg-brinker-jungs--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 10:25:39', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(214, 1, 4, '2014-07-12', '2014-07-12', '14:30:00', '16:15:00', 'Pokalspiel gg Buttenstadt / Heim', 'pokalspiel-gg-buttenstadt--heim', 64, '2014-03-24 10:41:12', 64, '62.72.74.26', '2014-03-08 10:26:39', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(215, 1, 4, '2014-08-09', '2014-08-09', '14:30:00', '16:15:00', 'Pokal Viertelfinae', 'pokal-viertelfinae', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 10:28:11', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(216, 2, 2, '2014-08-16', '2014-08-16', '14:00:00', '23:55:00', 'Fahrradtour Schützenverein Holthausen-Bleking', 'fahrradtour-schuetzenverein-holthausen-bleking', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 10:29:06', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(217, 1, 3, '2014-08-18', '2014-08-18', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Fort. Bieling / Heim', 'meisterschaftsspiel-gg-fort-bieling--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 10:30:22', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(218, 1, 4, '2014-08-30', '2014-08-30', '14:30:00', '16:15:00', 'Pokal Viertelfinale', 'pokal-viertelfinale', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 10:31:06', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(219, 8, 3, '2014-09-17', '2014-09-17', '18:30:00', '21:00:00', 'Meisterschaftsspiel gg SF Klein Reken / Auswärts', 'meisterschaftsspiel-gg-sf-klein-reken--auswaerts', 64, '2014-08-08 13:01:51', 64, '62.72.74.26', '2014-03-08 11:17:41', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(220, 2, 2, '2014-09-06', '2014-09-06', '14:00:00', '23:55:00', 'Kinderschützenfest und Schützenfestnachfeier', 'kinderschuetzenfest-und-schuetzenfestnachfeier', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:22:10', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(221, 1, 3, '2014-09-10', '2014-09-10', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Cosmos Weseke / Heim', 'meisterschaftsspiel-gg-cosmos-weseke--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:23:17', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(222, 1, 4, '2014-09-13', '2014-09-13', '14:30:00', '16:15:00', 'Pokalhalbfinale', 'pokalhalbfinale', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:24:03', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(223, 1, 4, '2014-10-04', '2014-10-04', '14:30:00', '16:15:00', 'Pokalhalbfinale', 'pokalhalbfinale', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:24:37', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(224, 1, 4, '2014-10-18', '2014-10-18', '14:30:00', '16:15:00', 'POKALFINALE', 'pokalfinale', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:25:15', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(225, 2, 4, '2014-10-25', '2014-10-25', '19:30:00', '23:55:00', 'MEISTERSCHAFTSSPARTY ! ! ! ! ! ! !', 'meisterschaftssparty-------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-03-08 11:25:53', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(226, 1, 4, '2014-03-17', '2014-03-17', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(227, 1, 4, '2014-03-24', '2014-03-24', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(228, 1, 4, '2014-03-31', '2014-03-31', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(229, 1, 4, '2014-04-07', '2014-04-07', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(230, 1, 4, '2014-04-14', '2014-04-14', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(231, 1, 4, '2014-04-21', '2014-04-21', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(232, 1, 4, '2014-04-28', '2014-04-28', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(233, 2, 1, '2014-05-03', '2014-05-03', NULL, NULL, 'ARBEITSEINSATZ an der Schule (Aufräumen fürs SchüFe)', 'arbeitseinsatz-an-der-schule-aufraeumen-fuers-schuefe', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-04-25 14:57:15', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(234, 1, 4, '2014-05-05', '2014-05-05', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(235, 1, 4, '2014-05-12', '2014-05-12', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(236, 2, 4, '2014-06-16', '2014-06-16', '18:00:00', '19:45:00', 'Vorrunde WM 2014 - Deutschland - Portugal', 'vorrunde-wm-2014-deutschland-portugal', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:43:54', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(237, 2, 4, '2014-06-21', '2014-06-21', '21:00:00', '22:45:00', 'Vorrunde WM 2014 Deutschland - Ghana', 'vorrunde-wm-2014-deutschland-ghana', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:44:47', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(238, 2, 4, '2014-06-26', '2014-06-26', '18:00:00', '19:45:00', 'Vorrunde WM 2014 - Deutschland - USW', 'vorrunde-wm-2014-deutschland-usw', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:45:38', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(239, 2, 4, '2014-06-30', '2014-06-30', '22:00:00', '23:45:00', 'Mögliches Achtelfinale WM 2014', 'moegliches-achtelfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:46:29', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(240, 2, 4, '2014-07-01', '2014-07-01', '22:00:00', '23:45:00', 'Mögliches Achtelfinale WM 2014', 'moegliches-achtelfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:46:57', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(241, 2, 4, '2014-07-04', '2014-07-04', '22:00:00', '23:45:00', 'Mögliches Viertelfinale WM 2014', 'moegliches-viertelfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:47:45', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(242, 2, 4, '2014-07-05', '2014-07-05', '18:00:00', '19:45:00', 'Mögliches Viertelfinale WM 2014', 'moegliches-viertelfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:48:21', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(243, 2, 4, '2014-07-08', '2014-07-08', '22:00:00', '23:45:00', 'Mögliches Halbfinale WM 2014', 'moegliches-halbfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:48:57', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(244, 2, 4, '2014-07-09', '2014-07-09', '22:00:00', '23:45:00', 'Mögliches Halbfinale WM 2014', 'moegliches-halbfinale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:49:32', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(245, 2, 4, '2014-07-13', '2014-07-13', '21:00:00', '22:45:00', 'FINALE WM 2014', 'finale-wm-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-05-07 10:50:10', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(246, 1, 4, '2014-05-19', '2014-05-19', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(247, 1, 4, '2014-05-26', '2014-05-26', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(248, 1, 4, '2014-06-02', '2014-06-02', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(249, 1, 4, '2014-06-09', '2014-06-09', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(250, 1, 4, '2014-06-16', '2014-06-16', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(251, 1, 4, '2014-06-23', '2014-06-23', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(252, 1, 4, '2014-06-30', '2014-06-30', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(253, 1, 4, '2014-07-07', '2014-07-07', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(254, 1, 4, '2014-07-14', '2014-07-14', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(255, 1, 4, '2014-07-21', '2014-07-21', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(256, 1, 4, '2014-07-28', '2014-07-28', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(257, 1, 3, '2014-07-30', '2014-07-30', '19:00:00', '21:00:00', 'Meisterschaftsspiel gg Brinker Jungs / Heim', 'meisterschaftsspiel-gg-brinker-jungs--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-07-24 06:31:12', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(258, 1, 4, '2014-09-13', '2014-09-13', '14:00:00', '23:00:00', 'HSV Tagestour', 'hsv-tagestour', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-07-24 06:32:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(259, 1, 2, '2014-08-13', '2014-08-13', '19:00:00', '00:00:00', 'NRW Filmnacht in Holthausen', 'nrw-filmnacht-in-holthausen', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-07-24 06:36:44', '<p>&nbsp;</p><p>Dieses Jahr macht die NRW - Filmnacht Station in Holthausen-Bleking</p><p>Gezeigt wird der Film "Gefährten"</p><p>Los geht es ab 19 Uhr mit einem Vorprogramm - u.a. spielen die Jagdhornbläser von Holthausen, Hufeisenwerfen und Ponyreiten ! ! ! </p><p>Ab 21 Uhr startet dann die Filmvorführung auf Großleinwand</p><p>&nbsp;</p><p>Für das leibliche Wohl wird selbstverständlich gesorgt - kühle Getränke und Würstchen vom Grill</p><p>&nbsp;</p><p>Es wäre schön, wenn vom Sport- und Schützenverein viele zum helfen dabei wären ! ! ! !</p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(260, 1, 4, '2014-08-04', '2014-08-04', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1);
INSERT INTO `jos_eventlist_events` (`id`, `locid`, `catsid`, `dates`, `enddates`, `times`, `endtimes`, `title`, `alias`, `created_by`, `modified`, `modified_by`, `author_ip`, `created`, `datdescription`, `meta_keywords`, `meta_description`, `recurrence_number`, `recurrence_type`, `recurrence_counter`, `datimage`, `checked_out`, `checked_out_time`, `registra`, `unregistra`, `published`) VALUES
(261, 1, 4, '2014-08-11', '2014-08-11', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(262, 1, 4, '2014-08-18', '2014-08-18', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(263, 1, 4, '2014-08-25', '2014-08-25', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(264, 1, 3, '2014-09-03', '2014-09-03', '19:00:00', '20:45:00', 'Meisterschaftsspiel gg Brinker Jungs / Heim', 'meisterschaftsspiel-gg-brinker-jungs--heim', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-08-25 10:13:38', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(265, 1, 4, '2014-09-01', '2014-09-01', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(266, 1, 4, '2014-09-08', '2014-09-08', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(267, 1, 4, '2014-09-15', '2014-09-15', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(268, 1, 4, '2014-09-22', '2014-09-22', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(269, 1, 4, '2014-09-29', '2014-09-29', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(270, 1, 4, '2014-10-06', '2014-10-06', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(271, 1, 4, '2014-10-13', '2014-10-13', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(272, 2, 4, '2014-11-28', '2014-11-28', '19:00:00', '24:00:00', 'Spielerversammlung 2014', 'spielerversammlung-2014', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-10-08 14:18:51', '<p>Rückblick auf die Saison 2014</p><p>Kassenberichte</p><p>Wahlen</p><p>Ausblick auf die Saison 2015</p><p>Termine 2015</p><p>Infos zur großen Tour 2015</p><p>Verschiedenes </p>', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(273, 1, 4, '2014-10-20', '2014-10-20', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(274, 1, 4, '2014-10-27', '2014-10-27', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(275, 1, 4, '2014-11-03', '2014-11-03', '19:00:00', '21:00:00', 'TRAINING (Senioren und Alte Herren)', 'training-senioren-und-alte-herren', 64, '2014-03-03 12:52:40', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2014-11-17', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(276, 16, 4, '2014-11-10', '2014-11-10', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(277, 16, 4, '2014-11-17', '2014-11-17', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(278, 16, 4, '2014-11-24', '2014-11-24', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(279, 16, 4, '2014-12-01', '2014-12-01', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(280, 16, 4, '2014-12-08', '2014-12-08', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(281, 16, 4, '2014-12-15', '2014-12-15', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(282, 16, 4, '2014-12-22', '2014-12-22', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(283, 13, 6, '2015-01-03', '2015-01-04', '12:00:00', '12:00:00', 'Hallenturnier BKV (3-fach Halle Borken)', 'hallenturnier-bkv-3-fach-halle-borken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 13:58:55', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(284, 2, 4, '2015-01-17', '2015-01-17', '19:00:00', '00:00:00', 'GENERALVERSAMMLUNG HSV', 'generalversammlung-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:00:00', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(285, 2, 2, '2015-01-23', '2015-01-23', '19:00:00', '00:00:00', 'Generalversammlung Schützenverein', 'generalversammlung-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:00:50', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(286, 1, 4, '2015-02-23', '2015-11-23', '19:00:00', '21:00:00', 'TRAINING Senioren und Alte Herren', 'training-senioren-und-alte-herren', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:02:35', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-11-23', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(287, 2, 2, '2015-03-06', '2015-03-07', '18:30:00', '00:00:00', 'Vereinsschießen Schützenverein', 'vereinsschiessen-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:03:59', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(288, 2, 2, '2015-03-14', '2015-03-14', '18:30:00', '00:00:00', 'Vereinskarten Schützenverein', 'vereinskarten-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:04:44', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(289, 2, 2, '2015-05-03', '2015-05-03', '19:00:00', '00:00:00', 'SCHÜTZENFEST ÜBEN ! ! ! ! ! !', 'schuetzenfest-ueben------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:05:28', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(290, 3, 2, '2015-05-13', '2015-05-15', NULL, NULL, 'SCHÜTZENFEST ! ! ! ! ! !', 'schuetzenfest------', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:06:17', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(291, 1, 4, '2015-06-27', '2015-06-28', NULL, NULL, 'HSV Fussballwochenende', 'hsv-fussballwochenende', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:07:01', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(292, 2, 2, '2015-08-15', '2015-08-15', NULL, NULL, 'Fahrradtour Schützenverein', 'fahrradtour-schuetzenverein', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:07:48', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(293, 2, 2, '2015-09-05', '2015-09-05', NULL, NULL, 'Kinder Schützenfest + Schützenfestnachfeier', 'kinder-schuetzenfest--schuetzenfestnachfeier', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2014-12-22 14:08:34', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(294, 16, 4, '2014-12-29', '2014-12-29', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(295, 16, 4, '2015-01-05', '2015-01-05', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(296, 16, 4, '2015-01-12', '2015-01-12', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(297, 16, 4, '2015-01-19', '2015-01-19', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(298, 16, 4, '2015-01-26', '2015-01-26', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(299, 1, 4, '2015-03-28', '2015-03-28', '19:30:00', '00:00:00', 'KICKER - TURNIER in der Halle von Hugo Frenk', 'kicker-turnier-in-der-halle-von-hugo-frenk', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-01-21 14:23:40', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(300, 1, 4, '2015-04-02', '2015-04-02', '19:00:00', '00:00:00', 'GRÜNDONNERSTAGSTRAINING', 'gruendonnerstagstraining', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-01-21 14:25:04', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(301, 16, 4, '2015-02-02', '2015-02-02', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(302, 16, 4, '2015-02-09', '2015-02-09', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(303, 16, 4, '2015-02-16', '2015-02-16', '21:00:00', '22:45:00', 'HALLENTRAINING (Senioren und Alte Herren)', 'hallentraining-senioren-und-alte-herren', 64, '2014-11-04 08:56:43', 64, '62.72.74.26', '2014-02-27 16:11:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 1, 2, '2015-02-16', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(304, 1, 4, '2015-04-18', '2015-04-18', '14:30:00', '16:15:00', 'Pokalspiel HSV - Lupine Weseke', 'pokalspiel-hsv-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:01:08', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, -1),
(305, 1, 3, '2015-04-27', '2015-04-27', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - Cosmos Weseke', 'meisterschaftsspiel-hsv-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:02:00', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(306, 1, 4, '2015-05-23', '2015-05-23', '14:30:00', '16:15:00', 'Pokalspiel HSV - RW Trimbach', 'pokalspiel-hsv-rw-trimbach', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:02:53', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(307, 1, 3, '2015-05-27', '2015-05-27', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - Brinker Jungs', 'meisterschaftsspiel-hsv-brinker-jungs', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:03:37', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(308, 18, 4, '2015-06-04', '2015-06-05', '12:00:00', '18:00:00', 'HOOKSTURNIER - VFL Ramsdorf', 'hooksturnier-vfl-ramsdorf', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:05:37', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(309, 15, 3, '2015-06-08', '2015-06-08', '19:00:00', '20:45:00', 'Meisterschaftsspiel Fort. Bieling - HSV', 'meisterschaftsspiel-fort-bieling-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:08:15', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(310, 1, 3, '2015-06-10', '2015-06-10', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - Böinghook', 'meisterschaftsspiel-hsv-boeinghook', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:13:13', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(311, 1, 4, '2015-06-13', '2015-06-13', '14:30:00', '16:15:00', 'Pokalspiel Vreden - HSV', 'pokalspiel-vreden-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:14:06', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(312, 7, 3, '2015-06-22', '2015-06-22', '19:00:00', '20:45:00', 'Meisterschaftsspiel Lupine Weseke - HSV', 'meisterschaftsspiel-lupine-weseke-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:14:55', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(313, 7, 3, '2015-07-04', '2015-07-04', '15:00:00', '16:45:00', 'Meisterschaftsspiel Cosmos Weseke - HSV', 'meisterschaftsspiel-cosmos-weseke-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:15:51', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(314, 1, 4, '2015-07-11', '2015-07-11', '14:30:00', '16:15:00', 'Pokalspiel Wendfeld - HSV', 'pokalspiel-wendfeld-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:16:28', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(315, 7, 3, '2015-07-15', '2015-07-15', '19:00:00', '20:45:00', 'Meisterschaftsspiel Brinker Jungs - HSV', 'meisterschaftsspiel-brinker-jungs-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:17:35', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(316, 1, 4, '2015-07-25', '2015-07-25', '14:30:00', '16:15:00', 'Pokalspiel HSV - Buttenstadt', 'pokalspiel-hsv-buttenstadt', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:18:17', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(317, 1, 3, '2015-07-29', '2015-07-29', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - SF Klein Reken', 'meisterschaftsspiel-hsv-sf-klein-reken', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:19:07', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(318, 1, 3, '2015-08-03', '2015-08-03', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - Fort, Bieling', 'meisterschaftsspiel-hsv-fort-bieling', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:20:04', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(319, 7, 3, '2015-08-20', '2015-08-20', '19:00:00', '20:45:00', 'Meisterschaftsspiel Böinghook - HSV', 'meisterschaftsspiel-boeinghook-hsv', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:20:48', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(320, 1, 3, '2015-09-14', '2015-09-14', '19:00:00', '20:45:00', 'Meisterschaftsspiel HSV - Lupine Weseke', 'meisterschaftsspiel-hsv-lupine-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:21:41', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1),
(321, 7, 3, '2015-10-17', '2015-10-17', '20:00:00', '00:00:00', 'Meisterschaftsfeier (Ausrichter Cosmos Weseke)', 'meisterschaftsfeier-ausrichter-cosmos-weseke', 64, '0000-00-00 00:00:00', 0, '62.72.74.26', '2015-04-10 11:22:35', '', '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 0, '0000-00-00', '', 0, '0000-00-00 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_groupmembers`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_groupmembers` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `member` int(11) NOT NULL DEFAULT '0'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_groups`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_groups` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_register`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_register` (
`id` int(11) unsigned NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `uregdate` varchar(50) NOT NULL DEFAULT '',
  `uip` varchar(15) NOT NULL DEFAULT ''
) DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_settings`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_settings` (
  `id` int(11) NOT NULL,
  `oldevent` tinyint(4) NOT NULL,
  `minus` tinyint(4) NOT NULL,
  `showtime` tinyint(4) NOT NULL,
  `showtitle` tinyint(4) NOT NULL,
  `showlocate` tinyint(4) NOT NULL,
  `showcity` tinyint(4) NOT NULL,
  `showmapserv` tinyint(4) NOT NULL,
  `map24id` varchar(20) NOT NULL,
  `gmapkey` varchar(255) NOT NULL,
  `tablewidth` varchar(20) NOT NULL,
  `datewidth` varchar(20) NOT NULL,
  `titlewidth` varchar(20) NOT NULL,
  `locationwidth` varchar(20) NOT NULL,
  `citywidth` varchar(20) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `titlename` varchar(100) NOT NULL,
  `locationname` varchar(100) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `formatdate` varchar(100) NOT NULL,
  `formattime` varchar(100) NOT NULL,
  `timename` varchar(50) NOT NULL,
  `showdetails` tinyint(4) NOT NULL,
  `showtimedetails` tinyint(4) NOT NULL,
  `showevdescription` tinyint(4) NOT NULL,
  `showdetailstitle` tinyint(4) NOT NULL,
  `showdetailsadress` tinyint(4) NOT NULL,
  `showlocdescription` tinyint(4) NOT NULL,
  `showlinkvenue` tinyint(4) NOT NULL,
  `showdetlinkvenue` tinyint(4) NOT NULL,
  `delivereventsyes` tinyint(4) NOT NULL,
  `mailinform` tinyint(4) NOT NULL,
  `mailinformrec` varchar(150) NOT NULL,
  `mailinformuser` tinyint(4) NOT NULL,
  `datdesclimit` varchar(15) NOT NULL,
  `autopubl` tinyint(4) NOT NULL,
  `deliverlocsyes` tinyint(4) NOT NULL,
  `autopublocate` tinyint(4) NOT NULL,
  `showcat` tinyint(4) NOT NULL,
  `catfrowidth` varchar(20) NOT NULL,
  `catfroname` varchar(100) NOT NULL,
  `evdelrec` tinyint(4) NOT NULL,
  `evpubrec` tinyint(4) NOT NULL,
  `locdelrec` tinyint(4) NOT NULL,
  `locpubrec` tinyint(4) NOT NULL,
  `sizelimit` varchar(20) NOT NULL,
  `imagehight` varchar(20) NOT NULL,
  `imagewidth` varchar(20) NOT NULL,
  `gddisabled` tinyint(4) NOT NULL,
  `imageenabled` tinyint(4) NOT NULL,
  `comunsolution` tinyint(4) NOT NULL,
  `comunoption` tinyint(4) NOT NULL,
  `catlinklist` tinyint(4) NOT NULL,
  `showfroregistra` tinyint(4) NOT NULL,
  `showfrounregistra` tinyint(4) NOT NULL,
  `eventedit` tinyint(4) NOT NULL,
  `eventeditrec` tinyint(4) NOT NULL,
  `eventowner` tinyint(4) NOT NULL,
  `venueedit` tinyint(4) NOT NULL,
  `venueeditrec` tinyint(4) NOT NULL,
  `venueowner` tinyint(4) NOT NULL,
  `lightbox` tinyint(4) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `showstate` tinyint(4) NOT NULL,
  `statename` varchar(100) NOT NULL,
  `statewidth` varchar(20) NOT NULL,
  `regname` tinyint(4) NOT NULL,
  `storeip` tinyint(4) NOT NULL,
  `commentsystem` tinyint(4) NOT NULL,
  `lastupdate` varchar(20) NOT NULL DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `jos_eventlist_settings`
--

INSERT INTO `jos_eventlist_settings` (`id`, `oldevent`, `minus`, `showtime`, `showtitle`, `showlocate`, `showcity`, `showmapserv`, `map24id`, `gmapkey`, `tablewidth`, `datewidth`, `titlewidth`, `locationwidth`, `citywidth`, `datename`, `titlename`, `locationname`, `cityname`, `formatdate`, `formattime`, `timename`, `showdetails`, `showtimedetails`, `showevdescription`, `showdetailstitle`, `showdetailsadress`, `showlocdescription`, `showlinkvenue`, `showdetlinkvenue`, `delivereventsyes`, `mailinform`, `mailinformrec`, `mailinformuser`, `datdesclimit`, `autopubl`, `deliverlocsyes`, `autopublocate`, `showcat`, `catfrowidth`, `catfroname`, `evdelrec`, `evpubrec`, `locdelrec`, `locpubrec`, `sizelimit`, `imagehight`, `imagewidth`, `gddisabled`, `imageenabled`, `comunsolution`, `comunoption`, `catlinklist`, `showfroregistra`, `showfrounregistra`, `eventedit`, `eventeditrec`, `eventowner`, `venueedit`, `venueeditrec`, `venueowner`, `lightbox`, `meta_keywords`, `meta_description`, `showstate`, `statename`, `statewidth`, `regname`, `storeip`, `commentsystem`, `lastupdate`, `checked_out`, `checked_out_time`) VALUES
(1, 2, 1, 0, 1, 1, 0, 0, '', '', '100%', '15%', '25%', '', '', 'Datum', 'Titel', 'Verantstaltungsort', 'Stadt', '%d.%m.%Y', '%H.%M', 'h', 1, 0, 1, 1, 1, 1, 1, 2, 21, 0, 'example@example.com', 0, '1000', 21, 21, 21, 1, '20%', 'Type', 1, 1, 1, 1, '100', '100', '100', 0, 1, 0, 0, 1, 2, 2, 21, 1, 0, 21, 1, 0, 0, '[title], [a_name], [catsid], [times]', 'The event titled [title] starts on [dates]!', 0, 'State', '0', 0, 1, 0, '1429574756', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_eventlist_venues`
--

CREATE TABLE IF NOT EXISTS `jos_eventlist_venues` (
`id` int(11) unsigned NOT NULL,
  `venue` varchar(50) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `street` varchar(50) DEFAULT NULL,
  `plz` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `locdescription` mediumtext NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `locimage` varchar(100) NOT NULL DEFAULT '',
  `map` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(15) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `jos_eventlist_venues`
--

INSERT INTO `jos_eventlist_venues` (`id`, `venue`, `alias`, `url`, `street`, `plz`, `city`, `state`, `country`, `locdescription`, `meta_keywords`, `meta_description`, `locimage`, `map`, `created_by`, `author_ip`, `created`, `modified`, `modified_by`, `published`, `checked_out`, `checked_out_time`, `ordering`) VALUES
(1, 'Fussballplatz Holthausen', 'fussballplatz', '', 'Kloaverblatt 5', '46342', 'Holthausen', 'NRW', 'DE', '', '', '', '', 0, 62, '192.168.2.180', '2008-02-15 17:15:35', '2008-02-18 06:57:31', 65, 1, 0, '0000-00-00 00:00:00', 13),
(2, 'Vereinshaus', 'vereinshaus', '', 'Kloaverblatt 5', '46342', 'Holthausen', 'NRW', 'DE', '', '', '', '', 0, 65, '91.0.162.154', '2008-02-17 11:11:48', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 14),
(3, 'Schützenfestzelt', 'zelt', '', 'Holthausener Straße', '', '', '', '', '', '', '', '', 0, 65, '91.0.162.154', '2008-02-17 11:12:25', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 15),
(7, 'Weseke', 'weseke', '', '', '', '', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-03-28 10:38:24', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 12),
(8, 'Reken - Sportplatz', 'reken-sportplatz', '', '', '', '', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-03-28 10:40:25', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 11),
(9, 'Nünning Real Schule', 'nuenning-real-schule', '', '', '', 'Borken', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-11-05 11:34:42', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 10),
(10, 'Halle - Npnning Real Schule', 'halle-npnning-real-schule', '', '', '', 'Borken', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-11-05 11:36:31', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 9),
(11, 'Halle - "Sporthalle am Rathaus"', 'halle-qsporthalle-am-rathausq', '', '', '', 'Reken', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-11-05 11:37:30', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 8),
(12, 'Sporthalle am Rathaus', 'sporthalle-am-rathaus', '', '', '', 'Reken', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-11-05 11:41:54', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 7),
(13, 'Dreifachhalle Borken am Berufskolleg', 'dreifachhalle-borken-am-berufskolleg', '', '', '', 'Borken', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-12-18 15:54:50', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 6),
(14, 'Soccerhalle Borken', 'soccerhalle-borken', '', 'Hansestr.', '', '', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2009-12-23 13:47:03', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 5),
(15, 'Sportplatz Velen', 'sportplatz-velen', '', '', '', '', '', '', '', '', '', '', 0, 64, '192.168.178.23', '2010-02-27 06:49:10', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 4),
(16, 'Sporthalle an der Kirche', 'sporthalle-an-der-kirche', '', '', '', 'Ramsdorf', '', '', '', '', '', '', 0, 64, '62.72.74.26', '2012-12-17 12:09:25', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3),
(17, 'Sportplatz Stadtlohn', 'sportplatz-stadtlohn', '', '', '', '', '', '', '', '', '', '', 0, 64, '62.72.74.26', '2014-03-06 08:46:49', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2),
(18, 'Sportplatz VFL Ramsdorf', 'sportplatz-vfl-ramsdorf', '', '', '', '', '', '', '', '', '', '', 0, 64, '62.72.74.26', '2015-04-10 11:04:52', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_Attribute`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_Attribute` (
`id` int(11) NOT NULL,
  `attrType` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL
) AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `jos_fussball_Attribute`
--

INSERT INTO `jos_fussball_Attribute` (`id`, `attrType`, `name`, `displayName`) VALUES
(1, 'date', 'Geburtsdatum', NULL),
(2, 'text', 'Spitzname', NULL),
(3, 'text', 'Trikotnummer', NULL),
(4, 'int', 'Groesse', 'Größe (in cm)'),
(5, 'int', 'Gewicht', 'Gewicht (in kg)'),
(6, 'text', 'Beim_HSV_seit', 'Beim HSV seit'),
(7, 'text', 'Lieblingsposition', ''),
(8, 'text', 'Lieblingsverein', 'Lieblingsverein (neben dem  großen HSV)');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_AttributeType`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_AttributeType` (
  `name` varchar(20) NOT NULL,
  `beschreibung` varchar(255) DEFAULT NULL
) ;

--
-- Daten für Tabelle `jos_fussball_AttributeType`
--

INSERT INTO `jos_fussball_AttributeType` (`name`, `beschreibung`) VALUES
('date', 'Datum'),
('double', 'Flie223kommazahl'),
('img', 'Image'),
('int', 'Vorzeichenbehaftete Ganzzahl'),
('text', 'Text');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_AttributeValue`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_AttributeValue` (
`id` int(11) NOT NULL,
  `idAttribute` int(11) NOT NULL,
  `idSpieler` int(11) NOT NULL,
  `boolValue` tinyint(1) DEFAULT NULL,
  `intValue` int(11) DEFAULT NULL,
  `textValue` text,
  `doubleValue` double DEFAULT NULL,
  `dateValue` date DEFAULT NULL,
  `imgValue` text
) AUTO_INCREMENT=137 ;

--
-- Daten für Tabelle `jos_fussball_AttributeValue`
--

INSERT INTO `jos_fussball_AttributeValue` (`id`, `idAttribute`, `idSpieler`, `boolValue`, `intValue`, `textValue`, `doubleValue`, `dateValue`, `imgValue`) VALUES
(1, 1, 5, NULL, NULL, NULL, NULL, '0000-00-00', NULL),
(2, 1, 13, NULL, NULL, NULL, NULL, '1977-11-29', NULL),
(3, 2, 13, NULL, NULL, 'Rossi', NULL, NULL, NULL),
(4, 3, 13, NULL, NULL, '16', NULL, NULL, NULL),
(5, 4, 13, NULL, 193, NULL, NULL, NULL, NULL),
(6, 5, 13, NULL, 83, NULL, NULL, NULL, NULL),
(7, 6, 13, NULL, NULL, 'Jugend', NULL, NULL, NULL),
(8, 2, 5, NULL, NULL, 'Manni', NULL, NULL, NULL),
(9, 3, 5, NULL, NULL, '14', NULL, NULL, NULL),
(10, 4, 5, NULL, 186, NULL, NULL, NULL, NULL),
(11, 5, 5, NULL, 80, NULL, NULL, NULL, NULL),
(12, 6, 5, NULL, NULL, 'immer', NULL, NULL, NULL),
(13, 1, 8, NULL, NULL, NULL, NULL, '0000-00-00', NULL),
(14, 2, 8, NULL, NULL, 'Benny', NULL, NULL, NULL),
(15, 3, 8, NULL, NULL, '7', NULL, NULL, NULL),
(16, 4, 8, NULL, 0, NULL, NULL, NULL, NULL),
(17, 5, 8, NULL, 0, NULL, NULL, NULL, NULL),
(18, 6, 8, NULL, NULL, '', NULL, NULL, NULL),
(19, 7, 5, NULL, NULL, 'Mittelfeld', NULL, NULL, NULL),
(20, 8, 5, NULL, NULL, 'Schalke 04', NULL, NULL, NULL),
(21, 1, 21, NULL, NULL, NULL, NULL, '1983-01-28', NULL),
(22, 2, 21, NULL, NULL, '', NULL, NULL, NULL),
(23, 3, 21, NULL, NULL, '11', NULL, NULL, NULL),
(24, 4, 21, NULL, 0, NULL, NULL, NULL, NULL),
(25, 5, 21, NULL, 0, NULL, NULL, NULL, NULL),
(26, 6, 21, NULL, NULL, '', NULL, NULL, NULL),
(27, 7, 21, NULL, NULL, '', NULL, NULL, NULL),
(28, 8, 21, NULL, NULL, '', NULL, NULL, NULL),
(29, 1, 7, NULL, NULL, NULL, NULL, '1988-09-23', NULL),
(30, 2, 7, NULL, NULL, 'Buddy', NULL, NULL, NULL),
(31, 3, 7, NULL, NULL, '8', NULL, NULL, NULL),
(32, 4, 7, NULL, 180, NULL, NULL, NULL, NULL),
(33, 5, 7, NULL, 74, NULL, NULL, NULL, NULL),
(34, 6, 7, NULL, NULL, '2004', NULL, NULL, NULL),
(35, 7, 7, NULL, NULL, 'Verteidiger', NULL, NULL, NULL),
(36, 8, 7, NULL, NULL, 'Borussia Dortmund', NULL, NULL, NULL),
(37, 1, 28, NULL, NULL, NULL, NULL, '1992-01-27', NULL),
(38, 2, 28, NULL, NULL, 'henne', NULL, NULL, NULL),
(39, 3, 28, NULL, NULL, '15', NULL, NULL, NULL),
(40, 4, 28, NULL, 182, NULL, NULL, NULL, NULL),
(41, 5, 28, NULL, 75, NULL, NULL, NULL, NULL),
(42, 6, 28, NULL, NULL, '2008', NULL, NULL, NULL),
(43, 7, 28, NULL, NULL, ' mittelfeld', NULL, NULL, NULL),
(44, 8, 28, NULL, NULL, 'schalke 04', NULL, NULL, NULL),
(45, 1, 25, NULL, NULL, NULL, NULL, '1992-05-15', NULL),
(46, 2, 25, NULL, NULL, '', NULL, NULL, NULL),
(47, 3, 25, NULL, NULL, '24', NULL, NULL, NULL),
(48, 4, 25, NULL, 179, NULL, NULL, NULL, NULL),
(49, 5, 25, NULL, 61, NULL, NULL, NULL, NULL),
(50, 6, 25, NULL, NULL, '2008', NULL, NULL, NULL),
(51, 7, 25, NULL, NULL, 'Linkes Mittelfeld', NULL, NULL, NULL),
(52, 8, 25, NULL, NULL, 'Borussia Dortmund', NULL, NULL, NULL),
(53, 1, 29, NULL, NULL, NULL, NULL, '1984-08-04', NULL),
(54, 2, 29, NULL, NULL, '', NULL, NULL, NULL),
(55, 3, 29, NULL, NULL, '23', NULL, NULL, NULL),
(56, 4, 29, NULL, 185, NULL, NULL, NULL, NULL),
(57, 5, 29, NULL, 80, NULL, NULL, NULL, NULL),
(58, 6, 29, NULL, NULL, '1994', NULL, NULL, NULL),
(59, 7, 29, NULL, NULL, 'defensiv Mittelfeld', NULL, NULL, NULL),
(60, 8, 29, NULL, NULL, 'Bayern München', NULL, NULL, NULL),
(61, 7, 13, NULL, NULL, 'Stürmer', NULL, NULL, NULL),
(62, 8, 13, NULL, NULL, 'S04', NULL, NULL, NULL),
(63, 1, 18, NULL, NULL, NULL, NULL, '1982-07-20', NULL),
(64, 2, 18, NULL, NULL, 'Sibbi', NULL, NULL, NULL),
(65, 3, 18, NULL, NULL, '4', NULL, NULL, NULL),
(66, 4, 18, NULL, 190, NULL, NULL, NULL, NULL),
(67, 5, 18, NULL, 0, NULL, NULL, NULL, NULL),
(68, 6, 18, NULL, NULL, 'gute Frage, 5 Jahre?', NULL, NULL, NULL),
(69, 7, 18, NULL, NULL, 'an der Theke', NULL, NULL, NULL),
(70, 8, 18, NULL, NULL, 'FC Schalke 04', NULL, NULL, NULL),
(71, 7, 8, NULL, NULL, 'Mittelfeld', NULL, NULL, NULL),
(72, 8, 8, NULL, NULL, 'Borussia Dortmund', NULL, NULL, NULL),
(73, 1, 9, NULL, NULL, NULL, NULL, '1983-02-13', NULL),
(74, 2, 9, NULL, NULL, 'Mäkkes', NULL, NULL, NULL),
(75, 3, 9, NULL, NULL, '9', NULL, NULL, NULL),
(76, 4, 9, NULL, 183, NULL, NULL, NULL, NULL),
(77, 5, 9, NULL, 75, NULL, NULL, NULL, NULL),
(78, 6, 9, NULL, NULL, 'ich das Licht der Welt erblickt habe ', NULL, NULL, NULL),
(79, 7, 9, NULL, NULL, 'Zentrales Mittelfeld', NULL, NULL, NULL),
(80, 8, 9, NULL, NULL, 'FC Schalke 04; Schützenverein Holthausen', NULL, NULL, NULL),
(81, 1, 6, NULL, NULL, NULL, NULL, '1991-06-16', NULL),
(82, 2, 6, NULL, NULL, '', NULL, NULL, NULL),
(83, 3, 6, NULL, NULL, '', NULL, NULL, NULL),
(84, 4, 6, NULL, 183, NULL, NULL, NULL, NULL),
(85, 5, 6, NULL, 0, NULL, NULL, NULL, NULL),
(86, 6, 6, NULL, NULL, 'Bei den Senioren ca. 2006', NULL, NULL, NULL),
(87, 7, 6, NULL, NULL, 'Abwehr', NULL, NULL, NULL),
(88, 8, 6, NULL, NULL, 'FC Schalke 04', NULL, NULL, NULL),
(89, 1, 10, NULL, NULL, NULL, NULL, '1981-12-28', NULL),
(90, 2, 10, NULL, NULL, 'Twix oder Präsi', NULL, NULL, NULL),
(91, 3, 10, NULL, NULL, '10', NULL, NULL, NULL),
(92, 4, 10, NULL, 184, NULL, NULL, NULL, NULL),
(93, 5, 10, NULL, 82, NULL, NULL, NULL, NULL),
(94, 6, 10, NULL, NULL, '2001', NULL, NULL, NULL),
(95, 7, 10, NULL, NULL, 'Sturm oder am Rand stehen und den Spielern Anweisungen geben', NULL, NULL, NULL),
(96, 8, 10, NULL, NULL, 'FC Bayern München, Schützenverein Holthausen / Bleking und St. Johanni Borken', NULL, NULL, NULL),
(97, 1, 24, NULL, NULL, NULL, NULL, '0000-00-00', NULL),
(98, 2, 24, NULL, NULL, 'Rainey', NULL, NULL, NULL),
(99, 3, 24, NULL, NULL, '5', NULL, NULL, NULL),
(100, 4, 24, NULL, 190, NULL, NULL, NULL, NULL),
(101, 5, 24, NULL, 102, NULL, NULL, NULL, NULL),
(102, 6, 24, NULL, NULL, 'ca 2001', NULL, NULL, NULL),
(103, 7, 24, NULL, NULL, 'Abwehr, Mittelfeld', NULL, NULL, NULL),
(104, 8, 24, NULL, NULL, 'Bayern München', NULL, NULL, NULL),
(105, 1, 23, NULL, NULL, NULL, NULL, '1985-08-23', NULL),
(106, 2, 23, NULL, NULL, 'Schlotti, König', NULL, NULL, NULL),
(107, 3, 23, NULL, NULL, 'variabel', NULL, NULL, NULL),
(108, 4, 23, NULL, 185, NULL, NULL, NULL, NULL),
(109, 5, 23, NULL, 75, NULL, NULL, NULL, NULL),
(110, 6, 23, NULL, NULL, 'einigen Jahren', NULL, NULL, NULL),
(111, 7, 23, NULL, NULL, 'überall einsetzbar', NULL, NULL, NULL),
(112, 8, 23, NULL, NULL, 'der große BvB', NULL, NULL, NULL),
(113, 1, 11, NULL, NULL, NULL, NULL, '1990-08-21', NULL),
(114, 2, 11, NULL, NULL, 'Gomez', NULL, NULL, NULL),
(115, 3, 11, NULL, NULL, '33', NULL, NULL, NULL),
(116, 4, 11, NULL, 190, NULL, NULL, NULL, NULL),
(117, 5, 11, NULL, 85, NULL, NULL, NULL, NULL),
(118, 6, 11, NULL, NULL, '2006', NULL, NULL, NULL),
(119, 7, 11, NULL, NULL, 'Stürmer', NULL, NULL, NULL),
(120, 8, 11, NULL, NULL, 'VfB Stuttgart', NULL, NULL, NULL),
(121, 1, 33, NULL, NULL, NULL, NULL, '1993-08-17', NULL),
(122, 2, 33, NULL, NULL, 'Zé', NULL, NULL, NULL),
(123, 3, 33, NULL, NULL, '17', NULL, NULL, NULL),
(124, 4, 33, NULL, 180, NULL, NULL, NULL, NULL),
(125, 5, 33, NULL, 82, NULL, NULL, NULL, NULL),
(126, 6, 33, NULL, NULL, '2009', NULL, NULL, NULL),
(127, 7, 33, NULL, NULL, '', NULL, NULL, NULL),
(128, 8, 33, NULL, NULL, 'Fc Schalke 04', NULL, NULL, NULL),
(129, 1, 45, NULL, NULL, NULL, NULL, '1994-03-17', NULL),
(130, 2, 45, NULL, NULL, 'Selle', NULL, NULL, NULL),
(131, 3, 45, NULL, NULL, '2', NULL, NULL, NULL),
(132, 4, 45, NULL, 182, NULL, NULL, NULL, NULL),
(133, 5, 45, NULL, 100, NULL, NULL, NULL, NULL),
(134, 6, 45, NULL, NULL, 'immer', NULL, NULL, NULL),
(135, 7, 45, NULL, NULL, 'Links', NULL, NULL, NULL),
(136, 8, 45, NULL, NULL, 'Schalke', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_infos`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_infos` (
`id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` text
) AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `jos_fussball_infos`
--

INSERT INTO `jos_fussball_infos` (`id`, `name`, `value`) VALUES
(1, 'db_version', '0.05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_mannschaft`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_mannschaft` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(1) DEFAULT NULL
) AUTO_INCREMENT=123 ;

--
-- Daten für Tabelle `jos_fussball_mannschaft`
--

INSERT INTO `jos_fussball_mannschaft` (`id`, `name`, `isDefault`) VALUES
(1, 'Holthausen', 1),
(3, 'Timpen', 0),
(4, 'FC Fiat Gescher', 0),
(5, 'RW Trimbach', 0),
(6, 'SF Klein Reken', 0),
(7, 'FC Böinghook', 0),
(8, 'Bröker Jungs', 0),
(9, 'Brinker Jungs', 0),
(10, 'Cosmos Weseke', 0),
(11, 'Fortuna Bieling', 0),
(12, 'Warme Brüder', 0),
(13, 'Abretter Haltern', 0),
(14, 'Männerring Nettenberge', 0),
(15, 'Geile Schlangen', 0),
(16, 'Die Mutigen', 0),
(17, 'BSG Giants', 0),
(18, 'Generation Borussia', 0),
(19, 'KC Bitboyz', 0),
(20, 'A-Jugend Gemen', 0),
(21, 'KC Puppenjäger', 0),
(22, 'Bk Snus', 0),
(23, 'Theken Verein Burlo', 0),
(24, 'Velen III', 0),
(25, 'Weseke II', 0),
(26, '1. FC Bonhoefferring', 0),
(27, 'Football Legends', 0),
(28, 'Derperdados', 0),
(29, 'Fc Lupine', 0),
(30, 'Bierkönige', 0),
(31, '5 gegen Willi', 0),
(32, 'Sommermärchen', 0),
(33, 'FC Nordick', 0),
(34, 'Moppentruppe', 0),
(35, 'VfL Ramsdorf III', 0),
(36, 'Hochmoor Alte Herren', 0),
(37, 'FC Chelsea Longdong', 0),
(38, 'Profi Lachse', 0),
(39, 'The Mixery', 0),
(40, 'Tecktonic Killers', 0),
(41, 'BW Hülsten', 0),
(42, 'Feuerwehr Klein Reken', 0),
(43, 'Croatia Reken', 0),
(44, 'Geile Schlangen', 0),
(45, 'Heidener Straße', 0),
(46, 'Styllympic', 0),
(47, 'Castle Velen', 0),
(48, 'Wemser', 0),
(49, '1 FC Bonhoefferring', 0),
(50, 'EL Canarinhos 08', 0),
(51, 'Illerhusen', 0),
(52, 'Die Dritte', 0),
(53, 'Puppenjäger 02', 0),
(54, 'Tecis', 0),
(55, 'BSG Foseco', 0),
(56, 'All Stars 2', 0),
(57, 'Juventus Urin', 0),
(58, 'LOK 05', 0),
(59, 'Alte Herren', 0),
(60, 'Moppentruppe', 0),
(61, 'Snazzy Numbers', 0),
(62, 'Team Norris', 0),
(63, 'Die Schlucker', 0),
(64, 'VfB Kirchhellen', 0),
(65, 'Schoppens Keller', 0),
(66, 'St. Jo Zockers', 0),
(67, 'Habibis', 0),
(68, 'VR-Bank', 0),
(69, 'Numbers', 0),
(70, 'Foseco', 0),
(71, 'Wietholt & Bresser', 0),
(72, 'Kellerkinder Fliederbusch', 0),
(73, 'BW Hülsten 2/3', 0),
(74, 'Illerhusen Old Stars', 0),
(75, 'Team Rotthaus', 0),
(76, 'Die Warmen Brüder', 0),
(77, 'VfL Ramsdorf 3', 0),
(78, 'Ferformte Flunkies', 0),
(79, 'Chipmonkeys', 0),
(80, 'Sg Borken Damen', 0),
(81, 'Wizzards', 0),
(82, 'VfL Ramsdorf 2', 0),
(83, 'Länderbräu', 0),
(84, 'SuS Stadlohn 2.1', 0),
(85, 'KC Knapp daneben', 0),
(86, 'FSV Malvin 08', 0),
(87, 'Victoria Beckmann', 0),
(88, 'Hoxfeld III', 0),
(89, 'Sternbusch Kickers', 0),
(90, 'Pöhler', 0),
(91, 'TG Hengeler', 0),
(92, 'Wemser', 0),
(93, 'SG Borken IV', 0),
(94, 'FC Marbeck A Jugend', 0),
(95, 'KLJB Marbeck', 0),
(96, 'Ostermann', 0),
(97, 'SuS 2.0', 0),
(98, 'Ultras SVB', 0),
(99, 'POW', 0),
(100, 'Olesch United', 0),
(101, 'Bocholter Balltänzer', 0),
(102, 'Die Fahrradständer', 0),
(103, 'Fubs Malkis', 0),
(104, 'FSV Malvin 08', 0),
(105, 'Inferno Velen', 0),
(106, 'Borle', 0),
(107, 'Beckmann 2', 0),
(108, 'Erle', 0),
(109, 'FC Marbeck 2', 0),
(110, 'The F-Kickers Heiden', 0),
(111, 'Becks Premium 14', 0),
(112, 'Knapp daneben', 0),
(113, 'Duisburger Personalleasing', 0),
(114, 'Sangria Club Lembeck', 0),
(115, 'die Schlucker', 0),
(116, 'HTT Stadtlohn', 0),
(117, 'Container ;-)', 0),
(118, 'Container', 0),
(119, 'Bier', 0),
(120, 'Ingelheim', 0),
(121, 'Pauskicker Altstätte', 0),
(122, 'Borussia Buttenstadt', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_saison`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_saison` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint(1) DEFAULT NULL
) AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `jos_fussball_saison`
--

INSERT INTO `jos_fussball_saison` (`id`, `name`, `isDefault`) VALUES
(1, '2008', 0),
(2, '2009', 0),
(3, '2010', 0),
(4, '2011', 0),
(5, '2012', 0),
(6, '2013', 0),
(7, '2014', 0),
(8, '2015', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_spiel`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_spiel` (
`id` int(11) NOT NULL,
  `idSpiel_typ` int(11) NOT NULL,
  `idMannschaft2` int(11) NOT NULL,
  `idMannschaft1` int(11) NOT NULL,
  `datum` datetime DEFAULT NULL,
  `spielbeschreibung` text,
  `tore1` int(11) DEFAULT NULL,
  `tore2` int(11) DEFAULT NULL,
  `idSaison` int(11) NOT NULL
) AUTO_INCREMENT=292 ;

--
-- Daten für Tabelle `jos_fussball_spiel`
--

INSERT INTO `jos_fussball_spiel` (`id`, `idSpiel_typ`, `idMannschaft2`, `idMannschaft1`, `datum`, `spielbeschreibung`, `tore1`, `tore2`, `idSaison`) VALUES
(4, 2, 4, 1, '2008-03-17 19:30:00', '<p>Nachdem wir gut begonnen haben und uns in den ersten 10 Min. ein paar gute Tormöglichkeiten erspielt hatten wurde der Gast aus Gescher stärker und kam durch zwei individuelle Fehler zu zwei Treffern.</p><p>Bei beiden Gegentoren sah unsere Defensivabteilung nicht unbedingt gut aus.</p><p>Trotz der Gegentreffer ließen wir aber die Köpfe nicht hängen und gingen noch in der ersten Halbzeit durch zwei schöne Treffer ( besonders das zweite Tor war sehenswert ) von Stefan Hüging und einem Tor von Norbert Roßkamp in Führung.</p><p>Nachdem Seitenwechsel und etlichen Spielerwechsel ( <u>insgesamt kamen gestern 20 Spieler zum Einsatz</u> ) haben wir das Spiel immer mehr in den Griff bekommen und uns weitere gute Möglichkeiten erspielt, die dann auch zu den weiteren Treffern durch Norbert Roßkamp, zweimal Benny Sicking und einem "tollen" Schuß aus ca. 30 mtr von Alex Kerkhoff führten.</p><p>Besonders erfreulich war die große Anzahl der Spieler, die auch alle eingesetzt wurden und das trotz der vielen Wechsel in der Halbzeit der Spielfluss nicht gelitten hat und wir in beiden Halbzeiten eine gute Partie abgeliefert haben.</p>', 7, 2, 1),
(5, 2, 5, 1, '2008-03-04 19:30:00', '<p>Trimbach ging nach einer Flanke und einem "Durcheinander" im 16er in Fühurung.</p><p>Nach ca. 10 Min in Halbzeit 2 glichen wir aus - Eigentor durch einen Spieler von Trimbach.</p><p>Dafür, dass die unser erstes Spiel war sah die Sache recht ordentlich aus.</p><p>Man muss auch dabei sagen, dass wir insgesamt 16 Feldspieler (! ! !) zur Verfügung hatten und </p><p>dementsprechend durchgewechselt haben, damit alle Spieler zum Einsatz kamen.</p>', 1, 1, 1),
(6, 1, 1, 6, '2008-04-21 19:00:00', '', 6, 0, 1),
(7, 1, 1, 7, '2008-05-07 19:00:00', '', 1, 5, 1),
(8, 1, 1, 8, '2008-05-21 19:00:00', '', 2, 1, 1),
(9, 1, 9, 1, '2008-05-26 19:00:00', '', 5, 3, 1),
(10, 1, 1, 10, '2008-05-31 15:00:00', '', 10, 4, 1),
(11, 1, 1, 11, '2008-06-16 18:30:00', '', 3, 8, 1),
(12, 3, 1, 12, '2007-12-28 00:00:00', '', 1, 4, 1),
(13, 3, 13, 1, '2007-12-28 00:00:00', '', 1, 2, 1),
(14, 3, 14, 1, '2007-12-28 00:00:00', '', 1, 3, 1),
(15, 3, 1, 15, '2008-01-05 00:00:00', '', 2, 4, 1),
(16, 3, 16, 1, '2008-01-05 00:00:00', '', 0, 4, 1),
(17, 3, 6, 1, '2008-01-05 00:00:00', '', 0, 2, 1),
(18, 3, 1, 17, '2008-01-12 00:00:00', '', 4, 6, 1),
(19, 3, 18, 1, '2008-01-12 14:19:00', '', 2, 0, 1),
(20, 3, 19, 1, '2008-01-12 00:00:00', '', 4, 3, 1),
(21, 3, 20, 1, '2008-01-12 00:00:00', '', 2, 1, 1),
(22, 3, 1, 21, '2008-01-12 00:00:00', '', 0, 3, 1),
(23, 3, 1, 22, '2008-01-12 00:00:00', '', 1, 1, 1),
(24, 3, 23, 1, '2008-01-12 00:00:00', '', 5, 4, 1),
(25, 3, 24, 1, '2008-01-26 00:00:00', '', 5, 0, 1),
(26, 3, 1, 25, '2008-01-26 00:00:00', '', 1, 2, 1),
(27, 3, 27, 1, '2008-01-26 00:00:00', '', 2, 4, 1),
(28, 3, 1, 26, '2008-00-26 00:00:00', '', 0, 0, 1),
(29, 3, 1, 6, '2008-01-26 00:00:00', '', 0, 2, 1),
(30, 3, 1, 28, '2008-01-26 00:00:00', '', 0, 0, 1),
(31, 3, 1, 9, '2008-06-22 10:00:00', '', 0, 2, 1),
(32, 3, 1, 30, '2008-06-22 10:00:00', '', 1, 4, 1),
(33, 3, 1, 32, '2008-06-22 10:00:00', '', 3, 3, 1),
(34, 3, 31, 1, '2008-06-22 10:00:00', '', 0, 2, 1),
(35, 3, 29, 1, '2008-06-22 10:00:00', '', 0, 1, 1),
(36, 1, 1, 3, '2008-06-24 19:00:00', '', 2, 1, 1),
(37, 3, 9, 1, '2008-06-29 11:00:00', '', 2, 2, 1),
(38, 3, 1, 33, '2008-06-29 11:00:00', '', 0, 1, 1),
(39, 3, 34, 1, '2008-06-29 11:00:00', '', 1, 1, 1),
(40, 3, 1, 35, '2008-06-29 11:00:00', '', 1, 2, 1),
(41, 1, 11, 1, '2008-08-18 19:00:00', '', 11, 7, 1),
(42, 1, 1, 29, '2008-00-13 15:00:00', '', 1, 3, 1),
(43, 2, 1, 36, '2008-08-20 19:00:00', '', 1, 2, 1),
(44, 1, 1, 9, '2008-09-15 19:00:00', '', 3, 2, 1),
(45, 1, 7, 1, '2008-09-22 19:00:00', '', 2, 2, 1),
(46, 1, 8, 1, '2008-09-29 19:00:00', '', 4, 6, 1),
(47, 1, 6, 1, '2008-10-11 15:00:00', '', 2, 6, 1),
(48, 2, 5, 1, '2008-11-05 19:00:00', '', 4, 1, 1),
(49, 1, 3, 1, '2008-10-18 15:00:00', '', 2, 5, 1),
(50, 1, 29, 1, '2008-01-01 00:00:00', '', 5, 2, 1),
(52, 3, 1, 37, '2008-12-27 11:18:00', '', 0, 1, 2),
(53, 3, 13, 1, '2008-12-27 13:06:00', '', 3, 0, 2),
(54, 3, 1, 39, '2008-12-27 14:18:00', '', 0, 0, 2),
(55, 3, 38, 1, '2008-12-27 15:30:00', '', 2, 3, 2),
(56, 3, 1, 40, '2008-12-27 16:54:00', '', 2, 1, 2),
(57, 3, 42, 1, '2009-01-17 00:00:00', '', 14, 0, 2),
(58, 3, 1, 8, '2009-01-17 00:00:00', '', 1, 0, 2),
(59, 3, 43, 1, '2009-01-17 00:00:00', '', 1, 1, 2),
(60, 3, 1, 37, '2009-01-17 00:00:00', '', 1, 1, 2),
(61, 3, 1, 41, '2009-01-17 00:00:00', '', 2, 3, 2),
(62, 3, 44, 1, '2009-01-17 00:00:00', '', 2, 5, 2),
(63, 3, 1, 45, '2009-01-18 00:00:00', '', 1, 3, 2),
(64, 3, 46, 1, '2009-01-18 00:00:00', '', 4, 0, 2),
(65, 3, 47, 1, '2009-01-18 00:00:00', '', 0, 6, 2),
(66, 3, 48, 1, '2009-01-18 00:00:00', '', 0, 1, 2),
(67, 3, 1, 49, '2009-01-24 00:00:00', '', 1, 1, 2),
(68, 3, 6, 1, '2009-01-24 00:00:00', '', 5, 0, 2),
(69, 3, 1, 50, '2009-01-24 00:00:00', '', 2, 3, 2),
(70, 3, 1, 51, '2009-01-24 00:00:00', '', 3, 1, 2),
(71, 3, 1, 52, '2009-02-07 00:00:00', '', 2, 3, 2),
(72, 3, 1, 45, '2009-02-07 00:00:00', '', 2, 4, 2),
(73, 3, 53, 1, '2009-02-07 00:00:00', '', 3, 1, 2),
(74, 3, 1, 54, '2009-02-07 00:00:00', '', 1, 0, 2),
(75, 3, 55, 1, '2009-02-07 00:00:00', '', 1, 2, 2),
(76, 3, 56, 1, '2009-02-07 00:00:00', '', 1, 3, 2),
(77, 3, 1, 55, '2009-02-15 00:00:00', '', 1, 1, 2),
(78, 3, 1, 57, '2009-02-15 00:00:00', '', 1, 0, 2),
(79, 3, 1, 58, '2009-02-15 00:00:00', '', 1, 0, 2),
(80, 1, 7, 1, '2009-03-30 19:00:00', '', 3, 6, 2),
(81, 1, 9, 1, '2009-04-08 19:00:00', '', 2, 2, 2),
(82, 1, 1, 29, '2009-04-20 14:22:35', '', 2, 4, 2),
(83, 1, 11, 1, '2009-04-27 19:00:00', '', 5, 1, 2),
(84, 1, 1, 7, '2009-05-27 19:00:00', '', 2, 1, 2),
(85, 1, 29, 1, '2009-06-03 19:00:00', '', 2, 0, 2),
(86, 1, 10, 1, '2009-06-06 15:00:00', '', 2, 2, 2),
(87, 1, 1, 6, '2009-04-20 19:00:00', '', 7, 1, 2),
(88, 1, 1, 11, '2009-06-15 19:00:00', '', 2, 4, 2),
(89, 1, 3, 1, '2009-05-13 19:00:00', '', 1, 1, 2),
(90, 2, 59, 1, '2009-06-27 16:30:00', '', 11, 2, 2),
(91, 3, 35, 1, '2009-06-28 00:00:00', '', 4, 0, 2),
(92, 3, 5, 1, '2009-06-28 00:00:00', '', 3, 3, 2),
(93, 1, 9, 1, '2009-06-28 00:00:00', '', 2, 2, 2),
(94, 3, 60, 1, '2009-06-28 00:00:00', '', 3, 2, 2),
(95, 1, 6, 1, '2009-06-30 19:00:00', '', 5, 5, 2),
(96, 3, 1, 3, '2009-07-27 19:00:36', '', 4, 3, 2),
(97, 1, 1, 8, '2009-09-21 19:00:00', '', 0, 5, 2),
(98, 1, 1, 9, '2009-08-24 19:00:00', '', 2, 3, 2),
(99, 1, 8, 1, '0000-00-00 00:00:00', '', 0, 0, 2),
(100, 1, 3, 1, '2009-10-05 19:00:00', '', 3, 3, 2),
(101, 2, 1, 5, '2009-10-24 15:00:00', '', 0, 8, 2),
(102, 3, 46, 1, '2009-12-05 00:00:00', '', 0, 4, 3),
(103, 3, 1, 61, '2009-12-05 00:00:00', '', 1, 1, 3),
(104, 3, 1, 62, '2009-12-05 00:00:00', '', 5, 3, 3),
(105, 3, 1, 64, '2009-12-19 00:00:00', '', 2, 2, 3),
(106, 3, 42, 1, '2009-12-19 00:00:00', '', 5, 0, 3),
(107, 3, 1, 8, '2009-12-19 00:00:00', '', 0, 1, 3),
(108, 3, 63, 1, '2009-12-19 00:00:00', '', 2, 1, 3),
(109, 3, 43, 1, '2009-12-19 00:00:00', '', 1, 2, 3),
(110, 3, 63, 1, '2009-12-19 00:00:00', '', 4, 6, 3),
(111, 3, 1, 6, '2009-12-19 00:00:00', '', 3, 0, 3),
(112, 3, 65, 1, '2010-01-02 00:00:00', '', 4, 0, 3),
(113, 3, 1, 6, '2010-01-02 00:00:00', '', 1, 1, 3),
(114, 3, 1, 14, '2010-01-02 00:00:00', '', 3, 2, 3),
(115, 3, 66, 1, '2010-01-02 00:00:00', '', 7, 0, 3),
(116, 3, 1, 67, '2010-01-02 00:00:00', '', 2, 1, 3),
(117, 3, 1, 10, '2010-01-02 00:00:00', '', 5, 1, 3),
(118, 3, 1, 69, '2010-01-16 00:00:00', '', 1, 0, 3),
(119, 3, 1, 70, '2010-01-16 00:00:00', '', 3, 0, 3),
(120, 3, 43, 1, '2010-01-16 00:00:00', '', 0, 3, 3),
(121, 3, 1, 68, '2010-01-16 00:00:00', '', 2, 3, 3),
(122, 3, 1, 21, '2010-01-23 00:00:00', '', 4, 2, 3),
(123, 3, 1, 45, '2010-01-23 00:00:00', '', 2, 3, 3),
(124, 3, 1, 71, '2010-01-23 00:00:00', '', 5, 2, 3),
(125, 3, 72, 1, '2010-01-24 00:00:00', '', 2, 2, 3),
(126, 3, 1, 79, '2010-01-24 00:00:00', '', 0, 2, 3),
(127, 3, 1, 74, '2010-01-24 00:00:00', '', 2, 4, 3),
(128, 3, 73, 1, '2010-01-24 00:00:00', '', 1, 0, 3),
(129, 3, 76, 1, '2010-01-24 00:00:00', '', 3, 3, 3),
(130, 3, 1, 75, '2010-01-24 00:00:00', '', 3, 2, 3),
(131, 3, 1, 77, '2010-01-24 00:00:00', '', 1, 3, 3),
(132, 3, 78, 1, '2010-01-24 00:00:00', '', 3, 0, 3),
(133, 3, 1, 22, '2010-02-06 00:00:00', '', 3, 1, 3),
(134, 3, 80, 1, '2010-02-06 00:00:00', '', 7, 0, 3),
(135, 3, 1, 54, '2010-02-06 00:00:00', '', 0, 3, 3),
(136, 3, 1, 81, '2010-02-06 00:00:00', '', 2, 3, 3),
(137, 3, 1, 72, '2010-02-06 00:00:00', '', 0, 1, 3),
(138, 3, 84, 1, '2010-02-06 00:00:00', '', 0, 2, 3),
(139, 3, 82, 1, '2010-02-06 00:00:00', '', 0, 3, 3),
(140, 3, 83, 1, '2010-02-06 00:00:00', '', 0, 2, 3),
(141, 1, 8, 1, '2010-04-19 19:00:00', '', 3, 0, 3),
(142, 1, 10, 1, '2010-04-26 19:00:00', '', 1, 2, 3),
(143, 1, 1, 7, '2010-05-31 19:00:00', '', 4, 9, 3),
(144, 1, 9, 1, '2010-06-07 19:00:00', '', 2, 2, 3),
(145, 2, 1, 36, '2010-06-09 19:00:00', '', 3, 2, 3),
(146, 2, 59, 1, '2010-07-26 16:00:00', '', 12, 0, 3),
(147, 3, 1, 9, '2010-06-27 00:00:00', '', 6, 1, 3),
(148, 3, 34, 1, '2010-06-27 00:00:00', '', 1, 1, 3),
(149, 3, 1, 35, '2010-06-27 00:00:00', '', 5, 5, 3),
(150, 1, 1, 29, '2010-06-16 19:00:00', '', 5, 1, 3),
(151, 1, 1, 11, '2010-06-21 19:00:00', '', 1, 8, 3),
(152, 1, 6, 1, '2010-07-17 15:00:00', '', 4, 3, 3),
(153, 1, 3, 1, '2010-08-23 19:00:00', '', 11, 3, 3),
(154, 1, 1, 10, '2010-09-08 19:00:00', '', 3, 2, 3),
(155, 1, 11, 1, '2010-09-15 19:00:00', '', 6, 3, 3),
(156, 1, 1, 8, '2010-09-20 19:00:00', '', 0, 1, 3),
(157, 2, 1, 4, '2010-10-16 15:00:00', '', 0, 2, 3),
(158, 3, 1, 85, '2011-08-01 10:00:00', '', 0, 0, 4),
(159, 3, 87, 1, '2011-08-01 10:00:00', '', 0, 3, 4),
(160, 3, 86, 1, '2011-08-01 10:00:00', '', 2, 5, 4),
(161, 3, 76, 1, '2011-08-01 10:00:00', '', 1, 3, 4),
(162, 3, 1, 8, '2011-08-01 10:00:00', '', 0, 5, 4),
(163, 3, 90, 1, '0000-00-00 00:00:00', '', 5, 0, 4),
(164, 3, 1, 91, '0000-00-00 00:00:00', '', 2, 4, 4),
(165, 3, 1, 55, '0000-00-00 00:00:00', '', 1, 2, 4),
(166, 3, 92, 1, '0000-00-00 00:00:00', '', 2, 4, 4),
(167, 3, 89, 1, '2011-09-01 10:00:00', '', 2, 4, 4),
(168, 3, 88, 1, '2011-09-01 10:00:00', '', 2, 4, 4),
(169, 3, 93, 1, '2011-09-01 10:00:00', '', 1, 3, 4),
(170, 3, 94, 1, '2011-09-01 10:00:00', '', 1, 4, 4),
(171, 1, 1, 11, '2011-04-11 19:00:00', '', 1, 4, 4),
(172, 1, 1, 6, '2011-05-02 19:00:00', '', 2, 4, 4),
(173, 1, 8, 1, '2011-00-00 00:00:00', '', 2, 0, 4),
(174, 1, 1, 9, '2011-05-16 19:00:00', '', 2, 4, 4),
(175, 3, 34, 1, '2011-06-19 14:00:00', 'Jubiläum 40 Jahre - Alt Herren Turnier', 0, 1, 4),
(176, 3, 36, 1, '2011-06-19 14:00:00', 'Jubiläum 40 Jahre - Alt Herren Turnier', 1, 0, 4),
(177, 3, 9, 1, '2011-06-19 14:00:00', 'Jubiläum 40 Jahre - Alt Herren Turnier', 3, 0, 4),
(178, 3, 5, 1, '2011-06-19 14:00:00', 'Jubiläum 40 Jahre - Alt Herren Turnier', 0, 1, 4),
(179, 1, 7, 1, '2011-00-00 00:00:00', '', 4, 3, 4),
(180, 2, 1, 59, '2011-06-23 16:00:00', '', 3, 5, 4),
(181, 1, 7, 1, '2011-00-00 00:00:00', '', 6, 2, 4),
(182, 1, 1, 29, '2011-00-00 00:00:00', '', 0, 4, 4),
(183, 1, 9, 1, '2011-00-00 00:00:00', '', 6, 1, 4),
(184, 1, 10, 1, '2011-00-00 00:00:00', '', 3, 1, 4),
(185, 1, 6, 1, '2011-00-00 00:00:00', '', 6, 0, 4),
(186, 1, 8, 1, '2011-00-00 00:00:00', '', 7, 0, 4),
(187, 1, 11, 1, '2011-00-00 00:00:00', '', 8, 3, 4),
(188, 1, 10, 1, '2011-00-00 00:00:00', '', 6, 1, 4),
(189, 1, 29, 1, '2011-00-00 00:00:00', '', 3, 3, 4),
(190, 3, 96, 1, '2012-01-07 14:43:00', 'Hallentunier', 3, 1, 5),
(191, 3, 1, 82, '2012-01-07 15:35:00', 'Hallentunier', 1, 0, 5),
(192, 3, 1, 95, '2012-01-07 16:27:04', 'Hallentunier', 0, 0, 5),
(193, 3, 70, 1, '2012-01-07 17:19:15', 'Hallentunier', 1, 2, 5),
(194, 3, 1, 54, '2012-01-21 13:00:00', 'Hallentunier: Tecis Cup 2012', 2, 2, 5),
(195, 3, 97, 1, '2012-01-21 14:00:06', 'Hallentunier: Tecis Cup 2012', 2, 0, 5),
(196, 3, 101, 1, '2012-01-21 15:24:00', 'Hallentunier: Tecis Cup 2012', 3, 3, 5),
(197, 3, 1, 98, '2012-01-21 15:48:20', 'Hallentunier: Tecis Cup 2012', 5, 3, 5),
(198, 3, 102, 1, '2012-01-21 17:12:00', 'Hallentunier: Tecis Cup 2012', 2, 5, 5),
(199, 3, 1, 100, '2012-01-21 18:00:00', 'Hallentunier: Tecis Cup 2012', 5, 4, 5),
(200, 3, 99, 1, '2012-01-21 19:24:00', 'Hallentunier: Tecis Cup 2012', 4, 5, 5),
(201, 3, 9, 1, '2012-01-28 11:00:55', 'Hallentunier: SF Klein Reken', 1, 0, 5),
(202, 3, 1, 103, '2012-01-28 11:43:51', 'Hallentunier: SF Klein Reken', 1, 1, 5),
(203, 3, 1, 104, '2012-01-28 12:25:55', 'Hallentunier: SF Klein Reken', 1, 1, 5),
(204, 3, 1, 76, '2012-01-28 14:12:56', 'Hallentunier: SF Klein Reken', 3, 3, 5),
(205, 3, 5, 1, '2012-01-28 15:00:13', '<p>Hallentunier: SF Klein Reken   </p><p>&nbsp;</p><p>ungeschlagen Vorrunden aus<img src="plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-cry.gif" border="0" alt="Cry" title="Cry" /></p>', 2, 1, 5),
(206, 1, 1, 29, '2012-04-23 19:02:00', '<p>Erstes Spiel und sofort verloren</p><p>Kopf hoch !!!</p><p>5Tore Auswärts ist schon was </p><p>4 Tore von Cartsen </p><p>&nbsp;</p><p>Nächstes mal haben die Sippelköppe bestimmt einen besseren Platz.</p><p>(geht auch nicht mehr schlechter...)</p>', 7, 5, 5),
(207, 1, 1, 6, '2012-04-30 19:05:00', '<p>Ein spannendes Spiel </p><p>Die neuen Trikots brauchen noch etwas bis sie funktionieren </p>', 2, 1, 5),
(208, 1, 1, 9, '2012-05-30 19:03:13', '<p>Ein sehr spannendes Spiel.</p><p>&nbsp;</p><p>Der Erste! Punkt in neuen Trikots.</p><p>&nbsp;</p><p>3 Neue Mitglieder/Spieler  </p><p>Christian Bregenberg </p><p>Lukas Uphues</p><p>Sebastian Tegelkamp </p>', 1, 1, 5),
(209, 1, 1, 10, '2012-06-11 19:00:53', '', 5, 3, 5),
(210, 1, 1, 11, '2012-06-18 18:36:21', '<p>Der erste Sieg in der Saison</p><p> und damit beenden wir unsere Hinrunde mit 4 Punkte aus 5 Spielen.</p><p>Für Johannes Schulze Holthausen war es nicht nur der erste Sieg sondern auch,</p><p>sein  erstes Spiel überhaupt für den HSV.</p><p> ''Man of the Match'' war ganz klar Manfred Roßkamp mit seiner Kondition und denn 3Toren.</p>', 3, 7, 5),
(211, 2, 59, 1, '2012-06-23 14:57:17', '<p>Sieg für Jung</p><p>&nbsp;</p><p>Eindeutiges langweiliges Spiel, mit einigen namentlich nicht erwähnten Überläufern(manni)</p><p> Die Kondition der Alten konnte man mit einen Stein vergleichen, wobei ein Stein Berg ab es meistens bis unten schaft, wenn er ins Rollen kommt.  </p><p>Ein Lob an den sehr fairen Schiri, der mit seinen Entscheidungen immer Richtig lag und zum Glück der Alten (z.B.Frank) die Karten vergesen hat.</p><p>Dies war das erste Spiel für:</p><p>  Lars Bröring, Tobias Holtkamp, Tim Bartholme und Steffen Uphues</p><p>Das erste Tor: Michael Trepmann </p><p>und der gefühlte erste Ballkontakt: Juppi Döring </p>', 6, 1, 5),
(212, 3, 9, 1, '2012-06-24 14:57:00', '<p>Pokaltunier</p><p>&nbsp;</p>', 2, 2, 5),
(213, 3, 29, 1, '2012-06-24 15:14:27', '<p>Pokaltunier</p><p>&nbsp;</p>', 1, 1, 5),
(214, 3, 6, 1, '2012-06-24 15:20:12', 'Pokaltunier', 2, 1, 5),
(215, 3, 77, 1, '2012-06-24 15:22:42', '<p>Pokaltunier</p><p>1!Platz  </p><p>&nbsp;</p><p>erstes Tor für fruti!i! </p>', 5, 1, 5),
(216, 3, 105, 1, '2012-06-24 14:29:54', '<p>Pokaltunier</p><p>&nbsp;</p>', 2, 0, 5),
(217, 1, 29, 1, '2012-07-02 17:43:37', '<p>Das Erste Heimspiel und der zweite Sieg in der jetzigen Spielzeit </p><p> </p><p>Im Spiel gegen den Tabellenführer schossen wir 6Tore, unterandern auch  </p><p> Sebastian Tegelkamp, der per Elfer sein erstes für den Hsv schoss.</p><p>Hoffentlich werden die nächsten Heimspiele auch so gut.</p><p> </p>', 6, 1, 5),
(218, 1, 10, 1, '2012-09-19 18:45:52', '', 2, 6, 5),
(219, 1, 11, 1, '2012-09-24 19:00:00', '', 7, 5, 5),
(220, 1, 9, 1, '2012-09-03 19:19:00', '', 0, 0, 5),
(221, 1, 9, 1, '2012-09-03 19:19:00', '', 2, 5, 5),
(222, 1, 6, 1, '2012-09-10 19:25:00', '', 4, 1, 5),
(223, 2, 36, 1, '2012-09-26 16:39:59', '', 3, 0, 5),
(224, 3, 68, 1, '2013-01-06 09:43:50', '', 2, 1, 6),
(225, 3, 109, 1, '2013-01-06 11:14:29', '', 1, 2, 6),
(226, 3, 1, 106, '2013-01-06 12:06:34', '', 1, 1, 6),
(227, 3, 107, 1, '2013-01-06 12:58:00', '', 1, 2, 6),
(228, 3, 108, 1, '2013-01-06 15:18:44', '', 2, 1, 6),
(229, 3, 82, 1, '2013-01-06 16:20:00', '', 3, 4, 6),
(230, 3, 111, 1, '2012-12-29 10:10:00', '', 1, 1, 6),
(231, 3, 1, 110, '2012-12-29 11:14:00', '', 1, 4, 6),
(232, 3, 114, 1, '2012-12-29 13:17:00', '', 2, 1, 6),
(233, 3, 115, 1, '2012-12-29 15:20:00', '', 3, 2, 6),
(234, 3, 113, 1, '2012-12-29 15:42:00', '', 1, 1, 6),
(235, 3, 1, 112, '2012-12-29 16:24:00', '', 0, 5, 6),
(236, 3, 12, 1, '2012-12-29 17:06:00', '', 1, 0, 6),
(237, 3, 10, 1, '2012-12-29 17:28:00', '', 1, 4, 6),
(238, 3, 116, 1, '2013-04-06 18:19:00', '', 2, 2, 6),
(239, 1, 29, 1, '2013-04-15 18:13:10', '', 2, 1, 6),
(240, 1, 1, 10, '2013-06-19 15:47:00', '', 1, 6, 6),
(241, 1, 1, 6, '2013-05-15 15:52:23', '', 7, 4, 6),
(242, 1, 1, 9, '2013-04-24 15:59:07', '', 2, 2, 6),
(243, 1, 1, 11, '2013-05-27 16:03:26', '', 2, 9, 6),
(244, 3, 1, 116, '2013-05-20 13:09:18', '', 3, 9, 6),
(245, 1, 1, 29, '2013-06-24 13:12:00', '', 3, 5, 6),
(246, 2, 59, 1, '2013-06-29 08:24:00', '', 6, 4, 6),
(247, 3, 1, 11, '2013-07-08 08:33:00', '', 6, 5, 6),
(248, 3, 1, 4, '2013-08-10 15:42:32', '', 4, 4, 6),
(249, 3, 11, 1, '2013-07-27 19:53:38', '', 9, 2, 6),
(250, 1, 10, 1, '2013-09-04 10:37:00', '', 3, 1, 6),
(251, 3, 4, 1, '2013-08-19 10:46:00', '', 2, 2, 6),
(252, 3, 1, 117, '2013-06-30 18:30:37', '', 0, 2, 6),
(253, 3, 1, 35, '2013-06-30 18:36:28', '', 2, 2, 6),
(254, 3, 9, 1, '2013-06-30 18:38:45', '', 1, 2, 6),
(255, 3, 1, 29, '2013-06-30 18:40:19', '', 3, 0, 6),
(256, 1, 9, 1, '2013-09-25 18:47:22', '', 4, 3, 6),
(257, 1, 6, 1, '2013-09-23 19:00:48', '', 2, 2, 6),
(258, 1, 11, 1, '2013-09-16 19:04:14', '', 10, 0, 6),
(259, 3, 1, 119, '2013-12-28 00:00:01', '', 3, 0, 7),
(260, 3, 120, 1, '2013-12-28 00:00:20', '', 5, 1, 7),
(261, 3, 1, 111, '2013-12-28 18:11:48', '', 1, 1, 7),
(262, 1, 6, 1, '2014-05-14 18:19:05', '', 6, 4, 7),
(263, 3, 77, 1, '2014-06-29 18:34:01', '', 1, 0, 7),
(264, 3, 1, 9, '2014-06-29 18:38:20', '', 0, 0, 7),
(265, 3, 1, 7, '2014-06-29 18:39:37', '', 1, 1, 7),
(266, 3, 1, 29, '2014-06-29 18:39:37', '', 3, 0, 7),
(267, 3, 117, 1, '2014-06-29 18:42:52', '', 1, 0, 7),
(268, 1, 1, 11, '2014-04-14 18:46:27', '', 0, 5, 7),
(269, 1, 10, 1, '2014-09-10 18:53:57', '', 3, 4, 7),
(270, 1, 1, 29, '2014-07-02 19:04:34', '', 5, 1, 7),
(271, 1, 1, 9, '2014-06-11 19:14:45', '', 2, 6, 7),
(272, 3, 5, 1, '2014-08-09 19:18:47', '', 8, 2, 7),
(273, 3, 6, 1, '2014-01-05 19:57:41', '', 1, 1, 7),
(274, 3, 1, 58, '2014-01-05 20:02:39', '', 0, 3, 7),
(275, 3, 1, 107, '2014-01-05 20:05:14', '', 2, 1, 7),
(276, 3, 10, 1, '2014-01-05 20:07:48', '', 1, 3, 7),
(277, 3, 1, 5, '2014-08-30 20:10:29', '', 6, 7, 7),
(278, 1, 11, 1, '2014-08-18 20:24:18', '', 2, 1, 7),
(279, 1, 9, 1, '2014-09-03 20:32:26', '', 5, 4, 7),
(280, 1, 29, 1, '2014-05-05 20:37:30', '', 5, 2, 7),
(281, 3, 121, 1, '2014-03-29 20:49:23', '', 7, 1, 7),
(282, 2, 59, 1, '2014-06-28 20:58:28', '', 11, 0, 7),
(283, 1, 1, 10, '2014-05-19 21:13:05', '', 8, 0, 7),
(284, 3, 1, 121, '2014-06-14 21:13:42', '', 3, 4, 7),
(285, 3, 1, 122, '2014-04-26 00:00:00', '', 3, 0, 7),
(286, 3, 122, 1, '2014-07-12 21:16:25', '', 0, 3, 7),
(287, 3, 122, 1, '2014-09-27 00:00:00', '', 6, 5, 7),
(288, 3, 1, 122, '2014-10-04 21:18:11', '', 4, 2, 7),
(289, 3, 121, 1, '2014-01-11 16:43:21', '', 0, 3, 7),
(290, 3, 89, 1, '2014-01-11 16:46:54', '', 2, 1, 7),
(291, 3, 91, 1, '2014-01-11 16:50:11', '', 4, 1, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_spieler`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_spieler` (
`id` int(11) NOT NULL,
  `idMannschaft` int(11) NOT NULL,
  `kontaktID` int(11) DEFAULT NULL,
  `anzahlSpiele` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `anzahlTore` int(11) DEFAULT NULL
) AUTO_INCREMENT=103 ;

--
-- Daten für Tabelle `jos_fussball_spieler`
--

INSERT INTO `jos_fussball_spieler` (`id`, `idMannschaft`, `kontaktID`, `anzahlSpiele`, `valid`, `name`, `anzahlTore`) VALUES
(5, 1, 62, 134, NULL, 'Manfred Rosskamp', 19),
(6, 1, 74, 45, NULL, 'Jürgen Rosskamp', 0),
(7, 1, 71, 86, NULL, 'Daniel Holtkamp', 4),
(8, 1, 73, 76, NULL, 'Benedikt Sicking', 26),
(9, 1, 82, 374, NULL, 'Carsten Deppe', 199),
(10, 1, 64, 127, NULL, 'Michael Raida', 18),
(11, 1, 86, 65, NULL, 'Christian Thesing', 9),
(12, 1, 0, 28, NULL, 'Stefan Thesing', 8),
(13, 1, 65, 485, NULL, 'Norbert Rosskamp', 112),
(14, 1, 88, 50, NULL, 'Jan Storks', 2),
(15, 1, 63, 2, NULL, 'Parick Schlautmann', 0),
(16, 1, 85, 305, NULL, 'Markus Eichhorn', 47),
(18, 1, 66, 187, NULL, 'Sebastian Sieverding', 96),
(19, 1, 0, 0, NULL, 'Heiner Sunderhaus', 0),
(20, 1, 68, 9, NULL, 'Lukas Robert', 1),
(21, 1, 72, 300, NULL, 'Stefan Hüging', 106),
(22, 1, 81, 115, NULL, 'Thomas Schwerhoff', 50),
(23, 1, 87, 24, NULL, 'Michael Schlottbom', 9),
(24, 1, 79, 129, NULL, 'Rainer Hövelbrinks', 2),
(25, 1, 70, 4, NULL, 'Sven Böing', 0),
(26, 1, 0, 47, NULL, 'Tristan Selting', 2),
(27, 1, 84, 144, NULL, 'Alex Kerkhoff', 16),
(28, 1, 77, 5, NULL, 'Hendrik Dirking', 0),
(29, 1, 67, 70, NULL, 'Ludger Rosskamp', 0),
(30, 1, 0, 1, NULL, 'Tobias Bone Winkel', 0),
(31, 1, 0, 0, NULL, 'Bernhard Enning', 0),
(32, 1, 0, 0, NULL, 'Yannick Lövelt', 0),
(33, 1, 90, 0, NULL, 'Michael Trepmann', 0),
(34, 1, 0, 0, NULL, 'Markus Sparwel', 0),
(35, 1, 0, 4, NULL, 'Joschi Kamp', 1),
(36, 1, 0, 0, NULL, 'Marcel Kaiser', 0),
(37, 1, 0, 0, NULL, 'Thorsten Vahlenkamp', 0),
(38, 1, 0, 1, NULL, 'Alex', 0),
(39, 1, 0, 12, NULL, 'Ingo Thiesing', 0),
(40, 1, 0, 0, NULL, 'Philipp Baumeister', 0),
(41, 1, 0, 0, NULL, 'Marius Grevelhorst', 0),
(42, 1, 0, 0, NULL, 'Hendrik Strump', 0),
(43, 1, 0, 0, NULL, 'Fredi Schulze-Holthausen', 0),
(44, 1, 0, 4, NULL, 'Carsten Tiehoff', 1),
(45, 1, 106, 4, NULL, 'Christian Selting', 0),
(46, 1, 0, 0, NULL, 'Christian Schlattmann', 0),
(47, 1, 0, 0, NULL, 'Dennis Kamp', 0),
(48, 1, 0, 0, NULL, 'Marco Korte', 0),
(49, 1, 0, 765, NULL, 'Hubert Holtkamp', 0),
(50, 1, 0, 734, NULL, 'Josef Thesing', 0),
(51, 1, 0, 623, NULL, 'Gerd Tenk', 0),
(52, 1, 0, 614, NULL, 'Andreas Strump', 366),
(53, 1, 0, 551, NULL, 'Andreas Schlüter', 0),
(54, 1, 0, 0, NULL, 'Markus Wobbling', 0),
(55, 1, 0, 0, NULL, 'Tobias Korte', 0),
(56, 1, 0, 0, NULL, 'Dennis Selting', 0),
(57, 1, 0, 0, NULL, 'Stefan Többer', 0),
(58, 1, 0, 0, NULL, 'Hartmut Holtkamp', 0),
(59, 1, 0, 0, NULL, 'Thomas Föcking', 0),
(60, 1, 0, 0, NULL, 'Heino Strump', 0),
(61, 1, 0, 0, NULL, 'Frank Sühling', 0),
(62, 1, 0, 371, NULL, 'Hubert Dirking', 336),
(63, 1, 0, 0, NULL, 'Otto Trepmann', 67),
(64, 1, 0, 0, NULL, 'Kevin Meyerdierks', 0),
(65, 1, 0, 0, NULL, 'Tobias Schemmer', 0),
(66, 1, 0, 0, NULL, 'Philiph Espen Willer', 0),
(67, 1, 0, 0, NULL, 'Bernd Trepmann', 0),
(68, 1, 0, 0, NULL, 'Christian Bregenberg', 0),
(69, 1, 0, 0, NULL, 'Sebastian Tegelkamp', 0),
(70, 1, 0, 0, NULL, 'Lukas Uphues', 0),
(71, 1, 0, 0, NULL, 'Johannes Schulze Holthausen', 0),
(72, 1, 0, 0, NULL, 'Steffen Uphues', 0),
(73, 1, 0, 0, NULL, 'Tim Bartholme', 0),
(74, 1, 0, 0, NULL, 'Tobias Holtkamp', 0),
(75, 1, 0, 0, NULL, 'Lars Bröring', 0),
(76, 1, 0, 0, NULL, 'Simon Zehnpfennig', 0),
(77, 1, 0, 0, NULL, 'Kai Grevenbrock', 0),
(78, 1, 0, 0, NULL, 'Jonas Grave', 0),
(79, 1, 0, 0, NULL, 'Markus Albersmann', 0),
(80, 1, 0, 0, NULL, 'Nils Funke', 0),
(81, 1, 0, 0, NULL, 'Steffen Lübering', 0),
(82, 1, 0, 0, NULL, 'Marius Klose', 0),
(83, 1, 0, 0, NULL, 'Fabian Klose', 0),
(84, 1, 0, 0, NULL, 'Simon Lüneborg', 0),
(85, 1, 0, 0, NULL, 'Jonas Pöpping', 0),
(86, 1, 0, 0, NULL, 'Ivo Schulz', 0),
(87, 1, 109, 0, NULL, 'Christian Bone', 0),
(88, 1, 0, 0, NULL, 'Sören Storks', 0),
(89, 1, 0, 0, NULL, 'Lukas Brokamp', 0),
(90, 1, 0, 0, NULL, 'Jörn Winter', 0),
(91, 1, 0, 0, NULL, 'Bernd Sunderhaus', 0),
(94, 1, 0, 0, NULL, 'Simon T', 0),
(96, 1, 0, 0, NULL, 'Tobias S', 0),
(97, 1, 0, 0, NULL, 'Nils Lütjann', 0),
(98, 1, 0, 0, NULL, 'Sven Spicker', 0),
(99, 1, 0, 0, NULL, 'Lukas Bone', 0),
(100, 1, 0, 0, NULL, 'Pascal Wessling', 0),
(101, 1, 0, 0, NULL, 'Marvin Teichmann', 0),
(102, 1, 0, 0, NULL, 'Tim Batholme', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_spieler_details`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_spieler_details` (
  `id` int(11) NOT NULL DEFAULT '0',
  `Geburtsdatum` date DEFAULT NULL,
  `Spitzname` text COLLATE latin1_german1_ci,
  `Trikotnummer` text COLLATE latin1_german1_ci,
  `Groesse` int(11) DEFAULT NULL,
  `Gewicht` int(11) DEFAULT NULL,
  `Beim_HSV_seit` text COLLATE latin1_german1_ci,
  `Lieblingsposition` text COLLATE latin1_german1_ci,
  `Lieblingsverein` text COLLATE latin1_german1_ci
) DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `jos_fussball_spieler_details`
--

INSERT INTO `jos_fussball_spieler_details` (`id`, `Geburtsdatum`, `Spitzname`, `Trikotnummer`, `Groesse`, `Gewicht`, `Beim_HSV_seit`, `Lieblingsposition`, `Lieblingsverein`) VALUES
(5, '0000-00-00', 'Manni', '', 0, 82, '', '', ''),
(6, '1991-06-16', '', '', 183, 0, 'Bei den Senioren ca. 2006', 'Abwehr', 'FC Schalke 04'),
(7, '1988-09-23', 'Buddy', '8', 180, 74, '2004', 'Verteidiger', 'Borussia Dortmund'),
(8, '1989-08-19', 'Benny', '7', 175, 68, 'seit immer, für immer', 'offensives Mittelfeld', 'Borussia Dortmund'),
(9, '1983-02-13', 'Mäkkes', '9', 183, 75, 'ich das Licht der Welt erblickt habe ', 'Zentrales Mittelfeld', 'FC Schalke 04; Schützenverein Holthausen'),
(10, '1981-12-28', 'Twix', '10', 184, 82, 'so ca. 9 Jahre...glaub ich', 'Sturm oder am Rand stehen und den Spielern Anweisungen geben', 'FC Bayern München, Schützenverein Holthausen / Bleking und St. Johanni Borken'),
(11, '1990-08-21', 'Gomez', '33', 190, 85, '2006', 'Stürmer', 'VfB Stuttgart'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '1977-11-29', 'Rossi', '16', 193, 83, 'Jugend', 'Stürmer', 'S04'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '1982-07-20', 'Sibbi', '4', 190, 0, 'gute Frage, 5 Jahre?', 'an der Theke', 'FC Schalke 04'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '1983-01-28', '', '11', 0, 0, '', '', ''),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '1985-08-23', 'Schlotti, König', 'variabel', 185, 75, 'einigen Jahren', 'überall einsetzbar', 'der große BvB'),
(24, '0000-00-00', 'Rainey', '5', 190, 102, 'ca 2001', 'Abwehr, Mittelfeld', 'Bayern München'),
(25, '1992-05-15', '', '24', 179, 61, '2008', 'Linkes Mittelfeld', 'Borussia Dortmund'),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '1992-01-27', 'henne', '15', 182, 75, '2008', ' mittelfeld', 'schalke 04'),
(29, '1984-08-04', '', '23', 185, 80, '1994', 'defensiv Mittelfeld', 'Bayern München'),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '1993-08-17', 'Zé', '17', 175, 76, '2009', '', 'Fc Schalke 04'),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `jos_fussball_spieler_saison`
--
CREATE TABLE IF NOT EXISTS `jos_fussball_spieler_saison` (
`id` int(11)
,`idMannschaft` int(11)
,`name` varchar(255)
,`spiele` bigint(21)
,`tore` decimal(32,0)
,`gelb` decimal(25,0)
,`gelbrot` decimal(25,0)
,`rot` decimal(25,0)
);
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_spieler_spiel`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_spieler_spiel` (
`id` int(11) NOT NULL,
  `idSpieler` int(11) NOT NULL,
  `idSpiel` int(11) NOT NULL,
  `hasRoteKarte` tinyint(1) DEFAULT NULL,
  `hasGelbeKarte` tinyint(1) DEFAULT NULL,
  `hasGelbRoteKarte` tinyint(1) DEFAULT NULL,
  `anzahlTore` int(11) DEFAULT NULL
) AUTO_INCREMENT=5052 ;

--
-- Daten für Tabelle `jos_fussball_spieler_spiel`
--

INSERT INTO `jos_fussball_spieler_spiel` (`id`, `idSpieler`, `idSpiel`, `hasRoteKarte`, `hasGelbeKarte`, `hasGelbRoteKarte`, `anzahlTore`) VALUES
(90, 5, 4, 0, 0, 0, 0),
(91, 6, 4, 0, 0, 0, 0),
(92, 7, 4, 0, 0, 0, 0),
(93, 8, 4, 0, 0, 0, 2),
(94, 9, 4, 0, 0, 0, 0),
(95, 10, 4, 0, 0, 0, 0),
(96, 11, 4, 0, 0, 0, 0),
(97, 12, 4, 0, 0, 0, 0),
(98, 13, 4, 0, 0, 0, 2),
(99, 14, 4, 0, 0, 0, 0),
(100, 15, 4, 0, 0, 0, 0),
(102, 18, 4, 0, 0, 0, 0),
(103, 19, 4, 0, 0, 0, 0),
(104, 20, 4, 0, 0, 0, 0),
(105, 21, 4, 0, 0, 0, 2),
(106, 22, 4, 0, 0, 0, 0),
(107, 23, 4, 0, 0, 0, 0),
(108, 24, 4, 0, 0, 0, 0),
(109, 25, 4, 0, 0, 0, 0),
(110, 27, 4, 0, 0, 0, 1),
(111, 28, 4, 0, 0, 0, 0),
(112, 5, 5, 0, 0, 0, 0),
(113, 6, 5, 0, 0, 0, 0),
(114, 7, 5, 0, 0, 0, 0),
(115, 8, 5, 0, 0, 0, 0),
(116, 9, 5, 0, 0, 0, 0),
(117, 10, 5, 0, 0, 0, 0),
(118, 11, 5, 0, 0, 0, 0),
(119, 13, 5, 0, 0, 0, 0),
(120, 14, 5, 0, 0, 0, 0),
(121, 15, 5, 0, 0, 1, 0),
(122, 16, 5, 0, 0, 0, 0),
(123, 18, 5, 0, 0, 0, 0),
(124, 19, 5, 0, 0, 0, 0),
(125, 20, 5, 0, 0, 0, 0),
(126, 21, 5, 0, 0, 0, 0),
(127, 25, 5, 0, 0, 0, 0),
(128, 27, 5, 0, 0, 0, 0),
(129, 28, 5, 0, 0, 0, 0),
(160, 5, 6, 0, 0, 0, 0),
(161, 7, 6, 0, 0, 0, 0),
(162, 8, 6, 0, 0, 0, 0),
(163, 9, 6, 0, 1, 0, 0),
(164, 10, 6, 0, 0, 0, 0),
(165, 11, 6, 0, 0, 0, 0),
(166, 13, 6, 0, 0, 0, 0),
(167, 14, 6, 0, 0, 0, 0),
(168, 15, 6, 0, 1, 0, 0),
(170, 18, 6, 0, 0, 0, 0),
(171, 19, 6, 0, 0, 0, 0),
(172, 20, 6, 0, 0, 0, 0),
(173, 22, 6, 0, 0, 0, 0),
(174, 27, 6, 0, 0, 0, 0),
(187, 5, 7, 0, 0, 0, 1),
(188, 8, 7, 0, 0, 0, 1),
(189, 9, 7, 0, 0, 0, 1),
(190, 11, 7, 0, 0, 0, 0),
(191, 13, 7, 0, 0, 0, 0),
(192, 14, 7, 0, 0, 0, 0),
(193, 15, 7, 0, 0, 0, 0),
(195, 18, 7, 0, 1, 0, 1),
(196, 21, 7, 0, 0, 0, 1),
(197, 24, 7, 0, 0, 0, 0),
(198, 27, 7, 0, 1, 0, 0),
(199, 5, 8, 0, 0, 0, 0),
(200, 7, 8, 0, 0, 0, 0),
(201, 8, 8, 0, 0, 0, 0),
(202, 10, 8, 0, 0, 0, 0),
(203, 11, 8, 0, 0, 0, 0),
(204, 13, 8, 0, 0, 0, 0),
(205, 14, 8, 0, 0, 0, 0),
(206, 16, 8, 0, 1, 0, 0),
(208, 18, 8, 0, 0, 0, 0),
(209, 19, 8, 0, 1, 0, 0),
(210, 20, 8, 0, 0, 0, 0),
(211, 21, 8, 0, 0, 0, 0),
(212, 26, 8, 0, 0, 0, 0),
(213, 27, 8, 0, 1, 0, 1),
(214, 6, 9, 0, 0, 0, 0),
(215, 8, 9, 0, 0, 0, 1),
(216, 11, 9, 0, 0, 0, 0),
(217, 13, 9, 0, 0, 0, 0),
(218, 14, 9, 0, 0, 0, 0),
(220, 18, 9, 0, 0, 0, 1),
(221, 19, 9, 0, 1, 0, 1),
(222, 20, 9, 0, 0, 0, 0),
(223, 21, 9, 0, 0, 0, 2),
(224, 22, 9, 0, 0, 0, 0),
(225, 24, 9, 0, 0, 0, 0),
(226, 27, 9, 0, 0, 0, 0),
(227, 28, 9, 0, 0, 0, 0),
(228, 29, 9, 0, 0, 0, 0),
(260, 5, 10, 0, 0, 0, 0),
(261, 8, 10, 0, 0, 0, 1),
(262, 10, 10, 0, 0, 0, 0),
(263, 11, 10, 0, 0, 0, 0),
(264, 13, 10, 0, 0, 0, 0),
(266, 18, 10, 0, 0, 0, 1),
(267, 20, 10, 0, 0, 0, 0),
(268, 21, 10, 0, 0, 0, 0),
(269, 22, 10, 0, 0, 0, 1),
(270, 23, 10, 0, 0, 0, 0),
(271, 24, 10, 0, 0, 0, 0),
(272, 26, 10, 0, 0, 0, 0),
(273, 28, 10, 0, 0, 0, 0),
(274, 29, 10, 0, 0, 0, 1),
(275, 7, 11, 0, 0, 0, 0),
(276, 8, 11, 0, 0, 0, 1),
(277, 9, 11, 0, 0, 0, 1),
(278, 10, 11, 0, 0, 0, 0),
(279, 11, 11, 0, 0, 0, 3),
(280, 12, 11, 0, 0, 0, 0),
(281, 13, 11, 0, 0, 0, 1),
(282, 14, 11, 0, 0, 0, 0),
(283, 15, 11, 0, 0, 0, 0),
(285, 18, 11, 0, 0, 0, 0),
(286, 20, 11, 0, 0, 0, 0),
(287, 22, 11, 0, 0, 0, 2),
(288, 25, 11, 0, 0, 0, 0),
(289, 26, 11, 0, 0, 0, 0),
(290, 27, 11, 0, 0, 0, 0),
(291, 28, 11, 0, 0, 0, 0),
(292, 29, 11, 0, 0, 0, 0),
(303, 5, 12, 0, 0, 0, 0),
(304, 8, 12, 0, 0, 0, 1),
(305, 9, 12, 0, 0, 0, 3),
(306, 10, 12, 0, 0, 0, 0),
(307, 13, 12, 0, 0, 0, 0),
(309, 18, 12, 0, 0, 0, 0),
(310, 21, 12, 0, 0, 0, 0),
(311, 22, 12, 0, 0, 0, 0),
(312, 26, 12, 0, 0, 0, 0),
(323, 5, 13, 0, 0, 0, 0),
(324, 8, 13, 0, 0, 0, 0),
(325, 9, 13, 0, 0, 0, 0),
(326, 10, 13, 0, 0, 0, 0),
(327, 13, 13, 0, 0, 0, 0),
(329, 18, 13, 0, 0, 0, 0),
(330, 21, 13, 0, 0, 0, 0),
(331, 22, 13, 0, 0, 0, 1),
(332, 26, 13, 0, 0, 0, 0),
(343, 5, 14, 0, 0, 0, 0),
(344, 8, 14, 0, 0, 0, 0),
(345, 9, 14, 0, 0, 0, 0),
(346, 10, 14, 0, 0, 0, 0),
(347, 13, 14, 0, 0, 0, 0),
(349, 18, 14, 0, 0, 0, 0),
(350, 21, 14, 0, 0, 0, 0),
(351, 22, 14, 0, 0, 0, 1),
(352, 26, 14, 0, 0, 0, 0),
(353, 7, 15, 0, 0, 0, 0),
(354, 8, 15, 0, 0, 0, 3),
(355, 9, 15, 0, 0, 0, 0),
(356, 15, 15, 0, 0, 0, 0),
(358, 18, 15, 0, 0, 0, 1),
(359, 21, 15, 0, 0, 0, 0),
(360, 27, 15, 0, 0, 0, 0),
(377, 7, 17, 0, 0, 0, 0),
(378, 8, 17, 0, 0, 0, 0),
(379, 9, 17, 0, 0, 0, 0),
(380, 15, 17, 0, 0, 0, 0),
(382, 18, 17, 0, 0, 0, 0),
(383, 21, 17, 0, 0, 0, 0),
(384, 27, 17, 0, 0, 0, 0),
(385, 7, 16, 0, 0, 0, 0),
(386, 8, 16, 0, 0, 0, 0),
(387, 9, 16, 0, 0, 0, 0),
(388, 15, 16, 0, 0, 0, 0),
(390, 18, 16, 0, 0, 0, 0),
(391, 21, 16, 0, 0, 0, 0),
(392, 27, 16, 0, 0, 0, 0),
(393, 5, 18, 0, 0, 0, 0),
(394, 8, 18, 0, 0, 0, 2),
(395, 9, 18, 0, 0, 0, 0),
(396, 10, 18, 0, 0, 0, 0),
(398, 18, 18, 0, 0, 0, 2),
(399, 21, 18, 0, 0, 0, 0),
(400, 22, 18, 0, 0, 0, 2),
(401, 26, 18, 0, 0, 0, 0),
(402, 27, 18, 0, 0, 0, 0),
(403, 5, 19, 0, 0, 0, 0),
(404, 8, 19, 0, 0, 0, 0),
(405, 9, 19, 0, 0, 0, 2),
(406, 10, 19, 0, 0, 0, 0),
(408, 18, 19, 0, 0, 0, 0),
(409, 21, 19, 0, 0, 0, 0),
(410, 22, 19, 0, 0, 0, 0),
(411, 26, 19, 0, 0, 0, 0),
(412, 27, 19, 0, 0, 0, 0),
(413, 5, 20, 0, 0, 0, 0),
(414, 8, 20, 0, 0, 0, 2),
(415, 9, 20, 0, 0, 0, 2),
(416, 10, 20, 0, 0, 0, 0),
(418, 18, 20, 0, 0, 0, 0),
(419, 21, 20, 0, 0, 0, 0),
(420, 22, 20, 0, 0, 0, 0),
(421, 26, 20, 0, 0, 0, 0),
(422, 27, 20, 0, 0, 0, 0),
(423, 5, 21, 0, 0, 0, 1),
(424, 8, 21, 0, 0, 0, 0),
(425, 9, 21, 0, 0, 0, 0),
(426, 10, 21, 0, 0, 0, 0),
(428, 18, 21, 0, 0, 0, 0),
(429, 21, 21, 0, 0, 0, 0),
(430, 22, 21, 0, 0, 0, 0),
(431, 26, 21, 0, 0, 0, 0),
(432, 27, 21, 0, 0, 0, 0),
(442, 5, 23, 0, 0, 0, 0),
(443, 8, 23, 0, 0, 0, 1),
(444, 9, 23, 0, 0, 0, 0),
(445, 10, 23, 0, 0, 0, 0),
(447, 18, 23, 0, 0, 0, 0),
(448, 21, 23, 0, 0, 0, 0),
(449, 22, 23, 0, 0, 0, 0),
(450, 26, 23, 0, 0, 0, 0),
(451, 27, 23, 0, 0, 0, 0),
(452, 5, 24, 0, 0, 0, 0),
(453, 8, 24, 0, 0, 0, 2),
(454, 9, 24, 0, 0, 0, 2),
(456, 18, 24, 0, 0, 0, 0),
(457, 21, 24, 0, 0, 0, 0),
(458, 22, 24, 0, 0, 0, 0),
(459, 26, 24, 0, 0, 0, 1),
(460, 27, 24, 0, 0, 0, 0),
(470, 6, 25, 0, 0, 0, 0),
(471, 7, 25, 0, 0, 0, 1),
(472, 8, 25, 0, 0, 0, 2),
(473, 9, 25, 0, 0, 0, 0),
(474, 10, 25, 0, 0, 0, 0),
(475, 11, 25, 0, 0, 0, 0),
(476, 13, 25, 0, 0, 0, 1),
(477, 15, 25, 0, 0, 0, 0),
(478, 18, 25, 0, 0, 0, 0),
(479, 6, 26, 0, 0, 0, 0),
(480, 7, 26, 0, 0, 0, 0),
(481, 8, 26, 0, 0, 0, 0),
(482, 9, 26, 0, 0, 0, 1),
(483, 10, 26, 0, 0, 0, 0),
(484, 11, 26, 0, 0, 0, 0),
(485, 13, 26, 0, 0, 0, 1),
(486, 15, 26, 0, 0, 0, 0),
(487, 18, 26, 0, 0, 0, 0),
(488, 6, 27, 0, 0, 0, 0),
(489, 7, 27, 0, 0, 0, 0),
(490, 8, 27, 0, 0, 0, 2),
(491, 9, 27, 0, 0, 0, 0),
(492, 10, 27, 0, 0, 0, 0),
(493, 11, 27, 0, 0, 0, 0),
(494, 13, 27, 0, 0, 0, 0),
(495, 15, 27, 0, 0, 0, 0),
(496, 18, 27, 0, 0, 0, 0),
(497, 6, 28, 0, 0, 0, 0),
(498, 7, 28, 0, 0, 0, 0),
(499, 8, 28, 0, 0, 0, 1),
(500, 9, 28, 0, 0, 0, 0),
(501, 10, 28, 0, 0, 0, 0),
(502, 11, 28, 0, 0, 0, 0),
(503, 13, 28, 0, 0, 0, 0),
(504, 15, 28, 0, 0, 0, 1),
(505, 18, 28, 0, 0, 0, 0),
(506, 6, 29, 0, 0, 0, 0),
(507, 7, 29, 0, 0, 0, 0),
(508, 8, 29, 0, 0, 0, 0),
(509, 9, 29, 0, 0, 0, 0),
(510, 10, 29, 0, 0, 0, 0),
(511, 11, 29, 0, 0, 0, 0),
(512, 13, 29, 0, 0, 0, 0),
(513, 15, 29, 0, 0, 0, 0),
(514, 18, 29, 0, 0, 0, 2),
(515, 6, 30, 0, 0, 0, 0),
(516, 7, 30, 0, 0, 0, 0),
(517, 8, 30, 0, 0, 0, 2),
(518, 9, 30, 0, 0, 0, 0),
(519, 10, 30, 0, 0, 0, 0),
(520, 11, 30, 0, 0, 0, 0),
(521, 13, 30, 0, 0, 0, 0),
(522, 15, 30, 0, 0, 0, 1),
(523, 18, 30, 0, 0, 0, 0),
(524, 7, 31, 0, 0, 0, 0),
(525, 9, 31, 0, 0, 0, 0),
(526, 10, 31, 0, 0, 0, 0),
(527, 11, 31, 0, 0, 0, 2),
(528, 13, 31, 0, 0, 0, 0),
(529, 14, 31, 0, 0, 0, 0),
(531, 20, 31, 0, 0, 0, 0),
(532, 22, 31, 0, 0, 0, 0),
(533, 24, 31, 0, 0, 0, 0),
(534, 28, 31, 0, 0, 0, 0),
(546, 7, 32, 0, 0, 0, 0),
(547, 9, 32, 0, 0, 0, 0),
(548, 10, 32, 0, 0, 0, 0),
(549, 11, 32, 0, 0, 0, 0),
(550, 13, 32, 0, 0, 0, 0),
(551, 14, 32, 0, 0, 0, 0),
(553, 20, 32, 0, 0, 0, 2),
(554, 22, 32, 0, 0, 0, 2),
(555, 24, 32, 0, 0, 0, 0),
(556, 28, 32, 0, 0, 0, 0),
(557, 7, 33, 0, 0, 0, 0),
(558, 9, 33, 0, 0, 0, 0),
(559, 10, 33, 0, 0, 0, 0),
(560, 11, 33, 0, 0, 0, 1),
(561, 13, 33, 0, 0, 0, 1),
(562, 14, 33, 0, 0, 0, 0),
(564, 20, 33, 0, 0, 0, 0),
(565, 22, 33, 0, 0, 0, 1),
(566, 24, 33, 0, 0, 0, 0),
(567, 28, 33, 0, 0, 0, 0),
(568, 7, 34, 0, 0, 0, 0),
(569, 9, 34, 0, 0, 0, 0),
(570, 10, 34, 0, 0, 0, 0),
(571, 11, 34, 0, 0, 0, 0),
(572, 13, 34, 0, 0, 0, 0),
(573, 14, 34, 0, 0, 0, 0),
(575, 20, 34, 0, 0, 0, 0),
(576, 22, 34, 0, 0, 0, 0),
(577, 24, 34, 0, 0, 0, 0),
(578, 28, 34, 0, 0, 0, 0),
(590, 7, 35, 0, 0, 0, 0),
(591, 9, 35, 0, 0, 0, 0),
(592, 10, 35, 0, 0, 0, 0),
(593, 11, 35, 0, 0, 0, 0),
(594, 13, 35, 0, 0, 0, 0),
(595, 14, 35, 0, 0, 0, 0),
(597, 20, 35, 0, 0, 0, 0),
(598, 22, 35, 0, 0, 0, 0),
(599, 24, 35, 0, 0, 0, 0),
(600, 28, 35, 0, 0, 0, 0),
(601, 5, 36, 0, 0, 0, 0),
(602, 7, 36, 0, 0, 0, 0),
(603, 8, 36, 0, 1, 0, 0),
(604, 9, 36, 0, 0, 0, 0),
(605, 10, 36, 0, 0, 0, 0),
(606, 11, 36, 0, 0, 0, 0),
(607, 13, 36, 0, 0, 0, 0),
(608, 14, 36, 0, 0, 0, 0),
(610, 18, 36, 0, 0, 0, 0),
(611, 22, 36, 0, 0, 0, 0),
(612, 23, 36, 0, 0, 0, 1),
(613, 26, 36, 0, 0, 0, 0),
(614, 27, 36, 0, 0, 0, 0),
(615, 29, 36, 0, 0, 0, 0),
(616, 5, 37, 0, 0, 0, 0),
(617, 7, 37, 0, 0, 0, 0),
(618, 8, 37, 0, 0, 0, 1),
(619, 10, 37, 0, 0, 0, 0),
(620, 11, 37, 0, 0, 0, 0),
(621, 13, 37, 0, 0, 0, 0),
(622, 14, 37, 0, 0, 0, 0),
(623, 15, 37, 0, 0, 0, 0),
(625, 18, 37, 0, 0, 0, 0),
(626, 20, 37, 0, 0, 0, 0),
(627, 21, 37, 0, 0, 0, 0),
(628, 25, 37, 0, 0, 0, 0),
(629, 27, 37, 0, 0, 0, 0),
(630, 28, 37, 0, 0, 0, 0),
(631, 30, 37, 0, 0, 0, 1),
(632, 5, 38, 0, 0, 0, 0),
(633, 7, 38, 0, 0, 0, 0),
(634, 8, 38, 0, 0, 0, 0),
(635, 10, 38, 0, 0, 0, 0),
(636, 11, 38, 0, 0, 0, 0),
(637, 13, 38, 0, 0, 0, 0),
(638, 14, 38, 0, 0, 0, 0),
(639, 15, 38, 0, 0, 0, 0),
(641, 18, 38, 0, 0, 0, 0),
(642, 20, 38, 0, 0, 0, 0),
(643, 21, 38, 0, 0, 0, 0),
(644, 25, 38, 0, 0, 0, 0),
(645, 27, 38, 0, 0, 0, 0),
(646, 28, 38, 0, 0, 0, 0),
(647, 30, 38, 0, 0, 0, 1),
(648, 5, 39, 0, 0, 0, 0),
(649, 7, 39, 0, 0, 0, 0),
(650, 8, 39, 0, 0, 0, 1),
(651, 10, 39, 0, 0, 0, 0),
(652, 11, 39, 0, 0, 0, 0),
(653, 13, 39, 0, 0, 0, 0),
(654, 14, 39, 0, 0, 0, 0),
(655, 15, 39, 0, 0, 0, 0),
(657, 18, 39, 0, 0, 0, 0),
(658, 20, 39, 0, 0, 0, 0),
(659, 21, 39, 0, 0, 0, 0),
(660, 25, 39, 0, 0, 0, 0),
(661, 27, 39, 0, 0, 0, 0),
(662, 28, 39, 0, 0, 0, 0),
(663, 30, 39, 0, 0, 0, 0),
(664, 5, 40, 0, 0, 0, 0),
(665, 7, 40, 0, 0, 0, 0),
(666, 8, 40, 0, 0, 0, 1),
(667, 10, 40, 0, 0, 0, 0),
(668, 11, 40, 0, 0, 0, 0),
(669, 13, 40, 0, 0, 0, 0),
(670, 14, 40, 0, 0, 0, 0),
(671, 15, 40, 0, 0, 0, 0),
(673, 18, 40, 0, 0, 0, 0),
(674, 20, 40, 0, 0, 0, 0),
(675, 21, 40, 0, 0, 0, 1),
(676, 25, 40, 0, 0, 0, 0),
(677, 27, 40, 0, 0, 0, 0),
(678, 28, 40, 0, 0, 0, 0),
(679, 30, 40, 0, 0, 0, 0),
(680, 5, 22, 0, 0, 0, 0),
(681, 8, 22, 0, 0, 0, 1),
(682, 9, 22, 0, 0, 0, 1),
(683, 10, 22, 0, 0, 0, 0),
(685, 18, 22, 0, 0, 0, 0),
(686, 21, 22, 0, 0, 0, 1),
(687, 22, 22, 0, 0, 0, 0),
(688, 26, 22, 0, 0, 0, 0),
(689, 27, 22, 0, 0, 0, 0),
(690, 5, 41, 0, 0, 0, 1),
(691, 6, 41, 0, 0, 0, 0),
(692, 7, 41, 0, 0, 0, 0),
(693, 8, 41, 0, 0, 0, 3),
(694, 9, 41, 0, 0, 0, 4),
(695, 10, 41, 0, 0, 0, 0),
(696, 11, 41, 0, 0, 0, 0),
(697, 13, 41, 0, 0, 0, 1),
(698, 14, 41, 0, 0, 0, 0),
(699, 15, 41, 0, 0, 0, 1),
(701, 18, 41, 0, 0, 0, 1),
(702, 19, 41, 0, 0, 0, 0),
(703, 20, 41, 0, 0, 0, 0),
(704, 25, 41, 0, 0, 0, 0),
(705, 28, 41, 0, 0, 0, 0),
(706, 29, 41, 0, 0, 0, 0),
(707, 5, 42, 0, 0, 0, 0),
(708, 7, 42, 0, 0, 0, 0),
(709, 8, 42, 0, 0, 0, 0),
(710, 9, 42, 0, 0, 0, 0),
(711, 10, 42, 0, 0, 0, 0),
(712, 11, 42, 0, 0, 0, 0),
(713, 13, 42, 0, 0, 0, 0),
(714, 14, 42, 0, 0, 0, 0),
(715, 15, 42, 0, 0, 0, 0),
(717, 18, 42, 0, 0, 0, 0),
(718, 19, 42, 0, 0, 0, 0),
(719, 20, 42, 0, 0, 0, 0),
(720, 26, 42, 0, 0, 0, 0),
(721, 28, 42, 0, 0, 0, 0),
(722, 5, 43, 0, 0, 0, 0),
(723, 7, 43, 0, 0, 0, 0),
(724, 8, 43, 0, 0, 0, 0),
(725, 10, 43, 0, 0, 0, 0),
(726, 11, 43, 0, 0, 0, 1),
(727, 13, 43, 0, 0, 0, 0),
(728, 14, 43, 0, 0, 0, 0),
(729, 15, 43, 0, 0, 0, 0),
(730, 16, 43, 0, 0, 0, 0),
(731, 18, 43, 0, 0, 0, 1),
(732, 20, 43, 0, 0, 0, 0),
(733, 24, 43, 0, 0, 0, 0),
(734, 25, 43, 0, 0, 0, 0),
(735, 28, 43, 0, 0, 0, 0),
(736, 31, 43, 0, 0, 0, 0),
(737, 5, 44, 0, 0, 0, 0),
(738, 7, 44, 0, 0, 0, 0),
(739, 8, 44, 0, 1, 0, 0),
(740, 9, 44, 0, 0, 0, 2),
(741, 10, 44, 0, 0, 0, 0),
(742, 11, 44, 0, 0, 0, 0),
(743, 13, 44, 0, 0, 0, 0),
(744, 15, 44, 0, 0, 0, 0),
(746, 18, 44, 0, 0, 0, 0),
(747, 22, 44, 0, 0, 0, 0),
(748, 27, 44, 0, 0, 0, 0),
(749, 31, 44, 0, 0, 0, 0),
(750, 5, 45, 0, 0, 0, 0),
(751, 7, 45, 0, 0, 0, 0),
(752, 8, 45, 0, 1, 0, 0),
(753, 9, 45, 0, 0, 0, 1),
(754, 11, 45, 0, 0, 0, 0),
(755, 13, 45, 0, 0, 0, 0),
(756, 18, 45, 0, 0, 0, 1),
(757, 20, 45, 0, 0, 0, 0),
(758, 22, 45, 0, 0, 0, 0),
(759, 25, 45, 0, 0, 0, 0),
(760, 26, 45, 0, 1, 0, 0),
(761, 27, 45, 0, 0, 0, 0),
(762, 28, 45, 0, 0, 0, 0),
(763, 5, 46, 0, 1, 0, 0),
(764, 7, 46, 0, 0, 0, 0),
(765, 8, 46, 0, 1, 0, 0),
(766, 9, 46, 0, 0, 0, 2),
(767, 10, 46, 0, 0, 0, 0),
(768, 11, 46, 0, 0, 1, 0),
(769, 13, 46, 0, 0, 0, 0),
(771, 18, 46, 0, 0, 0, 0),
(772, 19, 46, 0, 0, 0, 0),
(773, 21, 46, 0, 0, 0, 1),
(774, 22, 46, 0, 0, 0, 1),
(775, 24, 46, 0, 0, 0, 0),
(776, 28, 46, 0, 0, 0, 0),
(777, 31, 46, 0, 0, 0, 0),
(778, 32, 46, 0, 0, 0, 0),
(794, 5, 47, 0, 0, 0, 1),
(795, 7, 47, 0, 0, 0, 0),
(796, 8, 47, 0, 0, 0, 0),
(797, 9, 47, 0, 0, 0, 0),
(798, 11, 47, 0, 0, 0, 0),
(799, 13, 47, 0, 0, 0, 0),
(801, 18, 47, 0, 0, 0, 0),
(802, 20, 47, 0, 0, 0, 0),
(803, 22, 47, 0, 0, 0, 1),
(804, 24, 47, 0, 0, 0, 0),
(805, 25, 47, 0, 0, 0, 0),
(806, 27, 47, 0, 0, 0, 0),
(807, 28, 47, 0, 0, 0, 0),
(808, 29, 47, 0, 0, 0, 0),
(809, 5, 48, 0, 0, 0, 0),
(810, 6, 48, 0, 0, 0, 0),
(811, 7, 48, 0, 0, 0, 0),
(812, 8, 48, 0, 0, 0, 0),
(813, 9, 48, 0, 0, 0, 0),
(814, 10, 48, 0, 0, 0, 0),
(815, 11, 48, 0, 0, 0, 0),
(816, 12, 48, 0, 0, 0, 0),
(817, 15, 48, 0, 0, 0, 1),
(818, 18, 48, 0, 0, 0, 1),
(819, 19, 48, 0, 0, 0, 1),
(820, 20, 48, 0, 0, 0, 0),
(821, 21, 48, 0, 0, 0, 0),
(822, 24, 48, 0, 0, 0, 1),
(823, 25, 48, 0, 0, 0, 0),
(824, 26, 48, 0, 0, 0, 0),
(825, 27, 48, 0, 0, 0, 0),
(826, 28, 48, 0, 0, 0, 0),
(827, 5, 49, 0, 0, 0, 0),
(828, 7, 49, 0, 0, 0, 0),
(829, 8, 49, 0, 0, 0, 0),
(830, 9, 49, 0, 0, 0, 0),
(831, 10, 49, 0, 0, 0, 0),
(832, 11, 49, 0, 0, 0, 0),
(833, 13, 49, 0, 0, 0, 0),
(834, 14, 49, 0, 0, 0, 0),
(836, 18, 49, 0, 0, 0, 0),
(837, 20, 49, 0, 0, 0, 0),
(838, 21, 49, 0, 0, 0, 1),
(839, 22, 49, 0, 0, 0, 1),
(840, 24, 49, 0, 0, 0, 0),
(841, 27, 49, 0, 0, 0, 0),
(842, 5, 50, 0, 0, 0, 0),
(843, 7, 50, 0, 0, 0, 0),
(844, 8, 50, 0, 0, 0, 1),
(845, 9, 50, 0, 0, 0, 0),
(846, 10, 50, 0, 0, 0, 0),
(847, 11, 50, 0, 0, 0, 0),
(848, 13, 50, 0, 0, 0, 0),
(849, 14, 50, 0, 0, 0, 0),
(850, 15, 50, 0, 0, 0, 1),
(851, 18, 50, 0, 0, 0, 2),
(852, 19, 50, 0, 0, 0, 1),
(853, 24, 50, 0, 0, 0, 0),
(854, 27, 50, 0, 0, 0, 0),
(855, 28, 50, 0, 0, 0, 0),
(856, 29, 50, 0, 0, 0, 0),
(882, 5, 52, 0, 0, 0, 1),
(883, 7, 52, 0, 0, 0, 0),
(884, 8, 52, 0, 0, 0, 0),
(885, 9, 52, 0, 0, 0, 0),
(886, 13, 52, 0, 0, 0, 0),
(887, 15, 52, 0, 0, 0, 0),
(888, 18, 52, 0, 0, 0, 0),
(889, 22, 52, 0, 0, 0, 0),
(890, 26, 52, 0, 0, 0, 0),
(891, 5, 53, 0, 0, 0, 0),
(892, 7, 53, 0, 0, 0, 1),
(893, 8, 53, 0, 0, 0, 0),
(894, 9, 53, 0, 0, 0, 0),
(895, 13, 53, 0, 0, 0, 0),
(896, 15, 53, 0, 0, 0, 2),
(897, 18, 53, 0, 0, 0, 0),
(898, 22, 53, 0, 0, 0, 0),
(899, 26, 53, 0, 0, 0, 0),
(909, 5, 54, 0, 0, 0, 0),
(910, 7, 54, 0, 0, 0, 0),
(911, 8, 54, 0, 0, 0, 0),
(912, 9, 54, 0, 0, 0, 0),
(913, 13, 54, 0, 0, 0, 0),
(914, 15, 54, 0, 0, 0, 0),
(915, 18, 54, 0, 0, 0, 0),
(916, 22, 54, 0, 0, 0, 0),
(917, 26, 54, 0, 0, 0, 0),
(918, 5, 55, 0, 0, 0, 0),
(919, 7, 55, 0, 0, 0, 0),
(920, 8, 55, 0, 0, 0, 0),
(921, 9, 55, 0, 0, 0, 1),
(922, 13, 55, 0, 0, 0, 0),
(923, 15, 55, 0, 0, 0, 1),
(924, 18, 55, 0, 0, 0, 0),
(925, 22, 55, 0, 0, 0, 0),
(926, 26, 55, 0, 0, 0, 0),
(936, 5, 56, 0, 0, 0, 0),
(937, 7, 56, 0, 0, 0, 0),
(938, 8, 56, 0, 0, 0, 1),
(939, 9, 56, 0, 0, 0, 0),
(940, 13, 56, 0, 0, 0, 0),
(941, 15, 56, 0, 0, 0, 0),
(942, 18, 56, 0, 0, 0, 0),
(943, 22, 56, 0, 0, 0, 0),
(944, 26, 56, 0, 0, 0, 0),
(945, 5, 57, 0, 0, 0, 1),
(946, 7, 57, 0, 0, 0, 1),
(947, 8, 57, 0, 0, 0, 4),
(948, 9, 57, 0, 0, 0, 2),
(949, 10, 57, 0, 0, 0, 1),
(950, 11, 57, 0, 0, 0, 0),
(951, 13, 57, 0, 0, 0, 1),
(952, 18, 57, 0, 0, 0, 2),
(953, 21, 57, 0, 0, 0, 2),
(963, 5, 58, 0, 0, 0, 0),
(964, 7, 58, 0, 0, 0, 0),
(965, 8, 58, 0, 0, 0, 0),
(966, 9, 58, 0, 0, 0, 0),
(967, 10, 58, 0, 0, 0, 0),
(968, 11, 58, 0, 0, 0, 0),
(969, 13, 58, 0, 0, 0, 0),
(970, 18, 58, 0, 0, 0, 0),
(971, 21, 58, 0, 0, 0, 1),
(972, 5, 59, 0, 0, 0, 0),
(973, 7, 59, 0, 0, 0, 0),
(974, 8, 59, 0, 0, 0, 0),
(975, 9, 59, 0, 0, 0, 1),
(976, 10, 59, 0, 0, 0, 0),
(977, 11, 59, 0, 0, 0, 0),
(978, 13, 59, 0, 0, 0, 0),
(979, 18, 59, 0, 0, 0, 0),
(980, 21, 59, 0, 0, 0, 0),
(981, 5, 60, 0, 0, 0, 0),
(982, 7, 60, 0, 0, 0, 0),
(983, 8, 60, 0, 0, 0, 0),
(984, 9, 60, 0, 0, 0, 1),
(985, 10, 60, 0, 0, 0, 0),
(986, 11, 60, 0, 0, 0, 0),
(987, 13, 60, 0, 0, 0, 0),
(988, 18, 60, 0, 0, 0, 0),
(989, 21, 60, 0, 0, 0, 0),
(990, 5, 61, 0, 0, 0, 0),
(991, 7, 61, 0, 0, 0, 1),
(992, 8, 61, 0, 0, 0, 0),
(993, 9, 61, 0, 0, 0, 0),
(994, 10, 61, 0, 0, 0, 0),
(995, 11, 61, 0, 0, 0, 0),
(996, 13, 61, 0, 0, 0, 0),
(997, 18, 61, 0, 0, 0, 0),
(998, 21, 61, 0, 0, 0, 2),
(999, 5, 62, 0, 0, 0, 0),
(1000, 7, 62, 0, 0, 0, 0),
(1001, 8, 62, 0, 0, 0, 1),
(1002, 9, 62, 0, 0, 0, 1),
(1003, 10, 62, 0, 0, 0, 0),
(1004, 11, 62, 0, 0, 0, 0),
(1005, 13, 62, 0, 0, 0, 0),
(1006, 18, 62, 0, 0, 0, 0),
(1007, 21, 62, 0, 0, 0, 0),
(1008, 8, 63, 0, 0, 0, 1),
(1009, 9, 63, 0, 0, 0, 1),
(1010, 10, 63, 0, 0, 0, 0),
(1011, 11, 63, 0, 0, 0, 0),
(1012, 18, 63, 0, 0, 0, 0),
(1013, 20, 63, 0, 0, 0, 0),
(1014, 21, 63, 0, 0, 0, 0),
(1015, 27, 63, 0, 0, 0, 1),
(1016, 28, 63, 0, 0, 0, 0),
(1017, 33, 63, 0, 0, 0, 0),
(1018, 8, 64, 0, 0, 0, 1),
(1019, 9, 64, 0, 0, 0, 1),
(1020, 10, 64, 0, 0, 0, 0),
(1021, 11, 64, 0, 0, 0, 0),
(1022, 18, 64, 0, 0, 0, 0),
(1023, 20, 64, 0, 0, 0, 0),
(1024, 21, 64, 0, 0, 0, 1),
(1025, 27, 64, 0, 0, 0, 0),
(1026, 28, 64, 0, 0, 0, 0),
(1027, 33, 64, 0, 0, 0, 0),
(1028, 8, 65, 0, 0, 0, 0),
(1029, 9, 65, 0, 0, 0, 0),
(1030, 10, 65, 0, 0, 0, 0),
(1031, 11, 65, 0, 0, 0, 0),
(1032, 18, 65, 0, 0, 0, 0),
(1033, 20, 65, 0, 0, 0, 0),
(1034, 21, 65, 0, 0, 0, 0),
(1035, 27, 65, 0, 0, 0, 0),
(1036, 28, 65, 0, 0, 0, 0),
(1037, 33, 65, 0, 0, 0, 0),
(1038, 8, 66, 0, 0, 0, 0),
(1039, 9, 66, 0, 0, 0, 0),
(1040, 10, 66, 0, 0, 0, 0),
(1041, 11, 66, 0, 0, 0, 0),
(1042, 18, 66, 0, 0, 0, 0),
(1043, 20, 66, 0, 0, 0, 0),
(1044, 21, 66, 0, 0, 0, 0),
(1045, 27, 66, 0, 0, 0, 0),
(1046, 28, 66, 0, 0, 0, 0),
(1047, 33, 66, 0, 0, 0, 0),
(1048, 7, 67, 0, 0, 0, 0),
(1049, 8, 67, 0, 0, 0, 0),
(1050, 9, 67, 0, 0, 0, 1),
(1051, 10, 67, 0, 0, 0, 0),
(1052, 11, 67, 0, 0, 0, 0),
(1053, 13, 67, 0, 0, 0, 0),
(1054, 18, 67, 0, 0, 0, 0),
(1055, 22, 67, 0, 0, 0, 0),
(1056, 7, 68, 0, 0, 0, 0),
(1057, 8, 68, 0, 0, 0, 0),
(1058, 9, 68, 0, 0, 0, 3),
(1059, 10, 68, 0, 0, 0, 0),
(1060, 11, 68, 0, 0, 0, 0),
(1061, 13, 68, 0, 0, 0, 0),
(1062, 18, 68, 0, 0, 0, 2),
(1063, 22, 68, 0, 0, 0, 0),
(1064, 7, 69, 0, 0, 0, 0),
(1065, 8, 69, 0, 0, 0, 0),
(1066, 9, 69, 0, 0, 0, 1),
(1067, 10, 69, 0, 0, 0, 0),
(1068, 11, 69, 0, 0, 0, 0),
(1069, 13, 69, 0, 0, 0, 0),
(1070, 18, 69, 0, 0, 0, 1),
(1071, 22, 69, 0, 0, 0, 1),
(1072, 7, 70, 0, 0, 0, 0),
(1073, 8, 70, 0, 0, 0, 0),
(1074, 9, 70, 0, 0, 0, 0),
(1075, 10, 70, 0, 0, 0, 0),
(1076, 11, 70, 0, 0, 0, 0),
(1077, 13, 70, 0, 0, 0, 0),
(1078, 18, 70, 0, 0, 0, 1),
(1079, 22, 70, 0, 0, 0, 0),
(1080, 5, 71, 0, 0, 0, 0),
(1081, 7, 71, 0, 0, 0, 0),
(1082, 8, 71, 0, 0, 0, 0),
(1083, 9, 71, 0, 0, 0, 0),
(1084, 11, 71, 0, 0, 0, 0),
(1085, 18, 71, 0, 0, 0, 3),
(1086, 24, 71, 0, 0, 0, 0),
(1087, 5, 73, 0, 0, 0, 0),
(1088, 7, 73, 0, 0, 0, 0),
(1089, 8, 73, 0, 0, 0, 0),
(1090, 9, 73, 0, 0, 0, 2),
(1091, 11, 73, 0, 0, 0, 0),
(1092, 18, 73, 0, 0, 0, 1),
(1093, 24, 73, 0, 0, 0, 0),
(1094, 5, 72, 0, 0, 0, 0),
(1095, 7, 72, 0, 0, 0, 0),
(1096, 8, 72, 0, 0, 0, 0),
(1097, 9, 72, 0, 0, 0, 4),
(1098, 11, 72, 0, 0, 0, 0),
(1099, 18, 72, 0, 0, 0, 0),
(1100, 24, 72, 0, 0, 0, 0),
(1101, 5, 74, 0, 0, 0, 0),
(1102, 7, 74, 0, 0, 0, 0),
(1103, 9, 74, 0, 0, 0, 0),
(1104, 10, 74, 0, 0, 0, 0),
(1105, 18, 74, 0, 0, 0, 0),
(1106, 20, 74, 0, 0, 0, 0),
(1107, 24, 74, 0, 0, 0, 0),
(1115, 5, 76, 0, 0, 0, 0),
(1116, 7, 76, 0, 0, 0, 1),
(1117, 9, 76, 0, 0, 0, 0),
(1118, 10, 76, 0, 0, 0, 0),
(1119, 18, 76, 0, 0, 0, 0),
(1120, 20, 76, 0, 0, 0, 0),
(1121, 24, 76, 0, 0, 0, 0),
(1122, 5, 75, 0, 0, 0, 1),
(1123, 7, 75, 0, 0, 0, 0),
(1124, 9, 75, 0, 0, 0, 0),
(1125, 10, 75, 0, 0, 0, 0),
(1126, 18, 75, 0, 0, 0, 0),
(1127, 20, 75, 0, 0, 0, 0),
(1128, 24, 75, 0, 0, 0, 0),
(1129, 5, 77, 0, 0, 0, 0),
(1130, 7, 77, 0, 0, 0, 0),
(1131, 8, 77, 0, 0, 0, 0),
(1132, 9, 77, 0, 0, 0, 1),
(1133, 10, 77, 0, 0, 0, 0),
(1134, 11, 77, 0, 0, 0, 0),
(1135, 18, 77, 0, 0, 0, 0),
(1136, 20, 77, 0, 0, 0, 0),
(1137, 24, 77, 0, 0, 0, 0),
(1138, 33, 77, 0, 0, 0, 0),
(1139, 5, 78, 0, 0, 0, 0),
(1140, 7, 78, 0, 0, 0, 0),
(1141, 8, 78, 0, 0, 0, 0),
(1142, 9, 78, 0, 0, 0, 0),
(1143, 10, 78, 0, 0, 0, 0),
(1144, 11, 78, 0, 0, 0, 0),
(1145, 18, 78, 0, 0, 0, 0),
(1146, 20, 78, 0, 0, 0, 0),
(1147, 24, 78, 0, 0, 0, 0),
(1148, 33, 78, 0, 0, 0, 0),
(1149, 5, 79, 0, 0, 0, 0),
(1150, 7, 79, 0, 0, 0, 0),
(1151, 8, 79, 0, 0, 0, 2),
(1152, 9, 79, 0, 0, 0, 1),
(1153, 10, 79, 0, 0, 0, 0),
(1154, 11, 79, 0, 0, 0, 0),
(1155, 18, 79, 0, 0, 0, 2),
(1156, 20, 79, 0, 0, 0, 0),
(1157, 24, 79, 0, 0, 0, 0),
(1158, 33, 79, 0, 0, 0, 0),
(1174, 5, 80, 0, 0, 0, 0),
(1175, 7, 80, 0, 0, 0, 0),
(1176, 8, 80, 0, 0, 0, 0),
(1177, 9, 80, 0, 0, 0, 3),
(1178, 10, 80, 0, 0, 0, 0),
(1179, 11, 80, 0, 0, 0, 0),
(1180, 13, 80, 0, 0, 0, 0),
(1181, 15, 80, 0, 0, 0, 0),
(1182, 18, 80, 0, 0, 0, 0),
(1183, 19, 80, 0, 0, 0, 0),
(1184, 20, 80, 0, 0, 0, 0),
(1185, 21, 80, 0, 0, 0, 0),
(1186, 26, 80, 0, 0, 0, 0),
(1187, 27, 80, 0, 0, 0, 0),
(1188, 34, 80, 0, 0, 0, 0),
(1189, 5, 81, 0, 0, 0, 0),
(1190, 7, 81, 0, 0, 0, 0),
(1191, 9, 81, 0, 0, 0, 1),
(1192, 10, 81, 0, 0, 0, 0),
(1193, 11, 81, 0, 0, 0, 0),
(1194, 13, 81, 0, 0, 0, 0),
(1195, 14, 81, 0, 0, 0, 0),
(1196, 15, 81, 0, 0, 0, 1),
(1197, 18, 81, 0, 0, 0, 0),
(1198, 20, 81, 0, 0, 0, 0),
(1199, 21, 81, 0, 0, 0, 0),
(1200, 24, 81, 0, 0, 0, 0),
(1201, 28, 81, 0, 0, 0, 0),
(1202, 33, 81, 0, 0, 0, 0),
(1203, 5, 82, 0, 0, 0, 0),
(1204, 7, 82, 0, 0, 0, 0),
(1205, 8, 82, 0, 0, 0, 0),
(1206, 10, 82, 0, 0, 0, 0),
(1207, 11, 82, 0, 0, 0, 0),
(1208, 13, 82, 0, 0, 0, 0),
(1209, 15, 82, 0, 0, 0, 2),
(1210, 18, 82, 0, 0, 0, 0),
(1211, 21, 82, 0, 0, 0, 0),
(1212, 22, 82, 0, 0, 0, 2),
(1213, 24, 82, 0, 0, 0, 0),
(1214, 26, 82, 0, 0, 0, 0),
(1215, 27, 82, 0, 0, 0, 0),
(1216, 28, 82, 0, 1, 0, 0),
(1217, 33, 82, 0, 0, 0, 0),
(1218, 5, 83, 0, 0, 0, 0),
(1219, 7, 83, 0, 0, 0, 0),
(1220, 8, 83, 0, 0, 0, 0),
(1221, 9, 83, 0, 0, 0, 2),
(1222, 10, 83, 0, 0, 0, 1),
(1223, 11, 83, 0, 0, 0, 2),
(1224, 13, 83, 0, 0, 0, 0),
(1225, 15, 83, 0, 0, 0, 0),
(1226, 20, 83, 0, 0, 0, 0),
(1227, 21, 83, 0, 0, 0, 0),
(1228, 22, 83, 0, 0, 0, 0),
(1229, 24, 83, 0, 0, 0, 0),
(1230, 26, 83, 0, 0, 0, 0),
(1231, 28, 83, 0, 0, 0, 0),
(1232, 33, 83, 0, 0, 0, 0),
(1233, 5, 84, 0, 0, 0, 0),
(1234, 7, 84, 0, 0, 0, 0),
(1235, 8, 84, 0, 0, 0, 0),
(1236, 9, 84, 0, 0, 0, 0),
(1237, 10, 84, 0, 0, 0, 0),
(1238, 11, 84, 0, 0, 0, 0),
(1239, 13, 84, 0, 0, 0, 0),
(1240, 14, 84, 0, 0, 0, 0),
(1241, 15, 84, 0, 0, 0, 0),
(1242, 18, 84, 0, 0, 0, 1),
(1243, 20, 84, 0, 0, 0, 0),
(1244, 21, 84, 0, 0, 0, 0),
(1245, 22, 84, 0, 0, 0, 0),
(1246, 24, 84, 0, 0, 0, 0),
(1247, 25, 84, 0, 0, 0, 0),
(1248, 27, 84, 0, 0, 0, 0),
(1249, 33, 84, 0, 0, 0, 0),
(1250, 5, 85, 0, 0, 0, 1),
(1251, 7, 85, 0, 0, 0, 0),
(1252, 8, 85, 0, 0, 0, 0),
(1253, 9, 85, 0, 0, 0, 0),
(1254, 10, 85, 0, 0, 0, 0),
(1255, 11, 85, 0, 0, 0, 0),
(1256, 13, 85, 0, 0, 0, 0),
(1257, 14, 85, 0, 0, 0, 0),
(1258, 15, 85, 0, 0, 0, 0),
(1259, 20, 85, 0, 0, 0, 0),
(1260, 21, 85, 0, 0, 0, 0),
(1261, 22, 85, 0, 0, 0, 0),
(1262, 26, 85, 0, 0, 0, 0),
(1263, 27, 85, 0, 0, 0, 0),
(1264, 35, 85, 0, 0, 0, 1),
(1265, 5, 86, 0, 0, 0, 0),
(1266, 6, 86, 0, 0, 0, 0),
(1267, 7, 86, 0, 0, 0, 0),
(1268, 8, 86, 0, 0, 0, 1),
(1269, 9, 86, 0, 0, 0, 0),
(1270, 10, 86, 0, 0, 0, 0),
(1271, 11, 86, 1, 0, 0, 0),
(1272, 13, 86, 0, 0, 0, 0),
(1273, 14, 86, 0, 0, 0, 0),
(1274, 15, 86, 0, 0, 0, 0),
(1275, 20, 86, 0, 0, 0, 0),
(1276, 21, 86, 0, 0, 0, 0),
(1277, 22, 86, 0, 0, 0, 1),
(1278, 26, 86, 0, 0, 0, 0),
(1279, 27, 86, 0, 0, 0, 0),
(1280, 29, 86, 0, 0, 0, 0),
(1281, 35, 86, 0, 0, 0, 0),
(1282, 5, 87, 0, 0, 0, 0),
(1283, 7, 87, 0, 0, 0, 0),
(1284, 8, 87, 0, 1, 0, 0),
(1285, 10, 87, 0, 1, 0, 0),
(1286, 13, 87, 0, 0, 0, 0),
(1287, 15, 87, 0, 1, 0, 1),
(1288, 18, 87, 1, 0, 0, 0),
(1289, 20, 87, 0, 0, 0, 0),
(1290, 21, 87, 0, 0, 0, 0),
(1291, 22, 87, 0, 1, 0, 0),
(1292, 24, 87, 0, 0, 0, 0),
(1293, 27, 87, 0, 1, 0, 0),
(1294, 28, 87, 0, 0, 0, 0),
(1295, 31, 87, 0, 0, 0, 0),
(1296, 33, 87, 0, 0, 0, 0),
(1297, 5, 88, 0, 0, 0, 0),
(1298, 7, 88, 0, 0, 0, 0),
(1299, 8, 88, 0, 0, 0, 0),
(1300, 10, 88, 0, 0, 0, 0),
(1301, 13, 88, 0, 0, 0, 0),
(1302, 15, 88, 0, 0, 0, 0),
(1303, 19, 88, 0, 0, 0, 0),
(1304, 20, 88, 0, 0, 0, 0),
(1305, 22, 88, 0, 0, 0, 1),
(1306, 26, 88, 0, 0, 0, 0),
(1307, 27, 88, 0, 0, 0, 0),
(1308, 28, 88, 0, 0, 0, 0),
(1309, 33, 88, 0, 0, 0, 0),
(1310, 35, 88, 0, 0, 0, 3),
(1311, 5, 89, 0, 0, 0, 0),
(1312, 7, 89, 0, 0, 0, 0),
(1313, 8, 89, 0, 0, 0, 0),
(1314, 9, 89, 0, 0, 0, 0),
(1315, 10, 89, 0, 0, 0, 0),
(1316, 11, 89, 0, 0, 0, 0),
(1317, 13, 89, 0, 0, 0, 0),
(1318, 15, 89, 0, 0, 0, 1),
(1319, 18, 89, 0, 0, 0, 0),
(1320, 20, 89, 0, 0, 0, 0),
(1321, 21, 89, 0, 0, 0, 0),
(1322, 22, 89, 0, 0, 0, 0),
(1323, 23, 89, 0, 0, 0, 0),
(1324, 24, 89, 0, 0, 0, 0),
(1325, 26, 89, 0, 0, 0, 0),
(1326, 27, 89, 0, 0, 0, 0),
(1327, 6, 90, 0, 0, 0, 0),
(1328, 7, 90, 0, 0, 0, 0),
(1329, 8, 90, 0, 0, 0, 0),
(1330, 9, 90, 0, 0, 0, 0),
(1331, 10, 90, 0, 0, 0, 0),
(1332, 11, 90, 0, 0, 0, 1),
(1333, 14, 90, 0, 0, 0, 0),
(1334, 15, 90, 0, 0, 0, 3),
(1335, 18, 90, 0, 0, 0, 1),
(1336, 22, 90, 0, 0, 0, 1),
(1337, 26, 90, 0, 0, 0, 0),
(1338, 28, 90, 0, 0, 0, 0),
(1339, 30, 90, 0, 0, 0, 3),
(1340, 35, 90, 0, 0, 0, 2),
(1341, 6, 91, 0, 0, 0, 0),
(1342, 7, 91, 0, 0, 0, 0),
(1343, 8, 91, 0, 0, 0, 0),
(1344, 9, 91, 0, 0, 0, 0),
(1345, 10, 91, 0, 0, 0, 0),
(1346, 11, 91, 0, 0, 0, 0),
(1347, 14, 91, 0, 0, 0, 0),
(1348, 15, 91, 0, 0, 0, 0),
(1349, 18, 91, 0, 0, 0, 0),
(1350, 20, 91, 0, 0, 0, 0),
(1351, 21, 91, 0, 0, 0, 0),
(1352, 22, 91, 0, 0, 0, 0),
(1353, 24, 91, 0, 0, 0, 0),
(1354, 27, 91, 0, 0, 0, 0),
(1355, 28, 91, 0, 0, 0, 0),
(1356, 30, 91, 0, 0, 0, 3),
(1357, 36, 91, 0, 0, 0, 1),
(1358, 6, 92, 0, 0, 0, 0),
(1359, 7, 92, 0, 0, 0, 0),
(1360, 8, 92, 0, 0, 0, 0),
(1361, 9, 92, 0, 0, 0, 0),
(1362, 10, 92, 0, 0, 0, 0),
(1363, 11, 92, 0, 0, 0, 0),
(1364, 12, 92, 0, 0, 0, 0),
(1365, 14, 92, 0, 0, 0, 0),
(1366, 15, 92, 0, 0, 0, 0),
(1367, 18, 92, 0, 0, 0, 1),
(1368, 20, 92, 0, 0, 0, 0),
(1369, 21, 92, 0, 0, 0, 1),
(1370, 22, 92, 0, 0, 0, 0),
(1371, 24, 92, 0, 0, 0, 0),
(1372, 26, 92, 0, 0, 0, 0),
(1373, 27, 92, 0, 0, 0, 0),
(1374, 28, 92, 0, 0, 0, 0),
(1375, 30, 92, 0, 0, 0, 0),
(1376, 36, 92, 0, 0, 0, 1),
(1377, 6, 93, 0, 0, 0, 0),
(1378, 7, 93, 0, 0, 0, 0),
(1379, 8, 93, 0, 0, 0, 0),
(1380, 9, 93, 0, 0, 0, 0),
(1381, 10, 93, 0, 0, 0, 0),
(1382, 11, 93, 0, 0, 0, 0),
(1383, 14, 93, 0, 0, 0, 0),
(1384, 15, 93, 0, 0, 0, 0),
(1385, 18, 93, 0, 0, 0, 0),
(1386, 20, 93, 0, 0, 0, 0),
(1387, 21, 93, 0, 0, 0, 0),
(1388, 22, 93, 0, 0, 0, 0),
(1389, 24, 93, 0, 0, 0, 0),
(1390, 26, 93, 0, 0, 0, 0),
(1391, 27, 93, 0, 0, 0, 0),
(1392, 28, 93, 0, 0, 0, 0),
(1393, 30, 93, 0, 0, 0, 1),
(1394, 36, 93, 0, 0, 0, 1),
(1395, 6, 94, 0, 0, 0, 0),
(1396, 7, 94, 0, 0, 0, 0),
(1397, 8, 94, 0, 0, 0, 1),
(1398, 9, 94, 0, 0, 0, 2),
(1399, 10, 94, 0, 0, 0, 0),
(1400, 11, 94, 0, 0, 0, 0),
(1401, 14, 94, 0, 0, 0, 0),
(1402, 15, 94, 0, 0, 0, 0),
(1403, 18, 94, 0, 0, 0, 0),
(1404, 20, 94, 0, 0, 0, 0),
(1405, 21, 94, 0, 0, 0, 0),
(1406, 22, 94, 0, 0, 0, 0),
(1407, 24, 94, 0, 0, 0, 0),
(1408, 26, 94, 0, 0, 0, 0),
(1409, 27, 94, 0, 0, 0, 0),
(1410, 28, 94, 0, 0, 0, 0),
(1411, 30, 94, 0, 0, 0, 0),
(1412, 36, 94, 0, 0, 0, 0),
(1413, 7, 95, 0, 0, 0, 0),
(1414, 8, 95, 0, 0, 0, 0),
(1415, 9, 95, 0, 0, 0, 0),
(1416, 10, 95, 0, 0, 0, 0),
(1417, 11, 95, 0, 0, 0, 0),
(1418, 15, 95, 0, 0, 0, 0),
(1419, 18, 95, 0, 0, 0, 0),
(1420, 20, 95, 0, 0, 0, 0),
(1421, 21, 95, 0, 0, 0, 0),
(1422, 22, 95, 0, 0, 0, 0),
(1423, 25, 95, 0, 0, 0, 0),
(1424, 26, 95, 0, 0, 0, 0),
(1425, 27, 95, 0, 0, 0, 0),
(1426, 28, 95, 0, 0, 0, 0),
(1427, 33, 95, 0, 0, 0, 0),
(1428, 37, 95, 0, 0, 0, 0),
(1444, 5, 96, 0, 0, 0, 0),
(1445, 7, 96, 0, 1, 0, 0),
(1446, 8, 96, 0, 0, 0, 1),
(1447, 9, 96, 0, 1, 0, 2),
(1448, 10, 96, 0, 0, 0, 0),
(1449, 11, 96, 0, 0, 0, 0),
(1450, 13, 96, 0, 0, 0, 0),
(1451, 20, 96, 0, 0, 0, 0),
(1452, 21, 96, 0, 0, 0, 0),
(1453, 22, 96, 0, 0, 0, 0),
(1454, 24, 96, 0, 0, 0, 0),
(1455, 25, 96, 0, 0, 0, 0),
(1456, 27, 96, 0, 1, 0, 0),
(1457, 28, 96, 0, 0, 0, 0),
(1458, 33, 96, 0, 0, 0, 0),
(1459, 5, 97, 0, 0, 0, 1),
(1460, 7, 97, 0, 1, 0, 0),
(1461, 8, 97, 0, 0, 0, 0),
(1462, 9, 97, 0, 0, 0, 2),
(1463, 10, 97, 0, 0, 0, 0),
(1464, 11, 97, 0, 0, 0, 0),
(1465, 13, 97, 0, 0, 0, 0),
(1466, 14, 97, 0, 0, 0, 0),
(1467, 18, 97, 0, 0, 0, 1),
(1468, 19, 97, 0, 0, 0, 0),
(1469, 20, 97, 0, 0, 0, 0),
(1470, 21, 97, 0, 0, 0, 1),
(1471, 22, 97, 0, 0, 0, 0),
(1472, 25, 97, 0, 0, 0, 0),
(1473, 27, 97, 0, 1, 0, 0),
(1474, 28, 97, 0, 0, 0, 0),
(1475, 5, 98, 0, 0, 0, 0),
(1476, 7, 98, 0, 0, 0, 0),
(1477, 8, 98, 0, 0, 0, 0),
(1478, 9, 98, 0, 0, 0, 1),
(1479, 10, 98, 0, 0, 0, 0),
(1480, 11, 98, 0, 0, 0, 0),
(1481, 13, 98, 0, 0, 0, 0),
(1482, 14, 98, 0, 0, 0, 0),
(1483, 19, 98, 0, 0, 0, 0),
(1484, 20, 98, 0, 0, 0, 0),
(1485, 21, 98, 0, 0, 0, 0),
(1486, 22, 98, 0, 0, 0, 1),
(1487, 25, 98, 0, 0, 0, 0),
(1488, 26, 98, 0, 0, 0, 0),
(1489, 27, 98, 0, 0, 0, 0),
(1490, 28, 98, 0, 0, 0, 0),
(1491, 33, 98, 0, 0, 0, 0),
(1492, 35, 98, 0, 0, 0, 1),
(1493, 5, 99, 0, 0, 0, 0),
(1494, 6, 99, 0, 0, 0, 0),
(1495, 7, 99, 0, 0, 0, 0),
(1496, 8, 99, 0, 0, 0, 0),
(1497, 9, 99, 0, 0, 0, 0),
(1498, 10, 99, 0, 0, 0, 0),
(1499, 11, 99, 0, 0, 0, 0),
(1500, 13, 99, 0, 0, 0, 0),
(1501, 14, 99, 0, 0, 0, 0),
(1502, 15, 99, 0, 0, 0, 0),
(1503, 18, 99, 0, 0, 0, 0),
(1504, 19, 99, 0, 0, 0, 0),
(1505, 20, 99, 0, 0, 0, 0),
(1506, 21, 99, 0, 0, 0, 0),
(1507, 22, 99, 0, 0, 0, 0),
(1508, 23, 99, 0, 0, 0, 0),
(1509, 24, 99, 0, 0, 0, 0),
(1510, 25, 99, 0, 0, 0, 0),
(1511, 26, 99, 0, 0, 0, 0),
(1512, 27, 99, 0, 0, 0, 0),
(1513, 28, 99, 0, 0, 0, 0),
(1514, 29, 99, 0, 0, 0, 0),
(1515, 31, 99, 0, 0, 0, 0),
(1516, 33, 99, 0, 0, 0, 0),
(1517, 35, 99, 0, 0, 0, 0),
(1518, 37, 99, 0, 0, 0, 0),
(1519, 38, 99, 0, 0, 0, 0),
(1520, 5, 100, 0, 0, 0, 0),
(1521, 7, 100, 0, 0, 0, 0),
(1522, 8, 100, 0, 0, 0, 0),
(1523, 9, 100, 0, 0, 0, 1),
(1524, 10, 100, 0, 0, 0, 0),
(1525, 11, 100, 0, 0, 0, 0),
(1526, 13, 100, 0, 0, 0, 0),
(1527, 14, 100, 0, 0, 0, 0),
(1528, 19, 100, 0, 0, 0, 0),
(1529, 20, 100, 0, 0, 0, 0),
(1530, 21, 100, 0, 0, 0, 2),
(1531, 22, 100, 0, 0, 0, 0),
(1532, 27, 100, 0, 0, 0, 0),
(1533, 28, 100, 0, 0, 0, 0),
(1534, 31, 100, 0, 0, 0, 0),
(1535, 35, 100, 0, 0, 0, 0),
(1536, 6, 101, 0, 0, 0, 0),
(1537, 7, 101, 0, 0, 0, 0),
(1538, 8, 101, 0, 0, 0, 0),
(1539, 9, 101, 0, 0, 0, 3),
(1540, 10, 101, 0, 0, 0, 0),
(1541, 11, 101, 0, 0, 0, 2),
(1542, 13, 101, 0, 0, 0, 0),
(1543, 16, 101, 0, 0, 0, 0),
(1544, 18, 101, 0, 0, 0, 0),
(1545, 20, 101, 0, 0, 0, 1),
(1546, 21, 101, 0, 0, 0, 1),
(1547, 22, 101, 0, 0, 0, 0),
(1548, 25, 101, 0, 0, 0, 0),
(1549, 26, 101, 0, 0, 0, 0),
(1550, 27, 101, 0, 0, 0, 0),
(1551, 28, 101, 0, 0, 0, 0),
(1552, 35, 101, 0, 0, 0, 1),
(1553, 5, 102, 0, 0, 0, 0),
(1554, 6, 102, 0, 0, 0, 0),
(1555, 7, 102, 0, 0, 0, 0),
(1556, 8, 102, 0, 0, 0, 0),
(1557, 11, 102, 0, 0, 0, 0),
(1558, 14, 102, 0, 0, 0, 0),
(1559, 20, 102, 0, 0, 0, 0),
(1560, 24, 102, 0, 0, 0, 0),
(1561, 39, 102, 0, 0, 0, 0),
(1562, 5, 103, 0, 0, 0, 0),
(1563, 6, 103, 0, 0, 0, 1),
(1564, 7, 103, 0, 0, 0, 0),
(1565, 8, 103, 0, 0, 0, 0),
(1566, 11, 103, 0, 0, 0, 0),
(1567, 14, 103, 0, 0, 0, 0),
(1568, 20, 103, 0, 0, 0, 0),
(1569, 24, 103, 0, 0, 0, 0),
(1570, 39, 103, 0, 0, 0, 0),
(1571, 5, 104, 0, 0, 0, 0),
(1572, 6, 104, 0, 0, 0, 0),
(1573, 7, 104, 0, 0, 0, 0),
(1574, 8, 104, 0, 0, 0, 1),
(1575, 11, 104, 0, 0, 0, 2),
(1576, 14, 104, 0, 0, 0, 0),
(1577, 20, 104, 0, 0, 0, 0),
(1578, 24, 104, 0, 0, 0, 0),
(1579, 39, 104, 0, 0, 0, 0),
(1580, 5, 105, 0, 0, 0, 0),
(1581, 7, 105, 0, 0, 0, 0),
(1582, 8, 105, 0, 0, 0, 2),
(1583, 13, 105, 0, 0, 0, 0),
(1584, 18, 105, 0, 0, 0, 0),
(1585, 20, 105, 0, 0, 0, 0),
(1586, 21, 105, 0, 0, 0, 0),
(1587, 5, 106, 0, 0, 0, 0),
(1588, 7, 106, 0, 0, 0, 0),
(1589, 8, 106, 0, 0, 0, 5),
(1590, 13, 106, 0, 0, 0, 0),
(1591, 18, 106, 0, 0, 0, 0),
(1592, 20, 106, 0, 0, 0, 0),
(1593, 21, 106, 0, 0, 0, 0),
(1594, 5, 107, 0, 0, 0, 0),
(1595, 7, 107, 0, 0, 0, 1),
(1596, 8, 107, 0, 0, 0, 0),
(1597, 10, 107, 0, 0, 0, 0),
(1598, 13, 107, 0, 0, 0, 0),
(1599, 18, 107, 0, 0, 0, 0),
(1600, 20, 107, 0, 0, 0, 0),
(1601, 21, 107, 0, 0, 0, 0),
(1610, 5, 108, 0, 0, 0, 1),
(1611, 7, 108, 0, 0, 0, 0),
(1612, 8, 108, 0, 0, 0, 0),
(1613, 10, 108, 0, 0, 0, 0),
(1614, 13, 108, 0, 0, 0, 0),
(1615, 18, 108, 0, 0, 0, 1),
(1616, 20, 108, 0, 0, 0, 0),
(1617, 21, 108, 0, 0, 0, 0),
(1618, 7, 109, 0, 0, 0, 0),
(1619, 8, 109, 0, 0, 0, 0),
(1620, 10, 109, 0, 0, 0, 0),
(1621, 18, 109, 0, 0, 0, 1),
(1622, 20, 109, 0, 0, 0, 0),
(1623, 21, 109, 0, 0, 0, 0),
(1624, 22, 109, 0, 0, 0, 0),
(1625, 7, 110, 0, 0, 0, 0),
(1626, 8, 110, 0, 0, 0, 0),
(1627, 10, 110, 0, 0, 0, 0),
(1628, 18, 110, 0, 0, 0, 0),
(1629, 20, 110, 0, 0, 0, 0),
(1630, 21, 110, 0, 0, 0, 3),
(1631, 22, 110, 0, 0, 0, 1),
(1632, 7, 111, 0, 0, 0, 0),
(1633, 8, 111, 0, 0, 0, 0),
(1634, 10, 111, 0, 0, 0, 0),
(1635, 18, 111, 0, 0, 0, 0),
(1636, 20, 111, 0, 0, 0, 0),
(1637, 21, 111, 0, 0, 0, 0),
(1638, 22, 111, 0, 0, 0, 0),
(1639, 5, 112, 0, 0, 0, 0),
(1640, 8, 112, 0, 0, 0, 0),
(1641, 9, 112, 0, 0, 0, 3),
(1642, 10, 112, 0, 0, 0, 0),
(1643, 13, 112, 0, 0, 0, 1),
(1644, 18, 112, 0, 0, 0, 0),
(1645, 21, 112, 0, 0, 0, 0),
(1646, 22, 112, 0, 0, 0, 0),
(1647, 26, 112, 0, 0, 0, 0),
(1648, 35, 112, 0, 0, 0, 0),
(1649, 5, 113, 0, 0, 0, 0),
(1650, 8, 113, 0, 0, 0, 0),
(1651, 9, 113, 0, 0, 0, 0),
(1652, 10, 113, 0, 0, 0, 0),
(1653, 13, 113, 0, 0, 0, 0),
(1654, 18, 113, 0, 0, 0, 0),
(1655, 21, 113, 0, 0, 0, 0),
(1656, 22, 113, 0, 0, 0, 1),
(1657, 26, 113, 0, 0, 0, 0),
(1658, 35, 113, 0, 0, 0, 0),
(1659, 5, 114, 0, 0, 0, 0),
(1660, 8, 114, 0, 0, 0, 0),
(1661, 9, 114, 0, 0, 0, 0),
(1662, 10, 114, 0, 0, 0, 0),
(1663, 13, 114, 0, 0, 0, 0),
(1664, 18, 114, 0, 0, 0, 0),
(1665, 21, 114, 0, 0, 0, 0),
(1666, 22, 114, 0, 0, 0, 0),
(1667, 26, 114, 0, 0, 0, 0),
(1668, 35, 114, 0, 0, 0, 2),
(1669, 5, 115, 0, 0, 0, 0),
(1670, 8, 115, 0, 0, 0, 1),
(1671, 9, 115, 0, 0, 0, 0),
(1672, 10, 115, 0, 0, 0, 0),
(1673, 13, 115, 0, 0, 0, 0),
(1674, 18, 115, 0, 0, 0, 0),
(1675, 21, 115, 0, 0, 0, 3),
(1676, 22, 115, 0, 0, 0, 0),
(1677, 26, 115, 0, 0, 0, 0),
(1678, 35, 115, 0, 0, 0, 3),
(1679, 5, 116, 0, 0, 0, 0),
(1680, 8, 116, 0, 0, 0, 0),
(1681, 9, 116, 0, 0, 0, 0),
(1682, 10, 116, 0, 0, 0, 0),
(1683, 13, 116, 0, 0, 0, 0),
(1684, 18, 116, 0, 0, 0, 1),
(1685, 21, 116, 0, 0, 0, 0),
(1686, 22, 116, 0, 0, 0, 0),
(1687, 26, 116, 0, 0, 0, 0),
(1688, 35, 116, 0, 0, 0, 0),
(1689, 5, 117, 0, 0, 0, 0),
(1690, 8, 117, 0, 0, 0, 0),
(1691, 9, 117, 0, 0, 0, 0),
(1692, 13, 117, 0, 0, 0, 0),
(1693, 18, 117, 0, 0, 0, 1),
(1694, 21, 117, 0, 0, 0, 0),
(1695, 22, 117, 0, 0, 0, 0),
(1696, 26, 117, 0, 0, 0, 0),
(1697, 35, 117, 0, 0, 0, 0),
(1698, 5, 118, 0, 0, 0, 0),
(1699, 7, 118, 0, 0, 0, 0),
(1700, 8, 118, 0, 0, 0, 0),
(1701, 9, 118, 0, 0, 0, 0),
(1702, 11, 118, 0, 0, 0, 0),
(1703, 14, 118, 0, 0, 0, 0),
(1704, 18, 118, 0, 0, 0, 0),
(1705, 20, 118, 0, 0, 0, 0),
(1706, 24, 118, 0, 0, 0, 0),
(1707, 25, 118, 0, 0, 0, 0),
(1708, 35, 118, 0, 0, 0, 0),
(1709, 39, 118, 0, 0, 0, 0),
(1710, 5, 119, 0, 0, 0, 0),
(1711, 7, 119, 0, 0, 0, 0),
(1712, 8, 119, 0, 0, 0, 0),
(1713, 9, 119, 0, 0, 0, 0),
(1714, 11, 119, 0, 0, 0, 0),
(1715, 14, 119, 0, 0, 0, 0),
(1716, 18, 119, 0, 0, 0, 0),
(1717, 20, 119, 0, 0, 0, 0),
(1718, 24, 119, 0, 0, 0, 0),
(1719, 25, 119, 0, 0, 0, 0),
(1720, 35, 119, 0, 0, 0, 0),
(1721, 39, 119, 0, 0, 0, 0),
(1733, 5, 121, 0, 0, 0, 0),
(1734, 7, 121, 0, 0, 0, 0),
(1735, 8, 121, 0, 0, 0, 0),
(1736, 9, 121, 0, 0, 0, 0),
(1737, 11, 121, 0, 0, 0, 1),
(1738, 14, 121, 0, 0, 0, 0),
(1739, 18, 121, 0, 0, 0, 1),
(1740, 20, 121, 0, 0, 0, 0),
(1741, 24, 121, 0, 0, 0, 1),
(1742, 25, 121, 0, 0, 0, 0),
(1743, 39, 121, 0, 0, 0, 0),
(1744, 7, 122, 0, 0, 0, 0),
(1745, 8, 122, 0, 0, 0, 0),
(1746, 9, 122, 0, 0, 0, 0),
(1747, 10, 122, 0, 0, 0, 2),
(1748, 11, 122, 0, 0, 0, 0),
(1749, 20, 122, 0, 0, 0, 0),
(1750, 37, 122, 0, 0, 0, 0),
(1751, 39, 122, 0, 0, 0, 0),
(1752, 7, 123, 0, 0, 0, 0),
(1753, 8, 123, 0, 0, 0, 2),
(1754, 9, 123, 0, 0, 0, 0),
(1755, 10, 123, 0, 0, 0, 0),
(1756, 11, 123, 0, 0, 0, 0),
(1757, 20, 123, 0, 0, 0, 1),
(1758, 37, 123, 0, 0, 0, 0),
(1759, 39, 123, 0, 0, 0, 0),
(1760, 7, 124, 0, 0, 0, 0),
(1761, 8, 124, 0, 0, 0, 0),
(1762, 9, 124, 0, 0, 0, 2),
(1763, 10, 124, 0, 0, 0, 0),
(1764, 11, 124, 0, 0, 0, 0),
(1765, 20, 124, 0, 0, 0, 0),
(1766, 37, 124, 0, 0, 0, 0),
(1767, 39, 124, 0, 0, 0, 0),
(1768, 7, 125, 0, 0, 0, 0),
(1769, 8, 125, 0, 0, 0, 0),
(1770, 9, 125, 0, 0, 0, 0),
(1771, 10, 125, 0, 0, 0, 0),
(1772, 11, 125, 0, 0, 0, 0),
(1773, 13, 125, 0, 0, 0, 0),
(1774, 18, 125, 0, 0, 0, 0),
(1775, 22, 125, 0, 0, 0, 2),
(1776, 39, 125, 0, 0, 0, 0),
(1777, 7, 126, 0, 0, 0, 0),
(1778, 8, 126, 0, 0, 0, 0),
(1779, 9, 126, 0, 0, 0, 0),
(1780, 10, 126, 0, 0, 0, 0),
(1781, 11, 126, 0, 0, 0, 0),
(1782, 13, 126, 0, 0, 0, 0),
(1783, 18, 126, 0, 0, 0, 0),
(1784, 22, 126, 0, 0, 0, 0),
(1785, 39, 126, 0, 0, 0, 0),
(1786, 7, 127, 0, 0, 0, 0),
(1787, 8, 127, 0, 0, 0, 4),
(1788, 9, 127, 0, 0, 0, 0),
(1789, 10, 127, 0, 0, 0, 0),
(1790, 11, 127, 0, 0, 0, 0),
(1791, 13, 127, 0, 0, 0, 0),
(1792, 18, 127, 0, 0, 0, 0),
(1793, 22, 127, 0, 0, 0, 0),
(1794, 39, 127, 0, 0, 0, 0),
(1795, 7, 128, 0, 0, 0, 0),
(1796, 8, 128, 0, 0, 0, 0),
(1797, 9, 128, 0, 0, 0, 0),
(1798, 10, 128, 0, 0, 0, 0),
(1799, 11, 128, 0, 0, 0, 0),
(1800, 13, 128, 0, 0, 0, 0),
(1801, 18, 128, 0, 0, 0, 1),
(1802, 22, 128, 0, 0, 0, 0),
(1803, 39, 128, 0, 0, 0, 0),
(1821, 7, 129, 0, 0, 0, 0),
(1822, 8, 129, 0, 0, 0, 1),
(1823, 9, 129, 0, 0, 0, 0),
(1824, 10, 129, 0, 0, 0, 0),
(1825, 11, 129, 0, 0, 0, 0),
(1826, 13, 129, 0, 0, 0, 0),
(1827, 18, 129, 0, 0, 0, 0),
(1828, 22, 129, 0, 0, 0, 2),
(1837, 7, 130, 0, 0, 0, 0),
(1838, 8, 130, 0, 0, 0, 0),
(1839, 9, 130, 0, 0, 0, 1),
(1840, 10, 130, 0, 0, 0, 1),
(1841, 11, 130, 0, 0, 0, 0),
(1842, 13, 130, 0, 0, 0, 0),
(1843, 18, 130, 0, 0, 0, 0),
(1844, 22, 130, 0, 0, 0, 0),
(1845, 7, 131, 0, 0, 0, 0),
(1846, 8, 131, 0, 0, 0, 1),
(1847, 9, 131, 0, 0, 0, 2),
(1848, 10, 131, 0, 0, 0, 0),
(1849, 11, 131, 0, 0, 0, 0),
(1850, 13, 131, 0, 0, 0, 0),
(1851, 18, 131, 0, 0, 0, 0),
(1852, 22, 131, 0, 0, 0, 0),
(1853, 7, 132, 0, 0, 0, 0),
(1854, 8, 132, 0, 0, 0, 0),
(1855, 9, 132, 0, 0, 0, 2),
(1856, 10, 132, 0, 0, 0, 0),
(1857, 11, 132, 0, 0, 0, 0),
(1858, 18, 132, 0, 0, 0, 0),
(1859, 22, 132, 0, 0, 0, 1),
(1860, 5, 133, 0, 0, 0, 0),
(1861, 7, 133, 0, 0, 0, 0),
(1862, 9, 133, 0, 0, 0, 0),
(1863, 10, 133, 0, 0, 0, 0),
(1864, 20, 133, 0, 0, 0, 0),
(1865, 27, 133, 0, 0, 0, 1),
(1866, 35, 133, 0, 0, 0, 0),
(1867, 5, 134, 0, 0, 0, 0),
(1868, 7, 134, 0, 0, 0, 0),
(1869, 9, 134, 0, 0, 0, 0),
(1870, 10, 134, 0, 0, 0, 0),
(1871, 20, 134, 0, 0, 0, 0),
(1872, 27, 134, 0, 0, 0, 0),
(1873, 35, 134, 0, 0, 0, 7),
(1874, 5, 135, 0, 0, 0, 0),
(1875, 7, 135, 0, 0, 0, 3),
(1876, 9, 135, 0, 0, 0, 0),
(1877, 10, 135, 0, 0, 0, 0),
(1878, 20, 135, 0, 0, 0, 0),
(1879, 27, 135, 0, 0, 0, 0),
(1880, 35, 135, 0, 0, 0, 0),
(1881, 5, 136, 0, 0, 0, 3),
(1882, 7, 136, 0, 0, 0, 0),
(1883, 9, 136, 0, 0, 0, 0),
(1884, 10, 136, 0, 0, 0, 0),
(1885, 20, 136, 0, 0, 0, 0),
(1886, 27, 136, 0, 0, 0, 0),
(1887, 35, 136, 0, 0, 0, 0),
(1888, 5, 137, 0, 0, 0, 0),
(1889, 7, 137, 0, 0, 0, 0),
(1890, 9, 137, 0, 0, 0, 0),
(1891, 10, 137, 0, 0, 0, 0),
(1892, 20, 137, 0, 0, 0, 0),
(1893, 27, 137, 0, 0, 0, 0),
(1894, 35, 137, 0, 0, 0, 1),
(1895, 5, 138, 0, 0, 0, 0),
(1896, 7, 138, 0, 0, 0, 0),
(1897, 10, 138, 0, 0, 0, 0),
(1898, 20, 138, 0, 0, 0, 0),
(1899, 27, 138, 0, 0, 0, 0),
(1900, 35, 138, 0, 0, 0, 0),
(1901, 5, 139, 0, 0, 0, 0),
(1902, 7, 139, 0, 0, 0, 0),
(1903, 10, 139, 0, 0, 0, 0),
(1904, 20, 139, 0, 0, 0, 0),
(1905, 27, 139, 0, 0, 0, 0),
(1906, 35, 139, 0, 0, 0, 0),
(1907, 5, 140, 0, 0, 0, 0),
(1908, 7, 140, 0, 0, 0, 0),
(1909, 10, 140, 0, 0, 0, 0),
(1910, 20, 140, 0, 0, 0, 0),
(1911, 27, 140, 0, 0, 0, 0),
(1912, 35, 140, 0, 0, 0, 0),
(1913, 5, 141, 0, 0, 0, 1),
(1914, 7, 141, 0, 0, 0, 0),
(1915, 8, 141, 0, 0, 0, 0),
(1916, 9, 141, 0, 0, 0, 1),
(1917, 10, 141, 0, 0, 0, 0),
(1918, 11, 141, 0, 1, 0, 0),
(1919, 13, 141, 0, 0, 0, 0),
(1920, 14, 141, 0, 0, 0, 0),
(1921, 16, 141, 0, 0, 0, 0),
(1922, 19, 141, 0, 0, 0, 0),
(1923, 20, 141, 0, 0, 0, 1),
(1924, 21, 141, 0, 0, 0, 0),
(1925, 28, 141, 0, 0, 0, 0),
(1926, 37, 141, 0, 1, 0, 0),
(1927, 39, 141, 0, 0, 0, 0),
(1928, 5, 142, 0, 0, 0, 0),
(1929, 6, 142, 0, 0, 0, 0),
(1930, 7, 142, 0, 0, 0, 0),
(1931, 8, 142, 0, 0, 0, 0),
(1932, 9, 142, 0, 0, 0, 0),
(1933, 11, 142, 0, 0, 0, 0),
(1934, 13, 142, 0, 0, 0, 0),
(1935, 18, 142, 0, 0, 0, 0),
(1936, 20, 142, 0, 0, 0, 0),
(1937, 21, 142, 0, 0, 0, 0),
(1938, 22, 142, 0, 0, 0, 0),
(1939, 23, 142, 0, 0, 0, 0),
(1940, 25, 142, 0, 0, 0, 0),
(1941, 28, 142, 0, 0, 0, 0),
(1942, 39, 142, 0, 0, 0, 0),
(1943, 5, 120, 0, 0, 0, 0),
(1944, 7, 120, 0, 0, 0, 0),
(1945, 8, 120, 0, 0, 0, 0),
(1946, 9, 120, 0, 0, 0, 0),
(1947, 11, 120, 0, 0, 0, 0),
(1948, 14, 120, 0, 0, 0, 0),
(1949, 18, 120, 0, 0, 0, 0),
(1950, 20, 120, 0, 0, 0, 0),
(1951, 24, 120, 0, 0, 0, 0),
(1952, 25, 120, 0, 0, 0, 0),
(1953, 39, 120, 0, 0, 0, 0),
(1954, 5, 143, 0, 0, 0, 0),
(1955, 6, 143, 0, 0, 0, 0),
(1956, 7, 143, 0, 0, 0, 0),
(1957, 8, 143, 0, 0, 0, 0),
(1958, 9, 143, 0, 0, 0, 3),
(1959, 10, 143, 0, 0, 0, 0),
(1960, 11, 143, 0, 0, 0, 2),
(1961, 13, 143, 0, 0, 0, 0),
(1962, 15, 143, 0, 0, 0, 1),
(1963, 16, 143, 0, 0, 0, 0),
(1964, 20, 143, 0, 0, 0, 0),
(1965, 21, 143, 0, 0, 0, 0),
(1966, 22, 143, 0, 0, 0, 1),
(1967, 28, 143, 0, 0, 0, 0),
(1968, 33, 143, 0, 0, 0, 0),
(1969, 35, 143, 0, 0, 0, 2),
(1970, 39, 143, 0, 0, 0, 0),
(1971, 5, 144, 0, 0, 0, 0),
(1972, 7, 144, 0, 0, 0, 0),
(1973, 8, 144, 0, 0, 0, 0),
(1974, 9, 144, 0, 0, 0, 1),
(1975, 10, 144, 0, 0, 0, 0),
(1976, 11, 144, 0, 0, 0, 0),
(1977, 13, 144, 0, 0, 0, 0),
(1978, 18, 144, 0, 0, 0, 0),
(1979, 20, 144, 0, 0, 0, 1),
(1980, 22, 144, 0, 0, 0, 0),
(1981, 27, 144, 0, 0, 0, 0),
(1982, 39, 144, 0, 0, 0, 0),
(1983, 40, 144, 0, 0, 0, 0),
(1984, 7, 145, 0, 0, 0, 0),
(1985, 8, 145, 0, 0, 0, 0),
(1986, 9, 145, 0, 0, 0, 1),
(1987, 10, 145, 0, 0, 0, 0),
(1988, 11, 145, 0, 0, 0, 1),
(1989, 13, 145, 0, 0, 0, 0),
(1990, 14, 145, 0, 0, 0, 0),
(1991, 18, 145, 0, 0, 0, 0),
(1992, 24, 145, 0, 0, 0, 0),
(1993, 27, 145, 0, 0, 0, 0),
(1994, 28, 145, 0, 0, 0, 0),
(1995, 31, 145, 0, 0, 0, 0),
(1996, 6, 146, 0, 0, 0, 0),
(1997, 7, 146, 0, 0, 0, 0),
(1998, 9, 146, 0, 0, 0, 1),
(1999, 10, 146, 0, 0, 0, 0),
(2000, 13, 146, 0, 0, 0, 0),
(2001, 14, 146, 0, 0, 0, 0),
(2002, 15, 146, 0, 0, 0, 1),
(2003, 16, 146, 0, 0, 0, 0),
(2004, 18, 146, 0, 0, 0, 1),
(2005, 21, 146, 0, 0, 0, 4),
(2006, 24, 146, 0, 0, 0, 0),
(2007, 26, 146, 0, 0, 0, 0),
(2008, 27, 146, 0, 0, 0, 0),
(2009, 28, 146, 0, 0, 0, 0),
(2010, 30, 146, 0, 0, 0, 4),
(2011, 31, 146, 0, 0, 0, 0),
(2012, 33, 146, 0, 0, 0, 0),
(2013, 40, 146, 0, 0, 0, 1),
(2014, 41, 146, 0, 0, 0, 0),
(2015, 42, 146, 0, 0, 0, 0),
(2016, 6, 147, 0, 0, 0, 0),
(2017, 7, 147, 0, 0, 0, 0),
(2018, 8, 147, 0, 0, 0, 1),
(2019, 9, 147, 0, 0, 0, 0),
(2020, 10, 147, 0, 0, 0, 0),
(2021, 13, 147, 0, 0, 0, 0),
(2022, 16, 147, 0, 0, 0, 0),
(2023, 18, 147, 0, 0, 0, 0),
(2024, 21, 147, 0, 0, 0, 0),
(2025, 22, 147, 0, 0, 0, 0),
(2026, 26, 147, 0, 0, 0, 0),
(2027, 27, 147, 0, 0, 0, 0),
(2028, 28, 147, 0, 0, 0, 0),
(2029, 30, 147, 0, 0, 0, 0),
(2030, 33, 147, 0, 0, 0, 0),
(2031, 40, 147, 0, 0, 0, 0),
(2032, 8, 148, 0, 0, 0, 0),
(2033, 9, 148, 0, 0, 0, 1),
(2034, 10, 148, 0, 0, 0, 0),
(2035, 13, 148, 0, 0, 0, 0),
(2036, 16, 148, 0, 0, 0, 0),
(2037, 18, 148, 0, 0, 0, 0),
(2038, 21, 148, 0, 0, 0, 0),
(2039, 22, 148, 0, 0, 0, 0),
(2040, 26, 148, 0, 0, 0, 0),
(2041, 27, 148, 0, 0, 0, 0),
(2042, 28, 148, 0, 0, 0, 0),
(2043, 30, 148, 0, 0, 0, 0),
(2044, 33, 148, 0, 0, 0, 0),
(2045, 40, 148, 0, 0, 0, 0),
(2046, 8, 149, 0, 0, 0, 0),
(2047, 9, 149, 0, 0, 0, 2),
(2048, 10, 149, 0, 0, 0, 0),
(2049, 13, 149, 0, 0, 0, 0),
(2050, 16, 149, 0, 0, 0, 0),
(2051, 18, 149, 0, 0, 0, 0),
(2052, 21, 149, 0, 0, 0, 0),
(2053, 22, 149, 0, 0, 0, 1),
(2054, 26, 149, 0, 0, 0, 0),
(2055, 27, 149, 0, 0, 0, 0),
(2056, 30, 149, 0, 0, 0, 2),
(2057, 33, 149, 0, 0, 0, 0),
(2058, 40, 149, 0, 0, 0, 0),
(2059, 7, 150, 0, 0, 0, 0),
(2060, 8, 150, 0, 0, 0, 0),
(2061, 10, 150, 0, 0, 0, 0),
(2062, 11, 150, 0, 0, 0, 0),
(2063, 13, 150, 0, 0, 0, 0),
(2064, 14, 150, 0, 0, 0, 0),
(2065, 15, 150, 0, 0, 0, 0),
(2066, 16, 150, 0, 0, 0, 0),
(2067, 21, 150, 0, 0, 0, 0),
(2068, 22, 150, 0, 0, 0, 1),
(2069, 27, 150, 0, 0, 0, 0),
(2070, 33, 150, 0, 0, 0, 0),
(2071, 37, 150, 0, 0, 0, 0),
(2072, 39, 150, 0, 0, 0, 0),
(2073, 43, 150, 0, 0, 0, 0),
(2074, 5, 151, 0, 0, 0, 0),
(2075, 7, 151, 0, 0, 0, 0),
(2076, 8, 151, 0, 0, 0, 2),
(2077, 9, 151, 0, 0, 0, 1),
(2078, 10, 151, 0, 0, 0, 0),
(2079, 11, 151, 0, 0, 0, 2),
(2080, 12, 151, 0, 0, 0, 0),
(2081, 13, 151, 0, 0, 0, 0),
(2082, 16, 151, 0, 0, 0, 0),
(2083, 20, 151, 0, 0, 0, 1),
(2084, 22, 151, 0, 0, 0, 1),
(2085, 33, 151, 0, 0, 0, 0),
(2086, 39, 151, 0, 0, 0, 0),
(2087, 40, 151, 0, 0, 0, 1),
(2088, 43, 151, 0, 0, 0, 0),
(2089, 5, 152, 0, 0, 0, 0),
(2090, 6, 152, 0, 0, 0, 0),
(2091, 7, 152, 0, 0, 0, 0),
(2092, 9, 152, 0, 0, 0, 0),
(2093, 13, 152, 0, 0, 0, 0),
(2094, 14, 152, 0, 0, 0, 0),
(2095, 15, 152, 0, 0, 0, 1),
(2096, 26, 152, 0, 0, 0, 0),
(2097, 27, 152, 0, 0, 0, 0),
(2098, 29, 152, 0, 0, 0, 0),
(2099, 33, 152, 0, 0, 0, 0),
(2100, 35, 152, 0, 0, 0, 2),
(2101, 40, 152, 0, 0, 0, 1),
(2102, 5, 153, 0, 0, 0, 0),
(2103, 7, 153, 0, 0, 0, 0),
(2104, 9, 153, 0, 0, 0, 2),
(2105, 10, 153, 0, 0, 0, 0),
(2106, 11, 153, 0, 0, 0, 5),
(2107, 13, 153, 0, 0, 0, 0),
(2108, 19, 153, 0, 0, 0, 0),
(2109, 20, 153, 0, 0, 0, 2),
(2110, 21, 153, 0, 0, 0, 0),
(2111, 22, 153, 0, 0, 0, 2),
(2112, 26, 153, 0, 0, 0, 0),
(2113, 27, 153, 0, 0, 0, 0),
(2114, 28, 153, 0, 0, 0, 0),
(2115, 33, 153, 0, 0, 0, 0),
(2116, 5, 154, 0, 0, 0, 0),
(2117, 8, 154, 0, 0, 0, 0),
(2118, 9, 154, 0, 0, 0, 1),
(2119, 11, 154, 0, 0, 0, 1),
(2120, 13, 154, 0, 0, 0, 0),
(2121, 15, 154, 0, 0, 0, 0),
(2122, 18, 154, 0, 0, 0, 0),
(2123, 20, 154, 0, 0, 0, 0),
(2124, 21, 154, 0, 0, 0, 0),
(2125, 22, 154, 0, 0, 0, 0),
(2126, 27, 154, 0, 0, 0, 0),
(2127, 33, 154, 0, 0, 0, 0),
(2128, 39, 154, 0, 0, 0, 0),
(2129, 5, 155, 0, 0, 0, 1),
(2130, 7, 155, 0, 0, 0, 0),
(2131, 8, 155, 0, 0, 0, 0),
(2132, 9, 155, 0, 0, 0, 2),
(2133, 10, 155, 0, 0, 0, 0),
(2134, 11, 155, 0, 0, 0, 1),
(2135, 13, 155, 0, 0, 0, 0),
(2136, 15, 155, 0, 0, 0, 1),
(2137, 16, 155, 0, 0, 0, 0),
(2138, 18, 155, 0, 0, 0, 0),
(2139, 20, 155, 0, 0, 0, 0),
(2140, 22, 155, 0, 0, 0, 0),
(2141, 27, 155, 0, 0, 0, 0),
(2142, 33, 155, 0, 0, 0, 0),
(2143, 39, 155, 0, 0, 0, 0),
(2144, 40, 155, 0, 0, 0, 1),
(2145, 5, 156, 0, 0, 0, 0),
(2146, 7, 156, 0, 0, 0, 0),
(2147, 8, 156, 0, 0, 0, 0),
(2148, 9, 156, 0, 0, 0, 0),
(2149, 10, 156, 0, 0, 0, 0),
(2150, 11, 156, 0, 0, 0, 0),
(2151, 13, 156, 0, 0, 0, 0),
(2152, 15, 156, 0, 0, 0, 0),
(2153, 20, 156, 0, 0, 0, 0),
(2154, 22, 156, 0, 0, 0, 0),
(2155, 27, 156, 0, 0, 0, 0),
(2156, 33, 156, 0, 0, 0, 0),
(2157, 35, 156, 0, 0, 0, 0),
(2158, 39, 156, 0, 0, 0, 0),
(2159, 5, 157, 0, 0, 0, 1),
(2160, 7, 157, 0, 0, 0, 0),
(2161, 8, 157, 0, 0, 0, 0),
(2162, 10, 157, 0, 0, 0, 0),
(2163, 11, 157, 0, 0, 0, 0),
(2164, 13, 157, 0, 0, 0, 0),
(2165, 16, 157, 0, 0, 0, 0),
(2166, 20, 157, 0, 0, 0, 0),
(2167, 24, 157, 0, 0, 0, 0),
(2168, 28, 157, 0, 0, 0, 0),
(2169, 33, 157, 0, 0, 0, 0),
(2170, 42, 157, 0, 0, 0, 0),
(2171, 44, 157, 0, 0, 0, 1),
(2172, 5, 158, 0, 0, 0, 0),
(2173, 8, 158, 0, 0, 0, 0),
(2174, 11, 158, 0, 0, 0, 0),
(2175, 14, 158, 0, 0, 0, 0),
(2176, 20, 158, 0, 0, 0, 0),
(2177, 28, 158, 0, 0, 0, 0),
(2178, 47, 158, 0, 0, 0, 0),
(2179, 48, 158, 0, 0, 0, 0),
(2180, 54, 158, 0, 0, 0, 0),
(2181, 55, 158, 0, 0, 0, 0),
(2182, 5, 159, 0, 0, 0, 0),
(2183, 8, 159, 0, 0, 0, 0),
(2184, 11, 159, 0, 0, 0, 0),
(2185, 14, 159, 0, 0, 0, 0),
(2186, 20, 159, 0, 0, 0, 0),
(2187, 28, 159, 0, 0, 0, 0),
(2188, 47, 159, 0, 0, 0, 0),
(2189, 48, 159, 0, 0, 0, 0),
(2190, 54, 159, 0, 0, 0, 0),
(2191, 55, 159, 0, 0, 0, 0),
(2192, 5, 160, 0, 0, 0, 1),
(2193, 8, 160, 0, 0, 0, 1),
(2194, 11, 160, 0, 0, 0, 0),
(2195, 14, 160, 0, 0, 0, 0),
(2196, 20, 160, 0, 0, 0, 0),
(2197, 28, 160, 0, 0, 0, 0),
(2198, 47, 160, 0, 0, 0, 0),
(2199, 48, 160, 0, 0, 0, 0),
(2200, 54, 160, 0, 0, 0, 0),
(2201, 55, 160, 0, 0, 0, 0),
(2202, 5, 161, 0, 0, 0, 0),
(2203, 8, 161, 0, 0, 0, 0),
(2204, 11, 161, 0, 0, 0, 0),
(2205, 14, 161, 0, 0, 0, 0),
(2206, 20, 161, 0, 0, 0, 0),
(2207, 28, 161, 0, 0, 0, 0),
(2208, 47, 161, 0, 0, 0, 1),
(2209, 48, 161, 0, 0, 0, 0),
(2210, 54, 161, 0, 0, 0, 0),
(2211, 55, 161, 0, 0, 0, 0),
(2212, 5, 162, 0, 0, 0, 0),
(2213, 8, 162, 0, 0, 0, 0),
(2214, 11, 162, 0, 0, 0, 0),
(2215, 14, 162, 0, 0, 0, 0),
(2216, 20, 162, 0, 0, 0, 1),
(2217, 28, 162, 0, 0, 0, 0),
(2218, 47, 162, 0, 0, 0, 0),
(2219, 48, 162, 0, 0, 0, 3),
(2220, 54, 162, 0, 0, 0, 0),
(2221, 55, 162, 0, 0, 0, 1),
(2222, 5, 163, 0, 0, 0, 0),
(2223, 8, 163, 0, 0, 0, 0),
(2224, 9, 163, 0, 0, 0, 0),
(2225, 10, 163, 0, 0, 0, 2),
(2226, 11, 163, 0, 0, 0, 3),
(2227, 13, 163, 0, 0, 0, 0),
(2228, 35, 163, 0, 0, 0, 0),
(2229, 39, 163, 0, 0, 0, 0),
(2230, 5, 164, 0, 0, 0, 0),
(2231, 8, 164, 0, 0, 0, 2),
(2232, 9, 164, 0, 0, 0, 2),
(2233, 10, 164, 0, 0, 0, 0),
(2234, 11, 164, 0, 0, 0, 0),
(2235, 13, 164, 0, 0, 0, 0),
(2236, 35, 164, 0, 0, 0, 0),
(2237, 39, 164, 0, 0, 0, 0),
(2238, 5, 165, 0, 0, 0, 0),
(2239, 8, 165, 0, 0, 0, 0),
(2240, 9, 165, 0, 0, 0, 0),
(2241, 10, 165, 0, 0, 0, 0),
(2242, 11, 165, 0, 0, 0, 0),
(2243, 13, 165, 0, 0, 0, 0),
(2244, 35, 165, 0, 0, 0, 2),
(2245, 39, 165, 0, 0, 0, 0),
(2254, 9, 167, 0, 0, 0, 0),
(2255, 10, 167, 0, 0, 0, 0),
(2256, 11, 167, 0, 0, 0, 2),
(2257, 13, 167, 0, 0, 0, 0),
(2258, 18, 167, 0, 0, 0, 0),
(2259, 22, 167, 0, 0, 0, 0),
(2260, 35, 167, 0, 0, 0, 0),
(2261, 47, 167, 0, 0, 0, 0),
(2270, 9, 168, 0, 0, 0, 1),
(2271, 10, 168, 0, 0, 0, 0),
(2272, 11, 168, 0, 0, 0, 0),
(2273, 13, 168, 0, 0, 0, 0),
(2274, 18, 168, 0, 0, 0, 1),
(2275, 22, 168, 0, 0, 0, 0),
(2276, 35, 168, 0, 0, 0, 0),
(2277, 47, 168, 0, 0, 0, 0),
(2278, 9, 169, 0, 0, 0, 0),
(2279, 10, 169, 0, 0, 0, 1),
(2280, 11, 169, 0, 0, 0, 0),
(2281, 13, 169, 0, 0, 0, 0),
(2282, 18, 169, 0, 0, 0, 0),
(2283, 22, 169, 0, 0, 0, 2),
(2284, 35, 169, 0, 0, 0, 0),
(2285, 47, 169, 0, 0, 0, 0),
(2286, 9, 170, 0, 0, 0, 0),
(2287, 10, 170, 0, 0, 0, 0),
(2288, 11, 170, 0, 0, 0, 0),
(2289, 13, 170, 0, 0, 0, 0),
(2290, 18, 170, 0, 0, 0, 0),
(2291, 22, 170, 0, 0, 0, 0),
(2292, 35, 170, 0, 0, 0, 1),
(2293, 47, 170, 0, 0, 0, 0),
(2294, 5, 171, 0, 0, 0, 0),
(2295, 8, 171, 0, 0, 0, 0),
(2296, 9, 171, 0, 0, 0, 1),
(2297, 10, 171, 0, 0, 0, 0),
(2298, 11, 171, 0, 0, 0, 0),
(2299, 13, 171, 0, 0, 0, 0),
(2300, 15, 171, 0, 0, 0, 0),
(2301, 20, 171, 0, 0, 0, 0),
(2302, 22, 171, 0, 0, 0, 1),
(2303, 26, 171, 0, 0, 0, 0),
(2304, 27, 171, 0, 0, 0, 0),
(2305, 28, 171, 0, 0, 0, 0),
(2306, 33, 171, 0, 0, 0, 0),
(2307, 35, 171, 0, 0, 0, 2),
(2308, 44, 171, 0, 0, 0, 0),
(2309, 47, 171, 0, 0, 0, 0),
(2310, 56, 171, 0, 0, 0, 0),
(2339, 5, 174, 0, 0, 0, 0),
(2340, 7, 174, 0, 0, 0, 0),
(2341, 8, 174, 0, 0, 0, 0),
(2342, 9, 174, 0, 0, 0, 1),
(2343, 11, 174, 0, 0, 0, 0),
(2344, 12, 174, 0, 0, 0, 0),
(2345, 13, 174, 0, 0, 0, 0),
(2346, 15, 174, 0, 0, 0, 0),
(2347, 20, 174, 0, 0, 0, 0),
(2348, 22, 174, 0, 0, 0, 0),
(2349, 28, 174, 0, 0, 0, 0),
(2350, 33, 174, 0, 0, 0, 0),
(2351, 35, 174, 0, 0, 0, 2),
(2352, 39, 174, 0, 0, 0, 0),
(2353, 45, 174, 0, 0, 0, 0),
(2354, 47, 174, 0, 0, 0, 1),
(2364, 13, 176, 0, 0, 0, 1),
(2365, 16, 176, 0, 0, 0, 0),
(2366, 24, 176, 0, 0, 0, 0),
(2367, 31, 176, 0, 0, 0, 0),
(2368, 57, 176, 0, 0, 0, 0),
(2369, 58, 176, 0, 0, 0, 0),
(2370, 59, 176, 0, 0, 0, 0),
(2371, 60, 176, 0, 0, 0, 0),
(2372, 61, 176, 0, 0, 0, 0),
(2373, 13, 177, 0, 0, 0, 1),
(2374, 16, 177, 0, 0, 0, 0),
(2375, 24, 177, 0, 0, 0, 0),
(2376, 31, 177, 0, 0, 0, 0),
(2377, 57, 177, 0, 0, 0, 0),
(2378, 58, 177, 0, 0, 0, 0),
(2379, 59, 177, 0, 0, 0, 1),
(2380, 60, 177, 0, 0, 0, 0),
(2381, 61, 177, 0, 0, 0, 1),
(2382, 13, 178, 0, 0, 0, 0),
(2383, 16, 178, 0, 0, 0, 0),
(2384, 24, 178, 0, 0, 0, 0),
(2385, 31, 178, 0, 0, 0, 0),
(2386, 57, 178, 0, 0, 0, 0),
(2387, 58, 178, 0, 0, 0, 0),
(2388, 59, 178, 0, 0, 0, 0),
(2389, 60, 178, 0, 0, 0, 0),
(2390, 61, 178, 0, 0, 0, 0),
(2391, 13, 175, 0, 0, 0, 0),
(2392, 16, 175, 0, 0, 0, 0),
(2393, 24, 175, 0, 0, 0, 0),
(2394, 31, 175, 0, 0, 0, 0),
(2395, 57, 175, 0, 0, 0, 0),
(2396, 58, 175, 0, 0, 0, 0),
(2397, 59, 175, 0, 0, 0, 0),
(2398, 60, 175, 0, 0, 0, 0),
(2399, 61, 175, 0, 0, 0, 0),
(2415, 5, 180, 0, 0, 0, 1),
(2416, 6, 180, 0, 0, 0, 0),
(2417, 7, 180, 0, 0, 0, 0),
(2418, 8, 180, 0, 0, 0, 0),
(2419, 9, 180, 0, 0, 0, 0),
(2420, 10, 180, 0, 0, 0, 0),
(2421, 11, 180, 0, 0, 0, 1),
(2422, 13, 180, 0, 0, 0, 0),
(2423, 14, 180, 0, 0, 0, 0),
(2424, 16, 180, 0, 0, 0, 0),
(2425, 18, 180, 0, 0, 0, 0),
(2426, 20, 180, 0, 0, 0, 0),
(2427, 21, 180, 0, 0, 0, 1),
(2428, 22, 180, 0, 0, 0, 0),
(2429, 24, 180, 0, 0, 0, 0),
(2430, 27, 180, 0, 0, 0, 0),
(2431, 28, 180, 0, 0, 0, 0),
(2432, 30, 180, 0, 0, 0, 0),
(2433, 31, 180, 0, 0, 0, 0),
(2434, 35, 180, 0, 0, 0, 3),
(2435, 39, 180, 0, 0, 0, 0),
(2436, 42, 180, 0, 0, 0, 0);
INSERT INTO `jos_fussball_spieler_spiel` (`id`, `idSpieler`, `idSpiel`, `hasRoteKarte`, `hasGelbeKarte`, `hasGelbRoteKarte`, `anzahlTore`) VALUES
(2437, 43, 180, 0, 0, 0, 0),
(2438, 44, 180, 0, 0, 0, 0),
(2439, 45, 180, 0, 0, 0, 0),
(2440, 56, 180, 0, 0, 0, 0),
(2441, 7, 181, 0, 0, 0, 0),
(2442, 8, 181, 0, 0, 0, 0),
(2443, 9, 181, 0, 0, 0, 1),
(2444, 13, 181, 0, 0, 0, 0),
(2445, 15, 181, 0, 0, 0, 1),
(2446, 20, 181, 0, 0, 0, 0),
(2447, 21, 181, 0, 0, 0, 2),
(2448, 22, 181, 0, 0, 0, 0),
(2449, 33, 181, 0, 0, 0, 0),
(2450, 35, 181, 0, 0, 0, 0),
(2451, 39, 181, 0, 0, 0, 0),
(2452, 46, 181, 0, 0, 0, 0),
(2453, 47, 181, 0, 0, 0, 2),
(2454, 5, 182, 0, 0, 0, 0),
(2455, 6, 182, 0, 0, 0, 0),
(2456, 7, 182, 0, 0, 0, 0),
(2457, 8, 182, 0, 0, 0, 1),
(2458, 9, 182, 0, 0, 0, 1),
(2459, 10, 182, 0, 0, 0, 0),
(2460, 11, 182, 0, 0, 0, 0),
(2461, 13, 182, 0, 0, 0, 0),
(2462, 20, 182, 0, 0, 0, 0),
(2463, 33, 182, 0, 0, 0, 0),
(2464, 35, 182, 0, 0, 0, 0),
(2465, 39, 182, 0, 0, 0, 0),
(2466, 42, 182, 0, 0, 0, 0),
(2467, 44, 182, 0, 0, 0, 1),
(2468, 46, 182, 0, 0, 0, 0),
(2469, 5, 183, 0, 0, 0, 0),
(2470, 8, 183, 0, 0, 0, 0),
(2471, 9, 183, 0, 0, 0, 2),
(2472, 10, 183, 0, 0, 0, 0),
(2473, 11, 183, 0, 0, 0, 2),
(2474, 12, 183, 0, 0, 0, 0),
(2475, 13, 183, 0, 0, 0, 0),
(2476, 15, 183, 0, 0, 0, 0),
(2477, 21, 183, 0, 0, 0, 0),
(2478, 35, 183, 0, 0, 0, 1),
(2479, 39, 183, 0, 0, 0, 0),
(2480, 44, 183, 0, 0, 0, 1),
(2481, 45, 183, 0, 0, 0, 0),
(2482, 46, 183, 0, 0, 0, 0),
(2483, 47, 183, 0, 0, 0, 0),
(2484, 5, 184, 0, 0, 0, 0),
(2485, 7, 184, 0, 0, 0, 0),
(2486, 8, 184, 0, 0, 0, 0),
(2487, 9, 184, 0, 0, 0, 0),
(2488, 11, 184, 0, 0, 0, 0),
(2489, 13, 184, 0, 0, 0, 0),
(2490, 15, 184, 0, 0, 0, 1),
(2491, 20, 184, 0, 0, 0, 0),
(2492, 28, 184, 0, 0, 0, 0),
(2493, 33, 184, 0, 0, 0, 0),
(2494, 35, 184, 0, 0, 0, 1),
(2495, 44, 184, 0, 0, 0, 1),
(2496, 45, 184, 0, 0, 0, 0),
(2497, 46, 184, 0, 0, 0, 0),
(2498, 56, 184, 0, 0, 0, 0),
(2499, 5, 185, 0, 0, 0, 0),
(2500, 6, 185, 0, 0, 0, 0),
(2501, 7, 185, 0, 0, 0, 0),
(2502, 8, 185, 0, 0, 0, 0),
(2503, 9, 185, 0, 0, 0, 1),
(2504, 10, 185, 0, 0, 0, 0),
(2505, 11, 185, 0, 0, 0, 1),
(2506, 13, 185, 0, 0, 0, 0),
(2507, 18, 185, 0, 0, 0, 0),
(2508, 20, 185, 0, 0, 0, 0),
(2509, 26, 185, 0, 0, 0, 0),
(2510, 30, 185, 0, 0, 0, 1),
(2511, 43, 185, 0, 0, 0, 0),
(2512, 44, 185, 0, 0, 0, 2),
(2513, 46, 185, 0, 0, 0, 1),
(2514, 5, 186, 0, 0, 0, 1),
(2515, 8, 186, 0, 0, 0, 0),
(2516, 9, 186, 0, 0, 0, 1),
(2517, 11, 186, 0, 0, 0, 1),
(2518, 12, 186, 0, 0, 0, 1),
(2519, 13, 186, 0, 0, 0, 0),
(2520, 15, 186, 0, 0, 0, 0),
(2521, 20, 186, 0, 0, 0, 0),
(2522, 21, 186, 0, 0, 0, 1),
(2523, 33, 186, 0, 0, 0, 0),
(2524, 35, 186, 0, 0, 0, 1),
(2525, 39, 186, 0, 0, 0, 0),
(2526, 44, 186, 0, 0, 0, 1),
(2527, 45, 186, 0, 0, 0, 0),
(2528, 46, 186, 0, 0, 0, 0),
(2529, 5, 187, 0, 0, 0, 1),
(2530, 8, 187, 0, 0, 0, 1),
(2531, 11, 187, 0, 0, 0, 2),
(2532, 13, 187, 0, 0, 0, 1),
(2533, 15, 187, 0, 0, 0, 1),
(2534, 20, 187, 0, 0, 0, 0),
(2535, 26, 187, 0, 0, 0, 0),
(2536, 28, 187, 0, 0, 0, 0),
(2537, 33, 187, 0, 0, 0, 0),
(2538, 43, 187, 0, 0, 0, 0),
(2539, 44, 187, 0, 0, 0, 1),
(2540, 45, 187, 0, 0, 0, 0),
(2541, 46, 187, 0, 0, 0, 0),
(2542, 47, 187, 0, 0, 0, 1),
(2543, 56, 187, 0, 0, 0, 0),
(2544, 5, 166, 0, 0, 0, 0),
(2545, 8, 166, 0, 0, 0, 0),
(2546, 9, 166, 0, 0, 0, 1),
(2547, 10, 166, 0, 0, 0, 0),
(2548, 11, 166, 0, 0, 0, 0),
(2549, 13, 166, 0, 0, 0, 0),
(2550, 35, 166, 0, 0, 0, 1),
(2551, 39, 166, 0, 0, 0, 0),
(2552, 5, 172, 0, 0, 0, 0),
(2553, 6, 172, 0, 0, 0, 0),
(2554, 8, 172, 0, 0, 0, 0),
(2555, 9, 172, 0, 0, 0, 2),
(2556, 10, 172, 0, 0, 0, 0),
(2557, 11, 172, 0, 0, 0, 0),
(2558, 12, 172, 0, 0, 0, 0),
(2559, 13, 172, 0, 0, 0, 0),
(2560, 28, 172, 0, 0, 0, 0),
(2561, 39, 172, 0, 0, 0, 0),
(2562, 44, 172, 0, 0, 0, 2),
(2563, 45, 172, 0, 0, 0, 0),
(2564, 46, 172, 0, 0, 0, 0),
(2565, 5, 173, 0, 0, 0, 0),
(2566, 7, 173, 0, 0, 0, 0),
(2567, 8, 173, 0, 0, 0, 0),
(2568, 9, 173, 0, 0, 0, 2),
(2569, 11, 173, 0, 0, 0, 0),
(2570, 13, 173, 0, 0, 0, 0),
(2571, 20, 173, 0, 0, 0, 0),
(2572, 28, 173, 0, 0, 0, 0),
(2573, 33, 173, 0, 0, 0, 0),
(2574, 39, 173, 0, 0, 0, 0),
(2575, 43, 173, 0, 0, 0, 0),
(2576, 44, 173, 0, 0, 0, 0),
(2577, 46, 173, 0, 0, 0, 0),
(2578, 5, 188, 0, 0, 0, 1),
(2579, 6, 188, 0, 0, 0, 0),
(2580, 8, 188, 0, 0, 0, 0),
(2581, 9, 188, 0, 0, 0, 2),
(2582, 10, 188, 0, 0, 0, 0),
(2583, 11, 188, 0, 0, 0, 0),
(2584, 12, 188, 0, 0, 0, 0),
(2585, 13, 188, 0, 0, 0, 0),
(2586, 15, 188, 0, 0, 0, 0),
(2587, 20, 188, 0, 0, 0, 0),
(2588, 22, 188, 0, 0, 0, 0),
(2589, 28, 188, 0, 0, 0, 1),
(2590, 33, 188, 0, 0, 0, 0),
(2591, 35, 188, 0, 0, 0, 2),
(2592, 37, 188, 0, 0, 0, 0),
(2593, 39, 188, 0, 0, 0, 0),
(2594, 45, 188, 0, 0, 0, 0),
(2595, 5, 179, 0, 0, 0, 0),
(2596, 6, 179, 0, 0, 0, 0),
(2597, 7, 179, 0, 0, 0, 0),
(2598, 8, 179, 0, 0, 0, 0),
(2599, 9, 179, 0, 0, 0, 1),
(2600, 10, 179, 0, 0, 0, 0),
(2601, 11, 179, 0, 0, 0, 0),
(2602, 13, 179, 0, 0, 0, 0),
(2603, 18, 179, 0, 0, 0, 2),
(2604, 20, 179, 0, 0, 0, 0),
(2605, 24, 179, 0, 0, 0, 0),
(2606, 27, 179, 0, 0, 0, 0),
(2607, 35, 179, 0, 0, 0, 0),
(2608, 39, 179, 0, 0, 0, 0),
(2609, 43, 179, 0, 0, 0, 0),
(2610, 44, 179, 0, 0, 0, 0),
(2611, 46, 179, 0, 0, 0, 1),
(2612, 5, 189, 0, 0, 0, 0),
(2613, 6, 189, 0, 0, 0, 0),
(2614, 7, 189, 0, 0, 0, 0),
(2615, 8, 189, 0, 0, 0, 1),
(2616, 9, 189, 0, 0, 0, 1),
(2617, 11, 189, 0, 0, 0, 1),
(2618, 13, 189, 0, 0, 0, 0),
(2619, 15, 189, 0, 0, 0, 0),
(2620, 20, 189, 0, 0, 0, 0),
(2621, 22, 189, 0, 0, 0, 0),
(2622, 28, 189, 0, 0, 0, 0),
(2623, 33, 189, 0, 0, 0, 0),
(2624, 39, 189, 0, 0, 0, 0),
(2625, 42, 189, 0, 0, 0, 0),
(2626, 47, 189, 0, 0, 0, 0),
(2699, 8, 197, 0, 0, 0, 0),
(2700, 11, 197, 0, 0, 0, 0),
(2701, 15, 197, 0, 0, 0, 2),
(2702, 20, 197, 0, 0, 0, 0),
(2703, 35, 197, 0, 0, 0, 0),
(2704, 39, 197, 0, 0, 0, 0),
(2705, 44, 197, 0, 0, 0, 0),
(2706, 46, 197, 0, 0, 0, 0),
(2707, 47, 197, 0, 0, 0, 1),
(2716, 8, 199, 0, 0, 0, 0),
(2717, 11, 199, 0, 0, 0, 0),
(2718, 15, 199, 0, 0, 0, 0),
(2719, 20, 199, 0, 0, 0, 0),
(2720, 35, 199, 0, 0, 0, 1),
(2721, 39, 199, 0, 0, 0, 0),
(2722, 44, 199, 0, 0, 0, 1),
(2723, 46, 199, 0, 0, 0, 0),
(2724, 47, 199, 0, 0, 0, 2),
(2734, 8, 195, 0, 0, 0, 1),
(2735, 11, 195, 0, 0, 0, 0),
(2736, 15, 195, 0, 0, 0, 1),
(2737, 20, 195, 0, 0, 0, 0),
(2738, 35, 195, 0, 0, 0, 0),
(2739, 39, 195, 0, 0, 0, 0),
(2740, 44, 195, 0, 0, 0, 0),
(2741, 46, 195, 0, 0, 0, 0),
(2742, 47, 195, 0, 0, 0, 0),
(2779, 6, 190, 0, 0, 0, 0),
(2780, 8, 190, 0, 0, 0, 1),
(2781, 10, 190, 0, 0, 0, 0),
(2782, 12, 190, 0, 0, 0, 0),
(2783, 13, 190, 0, 0, 0, 0),
(2784, 20, 190, 0, 0, 0, 0),
(2785, 22, 190, 0, 0, 0, 0),
(2786, 35, 190, 0, 0, 0, 1),
(2787, 39, 190, 0, 0, 0, 0),
(2788, 44, 190, 0, 0, 0, 1),
(2789, 46, 190, 0, 0, 0, 0),
(2811, 6, 192, 0, 0, 0, 0),
(2812, 8, 192, 0, 0, 0, 0),
(2813, 10, 192, 0, 0, 0, 0),
(2814, 12, 192, 0, 0, 0, 0),
(2815, 13, 192, 0, 0, 0, 0),
(2816, 20, 192, 0, 0, 0, 0),
(2817, 22, 192, 0, 0, 0, 0),
(2818, 35, 192, 0, 0, 0, 0),
(2819, 39, 192, 0, 0, 0, 0),
(2820, 44, 192, 0, 0, 0, 0),
(2821, 46, 192, 0, 0, 0, 0),
(2844, 6, 191, 0, 0, 0, 0),
(2845, 8, 191, 0, 0, 0, 0),
(2846, 10, 191, 0, 0, 0, 0),
(2847, 12, 191, 0, 0, 0, 0),
(2848, 13, 191, 0, 0, 0, 0),
(2849, 20, 191, 0, 0, 0, 0),
(2850, 22, 191, 0, 0, 0, 0),
(2851, 35, 191, 0, 0, 0, 1),
(2852, 39, 191, 0, 0, 0, 0),
(2853, 44, 191, 0, 0, 0, 0),
(2854, 46, 191, 0, 0, 0, 0),
(2855, 6, 193, 0, 0, 0, 0),
(2856, 8, 193, 0, 0, 0, 0),
(2857, 10, 193, 0, 0, 0, 0),
(2858, 12, 193, 0, 0, 0, 0),
(2859, 13, 193, 0, 0, 0, 0),
(2860, 20, 193, 0, 0, 0, 0),
(2861, 22, 193, 0, 0, 0, 1),
(2862, 35, 193, 0, 0, 0, 0),
(2863, 39, 193, 0, 0, 0, 0),
(2864, 44, 193, 0, 0, 0, 0),
(2865, 46, 193, 0, 0, 0, 0),
(2866, 8, 194, 0, 0, 0, 0),
(2867, 11, 194, 0, 0, 0, 0),
(2868, 15, 194, 0, 0, 0, 2),
(2869, 20, 194, 0, 0, 0, 0),
(2870, 35, 194, 0, 0, 0, 0),
(2871, 39, 194, 0, 0, 0, 0),
(2872, 44, 194, 0, 0, 0, 0),
(2873, 46, 194, 0, 0, 0, 0),
(2874, 47, 194, 0, 0, 0, 0),
(2875, 8, 196, 0, 0, 0, 0),
(2876, 11, 196, 0, 0, 0, 0),
(2877, 15, 196, 0, 0, 0, 2),
(2878, 20, 196, 0, 0, 0, 0),
(2879, 35, 196, 0, 0, 0, 0),
(2880, 39, 196, 0, 0, 0, 0),
(2881, 44, 196, 0, 0, 0, 0),
(2882, 46, 196, 0, 0, 0, 0),
(2883, 47, 196, 0, 0, 0, 1),
(2884, 8, 198, 0, 0, 0, 2),
(2885, 11, 198, 0, 0, 0, 0),
(2886, 15, 198, 0, 0, 0, 0),
(2887, 20, 198, 0, 0, 0, 0),
(2888, 35, 198, 0, 0, 0, 0),
(2889, 39, 198, 0, 0, 0, 0),
(2890, 44, 198, 0, 0, 0, 0),
(2891, 46, 198, 0, 0, 0, 0),
(2892, 47, 198, 0, 0, 0, 0),
(2893, 8, 200, 0, 0, 0, 0),
(2894, 11, 200, 0, 0, 0, 0),
(2895, 15, 200, 0, 0, 0, 0),
(2896, 20, 200, 0, 0, 0, 0),
(2897, 35, 200, 0, 0, 0, 3),
(2898, 39, 200, 0, 0, 0, 0),
(2899, 44, 200, 0, 0, 0, 0),
(2900, 46, 200, 0, 0, 0, 0),
(2901, 47, 200, 0, 0, 0, 1),
(2902, 7, 201, 0, 0, 0, 0),
(2903, 8, 201, 0, 0, 0, 0),
(2904, 11, 201, 0, 0, 0, 0),
(2905, 13, 201, 0, 0, 0, 0),
(2906, 15, 201, 0, 0, 0, 1),
(2907, 39, 201, 0, 0, 0, 0),
(2908, 45, 201, 0, 0, 0, 0),
(2909, 64, 201, 0, 0, 0, 0),
(2910, 7, 202, 0, 0, 0, 0),
(2911, 8, 202, 0, 0, 0, 0),
(2912, 11, 202, 0, 0, 0, 0),
(2913, 15, 202, 0, 0, 0, 0),
(2914, 39, 202, 0, 0, 0, 0),
(2915, 45, 202, 0, 0, 0, 0),
(2916, 64, 202, 0, 0, 0, 1),
(2922, 7, 204, 0, 0, 0, 0),
(2923, 15, 204, 0, 0, 0, 2),
(2924, 39, 204, 0, 0, 0, 0),
(2925, 45, 204, 0, 0, 0, 0),
(2926, 64, 204, 0, 0, 0, 0),
(2927, 65, 204, 0, 0, 0, 1),
(2928, 66, 204, 0, 0, 0, 0),
(2937, 7, 205, 0, 0, 0, 0),
(2938, 15, 205, 0, 0, 0, 1),
(2939, 33, 205, 0, 0, 0, 0),
(2940, 39, 205, 0, 0, 0, 0),
(2941, 45, 205, 0, 0, 0, 0),
(2942, 64, 205, 0, 0, 0, 1),
(2943, 65, 205, 0, 0, 0, 0),
(2944, 66, 205, 0, 0, 0, 0),
(2957, 5, 206, 0, 0, 0, 0),
(2958, 7, 206, 0, 0, 0, 0),
(2959, 8, 206, 0, 0, 0, 0),
(2960, 11, 206, 0, 1, 0, 0),
(2961, 13, 206, 0, 0, 0, 0),
(2962, 20, 206, 0, 0, 0, 0),
(2963, 22, 206, 0, 0, 0, 1),
(2964, 33, 206, 0, 0, 0, 0),
(2965, 39, 206, 0, 0, 0, 0),
(2966, 44, 206, 0, 0, 0, 4),
(2967, 46, 206, 0, 0, 0, 0),
(2968, 67, 206, 0, 0, 0, 0),
(2969, 5, 207, 0, 1, 0, 0),
(2970, 7, 207, 0, 0, 0, 0),
(2971, 8, 207, 0, 0, 0, 1),
(2972, 11, 207, 0, 1, 0, 0),
(2973, 13, 207, 0, 1, 0, 0),
(2974, 18, 207, 0, 0, 0, 0),
(2975, 20, 207, 0, 0, 0, 0),
(2976, 22, 207, 0, 0, 0, 0),
(2977, 33, 207, 0, 0, 0, 0),
(2978, 39, 207, 0, 1, 0, 0),
(2979, 43, 207, 0, 1, 0, 0),
(2980, 46, 207, 0, 1, 0, 0),
(2981, 5, 208, 0, 0, 0, 0),
(2982, 6, 208, 0, 0, 0, 0),
(2983, 7, 208, 0, 0, 0, 0),
(2984, 8, 208, 0, 0, 0, 1),
(2985, 10, 208, 0, 0, 0, 0),
(2986, 11, 208, 0, 0, 0, 0),
(2987, 13, 208, 0, 0, 0, 0),
(2988, 20, 208, 0, 0, 0, 0),
(2989, 39, 208, 0, 0, 0, 0),
(2990, 43, 208, 0, 0, 0, 0),
(2991, 68, 208, 0, 0, 0, 0),
(2992, 69, 208, 0, 0, 0, 0),
(2993, 70, 208, 0, 0, 0, 0),
(3005, 5, 210, 0, 0, 0, 3),
(3006, 6, 210, 0, 0, 0, 0),
(3007, 8, 210, 0, 0, 0, 1),
(3008, 13, 210, 0, 0, 0, 0),
(3009, 20, 210, 0, 0, 0, 0),
(3010, 22, 210, 0, 0, 0, 1),
(3011, 33, 210, 0, 0, 0, 0),
(3012, 43, 210, 0, 0, 0, 0),
(3013, 44, 210, 0, 0, 0, 1),
(3014, 45, 210, 0, 0, 0, 0),
(3015, 46, 210, 0, 0, 0, 0),
(3016, 56, 210, 0, 0, 0, 1),
(3017, 67, 210, 0, 0, 0, 0),
(3018, 71, 210, 0, 0, 0, 0),
(3019, 5, 209, 0, 0, 0, 0),
(3020, 8, 209, 0, 0, 0, 2),
(3021, 13, 209, 0, 0, 0, 0),
(3022, 20, 209, 0, 0, 0, 0),
(3023, 22, 209, 0, 0, 0, 1),
(3024, 35, 209, 0, 0, 0, 0),
(3025, 39, 209, 0, 0, 0, 0),
(3026, 43, 209, 0, 0, 0, 0),
(3027, 45, 209, 0, 0, 0, 0),
(3028, 46, 209, 0, 0, 0, 0),
(3029, 67, 209, 0, 0, 0, 0),
(3151, 5, 211, 0, 0, 0, 0),
(3152, 6, 211, 0, 0, 0, 0),
(3153, 7, 211, 0, 0, 0, 0),
(3154, 8, 211, 0, 0, 0, 0),
(3155, 9, 211, 0, 0, 0, 0),
(3156, 10, 211, 0, 0, 0, 1),
(3157, 11, 211, 0, 0, 0, 0),
(3158, 13, 211, 0, 0, 0, 0),
(3159, 14, 211, 0, 0, 0, 0),
(3160, 18, 211, 0, 0, 0, 0),
(3161, 19, 211, 0, 0, 0, 1),
(3162, 20, 211, 0, 0, 0, 1),
(3163, 24, 211, 0, 0, 0, 0),
(3164, 29, 211, 0, 0, 0, 0),
(3165, 31, 211, 0, 0, 0, 0),
(3166, 33, 211, 0, 0, 0, 1),
(3167, 43, 211, 0, 0, 0, 0),
(3168, 45, 211, 0, 0, 0, 0),
(3169, 56, 211, 0, 0, 0, 3),
(3170, 61, 211, 0, 0, 0, 0),
(3171, 67, 211, 0, 0, 0, 0),
(3172, 72, 211, 0, 0, 0, 0),
(3173, 73, 211, 0, 0, 0, 0),
(3174, 74, 211, 0, 0, 0, 0),
(3175, 75, 211, 0, 0, 0, 0),
(3200, 6, 215, 0, 0, 0, 0),
(3201, 8, 215, 0, 0, 0, 2),
(3202, 9, 215, 0, 0, 0, 0),
(3203, 10, 215, 0, 0, 0, 1),
(3204, 13, 215, 0, 0, 0, 0),
(3205, 20, 215, 0, 0, 0, 0),
(3206, 33, 215, 0, 0, 0, 0),
(3207, 35, 215, 0, 0, 0, 0),
(3208, 43, 215, 0, 0, 0, 1),
(3209, 46, 215, 0, 0, 0, 1),
(3210, 72, 215, 0, 0, 0, 0),
(3211, 6, 213, 0, 0, 0, 0),
(3212, 8, 213, 0, 0, 0, 1),
(3213, 9, 213, 0, 0, 0, 0),
(3214, 10, 213, 0, 0, 0, 0),
(3215, 13, 213, 0, 0, 0, 0),
(3216, 20, 213, 0, 0, 0, 0),
(3217, 33, 213, 0, 0, 0, 0),
(3218, 35, 213, 0, 0, 0, 0),
(3219, 43, 213, 0, 0, 0, 0),
(3220, 46, 213, 0, 0, 0, 0),
(3221, 72, 213, 0, 0, 0, 0),
(3222, 5, 212, 0, 0, 0, 0),
(3223, 6, 212, 0, 0, 0, 1),
(3224, 8, 212, 0, 0, 0, 0),
(3225, 9, 212, 0, 0, 0, 1),
(3226, 10, 212, 0, 0, 0, 1),
(3227, 11, 212, 0, 0, 0, 0),
(3228, 13, 212, 0, 0, 0, 0),
(3229, 20, 212, 0, 0, 0, 1),
(3230, 33, 212, 0, 0, 0, 0),
(3231, 43, 212, 0, 0, 0, 0),
(3232, 45, 212, 0, 0, 0, 0),
(3233, 56, 212, 0, 0, 0, 3),
(3234, 61, 212, 0, 0, 0, 0),
(3235, 72, 212, 0, 0, 0, 0),
(3236, 5, 216, 0, 0, 0, 0),
(3237, 6, 216, 0, 0, 0, 0),
(3238, 8, 216, 0, 0, 0, 0),
(3239, 9, 216, 0, 0, 0, 1),
(3240, 10, 216, 0, 0, 0, 0),
(3241, 13, 216, 0, 0, 0, 0),
(3242, 20, 216, 0, 0, 0, 0),
(3243, 33, 216, 0, 0, 0, 0),
(3244, 35, 216, 0, 0, 0, 1),
(3245, 43, 216, 0, 0, 0, 0),
(3246, 46, 216, 0, 0, 0, 0),
(3247, 72, 216, 0, 0, 0, 0),
(3248, 6, 214, 0, 0, 0, 0),
(3249, 8, 214, 0, 0, 0, 0),
(3250, 9, 214, 0, 0, 0, 1),
(3251, 10, 214, 0, 0, 0, 0),
(3252, 11, 214, 0, 0, 0, 0),
(3253, 13, 214, 0, 0, 0, 0),
(3254, 20, 214, 0, 0, 0, 0),
(3255, 33, 214, 0, 0, 0, 0),
(3256, 35, 214, 0, 0, 0, 1),
(3257, 43, 214, 0, 0, 0, 0),
(3258, 46, 214, 0, 0, 0, 0),
(3259, 72, 214, 0, 0, 0, 0),
(3292, 5, 217, 0, 0, 0, 0),
(3293, 8, 217, 0, 0, 0, 1),
(3294, 11, 217, 0, 0, 0, 0),
(3295, 22, 217, 0, 0, 0, 1),
(3296, 23, 217, 0, 0, 0, 0),
(3297, 33, 217, 0, 0, 0, 0),
(3298, 39, 217, 0, 0, 0, 0),
(3299, 43, 217, 0, 0, 0, 0),
(3300, 44, 217, 0, 0, 0, 1),
(3301, 45, 217, 0, 0, 0, 0),
(3302, 46, 217, 0, 0, 0, 0),
(3303, 56, 217, 0, 0, 0, 2),
(3304, 68, 217, 0, 0, 0, 0),
(3305, 69, 217, 0, 0, 0, 1),
(3306, 71, 217, 0, 0, 0, 0),
(3307, 72, 217, 0, 0, 0, 0),
(3308, 7, 218, 0, 0, 0, 0),
(3309, 8, 218, 0, 0, 0, 1),
(3310, 10, 218, 0, 0, 0, 0),
(3311, 11, 218, 0, 0, 0, 0),
(3312, 19, 218, 0, 0, 0, 0),
(3313, 20, 218, 0, 0, 0, 0),
(3314, 22, 218, 0, 0, 0, 1),
(3315, 33, 218, 0, 0, 0, 0),
(3316, 39, 218, 0, 0, 0, 0),
(3317, 42, 218, 0, 0, 0, 0),
(3318, 46, 218, 0, 0, 0, 0),
(3319, 56, 218, 0, 0, 0, 0),
(3320, 71, 218, 0, 0, 0, 0),
(3321, 7, 219, 0, 0, 0, 0),
(3322, 11, 219, 0, 0, 0, 2),
(3323, 15, 219, 0, 0, 0, 0),
(3324, 19, 219, 0, 0, 0, 0),
(3325, 20, 219, 0, 0, 0, 0),
(3326, 22, 219, 0, 0, 0, 0),
(3327, 33, 219, 0, 0, 0, 0),
(3328, 44, 219, 0, 0, 0, 1),
(3329, 46, 219, 0, 0, 0, 1),
(3330, 56, 219, 0, 0, 0, 1),
(3331, 67, 219, 0, 0, 0, 0),
(3332, 71, 219, 0, 0, 0, 0),
(3333, 72, 219, 0, 0, 0, 2),
(3402, 6, 223, 0, 0, 0, 0),
(3403, 7, 223, 0, 0, 0, 0),
(3404, 8, 223, 0, 0, 0, 0),
(3405, 10, 223, 0, 0, 0, 0),
(3406, 11, 223, 0, 0, 0, 1),
(3407, 15, 223, 0, 0, 0, 1),
(3408, 16, 223, 0, 0, 0, 0),
(3409, 20, 223, 0, 0, 0, 0),
(3410, 21, 223, 0, 0, 0, 1),
(3411, 24, 223, 0, 0, 0, 0),
(3412, 28, 223, 0, 0, 0, 0),
(3413, 31, 223, 0, 0, 0, 0),
(3414, 57, 223, 0, 0, 0, 0),
(3415, 5, 222, 0, 0, 0, 0),
(3416, 6, 222, 0, 0, 0, 0),
(3417, 7, 222, 0, 0, 0, 0),
(3418, 8, 222, 0, 0, 0, 0),
(3419, 10, 222, 0, 0, 0, 0),
(3420, 11, 222, 0, 0, 0, 0),
(3421, 19, 222, 0, 0, 0, 0),
(3422, 20, 222, 0, 0, 0, 0),
(3423, 22, 222, 0, 0, 0, 2),
(3424, 33, 222, 0, 0, 0, 0),
(3425, 39, 222, 0, 0, 0, 0),
(3426, 43, 222, 0, 0, 0, 0),
(3427, 44, 222, 0, 0, 0, 1),
(3428, 46, 222, 0, 0, 0, 0),
(3429, 68, 222, 0, 0, 0, 0),
(3430, 69, 222, 0, 0, 0, 1),
(3431, 7, 203, 0, 0, 0, 0),
(3432, 15, 203, 0, 0, 0, 0),
(3433, 20, 203, 0, 0, 0, 0),
(3434, 39, 203, 0, 0, 0, 1),
(3435, 45, 203, 0, 0, 0, 0),
(3436, 64, 203, 0, 0, 0, 0),
(3437, 5, 221, 0, 0, 0, 0),
(3438, 6, 221, 0, 0, 0, 0),
(3439, 7, 221, 0, 0, 0, 0),
(3440, 11, 221, 0, 0, 0, 2),
(3441, 20, 221, 0, 0, 0, 0),
(3442, 22, 221, 0, 0, 0, 0),
(3443, 28, 221, 0, 0, 0, 0),
(3444, 33, 221, 0, 0, 0, 0),
(3445, 39, 221, 0, 0, 0, 0),
(3446, 43, 221, 0, 0, 0, 0),
(3447, 46, 221, 0, 0, 0, 0),
(3448, 56, 221, 0, 0, 0, 0),
(3449, 67, 221, 0, 0, 0, 0),
(3450, 72, 221, 0, 0, 0, 0),
(3451, 7, 224, 0, 0, 0, 0),
(3452, 8, 224, 0, 0, 0, 2),
(3453, 10, 224, 0, 0, 0, 0),
(3454, 11, 224, 0, 0, 0, 0),
(3455, 12, 224, 0, 0, 0, 0),
(3456, 20, 224, 0, 0, 0, 0),
(3457, 22, 224, 0, 0, 0, 0),
(3458, 35, 224, 0, 0, 0, 0),
(3459, 46, 224, 0, 0, 0, 0),
(3460, 72, 224, 0, 0, 0, 0),
(3461, 7, 225, 0, 0, 0, 0),
(3462, 8, 225, 0, 0, 0, 0),
(3463, 10, 225, 0, 0, 0, 0),
(3464, 11, 225, 0, 0, 0, 0),
(3465, 12, 225, 0, 0, 0, 0),
(3466, 20, 225, 0, 0, 0, 0),
(3467, 22, 225, 0, 0, 0, 1),
(3468, 35, 225, 0, 0, 0, 0),
(3469, 46, 225, 0, 0, 0, 0),
(3470, 72, 225, 0, 0, 0, 0),
(3471, 7, 226, 0, 0, 0, 0),
(3472, 8, 226, 0, 0, 0, 0),
(3473, 10, 226, 0, 0, 0, 0),
(3474, 11, 226, 0, 0, 0, 0),
(3475, 12, 226, 0, 0, 0, 0),
(3476, 20, 226, 0, 0, 0, 0),
(3477, 22, 226, 0, 0, 0, 0),
(3478, 35, 226, 0, 0, 0, 0),
(3479, 46, 226, 0, 0, 0, 0),
(3480, 72, 226, 0, 0, 0, 1),
(3545, 5, 231, 0, 0, 0, 0),
(3546, 8, 231, 0, 0, 0, 0),
(3547, 11, 231, 0, 0, 0, 0),
(3548, 12, 231, 0, 0, 0, 0),
(3549, 35, 231, 0, 0, 0, 4),
(3550, 39, 231, 0, 0, 0, 0),
(3551, 46, 231, 0, 0, 0, 0),
(3552, 69, 231, 0, 0, 0, 0),
(3553, 72, 231, 0, 0, 0, 0),
(3554, 5, 232, 0, 0, 0, 2),
(3555, 8, 232, 0, 0, 0, 0),
(3556, 11, 232, 0, 0, 0, 0),
(3557, 12, 232, 0, 0, 0, 0),
(3558, 35, 232, 0, 0, 0, 0),
(3559, 39, 232, 0, 0, 0, 0),
(3560, 46, 232, 0, 0, 0, 0),
(3561, 69, 232, 0, 0, 0, 0),
(3562, 72, 232, 0, 0, 0, 0),
(3563, 5, 233, 0, 0, 0, 0),
(3564, 8, 233, 0, 0, 0, 3),
(3565, 11, 233, 0, 0, 0, 0),
(3566, 12, 233, 0, 0, 0, 0),
(3567, 35, 233, 0, 0, 0, 0),
(3568, 39, 233, 0, 0, 0, 0),
(3569, 46, 233, 0, 0, 0, 0),
(3570, 69, 233, 0, 0, 0, 0),
(3571, 72, 233, 0, 0, 0, 0),
(3572, 5, 234, 0, 0, 0, 0),
(3573, 8, 234, 0, 0, 0, 0),
(3574, 11, 234, 0, 0, 0, 1),
(3575, 12, 234, 0, 0, 0, 0),
(3576, 35, 234, 0, 0, 0, 0),
(3577, 39, 234, 0, 0, 0, 0),
(3578, 46, 234, 0, 0, 0, 0),
(3579, 69, 234, 0, 0, 0, 0),
(3580, 72, 234, 0, 0, 0, 0),
(3581, 5, 235, 0, 0, 0, 0),
(3582, 8, 235, 0, 0, 0, 0),
(3583, 11, 235, 0, 0, 0, 0),
(3584, 12, 235, 0, 0, 0, 0),
(3585, 35, 235, 0, 0, 0, 0),
(3586, 39, 235, 0, 0, 0, 0),
(3587, 46, 235, 0, 0, 0, 0),
(3588, 69, 235, 0, 0, 0, 0),
(3589, 72, 235, 0, 0, 0, 5),
(3626, 5, 237, 0, 0, 0, 0),
(3627, 8, 237, 0, 0, 0, 0),
(3628, 11, 237, 0, 0, 0, 1),
(3629, 12, 237, 0, 0, 0, 0),
(3630, 35, 237, 0, 0, 0, 0),
(3631, 39, 237, 0, 0, 0, 0),
(3632, 46, 237, 0, 0, 0, 0),
(3633, 69, 237, 0, 0, 0, 0),
(3634, 72, 237, 0, 0, 0, 0),
(3664, 5, 236, 0, 0, 0, 0),
(3665, 8, 236, 0, 0, 0, 0),
(3666, 11, 236, 0, 0, 0, 1),
(3667, 12, 236, 0, 0, 0, 0),
(3668, 35, 236, 0, 0, 0, 0),
(3669, 39, 236, 0, 0, 0, 0),
(3670, 46, 236, 0, 0, 0, 0),
(3671, 69, 236, 0, 0, 0, 0),
(3672, 72, 236, 0, 0, 0, 0),
(3673, 7, 227, 0, 0, 0, 0),
(3674, 8, 227, 0, 0, 0, 0),
(3675, 10, 227, 0, 0, 0, 0),
(3676, 11, 227, 0, 0, 0, 0),
(3677, 12, 227, 0, 0, 0, 0),
(3678, 20, 227, 0, 0, 0, 0),
(3679, 22, 227, 0, 0, 0, 0),
(3680, 35, 227, 0, 0, 0, 0),
(3681, 46, 227, 0, 0, 0, 1),
(3682, 72, 227, 0, 0, 0, 0),
(3683, 7, 229, 0, 0, 0, 0),
(3684, 8, 229, 0, 0, 0, 0),
(3685, 10, 229, 0, 0, 0, 0),
(3686, 11, 229, 0, 0, 0, 0),
(3687, 12, 229, 0, 0, 0, 0),
(3688, 20, 229, 0, 0, 0, 0),
(3689, 22, 229, 0, 0, 0, 0),
(3690, 35, 229, 0, 0, 0, 3),
(3691, 46, 229, 0, 0, 0, 0),
(3692, 72, 229, 0, 0, 0, 0),
(3702, 7, 228, 0, 0, 0, 0),
(3703, 8, 228, 0, 0, 0, 0),
(3704, 10, 228, 0, 0, 0, 2),
(3705, 11, 228, 0, 0, 0, 0),
(3706, 12, 228, 0, 0, 0, 0),
(3707, 20, 228, 0, 0, 0, 0),
(3708, 22, 228, 0, 0, 0, 0),
(3709, 35, 228, 0, 0, 0, 0),
(3710, 46, 228, 0, 0, 0, 0),
(3711, 72, 228, 0, 0, 0, 0),
(3738, 7, 238, 0, 0, 0, 0),
(3739, 8, 238, 0, 0, 0, 1),
(3740, 9, 238, 0, 0, 0, 0),
(3741, 11, 238, 0, 0, 0, 0),
(3742, 13, 238, 0, 0, 0, 0),
(3743, 15, 238, 0, 0, 0, 0),
(3744, 20, 238, 0, 0, 0, 0),
(3745, 39, 238, 0, 0, 0, 0),
(3746, 43, 238, 0, 0, 0, 0),
(3747, 46, 238, 0, 0, 0, 1),
(3748, 67, 238, 0, 0, 0, 0),
(3749, 72, 238, 0, 0, 0, 0),
(3750, 5, 239, 0, 0, 0, 0),
(3751, 7, 239, 0, 0, 0, 0),
(3752, 8, 239, 0, 0, 0, 0),
(3753, 11, 239, 0, 0, 0, 0),
(3754, 13, 239, 0, 0, 0, 0),
(3755, 20, 239, 0, 0, 0, 0),
(3756, 21, 239, 0, 0, 0, 0),
(3757, 22, 239, 0, 0, 0, 1),
(3758, 35, 239, 0, 0, 0, 1),
(3759, 39, 239, 0, 0, 0, 0),
(3760, 46, 239, 0, 0, 0, 0),
(3761, 68, 239, 0, 0, 0, 0),
(3762, 69, 239, 0, 0, 0, 1),
(3763, 72, 239, 0, 0, 0, 0),
(3764, 76, 239, 0, 0, 0, 0),
(3774, 5, 230, 0, 0, 0, 0),
(3775, 8, 230, 0, 0, 0, 0),
(3776, 11, 230, 0, 0, 0, 0),
(3777, 12, 230, 0, 0, 0, 1),
(3778, 35, 230, 0, 0, 0, 0),
(3779, 39, 230, 0, 0, 0, 0),
(3780, 46, 230, 0, 0, 0, 0),
(3781, 69, 230, 0, 0, 0, 0),
(3782, 72, 230, 0, 0, 0, 0),
(3783, 5, 240, 0, 0, 0, 0),
(3784, 7, 240, 0, 0, 0, 0),
(3785, 8, 240, 0, 0, 0, 0),
(3786, 11, 240, 0, 0, 0, 0),
(3787, 20, 240, 0, 0, 0, 0),
(3788, 22, 240, 0, 0, 0, 0),
(3789, 39, 240, 0, 0, 0, 0),
(3790, 44, 240, 0, 0, 0, 0),
(3791, 46, 240, 0, 0, 0, 0),
(3792, 68, 240, 0, 0, 0, 2),
(3793, 69, 240, 0, 0, 0, 1),
(3794, 70, 240, 0, 0, 0, 2),
(3795, 8, 241, 0, 0, 0, 0),
(3796, 9, 241, 0, 0, 0, 0),
(3797, 11, 241, 0, 0, 0, 0),
(3798, 13, 241, 0, 0, 0, 0),
(3799, 18, 241, 0, 0, 0, 0),
(3800, 20, 241, 0, 0, 0, 0),
(3801, 35, 241, 0, 0, 0, 2),
(3802, 39, 241, 0, 0, 0, 0),
(3803, 46, 241, 0, 0, 0, 1),
(3804, 67, 241, 0, 0, 0, 0),
(3805, 69, 241, 0, 0, 0, 2),
(3806, 77, 241, 0, 0, 0, 1),
(3807, 78, 241, 0, 0, 0, 0),
(3808, 5, 242, 0, 0, 0, 0),
(3809, 9, 242, 0, 0, 0, 0),
(3810, 10, 242, 0, 0, 0, 0),
(3811, 11, 242, 0, 0, 0, 0),
(3812, 13, 242, 0, 0, 0, 0),
(3813, 15, 242, 0, 0, 0, 0),
(3814, 18, 242, 0, 0, 0, 0),
(3815, 20, 242, 0, 0, 0, 0),
(3816, 22, 242, 0, 0, 0, 2),
(3817, 42, 242, 0, 0, 0, 0),
(3818, 44, 242, 0, 0, 0, 0),
(3819, 46, 242, 0, 0, 0, 0),
(3820, 57, 242, 0, 0, 0, 0),
(3821, 69, 242, 0, 0, 0, 0),
(3835, 5, 243, 0, 0, 0, 0),
(3836, 6, 243, 0, 0, 0, 0),
(3837, 7, 243, 0, 0, 0, 1),
(3838, 8, 243, 0, 0, 0, 0),
(3839, 11, 243, 0, 0, 0, 2),
(3840, 13, 243, 0, 0, 0, 0),
(3841, 20, 243, 0, 0, 0, 0),
(3842, 21, 243, 0, 0, 0, 1),
(3843, 35, 243, 0, 0, 0, 1),
(3844, 39, 243, 0, 0, 0, 0),
(3845, 44, 243, 0, 0, 0, 0),
(3846, 56, 243, 0, 0, 0, 0),
(3847, 67, 243, 0, 0, 0, 0),
(3848, 68, 243, 0, 0, 0, 0),
(3849, 69, 243, 0, 0, 0, 2),
(3850, 70, 243, 0, 0, 0, 1),
(3865, 5, 245, 0, 0, 0, 0),
(3866, 8, 245, 0, 0, 0, 0),
(3867, 9, 245, 0, 0, 0, 0),
(3868, 11, 245, 0, 0, 0, 1),
(3869, 13, 245, 0, 0, 0, 0),
(3870, 20, 245, 0, 0, 0, 0),
(3871, 21, 245, 0, 0, 0, 1),
(3872, 39, 245, 0, 0, 0, 0),
(3873, 44, 245, 0, 0, 0, 0),
(3874, 46, 245, 0, 0, 0, 0),
(3875, 68, 245, 0, 0, 0, 1),
(3876, 70, 245, 0, 0, 0, 0),
(3877, 72, 245, 0, 0, 0, 1),
(3878, 77, 245, 0, 0, 0, 0),
(3934, 11, 248, 0, 0, 0, 0),
(3935, 13, 248, 0, 0, 0, 0),
(3936, 20, 248, 0, 0, 0, 0),
(3937, 21, 248, 0, 0, 0, 0),
(3938, 29, 248, 0, 0, 0, 0),
(3939, 31, 248, 0, 0, 0, 0),
(3940, 35, 248, 0, 0, 0, 3),
(3941, 36, 248, 0, 0, 0, 0),
(3942, 46, 248, 0, 0, 0, 1),
(3943, 67, 248, 0, 0, 0, 0),
(3944, 71, 248, 0, 0, 0, 0),
(3945, 72, 248, 0, 0, 0, 0),
(3946, 79, 248, 0, 0, 0, 0),
(3977, 5, 250, 0, 0, 0, 0),
(3978, 6, 250, 0, 0, 0, 0),
(3979, 7, 250, 0, 0, 0, 0),
(3980, 8, 250, 0, 0, 0, 0),
(3981, 9, 250, 0, 0, 0, 0),
(3982, 10, 250, 0, 0, 0, 0),
(3983, 11, 250, 0, 0, 0, 1),
(3984, 18, 250, 0, 0, 0, 0),
(3985, 20, 250, 0, 0, 0, 0),
(3986, 29, 250, 0, 0, 0, 2),
(3987, 33, 250, 0, 0, 0, 0),
(3988, 39, 250, 0, 0, 0, 0),
(3989, 57, 250, 0, 0, 0, 0),
(3990, 69, 250, 0, 0, 0, 0),
(3991, 70, 250, 0, 0, 0, 0),
(4050, 5, 244, 0, 0, 0, 0),
(4051, 6, 244, 0, 0, 0, 0),
(4052, 7, 244, 0, 0, 0, 0),
(4053, 8, 244, 0, 0, 0, 0),
(4054, 9, 244, 0, 0, 0, 0),
(4055, 11, 244, 0, 0, 0, 2),
(4056, 13, 244, 0, 0, 0, 0),
(4057, 20, 244, 0, 0, 0, 0),
(4058, 33, 244, 0, 0, 0, 0),
(4059, 35, 244, 0, 0, 0, 5),
(4060, 39, 244, 0, 0, 0, 0),
(4061, 43, 244, 0, 0, 0, 0),
(4062, 46, 244, 0, 0, 0, 0),
(4063, 72, 244, 0, 0, 0, 2),
(4064, 5, 247, 0, 0, 0, 0),
(4065, 6, 247, 0, 0, 0, 0),
(4066, 7, 247, 0, 0, 0, 0),
(4067, 8, 247, 0, 0, 0, 0),
(4068, 11, 247, 0, 0, 0, 1),
(4069, 21, 247, 0, 0, 0, 0),
(4070, 29, 247, 0, 0, 0, 1),
(4071, 33, 247, 0, 0, 0, 0),
(4072, 35, 247, 0, 0, 0, 3),
(4073, 44, 247, 0, 0, 0, 0),
(4074, 45, 247, 0, 0, 0, 0),
(4075, 56, 247, 0, 0, 0, 0),
(4076, 67, 247, 0, 0, 0, 0),
(4077, 69, 247, 0, 0, 0, 0),
(4078, 72, 247, 0, 0, 0, 0),
(4079, 7, 249, 0, 0, 0, 0),
(4080, 8, 249, 0, 0, 0, 4),
(4081, 11, 249, 0, 0, 0, 0),
(4082, 15, 249, 0, 0, 0, 1),
(4083, 18, 249, 0, 0, 0, 0),
(4084, 20, 249, 0, 0, 0, 0),
(4085, 29, 249, 0, 0, 0, 0),
(4086, 35, 249, 0, 0, 0, 2),
(4087, 44, 249, 0, 0, 0, 0),
(4088, 46, 249, 0, 0, 0, 0),
(4089, 67, 249, 0, 0, 0, 0),
(4090, 68, 249, 0, 0, 0, 2),
(4091, 70, 249, 0, 0, 0, 0),
(4092, 71, 249, 0, 0, 0, 0),
(4093, 72, 249, 0, 0, 0, 0),
(4094, 5, 251, 0, 0, 0, 0),
(4095, 8, 251, 0, 0, 0, 0),
(4096, 11, 251, 0, 0, 0, 0),
(4097, 13, 251, 0, 0, 0, 0),
(4098, 18, 251, 0, 0, 0, 0),
(4099, 20, 251, 0, 0, 0, 0),
(4100, 22, 251, 0, 0, 0, 0),
(4101, 29, 251, 0, 0, 0, 1),
(4102, 35, 251, 0, 0, 0, 1),
(4103, 39, 251, 0, 0, 0, 0),
(4104, 44, 251, 0, 0, 0, 0),
(4105, 57, 251, 0, 0, 0, 0),
(4106, 70, 251, 0, 0, 0, 0),
(4107, 72, 251, 0, 0, 0, 0),
(4158, 5, 256, 0, 0, 0, 0),
(4159, 6, 256, 0, 0, 0, 0),
(4160, 7, 256, 0, 0, 0, 0),
(4161, 9, 256, 0, 0, 0, 1),
(4162, 10, 256, 0, 0, 0, 0),
(4163, 16, 256, 0, 0, 0, 0),
(4164, 19, 256, 0, 0, 0, 0),
(4165, 20, 256, 0, 0, 0, 0),
(4166, 29, 256, 0, 0, 0, 0),
(4167, 33, 256, 0, 0, 0, 0),
(4168, 39, 256, 0, 0, 0, 0),
(4169, 43, 256, 0, 0, 0, 1),
(4170, 57, 256, 0, 0, 0, 0),
(4171, 69, 256, 0, 0, 0, 1),
(4172, 70, 256, 0, 0, 0, 1),
(4184, 5, 257, 0, 0, 0, 0),
(4185, 8, 257, 0, 0, 0, 0),
(4186, 9, 257, 0, 0, 0, 0),
(4187, 10, 257, 0, 0, 0, 1),
(4188, 18, 257, 0, 0, 0, 0),
(4189, 20, 257, 0, 0, 0, 0),
(4190, 29, 257, 0, 0, 0, 0),
(4191, 33, 257, 0, 0, 0, 0),
(4192, 35, 257, 0, 0, 0, 1),
(4193, 67, 257, 0, 0, 0, 0),
(4194, 69, 257, 0, 0, 0, 0),
(4195, 70, 257, 0, 0, 0, 0),
(4196, 6, 252, 0, 0, 0, 0),
(4197, 7, 252, 0, 0, 0, 0),
(4198, 9, 252, 0, 0, 0, 0),
(4199, 10, 252, 0, 0, 0, 0),
(4200, 11, 252, 0, 0, 0, 0),
(4201, 13, 252, 0, 0, 0, 0),
(4202, 18, 252, 0, 0, 0, 0),
(4203, 21, 252, 0, 0, 0, 0),
(4204, 22, 252, 0, 0, 0, 0),
(4205, 39, 252, 0, 0, 0, 0),
(4206, 68, 252, 0, 0, 0, 0),
(4207, 69, 252, 0, 0, 0, 2),
(4208, 6, 253, 0, 0, 0, 0),
(4209, 7, 253, 0, 0, 0, 0),
(4210, 9, 253, 0, 0, 0, 0),
(4211, 10, 253, 0, 0, 0, 0),
(4212, 11, 253, 0, 0, 0, 0),
(4213, 13, 253, 0, 0, 0, 0),
(4214, 18, 253, 0, 0, 0, 0),
(4215, 21, 253, 0, 0, 0, 1),
(4216, 22, 253, 0, 0, 0, 1),
(4217, 39, 253, 0, 0, 0, 0),
(4218, 68, 253, 0, 0, 0, 0),
(4219, 69, 253, 0, 0, 0, 0),
(4220, 6, 254, 0, 0, 0, 0),
(4221, 7, 254, 0, 0, 0, 0),
(4222, 9, 254, 0, 0, 0, 0),
(4223, 10, 254, 0, 0, 0, 0),
(4224, 11, 254, 0, 0, 0, 0),
(4225, 13, 254, 0, 0, 0, 0),
(4226, 18, 254, 0, 0, 0, 1),
(4227, 21, 254, 0, 0, 0, 0),
(4228, 22, 254, 0, 0, 0, 0),
(4229, 39, 254, 0, 0, 0, 0),
(4230, 68, 254, 0, 0, 0, 0),
(4231, 69, 254, 0, 0, 0, 0),
(4232, 6, 255, 0, 0, 0, 0),
(4233, 7, 255, 0, 0, 0, 0),
(4234, 9, 255, 0, 0, 0, 0),
(4235, 10, 255, 0, 0, 0, 0),
(4236, 11, 255, 0, 0, 0, 0),
(4237, 13, 255, 0, 0, 0, 0),
(4238, 18, 255, 0, 0, 0, 0),
(4239, 21, 255, 0, 0, 0, 0),
(4240, 22, 255, 0, 0, 0, 0),
(4241, 39, 255, 0, 0, 0, 0),
(4242, 68, 255, 0, 0, 0, 0),
(4243, 69, 255, 0, 0, 0, 0),
(4244, 6, 258, 0, 0, 0, 0),
(4245, 7, 258, 0, 0, 0, 0),
(4246, 9, 258, 0, 0, 0, 3),
(4247, 11, 258, 0, 0, 0, 1),
(4248, 16, 258, 0, 0, 0, 0),
(4249, 21, 258, 0, 0, 0, 2),
(4250, 22, 258, 0, 0, 0, 1),
(4251, 29, 258, 0, 0, 0, 0),
(4252, 33, 258, 0, 0, 0, 0),
(4253, 35, 258, 0, 0, 0, 2),
(4254, 39, 258, 0, 0, 0, 0),
(4255, 67, 258, 0, 0, 0, 0),
(4256, 68, 258, 0, 0, 0, 1),
(4257, 69, 258, 0, 0, 0, 0),
(4258, 5, 246, 0, 0, 0, 0),
(4259, 6, 246, 0, 0, 0, 0),
(4260, 7, 246, 0, 0, 0, 0),
(4261, 8, 246, 0, 0, 0, 0),
(4262, 9, 246, 0, 0, 0, 1),
(4263, 10, 246, 0, 0, 0, 1),
(4264, 11, 246, 0, 0, 0, 1),
(4265, 13, 246, 0, 0, 0, 0),
(4266, 16, 246, 0, 0, 0, 0),
(4267, 18, 246, 0, 0, 0, 0),
(4268, 20, 246, 0, 0, 0, 0),
(4269, 21, 246, 0, 0, 0, 1),
(4270, 24, 246, 0, 0, 0, 0),
(4271, 29, 246, 0, 0, 0, 0),
(4272, 31, 246, 0, 0, 0, 0),
(4273, 33, 246, 0, 0, 0, 0),
(4274, 42, 246, 0, 0, 0, 0),
(4275, 43, 246, 0, 0, 0, 0),
(4276, 44, 246, 0, 0, 0, 0),
(4277, 46, 246, 0, 0, 0, 1),
(4278, 57, 246, 0, 0, 0, 0),
(4279, 61, 246, 0, 0, 0, 0),
(4280, 67, 246, 0, 0, 0, 0),
(4281, 68, 246, 0, 0, 0, 0),
(4282, 70, 246, 0, 0, 0, 1),
(4283, 72, 246, 0, 0, 0, 3),
(4284, 77, 246, 0, 0, 0, 0),
(4301, 7, 261, 0, 0, 0, 0),
(4302, 8, 261, 0, 0, 0, 0),
(4303, 9, 261, 0, 0, 0, 0),
(4304, 20, 261, 0, 0, 0, 0),
(4305, 22, 261, 0, 0, 0, 0),
(4306, 67, 261, 0, 0, 0, 0),
(4307, 68, 261, 0, 0, 0, 0),
(4308, 70, 261, 0, 0, 0, 0),
(4309, 88, 261, 0, 0, 0, 1),
(4314, 8, 262, 0, 0, 0, 2),
(4315, 11, 262, 0, 0, 0, 1),
(4316, 13, 262, 0, 0, 0, 0),
(4317, 16, 262, 0, 0, 0, 0),
(4318, 29, 262, 0, 0, 0, 0),
(4319, 44, 262, 0, 0, 0, 0),
(4320, 67, 262, 0, 0, 0, 0),
(4321, 68, 262, 0, 0, 0, 0),
(4322, 79, 262, 0, 0, 0, 0),
(4323, 82, 262, 0, 0, 0, 0),
(4324, 84, 262, 0, 0, 0, 0),
(4325, 87, 262, 0, 0, 0, 0),
(4326, 89, 262, 0, 0, 0, 1),
(4327, 90, 262, 0, 0, 0, 2),
(4328, 7, 263, 0, 0, 0, 0),
(4329, 8, 263, 0, 0, 0, 0),
(4330, 9, 263, 0, 0, 0, 0),
(4331, 18, 263, 0, 0, 0, 0),
(4332, 24, 263, 0, 0, 0, 0),
(4333, 39, 263, 0, 0, 0, 0),
(4334, 73, 263, 0, 0, 0, 0),
(4335, 76, 263, 0, 0, 0, 0),
(4336, 79, 263, 0, 0, 0, 1),
(4337, 83, 263, 0, 0, 0, 0),
(4338, 89, 263, 0, 0, 0, 0),
(4339, 7, 264, 0, 0, 0, 0),
(4340, 8, 264, 0, 0, 0, 0),
(4341, 9, 264, 0, 0, 0, 0),
(4342, 18, 264, 0, 0, 0, 0),
(4343, 24, 264, 0, 0, 0, 0),
(4344, 39, 264, 0, 0, 0, 0),
(4345, 73, 264, 0, 0, 0, 0),
(4346, 76, 264, 0, 0, 0, 0),
(4347, 79, 264, 0, 0, 0, 0),
(4348, 83, 264, 0, 0, 0, 0),
(4349, 89, 264, 0, 0, 0, 0),
(4372, 7, 265, 0, 0, 0, 0),
(4373, 8, 265, 0, 0, 0, 1),
(4374, 9, 265, 0, 0, 0, 0),
(4375, 18, 265, 0, 0, 0, 0),
(4376, 24, 265, 0, 0, 0, 0),
(4377, 39, 265, 0, 0, 0, 0),
(4378, 73, 265, 0, 0, 0, 0),
(4379, 76, 265, 0, 0, 0, 0),
(4380, 79, 265, 0, 0, 0, 0),
(4381, 83, 265, 0, 0, 0, 0),
(4382, 89, 265, 0, 0, 0, 0),
(4383, 7, 267, 0, 0, 0, 0),
(4384, 8, 267, 0, 0, 0, 0),
(4385, 9, 267, 0, 0, 0, 0),
(4386, 13, 267, 0, 0, 0, 1),
(4387, 39, 267, 0, 0, 0, 0),
(4388, 73, 267, 0, 0, 0, 0),
(4389, 76, 267, 0, 0, 0, 0),
(4390, 79, 267, 0, 0, 0, 0),
(4391, 83, 267, 0, 0, 0, 0),
(4392, 89, 267, 0, 0, 0, 0),
(4393, 7, 266, 0, 0, 0, 0),
(4394, 8, 266, 0, 0, 0, 0),
(4395, 9, 266, 0, 0, 0, 0),
(4396, 13, 266, 0, 0, 0, 0),
(4397, 18, 266, 0, 0, 0, 0),
(4398, 24, 266, 0, 0, 0, 0),
(4399, 39, 266, 0, 0, 0, 0),
(4400, 73, 266, 0, 0, 0, 0),
(4401, 76, 266, 0, 0, 0, 0),
(4402, 79, 266, 0, 0, 0, 0),
(4403, 83, 266, 0, 0, 0, 0),
(4404, 89, 266, 0, 0, 0, 0),
(4434, 8, 269, 0, 0, 0, 0),
(4435, 9, 269, 0, 0, 0, 0),
(4436, 11, 269, 0, 0, 0, 0),
(4437, 13, 269, 0, 0, 0, 0),
(4438, 18, 269, 0, 0, 0, 0),
(4439, 22, 269, 0, 0, 0, 0),
(4440, 35, 269, 0, 0, 1, 2),
(4441, 39, 269, 0, 0, 0, 0),
(4442, 43, 269, 0, 0, 0, 0),
(4443, 68, 269, 0, 0, 0, 1),
(4444, 79, 269, 0, 0, 0, 0),
(4445, 80, 269, 0, 0, 0, 0),
(4446, 84, 269, 0, 0, 0, 0),
(4447, 94, 269, 0, 0, 0, 0),
(4521, 8, 270, 0, 0, 0, 1),
(4522, 20, 270, 0, 0, 0, 0),
(4523, 33, 270, 0, 0, 0, 0),
(4524, 35, 270, 0, 0, 0, 0),
(4525, 39, 270, 0, 0, 0, 0),
(4526, 42, 270, 0, 0, 0, 0),
(4527, 44, 270, 0, 0, 0, 0),
(4528, 78, 270, 0, 0, 0, 0),
(4529, 79, 270, 0, 0, 0, 0),
(4530, 80, 270, 0, 0, 0, 0),
(4531, 81, 270, 0, 0, 0, 0),
(4532, 84, 270, 0, 0, 0, 0),
(4533, 85, 270, 0, 0, 0, 0),
(4534, 86, 270, 0, 0, 0, 0),
(4577, 7, 277, 0, 0, 0, 0),
(4578, 11, 277, 0, 0, 0, 3),
(4579, 43, 277, 0, 0, 0, 0),
(4580, 67, 277, 0, 0, 0, 0),
(4581, 72, 277, 0, 0, 0, 1),
(4582, 79, 277, 0, 0, 0, 1),
(4583, 81, 277, 0, 0, 0, 0),
(4584, 82, 277, 0, 0, 0, 0),
(4585, 83, 277, 0, 0, 0, 0),
(4586, 86, 277, 0, 0, 0, 0),
(4587, 89, 277, 0, 0, 0, 1),
(4588, 91, 277, 0, 0, 0, 1),
(4589, 7, 271, 0, 0, 0, 0),
(4590, 8, 271, 0, 0, 0, 1),
(4591, 11, 271, 0, 0, 0, 1),
(4592, 13, 271, 0, 0, 0, 0),
(4593, 16, 271, 0, 0, 0, 0),
(4594, 18, 271, 0, 0, 0, 0),
(4595, 20, 271, 0, 0, 0, 1),
(4596, 22, 271, 0, 0, 0, 0),
(4597, 35, 271, 0, 0, 0, 1),
(4598, 39, 271, 0, 0, 0, 0),
(4599, 43, 271, 0, 0, 0, 0),
(4600, 67, 271, 0, 0, 0, 0),
(4601, 68, 271, 0, 0, 0, 0),
(4602, 69, 271, 0, 0, 0, 1),
(4603, 84, 271, 0, 0, 0, 0),
(4604, 89, 271, 0, 0, 0, 0),
(4605, 91, 271, 0, 0, 0, 1),
(4606, 7, 268, 0, 0, 0, 0),
(4607, 8, 268, 0, 0, 0, 2),
(4608, 9, 268, 0, 0, 0, 0),
(4609, 11, 268, 0, 0, 0, 1),
(4610, 20, 268, 0, 0, 0, 0),
(4611, 22, 268, 0, 0, 0, 0),
(4612, 24, 268, 0, 0, 0, 0),
(4613, 29, 268, 0, 0, 0, 0),
(4614, 39, 268, 0, 0, 0, 0),
(4615, 44, 268, 0, 0, 0, 0),
(4616, 67, 268, 0, 0, 0, 0),
(4617, 68, 268, 0, 0, 0, 1),
(4618, 79, 268, 0, 0, 0, 0),
(4619, 89, 268, 0, 0, 0, 1),
(4620, 5, 272, 0, 0, 0, 0),
(4621, 8, 272, 0, 0, 0, 1),
(4622, 12, 272, 0, 0, 0, 0),
(4623, 22, 272, 0, 0, 0, 0),
(4624, 35, 272, 0, 0, 0, 3),
(4625, 39, 272, 0, 0, 0, 0),
(4626, 64, 272, 0, 0, 0, 0),
(4627, 69, 272, 0, 0, 0, 0),
(4628, 71, 272, 0, 0, 0, 0),
(4629, 79, 272, 0, 0, 0, 1),
(4630, 81, 272, 0, 0, 0, 0),
(4631, 83, 272, 0, 0, 0, 0),
(4632, 84, 272, 0, 0, 0, 0),
(4633, 86, 272, 0, 0, 0, 0),
(4634, 91, 272, 0, 0, 0, 2),
(4660, 5, 278, 0, 0, 0, 0),
(4661, 7, 278, 0, 0, 0, 0),
(4662, 10, 278, 0, 0, 0, 0),
(4663, 11, 278, 0, 0, 0, 0),
(4664, 13, 278, 0, 0, 0, 0),
(4665, 22, 278, 0, 0, 0, 0),
(4666, 67, 278, 0, 0, 0, 0),
(4667, 79, 278, 0, 0, 0, 0),
(4668, 80, 278, 0, 0, 0, 0),
(4669, 82, 278, 0, 0, 0, 0),
(4670, 86, 278, 0, 0, 0, 1),
(4671, 87, 278, 0, 0, 0, 0),
(4672, 89, 278, 0, 0, 0, 0),
(4673, 8, 279, 0, 0, 0, 0),
(4674, 9, 279, 0, 0, 0, 0),
(4675, 11, 279, 0, 0, 0, 2),
(4676, 13, 279, 0, 0, 0, 0),
(4677, 35, 279, 0, 0, 0, 2),
(4678, 39, 279, 0, 0, 0, 0),
(4679, 80, 279, 0, 0, 0, 0),
(4680, 81, 279, 0, 0, 0, 0),
(4681, 84, 279, 0, 0, 0, 0),
(4682, 85, 279, 0, 0, 0, 0),
(4683, 86, 279, 0, 0, 0, 0),
(4684, 87, 279, 0, 0, 0, 0),
(4685, 91, 279, 0, 0, 0, 1),
(4686, 94, 279, 0, 0, 0, 0),
(4687, 96, 279, 0, 0, 0, 0),
(4702, 5, 281, 0, 0, 0, 0),
(4703, 7, 281, 0, 0, 0, 0),
(4704, 8, 281, 0, 0, 0, 0),
(4705, 9, 281, 0, 0, 0, 2),
(4706, 10, 281, 0, 0, 0, 0),
(4707, 18, 281, 0, 0, 0, 0),
(4708, 20, 281, 0, 0, 0, 0),
(4709, 35, 281, 0, 0, 0, 0),
(4710, 44, 281, 0, 0, 0, 2),
(4711, 46, 281, 0, 0, 0, 1),
(4712, 67, 281, 0, 0, 0, 0),
(4713, 72, 281, 0, 0, 0, 1),
(4714, 79, 281, 0, 0, 0, 1),
(4715, 82, 281, 0, 0, 0, 0),
(4716, 8, 280, 0, 0, 0, 1),
(4717, 9, 280, 0, 0, 0, 1),
(4718, 11, 280, 0, 0, 0, 2),
(4719, 13, 280, 0, 0, 0, 0),
(4720, 20, 280, 0, 0, 0, 0),
(4721, 22, 280, 0, 0, 0, 0),
(4722, 29, 280, 0, 0, 0, 0),
(4723, 35, 280, 0, 0, 0, 1),
(4724, 39, 280, 0, 0, 0, 0),
(4725, 44, 280, 0, 0, 0, 0),
(4726, 67, 280, 0, 0, 0, 0),
(4727, 79, 280, 0, 0, 0, 0),
(4728, 84, 280, 0, 0, 0, 0),
(4729, 87, 280, 0, 0, 0, 0),
(4730, 99, 280, 0, 0, 0, 0),
(4805, 7, 259, 0, 0, 0, 0),
(4806, 8, 259, 0, 0, 0, 0),
(4807, 9, 259, 0, 0, 0, 0),
(4808, 20, 259, 0, 0, 0, 0),
(4809, 22, 259, 0, 0, 0, 0),
(4810, 67, 259, 0, 0, 0, 0),
(4811, 68, 259, 0, 0, 0, 0),
(4812, 70, 259, 0, 0, 0, 0),
(4813, 88, 259, 0, 0, 0, 0),
(4814, 7, 260, 0, 0, 0, 0),
(4815, 8, 260, 0, 0, 0, 0),
(4816, 9, 260, 0, 0, 0, 1),
(4817, 20, 260, 0, 0, 0, 0),
(4818, 22, 260, 0, 0, 0, 2),
(4819, 67, 260, 0, 0, 0, 0),
(4820, 68, 260, 0, 0, 0, 0),
(4821, 70, 260, 0, 0, 0, 1),
(4822, 88, 260, 0, 0, 0, 1),
(4831, 5, 289, 0, 0, 0, 0),
(4832, 9, 289, 0, 0, 0, 0),
(4833, 11, 289, 0, 0, 0, 0),
(4834, 13, 289, 0, 0, 0, 0),
(4835, 29, 289, 0, 0, 0, 0),
(4836, 31, 289, 0, 0, 0, 0),
(4837, 35, 289, 0, 0, 0, 0),
(4838, 43, 289, 0, 0, 0, 0),
(4839, 44, 289, 0, 0, 0, 0),
(4840, 67, 289, 0, 0, 0, 0),
(4841, 68, 289, 0, 0, 0, 0),
(4863, 5, 290, 0, 0, 0, 0),
(4864, 9, 290, 0, 0, 0, 0),
(4865, 11, 290, 0, 0, 0, 0),
(4866, 13, 290, 0, 0, 0, 0),
(4867, 29, 290, 0, 0, 0, 2),
(4868, 31, 290, 0, 0, 0, 0),
(4869, 35, 290, 0, 0, 0, 0),
(4870, 43, 290, 0, 0, 0, 0),
(4871, 44, 290, 0, 0, 0, 0),
(4872, 67, 290, 0, 0, 0, 0),
(4873, 68, 290, 0, 0, 0, 0),
(4874, 5, 291, 0, 0, 0, 0),
(4875, 9, 291, 0, 0, 0, 0),
(4876, 11, 291, 0, 0, 0, 1),
(4877, 13, 291, 0, 0, 0, 0),
(4878, 29, 291, 0, 0, 0, 0),
(4879, 31, 291, 0, 0, 0, 0),
(4880, 35, 291, 0, 0, 0, 2),
(4881, 43, 291, 0, 0, 0, 1),
(4882, 44, 291, 0, 0, 0, 0),
(4883, 67, 291, 0, 0, 0, 0),
(4884, 68, 291, 0, 0, 0, 0),
(4893, 11, 287, 0, 0, 0, 1),
(4894, 22, 287, 0, 0, 0, 1),
(4895, 67, 287, 0, 0, 0, 0),
(4896, 79, 287, 0, 0, 0, 1),
(4897, 84, 287, 0, 0, 0, 0),
(4898, 89, 287, 0, 0, 0, 0),
(4899, 91, 287, 0, 0, 0, 0),
(4900, 100, 287, 0, 0, 0, 0),
(4901, 101, 287, 0, 0, 0, 3),
(4902, 7, 288, 0, 0, 0, 0),
(4903, 9, 288, 0, 0, 0, 1),
(4904, 10, 288, 0, 0, 0, 0),
(4905, 11, 288, 0, 0, 0, 0),
(4906, 22, 288, 0, 0, 0, 0),
(4907, 35, 288, 0, 0, 0, 1),
(4908, 39, 288, 0, 0, 0, 0),
(4909, 44, 288, 0, 0, 0, 0),
(4910, 64, 288, 0, 0, 0, 0),
(4911, 79, 288, 0, 0, 0, 0),
(4912, 80, 288, 0, 0, 0, 0),
(4913, 81, 288, 0, 0, 0, 0),
(4914, 83, 288, 0, 0, 0, 0),
(4915, 89, 288, 0, 0, 0, 0),
(4916, 91, 288, 0, 0, 0, 0),
(4917, 102, 288, 0, 0, 0, 0),
(4963, 7, 283, 0, 0, 0, 0),
(4964, 9, 283, 0, 0, 0, 0),
(4965, 11, 283, 0, 0, 0, 0),
(4966, 16, 283, 0, 0, 0, 0),
(4967, 18, 283, 0, 0, 0, 0),
(4968, 20, 283, 0, 0, 0, 0),
(4969, 67, 283, 0, 0, 0, 0),
(4970, 79, 283, 0, 0, 0, 0),
(4971, 82, 283, 0, 0, 0, 0),
(4972, 83, 283, 0, 0, 0, 0),
(4973, 84, 283, 0, 0, 0, 0),
(4974, 87, 283, 0, 0, 0, 0),
(4975, 89, 283, 0, 0, 0, 0),
(4976, 91, 283, 0, 0, 0, 0),
(4977, 7, 282, 0, 0, 0, 0),
(4978, 9, 282, 0, 0, 0, 0),
(4979, 11, 282, 0, 0, 0, 0),
(4980, 13, 282, 0, 0, 0, 0),
(4981, 16, 282, 0, 0, 0, 0),
(4982, 18, 282, 0, 0, 0, 0),
(4983, 21, 282, 0, 0, 0, 0),
(4984, 24, 282, 0, 0, 0, 0),
(4985, 29, 282, 0, 0, 0, 0),
(4986, 31, 282, 0, 0, 0, 0),
(4987, 33, 282, 0, 0, 0, 0),
(4988, 42, 282, 0, 0, 0, 0),
(4989, 44, 282, 0, 0, 0, 3),
(4990, 67, 282, 0, 0, 0, 1),
(4991, 71, 282, 0, 0, 0, 1),
(4992, 74, 282, 0, 0, 0, 0),
(4993, 75, 282, 0, 0, 0, 0),
(4994, 76, 282, 0, 0, 0, 0),
(4995, 79, 282, 0, 0, 0, 3),
(4996, 82, 282, 0, 0, 0, 0),
(4997, 84, 282, 0, 0, 0, 0),
(4998, 85, 282, 0, 0, 0, 0),
(4999, 87, 282, 0, 0, 0, 1),
(5000, 89, 282, 0, 0, 0, 1),
(5001, 91, 282, 0, 0, 0, 0),
(5002, 97, 282, 0, 0, 0, 0),
(5003, 98, 282, 0, 0, 0, 1),
(5004, 7, 284, 0, 0, 0, 0),
(5005, 8, 284, 0, 0, 0, 1),
(5006, 9, 284, 0, 0, 0, 0),
(5007, 11, 284, 0, 0, 0, 1),
(5008, 13, 284, 0, 0, 0, 0),
(5009, 16, 284, 0, 0, 0, 0),
(5010, 20, 284, 0, 0, 0, 0),
(5011, 29, 284, 0, 0, 0, 0),
(5012, 35, 284, 0, 0, 0, 1),
(5013, 39, 284, 0, 0, 0, 0),
(5014, 43, 284, 0, 0, 0, 0),
(5015, 79, 284, 0, 0, 0, 0),
(5016, 9, 273, 0, 0, 0, 0),
(5017, 10, 273, 0, 0, 0, 0),
(5018, 13, 273, 0, 0, 0, 0),
(5019, 22, 273, 0, 0, 0, 1),
(5020, 35, 273, 0, 0, 0, 0),
(5021, 44, 273, 0, 0, 0, 0),
(5022, 67, 273, 0, 0, 0, 0),
(5023, 79, 273, 0, 0, 0, 0),
(5024, 100, 273, 0, 0, 0, 0),
(5025, 9, 274, 0, 0, 0, 3),
(5026, 10, 274, 0, 0, 0, 0),
(5027, 13, 274, 0, 0, 0, 0),
(5028, 22, 274, 0, 0, 0, 0),
(5029, 35, 274, 0, 0, 0, 0),
(5030, 44, 274, 0, 0, 0, 0),
(5031, 67, 274, 0, 0, 0, 0),
(5032, 79, 274, 0, 0, 0, 0),
(5033, 100, 274, 0, 0, 0, 0),
(5034, 9, 275, 0, 0, 0, 0),
(5035, 10, 275, 0, 0, 0, 0),
(5036, 13, 275, 0, 0, 0, 0),
(5037, 22, 275, 0, 0, 0, 0),
(5038, 35, 275, 0, 0, 0, 1),
(5039, 44, 275, 0, 0, 0, 0),
(5040, 67, 275, 0, 0, 0, 0),
(5041, 79, 275, 0, 0, 0, 0),
(5042, 100, 275, 0, 0, 0, 0),
(5043, 9, 276, 0, 0, 0, 0),
(5044, 10, 276, 0, 0, 0, 0),
(5045, 13, 276, 0, 0, 0, 0),
(5046, 22, 276, 0, 0, 0, 0),
(5047, 35, 276, 0, 0, 0, 1),
(5048, 44, 276, 0, 0, 0, 0),
(5049, 67, 276, 0, 0, 0, 0),
(5050, 79, 276, 0, 0, 0, 0),
(5051, 100, 276, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_fussball_spiel_typ`
--

CREATE TABLE IF NOT EXISTS `jos_fussball_spiel_typ` (
`id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Beschreibung` text
) AUTO_INCREMENT=4 ;

--
-- Daten für Tabelle `jos_fussball_spiel_typ`
--

INSERT INTO `jos_fussball_spiel_typ` (`id`, `Name`, `Beschreibung`) VALUES
(1, 'Meisterschaft', 'Spiel der Meisterschaft'),
(2, 'Freundschaft', 'Freundschaftsspiel'),
(3, 'Turnierspiel', 'Spiel welches bei einem Turnier stattgefunden hat');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT ''
) ;

--
-- Daten für Tabelle `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Öffentlich'),
(1, 'Registrierte'),
(2, 'Admins');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
`id` int(11) NOT NULL,
  `menutype` varchar(225) DEFAULT NULL,
  `name` text,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(150) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0'
) AUTO_INCREMENT=108 ;

--
-- Daten für Tabelle `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'hauptmenü', 'Startseite', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Holthausener Sportverein\nshow_page_title=1\npageclass_sfx=\nmenu_image=home.png\nsecure=0\n\n', 0, 0, 1),
(71, 'hauptmenü', 'Spielerliste', 'spielerliste', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 73, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=2\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(72, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 73, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=2\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(81, 'hauptmenü', 'Saison 2008', 'saison-2008', 'index.php?option=com_content&view=article&id=86', 'component', 1, 98, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(73, 'hauptmenü', 'Saison 2009', 'spieleaufsainson2009', 'index.php?option=com_content&view=article&id=96', 'component', 1, 98, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(74, 'hauptmenü', 'Spielerliste im Menü', 'spielerliste-im-menue', 'index.php?option=com_fussball&view=spielerliste', 'component', -2, 0, 82, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(84, 'hauptmenü', 'Saison 2010', 'saison-2010', 'index.php?option=com_content&view=article&id=108', 'component', 1, 98, 20, 1, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(75, 'benutzermenü', 'Spieler Details', 'spieler-details', 'index.php?option=com_fussball&view=editspieler', 'component', 1, 0, 91, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'hauptmenü', 'Kontakt', 'kontakt', 'index.php?option=com_contact&view=category&catid=0', 'component', 1, 0, 7, 0, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=20\nimage=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=kontakt.png\nsecure=0\n\n', 0, 0, 0),
(20, 'benutzermenü', 'Ihre Details', 'ihre-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'benutzermenü', 'Abmelden', 'abmelden', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(77, 'saison2009', 'Meisterschaft', 'tabelle', 'index.php?option=com_event_table_edit&view=changetable', 'component', -2, 0, 47, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'choose=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'saison2009', 'Tabelle', 'tabelle', 'index.php?option=com_event_table_edit&view=default', 'component', 1, 73, 47, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'choose=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'hauptmenü', 'Tabelle', 'tabelle', 'index.php?option=com_content&view=article&id=85', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'Impressum', 'Bilder', 'bilder', 'index.php?option=com_fussball&view=spielerliste&layout=bildtest', 'component', 1, 0, 112, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=1\nsaison=4\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'hauptmenü', 'Gästebuch', 'gaestebuch', 'index.php?option=com_easybook&view=easybook', 'component', 1, 0, 38, 0, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_logo=0\nentries_perpage=5\nentries_order=\nsupport_bbcode=\nsupport_smilie=\nsupport_link=\nsupport_mail=\nsupport_pic=\nwordwrap=\nmaxlength=75\nrating_max=5\nshow_rating=\nshow_mail=\nrequire_mail=\nshow_home=\nshow_icq=\nshow_aim=\nshow_msn=\nshow_yah=\nshow_skype=\ndefault_published=\nbadwordfilter=\nenable_captcha=0\nadd_acl=0\nadmin_acl=20\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=guestbook.png\nsecure=0\n\n', 0, 0, 0),
(76, 'saison2009', 'Meisterschaft', 'tabelle', 'index.php?option=com_event_table_edit&view=changetable', 'component', 1, 73, 47, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'choose=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(59, 'hauptmenü', 'Fotos', 'fotos', 'index.php?option=com_content&view=category&id=42', 'component', 1, 0, 20, 0, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_num=10\nshow_headings=0\nshow_date=0\ndate_format=\nfilter=0\nfilter_type=title\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=0\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=fotoapparat.png\nsecure=0\n\n', 0, 0, 0),
(63, 'Impressum', 'Impressum', 'impressum', 'index.php?option=com_content&view=article&id=53', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'benutzermenü', 'Rasenmäherliste 2014', 'rasenmaeherliste-2014', 'index.php?option=com_content&view=article&id=148', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'hauptmenü', 'Fotos', 'fotos', 'index.php?option=com_phocagallery&view=categories', 'component', -2, 0, 41, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\nfont_color=#135cae\nbackground_color=#fcfcfc\nbackground_color_hover=#f5f5f5\nimage_background_color=#f5f5f5\nborder_color=#e8e8e8\nborder_color_hover=#135cae\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\ndisplay_icon_random_image=\nfont_size_name=12\nchar_length_name=11\ndetail_window=\ndisplay_description_detail=\nfont_size_desc=11\nfont_color_desc=#333333\ndescription_detail_height=16\ndisplay_image_categories=\nimage_categories_size=\ndisplay_subcategories=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'benutzermenü', 'Veranstaltungsort hinzufügen', 'veranstaltungsort-hinzufuegen', 'index.php?option=com_eventlist&view=editvenue', 'component', 0, 0, 46, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, 'display_num=\ncat_num=4\nempty_cat=\nfilter=\ndisplay=\nicons=\nshow_print_icon=\nshow_email_icon=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(64, 'hauptmenü', 'Kontaktetest', 'kontaktetest', 'index.php?option=com_contact&view=category&catid=0', 'component', -2, 0, 7, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_limit=0\nshow_feed_link=1\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(65, 'hauptmenü', 'Torschützen', 'torschuetzen', 'index.php?option=com_event_table_edit&view=default', 'component', 0, 0, 47, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'choose=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=ball_klein.gif\nsecure=0\n\n', 0, 0, 0),
(66, 'benutzermenü', 'Torschützenliste bearbeiten', 'torschuetzenliste-bearbeiten', 'index.php?option=com_event_table_edit&view=edit', 'component', -2, 0, 47, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, 'choose=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'hauptmenü', 'Kellnerliste 2008', 'kellnerliste-2008', 'index.php?option=com_content&view=article&id=58', 'component', -2, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'benutzermenü', 'Kellnerliste 2008', 'kellnerliste-2008', 'index.php?option=com_content&view=article&id=0', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(70, 'benutzermenü', 'Kellnerliste 2014', 'kellnerliste-2014', 'index.php?option=com_content&view=article&id=149', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 1, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(48, 'hauptmenü', 'Weblinks', 'weblinks', 'index.php?option=com_weblinks&view=categories', 'component', 1, 0, 4, 0, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=weblink.png\npage_title=Weblinks\nshow_page_title=1\npageclass_sfx=\nmenu_image=links.png\nsecure=0\n\n', 0, 0, 0),
(60, 'hauptmenü', 'Termine', 'termine', 'index.php?option=com_eventlist&view=eventlist', 'component', 1, 0, 46, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'introtext=\nshowintrotext=0\ndisplay_num=\ncat_num=4\nempty_cat=\nfilter=\ndisplay=\nicons=\nshow_print_icon=\nshow_email_icon=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=kalender.png\nsecure=0\n\n', 0, 0, 0),
(61, 'benutzermenü', 'Veranstaltung hinzufügen', 'veranstaltung-hinzufuegen', 'index.php?option=com_eventlist&view=editevent', 'component', 1, 0, 46, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, 'display_num=\ncat_num=4\nempty_cat=\nfilter=\ndisplay=\nicons=\nshow_print_icon=\nshow_email_icon=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(50, 'hauptmenü', 'Neuigkeiten', 'neuigkeiten', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=zeitung.png\nsecure=0\n\n', 0, 0, 0),
(51, 'benutzermenü', 'Artikel einreichen', 'artikel-einreichen', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'benutzermenü', 'Weblink einreichen', 'Weblink-einreichen', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(53, 'hauptmenü', 'Termine', 'termine', 'index.php?option=com_iwebcal', 'component', -2, 0, 34, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'calendardateformat=day\nlinkdateformat=dd/mm/yyyy\nfile=-1\nexternalfile=/srv/www/vhosts/hsv/termine.ics\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'hauptmenü', 'Geschichte', 'geschichte', 'index.php?option=com_content&view=section&layout=blog&id=5', 'component', 1, 0, 20, 0, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=order\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=spballklein.gif\nsecure=0\n\n', 0, 0, 0),
(82, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 81, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(83, 'hauptmenü', 'Spielerliste', 'spielerliste', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 81, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(85, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 84, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=3\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(86, 'hauptmenü', 'Spielerliste', 'spielerliste', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 84, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=3\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(87, 'hauptmenü', 'Saison 2011', 'saison-2011', 'index.php?option=com_content&view=article&id=111', 'component', 1, 98, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(88, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 87, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=4\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 87, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'saison=4\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(90, 'hauptmenü', 'Saison 2012', 'saison-2012', 'index.php?option=com_content&view=article&id=131', 'component', 1, 98, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(91, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 90, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=5\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(92, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 90, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=5\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'hauptmenü', 'Hobbyliga Borken', 'hobbyliga', 'http://www.liga-borken.de', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=internet.png\n\n', 0, 0, 0),
(94, 'hauptmenü', 'Saison 2013', 'saison-2013', 'index.php?option=com_content&view=article&id=140', 'component', 1, 98, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(95, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 94, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=6\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(96, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 94, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=6\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'hauptmenü', 'Schützenverein Holthausen-Bleking', 'schuetzenverein-holthausen-bleking', 'http://www.holthausen-bleking.de', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=achtungschuetzen.png\n\n', 0, 0, 0),
(98, 'hauptmenü', 'Vorherige Saisons', 'vorherige-saisons', 'index.php?option=com_content&view=article&id=143', 'component', 1, 0, 20, 0, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=ball_klein_grau.gif\nsecure=0\n\n', 0, 0, 0),
(99, 'hauptmenü', 'Kreispokal', 'kreispokal', 'http://www.kreismeisterschaft-ahaus.de/kreispokal/', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=internet.png\n\n', 0, 0, 0),
(100, 'hauptmenü', 'Saison 2014', 'saison-2014', 'index.php?option=com_content&view=article&id=147', 'component', 1, 98, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(101, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 100, 112, 2, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=7\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(102, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spieler', 'component', -2, 0, 112, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=7\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(103, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 100, 112, 2, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=7\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(104, 'hauptmenü', 'Saison 2015', 'saison-2015', 'index.php?option=com_content&view=article&id=152', 'component', 1, 0, 20, 0, 15, 62, '2014-12-22 18:14:12', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=fussball_gras.png\nsecure=0\n\n', 0, 0, 0),
(105, 'hauptmenü', 'Spiele', 'spiele', 'index.php?option=com_fussball&view=spiele', 'component', 1, 104, 112, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=8\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(106, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spieler', 'component', -2, 0, 112, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=8\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(107, 'hauptmenü', 'Spieler', 'spieler', 'index.php?option=com_fussball&view=spielerliste', 'component', 1, 104, 112, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'displaytype=0\nsaison=8\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
`id` int(10) unsigned NOT NULL,
  `menutype` varchar(225) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `description` text NOT NULL
) AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'hauptmenü', 'Hauptmenü', 'Das Hauptmenü dieser Seite'),
(2, 'benutzermenü', 'Benutzermenü', 'Ein Menü für angemeldete Benutzer'),
(7, 'Impressum', 'Impressum', ''),
(8, 'saison2009', 'Saison 2009', 'Aktuelle Daten und Informationen zur Saison');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
`message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL
) AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` text NOT NULL,
  `cfg_value` text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
`id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(150) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(150) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL
) AUTO_INCREMENT=50 ;

--
-- Daten für Tabelle `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Hauptmenü', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=hauptmenü\nmenu_style=vert_indent\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=1\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=1\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Anmeldung', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Populär', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Neue Artikel', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Statistiken', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Ungelesene Nachrichten', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Benutzer online', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Angemeldete Benutzer', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Fußzeile', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menü', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin Submenü', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'Benutzerstatus', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Titel', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(16, 'Umfragen', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_poll', 0, 0, 1, 'id=16\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(17, 'Benutzermenü', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=benutzermenü\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(18, 'Anmeldung', '', 6, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Neueste Nachrichten', '', 0, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'count=5\nordering=c_dsc\nuser_id=0\nshow_front=1\nsecid=1\ncatid=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(20, 'Statistiken', '', 5, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Wer ist online', '', 11, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'cache=0\nshowmode=0\nmoduleclass_sfx=\n\n', 0, 0, ''),
(22, 'Meist gelesen', '', 6, 'user2', 63, '2008-06-22 18:07:25', 0, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archiv', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Bereiche', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Schlagzeilen', '', 0, 'top', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 1, 'catid=1\nlayout=default\nimage=0\nlink_titles=\nreadmore=0\nitem_title=0\nitems=\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(26, 'Verwandte Artikel', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Suche', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(47, 'Impressum', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=Impressum\nmenu_style=horiz_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(30, 'Banner', '', 1, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Fußzeile', '', 2, 'footer', 0, '0000-00-00 00:00:00', 0, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed Anzeige', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Pfad', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 0, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Werbung', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href="http://www.joomla.org">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(48, 'Saison 2008', '', 0, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 1, 'menutype=saison2009\nmenu_style=horiz_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(46, 'Termine', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_eventlist', 0, 0, 1, 'count=3\ntype=0\nshowtitloc=1\ncuttitle=18\nlinkloc=1\nlinkdet=2\ncatid=\nvenid=\nformatdate=%d.%m.%Y\nformattime=%H.%M\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(41, 'Willkommen bei Joomla!', '<div style="padding: 5px"><p>Gratulation, dass Sie Joomla! als Ihr Content-Management-System gewählt haben. Wir hoffen, dass Sie in der Lage sind, eine erfolgreiche Webseite mit unserem System zu erstellen und möglicherweise später in der Lage sind, etwas der Gemeinschaft zurück zu geben.</p><p>Um Ihren Anfang mit Joomla! so einfach wie möglich zu gestalten, möchten wir Ihnen einige Punkte aufzeigen, wie z.B. allgemeinen Fragen, Hilfen und Sicherheit Ihres Server.</p><p>Sie sollten mit dem &quot;<a href="http://forum.joomla.org/index.php/topic,47524.0.html" target="_blank">Beginners guide to Joomla!</a>&quot; anfangen und dann, um die Sicherheit Ihres Servers zu gewährleisten, die &quot;<a href="http://forum.joomla.org/index.php/topic,81058.0.html" target="_blank">Security Checklist</a>&quot; lesen.</p><p>Für Ihre häufig gestellten Fragen sollten Sie zuerst ins <a href="http://forum.joomla.org" target="_blank">Forum</a> schauen, hier besonders ins <a href="http://forum.joomla.org/index.php/board,49.0.html" target="_blank">FAQ-Forum</a>. Im Forum finden Sie eine Antwort auf fast alle Ihre Fragen, auch wenn sie bisher nur einmal von anderen beantwortet wurden, so ist das Forum ein großen Nachschlagewerk für Anfänger und Profis. Bitte benutzen Sie die Suchfunktion des Forums bevor Sie Ihre Frage stellen, es könnte nämlich sein, dass diese schon einmal gestellt worden ist. <img alt="Lächeln" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Lächeln" /></p><p>Die Sicherheit ist ein großes Anliegen für uns, deshalb würden wir es begrüßen, wenn Sie das &quot;<a href="http://forum.joomla.org/index.php/board,8.0.html" target="_blank">Announcement-Forum</a>&quot; abonieren würden, damit Sie immer aktuelle Informationen über neue Joomla!-Versionen bekommen. Sie sollten aber auch regelmäßig das &quot;<a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank">Security-Forum</a>&quot; besuchen.</p><p>Wir hoffen, dass Sie viel Spaß und Erfolg mit Joomla! haben und Sie bald unter den Hunderten bzw. Tausenden an Joomla!-Benutzern sind, die Anfängern helfen können. </p><p>Ihr Joomla!-Team</p><p>P.S.: Um diese Anzeige zu entfernen, löschen Sie einfach das &quot;Willkommen bei Joomla!&quot;-Modul unter &quot;Erweiterungen&quot;-&gt;&quot;Module&quot; -&gt;&quot;Administrator&quot;.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ;

--
-- Daten für Tabelle `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 0),
(18, 1),
(19, 1),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(46, 0),
(47, 0),
(48, 71),
(48, 72),
(48, 73);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! - Offizielle News', 'joomla-official-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 8, 0),
(4, 2, 'Joomla! - Community News', 'joomla-community-news', 'http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 9, 0),
(6, 4, 'Linux Today', 'linux-today', 'http://linuxtoday.com/backend/my-netscape.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 5, 'Business News', 'business-news', 'http://headlines.internet.com/internetnews/bus-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(7, 6, 'Web Developer News', 'web-developer-news', 'http://headlines.internet.com/internetnews/wd-news/news.rss', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 7, 'Linux Central:New Products', 'linux-central-news-products', 'http://linuxcentral.com/backend/lcnew.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(6, 8, 'Linux Central:Best Selling', 'linux-central-best-selling', 'http://linuxcentral.com/backend/lcbestns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 9, 'Linux Central:Daily Specials', 'linux-central-daily-specials', 'http://linuxcentral.com/backend/lcspecialns.rdf', '', 1, 3, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `element` text NOT NULL,
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) AUTO_INCREMENT=37 ;

--
-- Daten für Tabelle `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentifikation - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentifikation - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentifikation - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentifikation - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'Benutzer - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Suche - Inhalte', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Suche - Kontakte', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Suche - Kategorien', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Suche - Bereiche', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Suche - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Suche - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Inhalt - Seitenumbruch', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(14, 'Inhalt - Bewertung', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Inhalt - E-Mail Verschleierung', 'emailcloak', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(16, 'Inhalt - Code Hervorhebung (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'Inhalt - Module laden', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(18, 'Inhalt - Seitennavigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(19, 'Editor - Kein Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(20, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%d.%m.%Y\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(21, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Bild', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Seitenumbruch', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'Editor Button - Weiterlesen', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(26, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(28, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(29, 'System - Debug', 'debug', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(30, 'System - Vorgängerversion', 'legacy', 'system', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(31, 'System - Cache', 'cache', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(32, 'System - Log', 'log', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Remember Me', 'remember', 'system', 0, 5, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Backlink', 'backlink', 'system', 0, 6, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(36, 'Multithumb', 'multithumb', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'popup_type=slimbox\nmin_img_size=20x20\nthumb_proportions=bestfit\nthumb_bg=#FFFFFF\nmagnify_cursor=1\nforce_popup=0\nenable_thumbs=1\nonly_classes=\nthumb_size=150x100\nthumb_size_first=\nleading_num=1\nuse_image_size=0\nthumbclass=multithumb\ncss= .multithumb {\\n    background-color: blue;\\n     margin: 5px; \\n    float: left; \\n }\nenable_blogs=1\nblog_mode=link\nblog_size=200x150\nblog_size_leading=\nblog_leading_num=1\nuse_image_size_blog=0\nthumbclass_blog=multithumb_blog\ncss_blog= .multithumb_blog {\\n     margin: 5px; \\n    float: left; \\n }\nborder_style=none\nborder_size=2px\nborder_color=#000000\ncaption=0\ncaption_pos=bottom\ncaption_type=title\ncaption_class=mtCapStyle\ncaption_css= .mtCapStyle {\\n     font-weight: bold;\\n    color: black;\\n    background-color: #ddd;\\n    margin: 0px 4px;\\n    text-align:center;\\n    white-space: pre-wrap;\\n }\ngroup_images=1\ngroup_images_gal=1\nmax_thumbnails=0\nnum_cols=3\ngallery_class=mtGallery\ngallery_css= .mtGallery {\\n     margin: 5px; \\n    align: center; \\n    float: none; \\n }\\ntd.mtGallery {\\n  background-color: #CCEEEE;\\n  padding: 10px;\\n}\\ntable.mtGallery {\\n  border-spacing: 10px\\n}\nmore_images=1\nmore_images_text=More images...\ncaption_type_gallery_iptc=1\ncaption_type_gallery_filename=0\ncaption_type_gallery_title=2\ncaption_type_gallery_alt=3\nresize=0\nfull_width=800\nfull_height=600\nimage_proportions=bestfit\nimage_bg=#000000\nwatermark_type=0\nwatermark=1\nwatermark_file=\nwatermark_left=\nwatermark_top=\ntransparency_type=alpha\ntransparent_color=#000000\ntransparency=25\nscramble=off\nslimbox_headers=1\nslimbox_loop=0\nslimbox_overlayOpacity=0.8\nslimbox_overlayFadeDuration=400\nslimbox_resizeDuration=400\nslimbox_initialWidth=250\nslimbox_initialHeight=250\nslimbox_imageFadeDuration=400\nslimbox_captionAnimationDuration=400\nslimbox_counterText=Bild {x} von {y}\nslimbox_closeKeys=[27, 88, 67]\nslimbox_previousKeys=[37, 80]\nslimbox_nextKeys=[39, 78]\nprettyphoto_headers=1\nprettyphoto_animationSpeed=normal\nprettyphoto_opacity=0.80\nprettyphoto_showTitle=true\nprettyphoto_allowresize=true\nprettyphoto_counter_separator_label=/\nprettyphoto_theme=light_rounded\nprettyphoto_modal=false\nprettyphoto_slideshow=false\nprettyphoto_autoplay_slideshow=false\nprettyphoto_overlay_gallery=false\nshadowbox_headers=1\nshadowbox_animate=1\nshadowbox_animateFade=1\nshadowbox_animSequence=sync\nshadowbox_autoplayMovies=1\nshadowbox_continuous=0\nshadowbox_counterLimit=10\nshadowbox_counterType=default\nshadowbox_displayCounter=1\nshadowbox_displayNav=1\nshadowbox_enableKeys=1\nshadowbox_fadeDuration=0.35\nshadowbox_flashParams=bgcolor:#000000;\nshadowbox_flashVars=\nshadowbox_flashVersion=9.0.0\nshadowbox_handleOversize=resize\nshadowbox_handleUnsupported=link\nshadowbox_initialHeight=160\nshadowbox_initialWidth=320\nshadowbox_modal=0\nshadowbox_overlayColor=#000\nshadowbox_overlayOpacity=0.5\nshadowbox_resizeDuration=0.35\nshadowbox_showOverlay=1\nshadowbox_showMovieControls=1\nshadowbox_slideshowDelay=0\nshadowbox_viewportPadding=20\niload_headers=1\niload_fontCss=font:11px Tahoma,Arial,Helvetica,sans-serif;color:#aaa;\niload_imageDescCss=display: block;\niload_imageNameCss=display: block; font-weight: 700; color: # 999;\niload_imageSetCss=display: block;\niload_imageInfoCss=display: block;\niload_zIndex=9999\niload_splitSign=\niload_bigButtonsDisabledOpacity=30\niload_bigButtonsPassiveOpacity=100\niload_bigButtonsActiveOpacity=70\niload_minButtonsPassiveOpacity=50\niload_minButtonsActiveOpacity=100\niload_overlayAppearTime=200\niload_overlayDisappearTime=200\niload_containerAppearTime=300\niload_containerDisappearTime=300\niload_containerResizeTime=300\niload_contentAppearTime=350\niload_contentDisappearTime=200\niload_loaderAppearTime=200\niload_loaderDisappearTime=200\niload_containerCenterTime=300\niload_panelAppearTime=300\niload_panelDisappearTime=300\niload_arrowsTime=230\niload_paddingFromScreenEdge=35\niload_contentPadding=0\niload_cornersSize=18\niload_overlayOpacity=95\niload_overlayBackground=#000000\niload_containerColor=#ffffff\niload_panelType=1\niload_hidePanelWhenScale=true\niload_closeOnClickWhenSingle=true\niload_forceCloseButton=true\niload_arrows=true\niload_imageNav=true\niload_showSize=true\niload_forceFullSize=false\niload_keyboard=true\niload_dragAndDrop=true\niload_preloadNeighbours=true\niload_info=false\niload_imageSetText=[''<b> [N] </b> from <b> [T] </b>'', ''in the group [S]'']\niload_fileInfoText=File format <b> [F] </b> size <b> [W] x [H] </b> pixels\niload_tips=''Previous'', ''Next'', ''Close'', ''Slideshow'', ''Pause'', ''Original'', ''Fit to window''\niload_slideshowTime=3000\niload_slideshowRound=true\niload_slideshowClose=false\niload_errorWidth=240\niload_errorName=Error.\niload_errorText=Could not load image. Perhaps the address specified is not valid or the server is temporarily unavailable.\niload_errorNameCss=display: block; font-weight: 700; color: # 999; padding-bottom: 4px;\niload_errorDescCss=display: block; padding-bottom: 4px;\njquery_headers=1\njquery_version=1.4.4\nimg_type=\nquality=80\nallow_img_toolbar=0\nonly_tagged=0\nexclude_tagged=1\nerror_msg=text\ntime_limit=\nmemory_limit=default\n\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
`id` int(11) unsigned NOT NULL,
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=17 ;

--
-- Daten für Tabelle `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Wozu nutzen Sie Joomla!?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 0, 0, 86400),
(15, 'Welche Farbe des Trainingsanzuges bevorzugst du?', 'welche-farbe-des-trainingsanzuges-bevorzugst-du', 34, 0, '0000-00-00 00:00:00', 1, 0, 864000),
(16, 'Wie oft hast du für eine Farbe des Trainingsanzugs gestimmt? :)', 'wie-oft-hast-du-fuer-eine-farbe-des-trainingsanzugs-gestimmt-', 14, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
`id` int(11) NOT NULL,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=37 ;

--
-- Daten für Tabelle `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Seiten', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Foto und Medienseiten', 2),
(7, 14, 'Alles oben genannte!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0),
(13, 15, 'Rot', 5),
(14, 15, 'Schwarz', 15),
(15, 15, 'Blau', 14),
(16, 15, '', 0),
(17, 15, '', 0),
(18, 15, '', 0),
(19, 15, '', 0),
(20, 15, '', 0),
(21, 15, '', 0),
(22, 15, '', 0),
(23, 15, '', 0),
(24, 15, '', 0),
(25, 16, 'Einmal', 8),
(26, 16, 'Zweimal', 4),
(27, 16, 'Dreimal', 0),
(28, 16, 'Viermal', 1),
(29, 16, 'Öfter als viermal', 1),
(30, 16, '', 0),
(31, 16, '', 0),
(32, 16, '', 0),
(33, 16, '', 0),
(34, 16, '', 0),
(35, 16, '', 0),
(36, 16, '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
`id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0'
) AUTO_INCREMENT=60 ;

--
-- Daten für Tabelle `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14),
(12, '2008-02-28 13:37:47', 14, 15),
(13, '2008-02-28 13:48:01', 13, 15),
(14, '2008-02-28 13:50:41', 14, 15),
(15, '2008-02-28 14:32:43', 15, 15),
(16, '2008-02-28 14:56:46', 14, 15),
(17, '2008-02-28 16:46:19', 14, 15),
(18, '2008-02-28 17:52:57', 14, 15),
(19, '2008-02-28 18:55:34', 14, 15),
(20, '2008-02-28 19:46:40', 13, 15),
(21, '2008-02-28 19:49:40', 15, 15),
(22, '2008-02-28 20:11:31', 15, 15),
(23, '2008-02-28 21:30:58', 15, 15),
(24, '2008-02-29 10:50:12', 15, 15),
(25, '2008-02-29 12:51:08', 14, 15),
(26, '2008-02-29 14:57:29', 14, 15),
(27, '2008-02-29 16:11:06', 14, 15),
(28, '2008-02-29 18:49:24', 13, 15),
(29, '2008-02-29 20:15:13', 14, 15),
(30, '2008-02-29 21:52:54', 14, 15),
(31, '2008-03-01 09:11:00', 13, 15),
(32, '2008-03-01 20:13:27', 15, 15),
(33, '2008-03-01 23:19:46', 14, 15),
(34, '2008-03-02 17:01:53', 15, 15),
(35, '2008-03-02 19:01:34', 14, 15),
(36, '2008-03-02 20:32:02', 13, 15),
(37, '2008-03-03 08:12:01', 15, 15),
(38, '2008-03-03 13:52:41', 15, 15),
(39, '2008-03-03 15:49:13', 14, 15),
(40, '2008-03-03 18:11:41', 15, 15),
(41, '2008-03-03 18:12:10', 15, 15),
(42, '2008-03-03 18:12:24', 15, 15),
(43, '2008-03-03 23:11:47', 14, 15),
(44, '2008-03-03 23:27:52', 15, 15),
(45, '2008-03-04 08:05:09', 15, 15),
(46, '2008-03-05 18:10:43', 25, 16),
(47, '2008-03-05 18:14:23', 25, 16),
(48, '2008-03-05 18:18:04', 26, 16),
(49, '2008-03-05 19:48:07', 25, 16),
(50, '2008-03-05 22:17:43', 26, 16),
(51, '2008-03-06 09:03:43', 28, 16),
(52, '2008-03-06 14:16:41', 29, 16),
(53, '2008-03-06 16:57:14', 26, 16),
(54, '2008-03-06 18:05:41', 26, 16),
(55, '2008-03-07 08:01:27', 25, 16),
(56, '2008-03-07 17:31:48', 25, 16),
(57, '2008-03-08 09:49:29', 25, 16),
(58, '2008-03-08 12:40:48', 25, 16),
(59, '2008-03-13 17:11:39', 25, 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
`id` int(11) NOT NULL,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(90) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Wählen Sie eines der unten angeführten News-Themen, dann den Artikel zum Lesen.', 1, 0, '0000-00-00 00:00:00', 3, 0, 5, ''),
(5, 'Geschichte', '', 'geschichte', '', 'content', 'left', 'Über die Anfänge und Begebenheiten unseres Vereins', 1, 0, '0000-00-00 00:00:00', 4, 0, 1, ''),
(6, 'Fotos', '', 'fotos', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 5, 0, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(150) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext
) ;

--
-- Daten für Tabelle `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1429604025', 'tnm8gucb7neh9cvprk616hbko0', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1429604025;s:18:"session.timer.last";i:1429604025;s:17:"session.timer.now";i:1429604025;s:22:"session.client.browser";s:66:"Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ahrefs.com/robot/)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:81:"/mnt/web9/b1/34/52658634/htdocs/joomla_02/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1429603420', 'b7lao7kkqjohc13hk6rpkp9pc1', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1429603420;s:18:"session.timer.last";i:1429603420;s:17:"session.timer.now";i:1429603420;s:22:"session.client.browser";s:66:"Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ahrefs.com/robot/)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:81:"/mnt/web9/b1/34/52658634/htdocs/joomla_02/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:10:"elsettings";O:8:"stdClass":73:{s:2:"id";s:1:"1";s:8:"oldevent";s:1:"2";s:5:"minus";s:1:"1";s:8:"showtime";s:1:"0";s:9:"showtitle";s:1:"1";s:10:"showlocate";s:1:"1";s:8:"showcity";s:1:"0";s:11:"showmapserv";s:1:"0";s:7:"map24id";s:0:"";s:7:"gmapkey";s:0:"";s:10:"tablewidth";s:4:"100%";s:9:"datewidth";s:3:"15%";s:10:"titlewidth";s:3:"25%";s:13:"locationwidth";s:0:"";s:9:"citywidth";s:0:"";s:8:"datename";s:5:"Datum";s:9:"titlename";s:5:"Titel";s:12:"locationname";s:18:"Verantstaltungsort";s:8:"cityname";s:5:"Stadt";s:10:"formatdate";s:8:"%d.%m.%Y";s:10:"formattime";s:5:"%H.%M";s:8:"timename";s:1:"h";s:11:"showdetails";s:1:"1";s:15:"showtimedetails";s:1:"0";s:17:"showevdescription";s:1:"1";s:16:"showdetailstitle";s:1:"1";s:17:"showdetailsadress";s:1:"1";s:18:"showlocdescription";s:1:"1";s:13:"showlinkvenue";s:1:"1";s:16:"showdetlinkvenue";s:1:"2";s:16:"delivereventsyes";s:2:"21";s:10:"mailinform";s:1:"0";s:13:"mailinformrec";s:19:"example@example.com";s:14:"mailinformuser";s:1:"0";s:12:"datdesclimit";s:4:"1000";s:8:"autopubl";s:2:"21";s:14:"deliverlocsyes";s:2:"21";s:13:"autopublocate";s:2:"21";s:7:"showcat";s:1:"1";s:11:"catfrowidth";s:3:"20%";s:10:"catfroname";s:4:"Type";s:8:"evdelrec";s:1:"1";s:8:"evpubrec";s:1:"1";s:9:"locdelrec";s:1:"1";s:9:"locpubrec";s:1:"1";s:9:"sizelimit";s:3:"100";s:10:"imagehight";s:3:"100";s:10:"imagewidth";s:3:"100";s:10:"gddisabled";s:1:"0";s:12:"imageenabled";s:1:"1";s:13:"comunsolution";s:1:"0";s:11:"comunoption";s:1:"0";s:11:"catlinklist";s:1:"1";s:15:"showfroregistra";s:1:"2";s:17:"showfrounregistra";s:1:"2";s:9:"eventedit";s:2:"21";s:12:"eventeditrec";s:1:"1";s:10:"eventowner";s:1:"0";s:9:"venueedit";s:2:"21";s:12:"venueeditrec";s:1:"1";s:10:"venueowner";s:1:"0";s:8:"lightbox";s:1:"0";s:13:"meta_keywords";s:36:"[title], [a_name], [catsid], [times]";s:16:"meta_description";s:43:"The event titled [title] starts on [dates]!";s:9:"showstate";s:1:"0";s:9:"statename";s:5:"State";s:10:"statewidth";s:1:"0";s:7:"regname";s:1:"0";s:7:"storeip";s:1:"1";s:13:"commentsystem";s:1:"0";s:10:"lastupdate";s:10:"1429574756";s:11:"checked_out";s:1:"0";s:16:"checked_out_time";s:19:"0000-00-00 00:00:00";}}'),
('', '1429603941', '1ma4kedhr5bhl4vi0ki0ajlk75', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1429603941;s:18:"session.timer.last";i:1429603941;s:17:"session.timer.now";i:1429603941;s:22:"session.client.browser";s:66:"Mozilla/5.0 (compatible; AhrefsBot/5.0; +http://ahrefs.com/robot/)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:81:"/mnt/web9/b1/34/52658634/htdocs/joomla_02/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` text NOT NULL,
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ;

--
-- Daten für Tabelle `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('hsv', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(75) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL
) AUTO_INCREMENT=111 ;

--
-- Daten für Tabelle `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Manfred Rosskamp', 'Manni', 'manfred@rosskamp.dyndns.org', '98d9d764e9029f31a77c095def33d24d:rbHD2WkIGdmF1nvfJutvx0j3w4fmo9iw', 'Super Administrator', 0, 1, 25, '2007-12-24 14:37:53', '2014-12-22 18:18:54', '', 'admin_language=\nlanguage=\neditor=tinymce\nhelpsite=\ntimezone=-1\n\n'),
(63, 'Patrick Schlautmann', 'Patrick', 'Patrick@schlautmanns.de', 'bb74e059c83d250b6f33137b2914c766:mojTFNUQVSTp5jSWVg9V2Un8c1uT2uHy', 'Super Administrator', 0, 0, 25, '2007-12-24 14:43:51', '2009-01-13 17:05:11', '', 'admin_language=de-DE\nlanguage=de-DE\neditor=\nhelpsite=\ntimezone=1\n\n'),
(64, 'Michael Raida', 'Michael', 'm.raida@t-online.de', '2678b74958084153240e92343b862ca8:heso60nGlf4iHhaaSY8ZbOTzqBYdJoyX', 'Administrator', 0, 0, 24, '2008-01-04 10:21:50', '2015-04-10 11:23:39', '0ded01ee3f4c4cea0175428454f76515', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=1\n\n'),
(65, 'Norbert Roßkamp', 'Rossi', 'nr@altergarten4.de', 'dd7b50a576fcc5fe6c2e6994508fbf00:muFE8GJrwKkSZ7RpJBUjgzkYAOufPTIe', 'Super Administrator', 0, 0, 25, '2008-02-04 18:20:25', '2012-12-02 18:30:47', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=1\n\n'),
(66, 'Sebastian Sieverding', 'Sibbi', 'ssieverding@kassen-partner.de', 'b34dcbb4dfa85dfa94441114fc942407:Wt7MaLfOjRQrYXdliVlLzghOxIogKU2K', 'Publisher', 0, 0, 21, '2008-02-08 11:40:19', '2010-03-16 15:15:00', '', 'admin_language=\nlanguage=de-DE\neditor=\nhelpsite=\ntimezone=1\n\n'),
(67, 'Ludger Roßkamp', 'Ludger', 'ludgerrosskamp@gmx.de', '76684f46a8aeeff0dffb77340b2a9f9e:UmSx4ZBA7COLdtUEl6gDu2b3hX4a9mk3', '', 0, 0, 18, '2008-02-15 10:32:15', '2009-03-15 18:58:56', '', '\n'),
(68, 'Lukas', 'lukas', 'lukas-robert@gmx.de', 'eeb3e8dff30991c0fe06550cde0f9763:fowMyFWBJCuWKWFRpNhv9ZnerSdIadTt', '', 0, 0, 18, '2008-02-18 13:02:24', '0000-00-00 00:00:00', '', '\n'),
(69, 'Deborah', 'Deborah', 'deborahbuente@web.de', '3e8b6888fbf8a6f46c675ddb57db6c66:UFgWE19E1X63V1aK59XQXlMzmUbFgEJ1', '', 0, 0, 18, '2008-03-08 13:57:57', '2008-06-30 14:14:48', '', '\n'),
(70, 'Sven Böing', 'Buster', 'svenB.1992@web.de', '906bf99c547437208e50cf77a827319e:Vx5SLp1dkKbCs3DN9lMKeW1KulDjA44S', '', 0, 0, 18, '2008-03-11 15:34:41', '2010-01-21 20:49:23', '', '\n'),
(71, 'Daniel Holtkamp', 'Buddy', 'buddy-h@gmx.de', '9b5fc34e3fcdcf00408b4801242795f1:lWT2ZixnYKrJPd6I71bmEjptZBEZUGke', 'Manager', 0, 0, 23, '2008-03-13 20:04:18', '2011-11-12 13:19:01', '', 'admin_language=de-DE\nlanguage=de-DE\neditor=\nhelpsite=\ntimezone=1\n\n'),
(72, 'Stefan Hüging', 'shueging', 'stefanhueging@web.de', 'a34f11decbe0a8122c1e0dcbb0cbed8a:DIUOID8tka5sKYped7hTQ522LGpEKOrn', '', 0, 0, 18, '2008-03-18 15:57:34', '2010-04-19 15:00:38', '', '\n'),
(73, 'Benny', 'Kuba', 'bennysicking@web.de', '491b0afb6c604fb1fb02e0407e67ccbc:SZIYkWbCdTB6mM8OTpRSo3RZvdI00eZ4', '', 0, 0, 18, '2008-03-18 16:55:44', '2015-03-19 10:21:36', '', '\n'),
(74, 'Jürgen Roßkamp', 'Juergen', 'juergen-rosskamp@web.de', 'bb6356f206bcd9806be3b5daa51bb84e:EHgcdqrhs3BoS0llMQ4TfRNRpj9mbP5n', 'Registered', 0, 0, 18, '2008-03-22 11:52:39', '2010-01-09 20:01:49', '3880225013c7e7a5c1a7e4649bb50fd5', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=1\n\n'),
(79, 'Hövelbrinks', 'Rainer', 'r.hoevelbrinks@gmx.de', 'a72e936c6a4f7ad7db5afe1ac2375442:AxMsqzbEGsY3xIRxhZN8lr2NRoROLgvM', '', 0, 0, 18, '2008-06-28 11:39:24', '2008-07-08 18:06:29', '8aa672ebdda3965648a466fd47a50595', '\n'),
(101, 'MarzecHuey', 'MarzecHuey', 'MarzecHuey1987@europrohost.com', '17d832cbfc9ed07105de9b077a6979cd:XJi287UNS8fDNV2oV8OUZpa0SdlMYPxy', '', 1, 0, 18, '2010-08-11 23:00:19', '0000-00-00 00:00:00', '', '\n'),
(77, 'hendrik', 'dirking', 'h.dirking@gmx.de', 'e1b7f4a9ea057e86e09bddd1aa277804:SCkwqzKMVzaSqgd23gYOv9cHHRE1dtI9', 'Registered', 0, 0, 18, '2008-04-23 18:44:36', '2010-04-17 13:58:50', '', 'language=\ntimezone=1\n\n'),
(80, 'Robert', 'Robert', 'r.kassner@web.de', '0f20a667c02eb01d7109a1a0ec2ad89a:c6iVMVpbeYM6pO9VJI52Vy8Ne6Bdv1s3', '', 0, 0, 18, '2008-06-28 13:35:50', '0000-00-00 00:00:00', '', '\n'),
(81, 'Tommy', 'Tommy', 'thomasschwerhoff@aol.com', '4f856fa4b7935f2262d443fc9cc322d4:GfaDPlvxeXVi6NVcJ6t0A5fXqeCbKIG5', '', 0, 0, 18, '2008-06-28 14:14:19', '0000-00-00 00:00:00', '', '\n'),
(82, 'Carsten', 'Mäkkes', 'carsten-deppe@t-online.de', 'b1104a0baf903a3a5938b24fb921131c:ErQpxRDxO2Sxyw0hmzfDrmrX4zNotXwW', '', 0, 0, 18, '2008-06-30 15:45:00', '2011-10-31 11:45:10', '', '\n'),
(102, 'ShirinMarcella', 'ShirinMarcella', 'ShirinMarcella1968@websitehostworld.net', 'e8844a429674edac874379cc8244ecc1:zecMxsrSSg4MDbLZ2VDW44Q4w6GKtD48', '', 0, 0, 18, '2010-08-12 09:07:28', '0000-00-00 00:00:00', '', '\n'),
(84, 'Alexander Kerkhoff', 'Alex', 'alexkerkhoff@web.de', '0e4bc4772ec11a50f31da8d806242650:BjPc9M9j8papxmvDSoQVNiBbMzHHBk0H', '', 0, 0, 18, '2008-07-01 05:52:16', '2008-07-01 05:53:40', '', '\n'),
(85, 'Markus Eichhorn', 'Ike', 'eichhorn-ike@gmx.de', '0e9232d31e8e346222d44578cda165b8:yneBZrpTFq4kWEIQz7DCRn8gkoorfmSj', '', 0, 0, 18, '2008-07-01 08:32:00', '2008-07-09 10:31:59', '', '\n'),
(86, 'Thesing', 'Gomez', 'thesing_christian_90@web.de', '186088c6d86598a23b6ee16c67df1891:EmDnGvkC1ary6kcyMRTPLK9yk13E15Q1', '', 0, 0, 18, '2008-07-01 16:03:37', '2011-08-30 19:42:17', '', '\n'),
(87, 'Schlottbom, Michael', 'König', 'koenig-ms@gmx.de', '3f5e3c90483fc8a6fd78fc0601ffa55f:y33X0sis1Xviyr1eajFlHqvMFqDDAjKA', '', 0, 0, 18, '2008-07-06 12:10:25', '2008-07-14 12:29:27', '', '\n'),
(88, 'Jan Storks', 'Storks', 'j-storks@web.de', '7bd5a259400e9ecc4ac0b8885e9bcbd1:w6YWsZq1bO9tTPwWRBuJQUvg6g4stfTP', '', 0, 0, 18, '2008-07-18 06:14:04', '0000-00-00 00:00:00', 'd07a57486078246a5998fa8c9352148d', '\n'),
(99, 'Andreas Schlüter', 'Schlüter', 'Schlueter-Andreas@web.de', '251e0938a8fb848a46fa604bdd06a4f7:NAEfiAxPpcAHDfJzeYsSUBX8lgjLudYq', '', 1, 0, 18, '2010-05-02 14:29:11', '0000-00-00 00:00:00', 'd42dffb585975fc3afb366fb79f61c33', '\n'),
(90, 'michael trepmann', 'werter93', 'm.trepmann@web.de', '87259dbf986d4db67cbfcf3a8173a296:MylWXZjaYB5RLfb8iv62HSuWGvaTHhjT', 'Administrator', 0, 0, 24, '2009-01-12 17:36:06', '2014-11-28 16:28:53', '', 'page_title=Ihre Daten bearbeiten\nshow_page_title=1\nlanguage=de-DE\ntimezone=1\neditor=tinymce\nhelpsite=\nadmin_language=de-DE\n\n'),
(100, 'SugihMiriam', 'SugihMiriam', 'SugihMiriam1984@websitehostworld.net', 'a39f888ab9c996409f5fb0975c101f8f:EjME1N7o8wWhHVgaXEBgf8PNcoUXtEgp', '', 0, 0, 18, '2010-08-10 12:01:31', '0000-00-00 00:00:00', '', '\n'),
(103, 'MaureenHuong', 'MaureenHuong', 'MaureenHuong1969@usawebway.net', 'cd966bfbaa7e298acd02c16ec15c4fa1:A6wSj0cf4kvHHJ2EshrPRTfP9o1yFar2', '', 1, 0, 18, '2010-08-14 09:55:13', '0000-00-00 00:00:00', '', '\n'),
(104, 'TakiraJanaka', 'TakiraJanaka', 'takiekontomoje@interia.pl', '99ae8e082bced0fec86f45e884874d76:5pzXS9ZiRqOdzDdGc3Jo85GaDbB7nz1K', '', 0, 0, 18, '2010-12-08 11:35:48', '0000-00-00 00:00:00', '', '\n'),
(105, 'MartensX', 'MartensX', 'jenaliette.martense@gmail.com', '08e33d4cd3c610f1f398fd8e062081c6:bIPCIroKSRvSzPZ6yzFk8447aGUsoWfd', '', 1, 0, 18, '2011-01-19 09:28:41', '0000-00-00 00:00:00', '6fa459165dfd383ea9bbc520dbf22175', '\n'),
(106, 'christian', 'selle94', 'christian.selting@web.de', '96bbe14daae5b641f3a2c42ceeab286c:F3XBsl17BckF1Z4vqMxVigVXpHTi71lq', '', 0, 0, 18, '2011-07-01 18:53:34', '2012-04-14 17:37:15', '7be5817db3509ef902c1372b29ad59eb', '\n'),
(107, 'kevin', 'meyer', 'kevin-meyerdierks@web.de', 'b88493f887b1927c30147a6934bc4cf9:jo3FkOjxwFS17vn1sEmxQPxwQiYHiEhK', '', 0, 0, 18, '2012-04-14 17:12:49', '0000-00-00 00:00:00', '', '\n'),
(108, 'Jaleb Norrio', 'FalebaNorrif', 'FalebaNorrio@ehowtomakecheese.com', 'c5d02d35d49576188a560874e39f9427:hbAF24NcYKWXzIsY1bWdHF7qeda5QyhE', '', 1, 0, 18, '2012-04-20 08:00:37', '0000-00-00 00:00:00', '', '\n'),
(109, 'Christian Bone', 'cb203628', 'cb203628@fh-muenster.de', 'bc64e15e32e1b61d35682ce880ece7b6:JW94n7yzRnzOdoRzI0v4TcCr8VqqfCmg', '', 0, 0, 18, '2014-06-25 13:42:54', '2014-07-01 21:37:57', '', '\n'),
(110, 'Chris Bartholme', 'Chris B.', 'ch.bartholome@outlook.de', '676ed17799df3d2ad6ac96bec2fe1c69:ziER1mzAKnEEc4Va8hJeSamQgmozVWtH', '', 1, 0, 18, '2014-10-11 06:21:21', '0000-00-00 00:00:00', 'b11dccb1cd3854e6b162e0fd43225079', '\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
`id` int(11) unsigned NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL
) AUTO_INCREMENT=26 ;

--
-- Daten für Tabelle `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(13, 36, 0, 'SV Illerhusen', 'sv-illerhusen', 'http://www.sv-illerhusen.de', '', '2008-02-17 14:02:10', 832, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, 'target=1\n\n'),
(12, 36, 0, 'Tornado Timpen', 'tornado-timpen', 'http://www.fctornadotimpen.de', '', '2008-02-17 14:02:00', 434, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=1\n\n'),
(11, 36, 0, 'Bröker Jungs', 'broeker-jungs', 'http://www.broeker-jungs.de', '', '2008-02-17 14:01:49', 480, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 'target=1\n\n'),
(10, 36, 0, 'Sportfreunde Klein Reken', 'klein-reken', 'http://www.sportfreundekleinreken.de/', '', '2008-02-17 14:01:07', 557, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=1\n\n'),
(9, 36, 0, 'Lupine', 'lupine', 'http://www.fc-lupine.de', '', '2008-02-17 14:00:57', 480, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=1\n\n'),
(7, 35, 0, 'Bundesliga', 'bundesliga', 'http://www.bundesliga.de', '', '2011-06-30 18:48:52', 386, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, 'target=1\n\n'),
(8, 35, 0, 'Jagdhornbläser Holthausen', 'jagdhornblaeser-holthausen', 'http://www.jagdhorn-holthausen.de', '', '2008-02-17 14:00:48', 543, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=1\n\n'),
(14, 36, 0, 'Cosmos Weseke', 'cosmos-weseke', 'http://www.fc-cosmos-weseke.de.tl', '', '2009-04-23 20:23:51', 871, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=1\n\n'),
(15, 36, 0, 'RW Trimbach', 'rw-trimbach', 'http://www.rot-weiss-trimbach.de', '', '2008-02-17 14:02:19', 444, 1, 0, '0000-00-00 00:00:00', 7, 0, 1, 'target=1\n\n'),
(17, 35, 0, 'De Dönnemanns ´98', 'de-doennemanns-a98', 'http://www.dedoennemanns.de', 'Der beste Stammtishc der Welt!!!', '2008-03-19 12:10:08', 481, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, ''),
(23, 35, 0, 'Hobbyliga Borken', 'hobbyliga-borken', 'http://www.liga-borken.de', '', '2012-03-08 17:36:24', 418, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 'target=\n\n'),
(20, 36, 0, 'Brinker Jungs', 'brinker-jungs', 'http://www.brinker-jungs.de.tl', '', '2008-06-09 16:38:03', 592, 1, 0, '0000-00-00 00:00:00', 8, 0, 1, 'target=1\n\n'),
(22, 36, 0, 'FC Fiat', 'fc-fiat', 'http://www.fc-fiat.de', '', '2008-07-05 07:14:01', 491, 1, 0, '0000-00-00 00:00:00', 9, 0, 1, 'target=1\n\n'),
(24, 35, 0, 'Schützenverein Holthausen-Bleking', 'schuetzenverein-holthausen-bleking', 'http://www.holthausen-bleking.de/', '', '2012-12-02 18:21:33', 319, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=\n\n'),
(25, 35, 0, 'kreismeisterschaft-ahaus', 'kreismeisterschaft-ahaus', 'http://www.kreismeisterschaft-ahaus.de', '', '2013-04-18 17:00:38', 344, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_document`
--

CREATE TABLE IF NOT EXISTS `lm_document` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `filename` varchar(255) COLLATE latin1_german1_ci NOT NULL
) AUTO_INCREMENT=19 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_document`
--

INSERT INTO `lm_document` (`id`, `name`, `filename`) VALUES
(4, 'Historie', 'historie.html'),
(11, 'Kreispokal', 'ForwardPokal.html'),
(16, 'Richtlinien 2015', 'Richtlinien_2015_Cosmos.pdf'),
(17, 'Adressliste 2015', 'Adressliste 2015.pdf'),
(18, 'Spielbericht 2015', 'Spielbericht 2015.pdf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_guestbook`
--

CREATE TABLE IF NOT EXISTS `lm_guestbook` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_german1_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_german1_ci DEFAULT NULL,
  `message` text COLLATE latin1_german1_ci,
  `date` datetime DEFAULT NULL
) AUTO_INCREMENT=33 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_guestbook`
--

INSERT INTO `lm_guestbook` (`id`, `name`, `email`, `message`, `date`) VALUES
(1, 'Manni', NULL, 'Hi, erster Testeintrag', '2011-12-28 11:54:31'),
(14, 'Michael Raida', NULL, 'Sehr, sehr schön :-)', '2012-02-24 15:18:08'),
(16, 'Uwe', 'Au.sarau@gmx.de', 'Tolle vorbereitung von euch', '2012-02-28 17:09:07'),
(17, 'Marius Schulze Beiering', NULL, 'Hey, das habt ihr aber sehr schön gemacht! Ein dickes Lob im Vorhinein!! Sollte alles aktuell über die Dauer der Saison beibehalten werden gibt es noch ein dickes Lob im Nachhinein! Auf eine gute Saison....', '2012-02-28 23:37:26'),
(20, 'Manni', 'manfred.rosskamp@gmx.de', 'Tag,\nhab mal eine Historie hinzugefügt. Die Infos stammen von der Cosmos Seite. Weiß jemand wer 2010 Torschützenkönig war?', '2012-03-03 16:40:14'),
(21, 'Michael Warmers', NULL, 'Hey zusammen!!\nEcht klasse die Seite, dickes lob an Holthausen(Manni)!\nHab übrigens gerade gehört das die Bröker Jungs dieses Jahr nicht mitspielen werden,schade!\nSchönes We noch Gruß Michael', '2012-03-03 18:36:37'),
(22, 'M.Raida', NULL, 'Glückwunsch an Cosmos zur Meisterschaft ! ! ! ', '2012-09-20 10:22:04'),
(23, 'Massen', 'noebert.jaegering@borken.de', 'Betr. Torjäger: Marius Schulze Beiering und Marius Schulze sind meines Wissens ein und die selbe Person. Also kommt er auf 10 Tore. ', '2012-09-20 17:22:02'),
(24, 'Präsi Böinghook', 'fcboeinghook@gmx.de', 'Hi Leute neuer ansprech partner vom FCBöinghook ist Jan-Gerth Niehaus ', '2013-02-17 10:32:13'),
(25, 'holthausen', NULL, 'nur zur info, der spieler d. holtkamp spielt für holthauen und nich für bieling,\nbitte in der torjägerliste ändern', '2013-06-20 20:42:06'),
(26, 'M. Raida', NULL, 'Was ist denn mit den ganzen Spielen, die noch nicht gespielt sind, aber laut Spielplan LÄNGST gespielt hätten sein sollen ? ? ? \nJeder Verein kann doch die Spieldaten selber ändern ! ! ! !', '2013-08-16 16:45:36'),
(27, 'Daniel Lüdiger', NULL, 'Alle Termine, die sich im Laufe der Zeit geändert haben, bitte eintragen. Sonst blickt hier keiner mehr druch. Werde nochmal ne Rundmal verfassen.', '2013-08-20 08:47:35'),
(28, 'Michael R.', NULL, 'Das klappt ja super ;-)\n', '2013-09-03 15:42:52'),
(29, 'Daniel Lüdiger', NULL, 'Hallo Fußballfreunde!\n\nDie Saison 2013 ist schon bald wieder Geschichte.\nZum Saisonabschluss am Samstag, 28. September 2013 möchten wir euch\nherzlich einladen. Um den neuen Meister bei einigen Bierchen mit seinen\nInsignien auszustatten, treffen wir uns um 20:00 Uhr in der Gaststätte\nAutohof in Weseke. (Wer ein Navy brauchen sollte: Hauptstraße 66, 46325\nBorken). Dort wird auch der Torschützenkönig der Saison geehrt.\n\nAuf euer zahlreiches Erscheinen freut sich\nFC Cosmos Weseke', '2013-09-24 18:40:05'),
(30, 'Michael Raida / Holthausener SV', 'M.Raida@t-online.de', 'Guten Tag zusammen,\nzwei Termine für die kommende Saison unserer Hobbyliga:\nAm 22.01.14 findet um  19:30 am Platz von Fiat Gescher die Besprechung der Hobbyliga Ahaus statt.\nZu dieser sind auch wir eingeladen, weil es da u.a. auch um die Pokalrunde geht.\nDie Versammlung zu unsderer Hobbyligasaison findet am 17.02.14 um 19:30 Uhr in Holthausen (alte Schule) statt.\nEine Einladung hierzu folgt ab er noch.\nCiao M. Raida', '2014-01-09 13:35:15'),
(31, 'Massen, FC Cosmos', 'norbert.jaegering@borken.de', 'Tach!\nIch bin der Meinung das die Spiele von/gegen SF Reken in der Torschützenliste nicht gestrichen werden sollten. Lasst dem Bücker, Haddick und sonst noch wer ihre Tore doch!\n', '2014-09-09 17:48:50'),
(32, 'Frank', 'lachexperte@web.de', 'Das Team Lette veranstaltet jeweils an der Terminen Samstag 15.11 und Samstag 13.12 von jeweils 11.00UHR - ca.16.00UHR im Soccertreff Coesfeld ein Soccerhallenturnier für Freizeit + Betriebsmannschaften,falls Teams Intresse haben an einem der Soccerturniere teilzunehmen,,meldet euch für weitere Infos unter lachexperte@web.de', '2014-10-28 19:09:17');

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `lm_locks`
--
CREATE TABLE IF NOT EXISTS `lm_locks` (
`id` int(11)
,`id_saison` int(11)
,`id_match` int(11)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`team_name` varchar(255)
,`date` datetime
);
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_match`
--

CREATE TABLE IF NOT EXISTS `lm_match` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `description` text COLLATE latin1_german1_ci,
  `goal1` int(11) DEFAULT NULL,
  `goal2` int(11) DEFAULT NULL,
  `id_saison_team1` int(11) NOT NULL,
  `id_saison_team2` int(11) NOT NULL
) AUTO_INCREMENT=192 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_match`
--

INSERT INTO `lm_match` (`id`, `date`, `description`, `goal1`, `goal2`, `id_saison_team1`, `id_saison_team2`) VALUES
(1, '2012-09-10 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?</font></span></p>', 4, 1, 1, 2),
(2, '2012-07-02 19:00:00', '', 6, 1, 1, 3),
(3, '2012-09-19 18:45:00', '', 2, 6, 1, 4),
(4, '2012-09-03 19:00:00', '', 2, 5, 1, 5),
(6, '2012-09-24 19:00:00', '', 7, 5, 1, 7),
(8, '2012-04-30 19:00:00', '', 2, 1, 2, 1),
(9, '2012-05-23 19:00:00', '', 2, 4, 2, 3),
(10, '2012-08-27 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">Eigentor von Cosmos<br /></font></span></p>', 3, 2, 2, 4),
(11, '2012-05-14 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><font size="4"><br /></font></span></font></p><p></p>', 6, 2, 2, 5),
(13, '2012-05-07 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><br /></span></font></p><p></p>', 6, 5, 2, 7),
(15, '2012-04-23 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"><br /></font></span></p>', 7, 5, 3, 1),
(16, '2012-09-03 18:30:00', '', 1, 3, 3, 2),
(17, '2012-06-20 19:00:00', '', 5, 5, 3, 4),
(18, '2012-09-10 18:30:00', '', 3, 2, 3, 5),
(20, '2012-06-25 19:00:00', '', 6, 4, 3, 7),
(22, '2012-06-11 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?</font></span></p>', 5, 3, 4, 1),
(23, '2012-07-07 12:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><br /></span></font></p><p></p>', 3, 2, 4, 2),
(24, '2012-05-14 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><br /></span></font></p><p></p>', 2, 1, 4, 3),
(25, '2012-09-15 15:00:00', '', 2, 0, 4, 5),
(27, '2012-08-13 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?Spiel wurde von Bieling abgesagt<br /></font></span></p>', 2, 0, 4, 7),
(29, '2012-05-30 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?</font></span></p>', 1, 1, 5, 1),
(30, '2012-07-04 19:00:00', '', 3, 2, 5, 2),
(31, '2012-06-29 19:00:00', '', 0, 2, 5, 3),
(32, '2012-07-16 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?Absage von Brinker wegen Leutemangel<br /></font></span></p>', 0, 2, 5, 4),
(34, '2012-07-30 19:00:00', '', 7, 2, 5, 7),
(43, '2012-06-18 18:30:00', '', 3, 7, 7, 1),
(44, '2012-08-06 19:00:00', '', 1, 3, 7, 2),
(45, '2012-04-16 19:00:00', '', 2, 7, 7, 3),
(46, '2012-05-21 19:00:00', '', 3, 2, 7, 4),
(47, '2012-06-11 19:00:00', '', 5, 2, 7, 5),
(48, '2013-05-15 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><font size="4"></font></span></font></p><p><font size="4"><font size="4"><font size="4"><span><br /></span></font></font></font></p><p></p><p></p>', 7, 4, 8, 9),
(49, '2013-04-15 19:00:00', '', 2, 1, 8, 10),
(50, '2013-09-04 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?Torschützen HSV: 2 x Ludger Roßkamp</font></span></p><p><span style="font-family:Verdana;"><font size="4">                            1 x Chr. Thesing<br /></font></span></p>', 3, 1, 8, 11),
(51, '2013-09-25 19:00:00', '', 4, 3, 8, 12),
(52, '2013-09-16 19:00:00', '', 10, 0, 8, 13),
(53, '2013-09-23 18:30:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><font size="4"></font></span></font></p><br /><p></p><p></p>', 2, 2, 9, 8),
(54, '2013-09-02 19:00:00', '', 3, 1, 9, 10),
(55, '2013-08-26 19:00:00', '', 7, 1, 9, 11),
(56, '2013-09-18 19:00:00', '', NULL, NULL, 9, 12),
(57, '2013-04-15 19:00:00', '', 10, 4, 9, 13),
(58, '2013-06-24 19:00:00', '', 3, 5, 10, 8),
(59, '2013-05-06 19:00:00', '', 4, 2, 10, 9),
(60, '2013-09-23 18:30:00', '', 1, 1, 10, 11),
(61, '2013-07-15 19:00:00', '', 3, 3, 10, 12),
(62, '2013-07-22 19:00:00', '', 0, 3, 10, 13),
(63, '2013-06-19 19:00:00', '', 1, 6, 11, 8),
(64, '2013-06-12 19:00:00', '', 1, 3, 11, 9),
(65, '2013-06-29 15:00:00', '', 3, 2, 11, 10),
(66, '2013-09-16 18:30:00', '', 2, 2, 11, 12),
(67, '2013-06-24 19:00:00', '', 8, 4, 11, 13),
(68, '2013-04-24 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?Tore HSV: Thomas Schwerhoff 2x<br /></font></span></p>', 2, 2, 12, 8),
(69, '2013-05-22 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><font size="4"></font></span></font></p><p></p>', 1, 2, 12, 9),
(70, '2013-06-17 19:00:00', '', 2, 2, 12, 10),
(71, '2013-07-10 19:00:00', '', 3, 1, 12, 11),
(72, '2013-09-02 19:00:00', '', 3, 0, 12, 13),
(73, '2013-05-27 19:00:00', '', 2, 9, 13, 8),
(74, '2013-06-04 00:00:00', '', 1, 0, 13, 9),
(75, '2013-06-10 19:00:00', '', 5, 4, 13, 10),
(76, '2013-05-13 19:00:00', '', 2, 0, 13, 11),
(77, '2013-04-29 19:00:00', '', 5, 5, 13, 12),
(79, '2014-05-05 19:00:00', '', 5, 2, 14, 16),
(80, '2014-09-10 19:00:00', '', 3, 4, 14, 17),
(81, '2014-09-03 19:00:00', '', 5, 4, 14, 18),
(82, '2014-08-18 19:00:00', '', 2, 1, 14, 19),
(88, '2014-07-02 19:00:00', '', 5, 1, 16, 14),
(90, '2014-08-25 19:00:00', '', 3, 3, 16, 17),
(91, '2014-06-30 18:30:00', '', 3, 3, 16, 18),
(92, '2014-06-23 19:00:00', '', 9, 0, 16, 19),
(93, '2014-05-19 19:00:00', '', 8, 0, 17, 14),
(95, '2014-09-08 19:00:00', '', 2, 2, 17, 16),
(96, '2014-06-23 19:00:00', '', 3, 4, 17, 18),
(97, '2014-07-02 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">2. Torschütze Bieling: Arjen Torwesten?<br />?</font></span></p>', 9, 2, 17, 19),
(98, '2014-06-11 19:00:00', '', 2, 6, 18, 14),
(100, '2014-07-09 19:00:00', '', 1, 3, 18, 16),
(101, '2014-09-22 18:30:00', '<br />', 1, 4, 18, 17),
(102, '2014-05-21 19:00:00', '', 11, 1, 18, 19),
(103, '2014-04-14 18:30:00', '', 0, 5, 19, 14),
(105, '2014-07-07 19:00:00', '<br />', 1, 0, 19, 16),
(106, '2014-09-01 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p><font size="4"><span style="font-family:Verdana;"><font size="4"><br /></font></span></font></p><p></p>', 2, 4, 19, 17),
(107, '2014-08-04 19:00:00', '', 1, 4, 19, 18),
(150, '2015-07-29 19:00:00', '', 7, 4, 20, 21),
(151, '2015-09-21 19:00:00', '', NULL, NULL, 20, 22),
(152, '2015-04-27 19:00:00', '', 5, 3, 20, 23),
(153, '2015-05-27 19:00:00', '', 2, 4, 20, 24),
(154, '2015-06-10 19:00:00', '', 5, 2, 20, 25),
(155, '2015-08-03 19:00:00', '<p><span style="font-family:Verdana;"><font size="4">?</font></span></p>', 5, 0, 20, 26),
(156, '2015-04-08 19:00:00', '', 3, 4, 21, 20),
(157, '2015-05-20 19:00:00', '', 0, 3, 21, 22),
(158, '2015-06-17 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"><br />?</font></span></p>', 1, 2, 21, 23),
(159, '2015-05-06 19:00:00', '', 3, 5, 21, 24),
(160, '2015-05-09 12:00:00', '', 10, 0, 21, 25),
(161, '2015-09-09 19:00:00', '', NULL, NULL, 21, 26),
(162, '2015-09-14 18:30:00', '', NULL, NULL, 22, 20),
(163, '2015-07-02 19:00:00', '', 3, 3, 22, 21),
(164, '2015-06-22 19:00:00', '', 7, 1, 22, 23),
(165, '2015-06-29 19:00:00', '', 2, 1, 22, 24),
(166, '2015-05-04 19:00:00', '', 6, 0, 22, 25),
(167, '2015-07-06 19:00:00', '', 8, 2, 22, 26),
(168, '2015-07-08 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"></font></span></p><p></p>', 4, 9, 23, 20),
(169, '2015-08-26 19:00:00', '', 8, 0, 23, 21),
(170, '2015-09-07 19:00:00', '', NULL, NULL, 23, 22),
(171, '2015-05-18 19:00:00', '', 2, 3, 23, 24),
(172, '2015-06-15 19:00:00', '', 2, 2, 23, 25),
(173, '2015-07-27 19:00:00', '', NULL, NULL, 23, 26),
(174, '2015-08-26 19:00:00', '', 0, 3, 24, 20),
(175, '2015-05-02 12:00:00', NULL, NULL, NULL, 24, 21),
(176, '2015-06-17 19:00:00', '', 4, 2, 24, 22),
(177, '2015-08-03 19:00:00', '', NULL, NULL, 24, 23),
(178, '2015-04-07 13:29:00', '', 8, 1, 24, 25),
(179, '2015-07-20 19:00:00', '', 9, 0, 24, 26),
(180, '2015-08-20 19:00:00', '', 1, 7, 25, 20),
(181, '2015-05-05 13:29:00', NULL, NULL, NULL, 25, 21),
(182, '2015-06-25 19:00:00', '', 0, 3, 25, 22),
(183, '2015-09-03 19:00:00', '', 1, 1, 25, 23),
(184, '2015-04-11 12:00:00', NULL, NULL, NULL, 25, 24),
(185, '2015-09-17 19:00:00', '', NULL, NULL, 25, 26),
(186, '2015-06-08 19:00:00', '', NULL, NULL, 26, 20),
(187, '2015-06-24 19:00:00', '<p><span style="font-family:Verdana;"><font size="4"><br />?</font></span></p>', 3, 5, 26, 21),
(188, '2015-04-27 19:00:00', '', 0, 10, 26, 22),
(189, '2015-09-02 19:00:00', '', 7, 1, 26, 23),
(190, '2015-06-01 19:00:00', '', 2, 9, 26, 24),
(191, '2015-05-28 12:00:00', '', NULL, NULL, 26, 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_player`
--

CREATE TABLE IF NOT EXISTS `lm_player` (
`id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE latin1_german1_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE latin1_german1_ci DEFAULT NULL,
  `id_team` int(11) NOT NULL,
  `hoeherALiga` tinyint(1) DEFAULT NULL
) AUTO_INCREMENT=223 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_player`
--

INSERT INTO `lm_player` (`id`, `firstname`, `lastname`, `id_team`, `hoeherALiga`) VALUES
(9, 'Norbert', 'Roßkamp', 3, NULL),
(12, 'St.', 'Tenk', 9, NULL),
(13, 'J.', 'Peters', 9, NULL),
(14, 'Henning', 'Klöcker', 5, NULL),
(15, 'Max', 'Tesing', 5, NULL),
(16, 'David', 'Bleker', 5, NULL),
(17, 'Marius', 'Schulze Beiering', 5, NULL),
(18, 'Tobias', 'Lütjann', 5, NULL),
(19, 'Dennis', 'Lütjann', 5, NULL),
(20, 'Benedikt', 'Lensing', 5, NULL),
(21, 'Karsten', 'Thiehoff', 3, NULL),
(22, 'Thomas', 'Schwerhoff', 3, NULL),
(23, 'Michael', 'Stienen', 4, NULL),
(24, 'Benedikt', 'Sicking', 3, NULL),
(25, 'Pascal', 'Stasch', 4, NULL),
(26, 'Reinhard', 'Boer', 4, NULL),
(27, 'Manuel', 'Güttler', 4, NULL),
(28, 'Michael', 'Bösing', 4, NULL),
(29, 'Lukas', 'Kremer', 9, NULL),
(33, 'T.', 'Schüttert', 9, NULL),
(34, 'H', 'Flinkert', 9, NULL),
(35, 'Jan', 'Gesing', 6, NULL),
(36, 'Pascal', 'Herzog', 6, NULL),
(37, 'Daniel', 'Schlecking', 4, NULL),
(38, 'Dominik', 'Sievers', 7, NULL),
(39, 'Thomas', 'Tenk', 9, NULL),
(40, 'Patrick', 'Herzog', 6, NULL),
(41, 'Achim', 'Schlüter', 6, NULL),
(42, 'Andreas', 'Klein-Ridder', 6, NULL),
(43, 'Olli', 'Vaut', 4, NULL),
(44, 'Rudiger', 'Schmidt', 4, NULL),
(45, 'Mark', 'Hellenkamp', 5, NULL),
(47, 'Marius', 'Lütjann', 4, NULL),
(48, 'Andre', 'Stenert', 6, NULL),
(49, 'F.', 'Meisel', 6, NULL),
(50, 'Hendrik', 'Mümken', 9, NULL),
(51, 'Christian', 'Tenkamp', 9, NULL),
(52, 'Andre', 'Tenkamp', 9, NULL),
(53, 'Dennis', 'Selting', 3, NULL),
(54, 'Manfred', 'Roßkamp', 3, NULL),
(57, 'Sebastian', 'Ebbing', 6, NULL),
(59, 'Michael', 'Tenk', 9, NULL),
(60, 'Benny', 'Ehning', 5, NULL),
(61, 'Sebastian', 'Tegelkamp', 3, NULL),
(62, 'Yannik', 'Hellenkamp', 5, NULL),
(63, 'Michael', 'Warmers', 7, NULL),
(64, 'Andy', 'Kösters', 7, NULL),
(65, 'Wansing', 'Michael', 7, NULL),
(66, 'Stefan', 'Nienhaus', 4, NULL),
(68, 'Christian', 'Gerwert', 4, NULL),
(69, 'Haddick', 'Bernd', 7, NULL),
(70, 'Christoph ', 'Ebbing', 7, NULL),
(71, 'Jan', 'Peters', 9, NULL),
(72, 'C.', 'Böttcher', 4, NULL),
(73, 'Dominik', 'Stengenhoff', 4, NULL),
(74, 'R.', 'Richhoff', 4, NULL),
(75, 'Sebastian', 'Kamperschroer', 6, NULL),
(76, 'Christoph', 'Lütjann', 7, NULL),
(77, 'Andreas', 'Elsing', 7, NULL),
(78, 'Dirk', 'Terhechte', 7, NULL),
(79, 'Christian', 'Thesing', 3, NULL),
(80, 'Markus', 'Diekmann', 7, NULL),
(81, 'Brian', 'Terfrüchte', 6, NULL),
(82, 'Steffen', 'Uphues', 3, NULL),
(83, 'Christian', 'Schlattmann', 3, NULL),
(84, 'A.', 'Kamp', 3, NULL),
(85, 'Marius', 'Schulze', 5, NULL),
(86, 'Tobias', 'Terlau', 4, NULL),
(87, 'Jonas', 'Heiming', 4, NULL),
(88, 'Thomas', 'Niewerth', 4, NULL),
(89, 'H.', 'Lübbering', 9, NULL),
(90, 'Christoph', 'Ebbing', 7, NULL),
(91, 'K.', 'Grevenbrock', 3, NULL),
(92, 'Eigentor', '', 3, NULL),
(93, 'Dominik', 'Sengenhorst', 4, NULL),
(94, 'D.', 'Holtkamp', 9, NULL),
(95, 'St,', 'Hoging', 9, NULL),
(96, '', '', 9, NULL),
(97, 'L.', 'Uphues', 3, NULL),
(98, 'St.', 'Hoging', 3, NULL),
(99, 'F.', 'Lütjann', 5, NULL),
(100, 'J.', 'Klöcker', 5, NULL),
(101, 'Jan', 'Meiners', 5, NULL),
(102, 'Stefan', 'Hüging', 3, NULL),
(103, 'Christian', 'Brengenberg', 3, NULL),
(104, 'Carsten', 'Deppe', 3, NULL),
(105, 'NiklasVorfeld', '', 6, NULL),
(106, 'Jan', 'Zimmermann', 6, NULL),
(107, 'Christian', 'Lüdiger', 6, NULL),
(108, 'Nikals', 'Vorfeld', 6, NULL),
(109, 'Jan', '', 9, NULL),
(110, 'J.', 'Zimmermann', 9, NULL),
(111, 'Niklas', 'Vorfeld', 6, NULL),
(112, 'Holtkamp', '', 3, NULL),
(113, 'Michael', 'Raida', 3, NULL),
(114, 'F.', 'Schulze', 3, NULL),
(115, 'Christoph', '', 7, NULL),
(116, 'Dennis', 'Schweers', 7, NULL),
(117, 'Ludger', 'Roßkamp', 3, NULL),
(118, 'Raphael', 'Löbbing', 4, NULL),
(119, 'Ludger', 'Börger', 7, NULL),
(120, 'Lukas', 'Brokamp', 3, NULL),
(122, 'Simon', 'Gravermann', 9, NULL),
(123, 'Sebastian', 'Trautmann', 4, NULL),
(124, 'Stefan', 'Bücker', 7, NULL),
(125, 'Michael', 'Elsing', 7, NULL),
(126, 'Christian', 'Elsing', 7, NULL),
(127, 'Bernd', 'Haddick', 7, NULL),
(128, 'Dave', 'Marnold', 4, NULL),
(129, 'Marco', 'Bröker', 4, NULL),
(130, 'Pascal', 'Schlottbohm', 6, NULL),
(131, 'Lukas', 'Robert', 3, NULL),
(132, 'Bernd', 'Lütke', 3, NULL),
(133, 'Florian', 'Lindenbuss', 7, NULL),
(134, 'Marcus', 'Büscher', 7, NULL),
(135, 'Denis', 'Schweers', 7, NULL),
(136, 'Robin', 'Ring', 5, NULL),
(137, 'Oliver', 'Nünning', 5, NULL),
(138, 'Jan', 'Ista', 5, NULL),
(139, 'Michael', 'Heistermann', 5, NULL),
(140, 'David', 'Schüring', 7, NULL),
(141, 'Eigentor', 'Klein', 7, NULL),
(142, 'Maher', 'El', 6, NULL),
(143, 'Leon', 'Eming', 7, NULL),
(144, 'Alexander', 'Sühling', 7, NULL),
(145, 'Max', 'Becker', 6, NULL),
(146, 'Michael', 'Linfert', 6, NULL),
(147, 'Dennis', 'Kamp', 6, NULL),
(148, 'Joscha', '', 9, NULL),
(149, 'D.', 'Urbanski', 6, NULL),
(150, 'J.', 'Rottstegge', 6, NULL),
(151, 'M.', 'Krüger', 6, NULL),
(152, 'Jannert', 'Patrick', 7, NULL),
(153, 'Elsing', 'Christian', 7, NULL),
(154, 'Büscher', 'Marcus', 7, NULL),
(155, 'Eming', 'Leon', 7, NULL),
(156, 'Terhechte', 'Dirk', 7, NULL),
(157, 'Niehues,', 'Jan', 8, NULL),
(158, 'Brokamp', 'Lukas', 3, NULL),
(159, 'Sicking', 'Benedikt', 3, NULL),
(160, 'Kamp', 'Aljoscha', 3, NULL),
(161, 'Trepmann', 'B.', 3, NULL),
(162, 'Herzog', 'Pascal', 6, NULL),
(164, 'Gerwert', 'Christian', 4, NULL),
(165, 'Hellenkamp', 'Christopher', 4, NULL),
(166, 'Stiene', 'Andre', 4, NULL),
(167, 'Deppe', 'Carsten', 3, NULL),
(168, 'Uphues', 'Steffen', 3, NULL),
(169, 'Suttrup', 'Achim', 4, NULL),
(170, 'Marnold', 'Dave', 4, NULL),
(171, 'Stienen', 'Michael', 4, NULL),
(172, 'Eming', 'Leon', 7, NULL),
(173, 'Alscher', 'Matthias', 7, NULL),
(174, 'Elsing', 'Christian', 7, NULL),
(175, 'Bücker', 'Stephan', 7, NULL),
(176, 'Mecking', 'Tristan', 4, NULL),
(177, 'Karmann', 'Christoph', 4, NULL),
(178, 'Schleking', 'Daniel', 4, NULL),
(179, 'Jonas', 'Klöcker', 5, NULL),
(180, 'Kevin', 'Juch', 5, NULL),
(181, 'Tim', 'Winking', 5, NULL),
(182, 'Felix', 'Lütjann', 5, NULL),
(183, 'Warmers', 'Michael', 7, NULL),
(184, 'Rene', 'Wellermann', 5, NULL),
(185, 'Scholz', 'I.', 3, NULL),
(187, 'Gesing', 'Hendrik', 7, NULL),
(188, 'Alexander', 'Schlüter', 5, NULL),
(189, 'Jan', 'Winking', 5, NULL),
(190, 'Nils', 'Sterken', 6, NULL),
(191, 'Simon', 'Schmitz', 6, NULL),
(192, 'Fabian', 'Brettschneider', 6, NULL),
(193, 'L.', 'Wendholt', 8, NULL),
(194, 'M.', 'Müggenborg', 8, NULL),
(195, 'Christian', 'Neumann', 8, NULL),
(196, 'Franz', 'Kremer', 9, NULL),
(197, 'Hendrik', 'Flinkert', 9, NULL),
(198, 'Andre', 'Warmers', 9, NULL),
(199, 'Tim', 'Riemenschneider', 5, NULL),
(200, 'Simon', 'Ladenberger', 5, NULL),
(201, 'Niclas', 'Schulten', 5, NULL),
(202, 'Nils', 'Lünenborg', 5, NULL),
(203, 'Jonas', 'Pöpping', 3, NULL),
(204, 'Carsten', 'Thieoff', 3, NULL),
(205, 'Marc', 'Schulz', 6, NULL),
(206, 'Lennart', 'Jägering', 6, NULL),
(207, 'Jens', 'Rottstegge', 8, NULL),
(208, 'C.', 'Ernst', 3, NULL),
(209, 'F.', 'Klose', 3, NULL),
(210, 'H.', 'Strump', 3, NULL),
(211, 'Chris', 'Karmann', 4, NULL),
(212, 'Benjamin', 'Seier', 4, NULL),
(213, 'Achim', 'Suttrup', 4, NULL),
(214, 'Börger', 'Ludger', 7, NULL),
(215, 'Lütjann', 'Christoph', 7, NULL),
(216, 'Philipp', 'Schulz', 9, NULL),
(217, 'Arjen', 'Torwesten', 9, NULL),
(218, 'Ivo', 'Schulz', 3, NULL),
(219, 'Stefan', 'Thesing', 3, NULL),
(220, 'Sebastian', 'Sieverding', 3, NULL),
(221, 'Fabian', 'Heisterkamp', 8, NULL),
(222, 'Johann', 'Heynck', 6, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_player_match`
--

CREATE TABLE IF NOT EXISTS `lm_player_match` (
`id` int(11) NOT NULL,
  `id_match` int(11) NOT NULL,
  `id_saison_player` int(11) NOT NULL,
  `hasRedCard` tinyint(1) DEFAULT NULL,
  `hasYellowCard` tinyint(1) DEFAULT NULL,
  `hasYellowRedCard` tinyint(1) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL
) AUTO_INCREMENT=550 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_player_match`
--

INSERT INTO `lm_player_match` (`id`, `id_match`, `id_saison_player`, `hasRedCard`, `hasYellowCard`, `hasYellowRedCard`, `goals`) VALUES
(13, 45, 9, 0, 0, 0, 1),
(14, 45, 10, 0, 0, 0, 1),
(15, 45, 11, 0, 0, 0, 2),
(16, 45, 12, 0, 0, 0, 1),
(17, 45, 13, 0, 0, 0, 2),
(18, 45, 14, 0, 0, 0, 2),
(19, 15, 15, 0, 0, 0, 2),
(20, 15, 14, 0, 0, 0, 2),
(21, 15, 16, 0, 0, 0, 1),
(22, 15, 17, 0, 0, 0, 2),
(23, 15, 18, 0, 0, 0, 4),
(24, 15, 19, 0, 0, 0, 1),
(25, 8, 20, 0, 0, 0, 2),
(26, 8, 21, 0, 0, 0, 1),
(27, 13, 22, 0, 0, 0, 1),
(28, 13, 23, 0, 0, 0, 2),
(29, 13, 24, 0, 0, 0, 1),
(30, 13, 25, 0, 0, 0, 1),
(31, 13, 20, 0, 0, 0, 1),
(32, 13, 26, 0, 0, 0, 3),
(34, 13, 30, 1, 0, 0, 0),
(36, 13, 31, 0, 0, 0, 2),
(37, 24, 32, 0, 0, 0, 1),
(38, 24, 33, 0, 0, 0, 1),
(39, 24, 15, 0, 0, 0, 1),
(40, 11, 20, 0, 0, 0, 5),
(41, 11, 34, 0, 0, 0, 1),
(42, 11, 35, 0, 0, 0, 2),
(43, 46, 36, 0, 0, 0, 1),
(44, 46, 26, 0, 0, 0, 2),
(45, 46, 33, 0, 0, 1, 0),
(46, 46, 37, 0, 0, 1, 0),
(47, 46, 38, 0, 0, 0, 1),
(48, 46, 39, 0, 0, 0, 1),
(49, 9, 40, 1, 0, 0, 0),
(50, 9, 20, 0, 0, 0, 2),
(51, 9, 41, 1, 0, 0, 0),
(52, 9, 42, 0, 0, 0, 1),
(53, 9, 16, 0, 0, 1, 1),
(54, 9, 15, 0, 0, 0, 1),
(55, 9, 11, 0, 0, 0, 1),
(56, 9, 44, 0, 0, 1, 0),
(57, 29, 35, 0, 0, 0, 1),
(58, 29, 21, 0, 0, 0, 1),
(59, 22, 45, 0, 0, 0, 2),
(60, 22, 46, 0, 0, 0, 1),
(61, 22, 33, 0, 0, 0, 2),
(62, 22, 21, 0, 0, 0, 2),
(63, 22, 19, 0, 0, 0, 1),
(64, 47, 47, 0, 0, 0, 1),
(65, 47, 31, 0, 0, 0, 2),
(66, 47, 48, 0, 0, 0, 2),
(67, 47, 35, 0, 0, 0, 2),
(68, 43, 48, 0, 0, 0, 1),
(69, 43, 31, 0, 0, 0, 1),
(70, 43, 49, 0, 0, 0, 1),
(71, 43, 18, 0, 0, 0, 1),
(72, 43, 21, 0, 0, 0, 1),
(73, 43, 19, 0, 0, 0, 1),
(74, 43, 50, 0, 0, 0, 1),
(75, 43, 51, 0, 0, 0, 3),
(76, 17, 14, 0, 0, 0, 2),
(77, 17, 15, 0, 0, 0, 3),
(78, 17, 32, 0, 0, 0, 1),
(79, 17, 33, 0, 0, 0, 2),
(80, 17, 39, 0, 0, 0, 1),
(81, 17, 54, 0, 0, 0, 1),
(82, 20, 13, 0, 0, 0, 3),
(83, 20, 14, 0, 0, 0, 3),
(84, 20, 36, 0, 0, 0, 3),
(85, 20, 56, 0, 0, 0, 1),
(86, 31, 14, 0, 0, 0, 1),
(87, 31, 57, 0, 0, 0, 1),
(88, 2, 21, 0, 0, 0, 1),
(89, 2, 18, 0, 0, 0, 1),
(90, 2, 19, 0, 0, 0, 1),
(91, 2, 58, 0, 0, 0, 1),
(92, 2, 50, 0, 0, 0, 2),
(93, 2, 59, 0, 0, 0, 1),
(94, 30, 60, 0, 0, 0, 1),
(95, 30, 61, 0, 0, 0, 1),
(96, 30, 62, 0, 0, 0, 1),
(97, 30, 20, 0, 0, 0, 1),
(98, 30, 63, 0, 0, 0, 1),
(99, 23, 33, 0, 0, 0, 2),
(100, 23, 45, 0, 0, 0, 1),
(101, 23, 25, 0, 0, 0, 1),
(103, 23, 65, 0, 0, 0, 1),
(104, 34, 66, 0, 0, 0, 2),
(105, 34, 62, 0, 0, 0, 2),
(106, 34, 67, 0, 0, 0, 2),
(107, 34, 61, 0, 0, 0, 1),
(108, 34, 68, 0, 0, 0, 2),
(109, 44, 68, 0, 0, 0, 1),
(110, 44, 23, 0, 0, 0, 1),
(111, 44, 41, 0, 0, 0, 1),
(112, 44, 69, 0, 0, 0, 1),
(113, 10, 70, 0, 0, 0, 1),
(114, 10, 69, 0, 0, 0, 1),
(115, 10, 71, 0, 0, 0, 1),
(116, 10, 72, 0, 0, 0, 1),
(117, 4, 73, 0, 0, 0, 2),
(118, 4, 35, 0, 0, 0, 1),
(119, 4, 74, 0, 0, 0, 1),
(120, 4, 75, 0, 0, 0, 1),
(121, 16, 42, 0, 0, 0, 1),
(122, 16, 34, 0, 0, 0, 1),
(123, 16, 20, 0, 0, 0, 1),
(124, 16, 65, 0, 0, 0, 1),
(125, 4, 76, 0, 0, 0, 2),
(126, 18, 13, 0, 0, 0, 1),
(127, 18, 42, 0, 0, 0, 1),
(128, 18, 77, 0, 0, 0, 1),
(129, 18, 74, 0, 0, 0, 1),
(130, 18, 78, 0, 0, 0, 1),
(131, 1, 58, 0, 0, 0, 1),
(132, 1, 19, 0, 0, 0, 2),
(133, 1, 18, 0, 0, 0, 1),
(134, 1, 20, 0, 0, 0, 1),
(135, 25, 72, 0, 0, 0, 1),
(136, 25, 39, 0, 0, 0, 1),
(137, 3, 21, 0, 0, 0, 1),
(138, 3, 19, 0, 0, 0, 1),
(139, 3, 37, 0, 0, 0, 1),
(140, 3, 46, 0, 0, 0, 1),
(141, 3, 33, 0, 0, 0, 2),
(142, 3, 79, 0, 0, 0, 1),
(143, 6, 18, 0, 0, 0, 1),
(144, 6, 76, 0, 0, 0, 2),
(145, 6, 80, 0, 0, 0, 2),
(146, 6, 81, 0, 0, 0, 1),
(147, 6, 50, 0, 0, 0, 1),
(148, 6, 56, 0, 0, 0, 2),
(149, 6, 26, 0, 0, 0, 3),
(150, 49, 147, 0, 0, 0, 1),
(151, 49, 89, 0, 0, 0, 1),
(152, 49, 148, 0, 0, 0, 1),
(153, 57, 99, 0, 0, 0, 3),
(154, 57, 102, 0, 0, 0, 1),
(155, 57, 94, 0, 0, 0, 1),
(156, 57, 149, 0, 0, 0, 1),
(157, 57, 150, 0, 0, 0, 3),
(158, 57, 151, 0, 0, 0, 1),
(159, 57, 152, 0, 0, 0, 1),
(160, 57, 146, 0, 0, 0, 1),
(161, 57, 142, 0, 0, 0, 2),
(162, 68, 153, 0, 0, 0, 1),
(163, 68, 127, 0, 0, 0, 1),
(164, 68, 91, 0, 0, 0, 2),
(165, 77, 138, 0, 0, 0, 1),
(166, 77, 142, 0, 0, 0, 4),
(167, 77, 128, 0, 0, 0, 1),
(168, 77, 129, 0, 0, 0, 1),
(169, 77, 130, 0, 0, 0, 1),
(170, 77, 134, 0, 0, 0, 2),
(171, 48, 89, 0, 0, 0, 2),
(172, 48, 147, 0, 0, 0, 2),
(173, 48, 154, 0, 0, 0, 1),
(174, 48, 83, 0, 0, 0, 1),
(175, 48, 155, 0, 0, 0, 1),
(176, 48, 156, 0, 0, 0, 1),
(177, 48, 96, 0, 0, 0, 1),
(178, 48, 93, 0, 0, 0, 1),
(179, 48, 157, 0, 0, 0, 1),
(180, 59, 150, 0, 0, 0, 1),
(181, 59, 99, 0, 0, 0, 1),
(182, 59, 114, 0, 0, 0, 2),
(183, 59, 112, 0, 0, 0, 1),
(184, 59, 107, 0, 0, 0, 1),
(185, 73, 143, 0, 0, 0, 1),
(186, 73, 142, 0, 0, 0, 1),
(187, 73, 147, 0, 0, 0, 1),
(188, 73, 84, 0, 0, 0, 2),
(189, 73, 89, 0, 0, 0, 2),
(193, 73, 161, 0, 0, 0, 2),
(195, 73, 162, 0, 0, 0, 1),
(196, 75, 146, 0, 0, 0, 1),
(197, 75, 136, 0, 0, 0, 2),
(198, 75, 138, 0, 0, 0, 1),
(199, 75, 140, 0, 0, 0, 1),
(200, 75, 115, 0, 0, 0, 1),
(201, 75, 163, 0, 0, 0, 1),
(202, 75, 164, 0, 0, 0, 1),
(203, 75, 107, 0, 0, 0, 1),
(204, 64, 123, 0, 0, 0, 1),
(205, 64, 94, 0, 0, 0, 2),
(206, 64, 99, 0, 0, 0, 1),
(207, 70, 132, 0, 0, 0, 1),
(208, 70, 135, 0, 0, 0, 1),
(209, 70, 114, 0, 0, 0, 1),
(210, 70, 165, 0, 0, 0, 1),
(211, 58, 148, 0, 0, 0, 2),
(212, 58, 165, 0, 0, 0, 1),
(213, 58, 84, 0, 0, 0, 1),
(214, 58, 90, 0, 0, 0, 1),
(215, 58, 166, 0, 0, 0, 1),
(216, 58, 167, 0, 0, 0, 1),
(217, 58, 168, 0, 0, 0, 1),
(218, 67, 116, 0, 0, 0, 1),
(219, 67, 117, 0, 0, 0, 2),
(220, 67, 123, 0, 0, 0, 2),
(221, 67, 118, 0, 0, 0, 1),
(223, 67, 143, 0, 0, 0, 2),
(224, 67, 136, 0, 0, 0, 1),
(226, 65, 114, 0, 0, 0, 1),
(227, 65, 123, 0, 0, 0, 2),
(228, 65, 171, 0, 0, 0, 1),
(234, 67, 175, 0, 0, 0, 2),
(235, 67, 174, 0, 0, 0, 1),
(236, 71, 130, 0, 0, 0, 2),
(237, 71, 132, 0, 0, 0, 1),
(238, 71, 123, 0, 0, 0, 1),
(240, 73, 176, 0, 0, 0, 1),
(241, 55, 94, 0, 0, 0, 2),
(242, 55, 99, 0, 0, 0, 2),
(243, 55, 102, 0, 0, 0, 1),
(244, 55, 103, 0, 0, 0, 1),
(245, 55, 149, 0, 0, 0, 1),
(246, 55, 122, 0, 0, 0, 1),
(247, 72, 130, 0, 0, 0, 3),
(248, 74, 146, 0, 0, 0, 0),
(249, 54, 96, 0, 0, 0, 1),
(250, 54, 102, 0, 0, 0, 1),
(251, 54, 99, 0, 0, 0, 1),
(252, 54, 115, 0, 0, 0, 1),
(253, 52, 84, 0, 0, 0, 1),
(254, 52, 91, 0, 0, 0, 1),
(255, 52, 166, 0, 0, 0, 2),
(256, 52, 147, 0, 0, 0, 2),
(257, 52, 167, 0, 0, 0, 1),
(258, 52, 168, 0, 0, 0, 3),
(259, 52, 177, 0, 0, 0, 0),
(260, 53, 150, 0, 0, 0, 1),
(261, 53, 99, 0, 0, 0, 1),
(262, 53, 147, 0, 0, 0, 1),
(263, 53, 178, 0, 0, 0, 1),
(264, 60, 179, 0, 0, 0, 0),
(265, 51, 168, 0, 0, 0, 1),
(266, 51, 161, 0, 0, 0, 1),
(267, 51, 89, 0, 0, 0, 1),
(268, 51, 180, 0, 0, 0, 1),
(269, 51, 181, 0, 0, 0, 1),
(270, 51, 129, 0, 0, 0, 1),
(271, 51, 182, 0, 0, 0, 1),
(272, 50, 183, 0, 0, 0, 2),
(273, 50, 84, 0, 0, 0, 1),
(274, 50, 171, 0, 0, 0, 1),
(275, 63, 147, 0, 0, 0, 1),
(276, 63, 167, 0, 0, 0, 2),
(277, 63, 161, 0, 0, 0, 2),
(278, 63, 89, 0, 0, 0, 1),
(279, 63, 123, 0, 0, 0, 1),
(280, 69, 184, 0, 0, 0, 1),
(281, 69, 99, 0, 0, 0, 1),
(282, 69, 185, 0, 0, 0, 1),
(283, 103, 283, 0, 0, 0, 1),
(284, 103, 190, 0, 0, 0, 1),
(285, 103, 191, 0, 0, 0, 1),
(286, 103, 187, 0, 0, 0, 2),
(292, 79, 188, 0, 0, 0, 1),
(293, 79, 187, 0, 0, 0, 1),
(294, 79, 191, 0, 0, 0, 2),
(295, 79, 186, 0, 0, 0, 1),
(296, 79, 231, 0, 0, 0, 1),
(297, 79, 240, 0, 0, 0, 1),
(299, 93, 243, 0, 0, 0, 1),
(300, 93, 247, 0, 0, 0, 3),
(301, 93, 250, 0, 0, 0, 2),
(302, 93, 251, 0, 0, 0, 1),
(303, 93, 287, 0, 0, 0, 1),
(304, 102, 288, 0, 0, 0, 4),
(305, 102, 254, 0, 0, 0, 2),
(306, 102, 289, 0, 0, 0, 2),
(307, 102, 290, 0, 0, 0, 1),
(308, 102, 260, 0, 0, 0, 1),
(309, 102, 291, 0, 0, 0, 1),
(314, 98, 187, 0, 0, 0, 1),
(315, 98, 295, 0, 0, 0, 1),
(316, 98, 203, 0, 0, 0, 1),
(317, 98, 191, 0, 0, 0, 1),
(318, 98, 186, 0, 0, 0, 1),
(319, 98, 291, 0, 0, 0, 1),
(320, 98, 259, 0, 0, 0, 1),
(321, 98, 296, 0, 0, 0, 1),
(322, 96, 291, 0, 0, 0, 1),
(323, 96, 288, 0, 0, 0, 1),
(324, 96, 297, 0, 0, 0, 1),
(325, 96, 298, 0, 0, 0, 1),
(326, 96, 242, 0, 0, 0, 2),
(327, 96, 250, 0, 0, 0, 1),
(332, 91, 291, 0, 0, 0, 1),
(333, 91, 288, 0, 0, 0, 1),
(334, 91, 265, 0, 0, 0, 1),
(335, 91, 232, 0, 0, 0, 1),
(336, 91, 300, 0, 0, 0, 1),
(337, 91, 235, 0, 0, 0, 1),
(338, 92, 229, 0, 0, 0, 2),
(339, 92, 239, 0, 0, 0, 2),
(340, 92, 235, 0, 0, 0, 1),
(341, 92, 232, 0, 0, 0, 2),
(342, 92, 301, 0, 0, 0, 1),
(343, 92, 302, 0, 0, 0, 1),
(344, 88, 187, 0, 0, 0, 1),
(345, 88, 229, 0, 0, 0, 1),
(346, 88, 235, 0, 0, 0, 1),
(347, 88, 227, 0, 0, 0, 1),
(348, 88, 300, 0, 0, 0, 1),
(349, 88, 303, 0, 0, 0, 1),
(355, 97, 250, 0, 0, 0, 5),
(356, 97, 247, 0, 0, 0, 2),
(357, 97, 243, 0, 0, 0, 1),
(358, 97, 306, 0, 0, 0, 1),
(359, 97, 274, 0, 0, 0, 1),
(360, 97, 307, 0, 0, 0, 0),
(361, 100, 288, 0, 0, 0, 1),
(362, 100, 302, 0, 0, 0, 2),
(363, 100, 237, 0, 0, 0, 1),
(364, 105, 267, 0, 0, 0, 1),
(365, 107, 254, 0, 0, 0, 1),
(366, 107, 291, 0, 0, 0, 1),
(367, 107, 265, 0, 0, 0, 1),
(368, 107, 308, 0, 0, 0, 1),
(369, 107, 260, 1, 0, 0, 0),
(370, 90, 247, 0, 0, 0, 2),
(371, 90, 306, 0, 0, 0, 1),
(372, 90, 302, 0, 0, 0, 1),
(373, 90, 235, 0, 0, 0, 2),
(374, 81, 291, 0, 0, 0, 2),
(375, 81, 299, 0, 0, 0, 1),
(376, 81, 309, 0, 0, 0, 1),
(377, 106, 306, 0, 0, 0, 2),
(378, 106, 310, 0, 0, 0, 1),
(379, 106, 311, 0, 0, 0, 1),
(380, 95, 312, 0, 0, 0, 1),
(381, 95, 242, 0, 0, 0, 1),
(382, 106, 270, 0, 0, 0, 1),
(383, 106, 313, 0, 0, 0, 1),
(384, 95, 235, 0, 0, 0, 1),
(385, 95, 300, 0, 0, 0, 1),
(386, 80, 186, 0, 0, 1, 2),
(387, 80, 190, 0, 0, 0, 1),
(388, 80, 314, 0, 0, 0, 1),
(389, 80, 315, 1, 0, 0, 0),
(390, 80, 316, 0, 0, 0, 1),
(391, 80, 250, 0, 0, 0, 2),
(392, 101, 312, 0, 0, 0, 1),
(393, 101, 306, 0, 0, 0, 1),
(394, 101, 250, 0, 0, 0, 0),
(395, 178, 434, 0, 0, 0, 3),
(396, 178, 435, 0, 0, 0, 1),
(397, 178, 436, 0, 0, 0, 2),
(399, 178, 438, 0, 0, 0, 1),
(400, 178, 439, 0, 0, 0, 1),
(401, 152, 440, 0, 0, 0, 1),
(402, 152, 441, 0, 0, 0, 1),
(403, 152, 442, 0, 0, 0, 2),
(404, 152, 443, 0, 0, 0, 1),
(405, 152, 444, 0, 0, 0, 2),
(406, 152, 389, 0, 0, 0, 1),
(407, 156, 446, 0, 0, 0, 1),
(408, 156, 447, 0, 0, 0, 1),
(409, 156, 448, 0, 0, 0, 1),
(410, 156, 449, 0, 0, 0, 1),
(411, 156, 450, 0, 0, 0, 1),
(412, 156, 442, 0, 0, 0, 2),
(413, 159, 451, 0, 0, 0, 1),
(414, 159, 452, 0, 0, 0, 1),
(415, 159, 453, 0, 0, 0, 1),
(416, 159, 454, 0, 0, 0, 2),
(417, 159, 455, 0, 0, 0, 1),
(418, 159, 456, 0, 0, 0, 1),
(419, 159, 457, 0, 0, 0, 1),
(420, 160, 458, 0, 0, 0, 1),
(421, 160, 459, 0, 0, 0, 3),
(422, 160, 451, 0, 0, 0, 2),
(423, 160, 460, 0, 0, 0, 3),
(424, 160, 446, 0, 0, 0, 1),
(425, 188, 322, 0, 0, 0, 2),
(426, 188, 332, 0, 0, 0, 1),
(427, 188, 461, 0, 0, 0, 4),
(428, 188, 334, 0, 0, 0, 1),
(429, 188, 462, 0, 0, 0, 2),
(430, 166, 322, 0, 0, 0, 1),
(431, 166, 324, 0, 0, 0, 1),
(432, 166, 463, 0, 0, 0, 2),
(433, 166, 464, 0, 0, 0, 1),
(434, 171, 438, 0, 0, 0, 1),
(435, 171, 465, 0, 0, 0, 2),
(436, 157, 320, 0, 0, 0, 1),
(437, 157, 461, 0, 0, 0, 1),
(438, 157, 466, 0, 0, 0, 1),
(439, 153, 455, 0, 0, 0, 2),
(440, 153, 418, 0, 0, 0, 1),
(441, 153, 434, 0, 0, 0, 1),
(442, 153, 467, 0, 0, 0, 1),
(443, 153, 450, 0, 0, 0, 1),
(444, 171, 444, 0, 0, 0, 1),
(445, 171, 456, 0, 0, 0, 1),
(446, 190, 454, 0, 0, 0, 5),
(447, 190, 455, 0, 0, 0, 2),
(448, 190, 434, 0, 0, 0, 1),
(449, 190, 469, 0, 0, 0, 1),
(450, 178, 454, 0, 0, 0, 1),
(451, 176, 455, 0, 0, 0, 2),
(453, 176, 470, 0, 0, 0, 1),
(454, 176, 464, 0, 0, 0, 1),
(455, 176, 461, 0, 0, 0, 1),
(457, 176, 456, 0, 0, 0, 1),
(458, 164, 322, 0, 0, 0, 1),
(459, 164, 461, 0, 0, 0, 2),
(460, 164, 328, 0, 0, 0, 1),
(461, 164, 471, 0, 0, 0, 1),
(462, 164, 472, 0, 0, 0, 2),
(463, 164, 473, 0, 0, 0, 1),
(464, 158, 340, 0, 0, 0, 1),
(465, 158, 473, 0, 0, 0, 1),
(466, 158, 390, 0, 0, 0, 1),
(467, 172, 474, 0, 0, 0, 1),
(468, 172, 475, 0, 0, 0, 1),
(469, 172, 476, 0, 0, 0, 1),
(470, 172, 477, 0, 0, 0, 1),
(471, 182, 319, 0, 0, 0, 1),
(472, 182, 461, 0, 0, 0, 1),
(473, 165, 461, 0, 0, 0, 1),
(474, 165, 332, 0, 0, 0, 1),
(475, 165, 454, 0, 0, 0, 1),
(476, 154, 357, 0, 0, 0, 2),
(477, 154, 361, 0, 0, 0, 1),
(478, 154, 360, 0, 0, 0, 2),
(479, 154, 476, 0, 0, 0, 1),
(480, 154, 478, 0, 0, 0, 1),
(481, 187, 479, 0, 0, 0, 1),
(482, 187, 480, 0, 0, 0, 1),
(483, 187, 481, 0, 0, 0, 1),
(484, 187, 339, 0, 0, 0, 1),
(485, 187, 341, 0, 0, 0, 4),
(486, 163, 322, 0, 0, 0, 1),
(487, 163, 466, 0, 0, 0, 1),
(488, 163, 482, 0, 0, 0, 1),
(489, 167, 464, 0, 0, 0, 1),
(490, 167, 322, 0, 0, 0, 1),
(491, 167, 461, 0, 0, 0, 2),
(492, 167, 332, 0, 0, 0, 1),
(493, 167, 428, 0, 0, 0, 2),
(494, 167, 483, 0, 0, 0, 1),
(495, 167, 484, 0, 0, 0, 1),
(496, 167, 485, 0, 0, 0, 1),
(497, 168, 387, 0, 0, 0, 1),
(498, 168, 385, 0, 0, 0, 2),
(499, 168, 394, 0, 0, 0, 1),
(500, 168, 360, 0, 0, 0, 1),
(501, 168, 358, 0, 0, 0, 1),
(502, 168, 486, 0, 0, 0, 1),
(503, 168, 357, 0, 0, 0, 2),
(504, 168, 361, 1, 0, 0, 1),
(505, 168, 372, 0, 0, 0, 1),
(506, 168, 487, 0, 0, 0, 1),
(507, 168, 362, 0, 0, 0, 1),
(509, 169, 394, 0, 0, 0, 3),
(510, 169, 395, 0, 0, 0, 1),
(511, 169, 387, 0, 0, 0, 2),
(512, 169, 488, 0, 0, 0, 1),
(513, 169, 489, 0, 0, 0, 1),
(514, 180, 490, 0, 0, 0, 1),
(515, 180, 360, 0, 0, 0, 1),
(516, 180, 491, 0, 0, 0, 2),
(517, 180, 374, 0, 0, 0, 1),
(518, 180, 371, 0, 0, 0, 1),
(519, 180, 492, 0, 0, 0, 1),
(520, 180, 493, 0, 0, 0, 1),
(521, 150, 362, 0, 0, 0, 2),
(522, 150, 358, 0, 0, 0, 1),
(523, 150, 360, 0, 0, 0, 2),
(524, 150, 357, 0, 0, 0, 2),
(525, 150, 494, 0, 0, 0, 1),
(526, 150, 495, 0, 0, 0, 1),
(527, 150, 496, 0, 0, 0, 1),
(528, 150, 345, 0, 0, 0, 1),
(529, 179, 455, 0, 0, 0, 2),
(530, 179, 434, 0, 0, 0, 2),
(531, 179, 470, 0, 0, 0, 2),
(532, 179, 497, 0, 0, 0, 1),
(533, 179, 498, 0, 0, 0, 1),
(534, 179, 469, 0, 0, 0, 1),
(535, 189, 422, 0, 0, 0, 1),
(536, 189, 499, 0, 0, 0, 1),
(537, 189, 500, 0, 0, 0, 1),
(538, 189, 429, 0, 0, 0, 2),
(539, 189, 428, 0, 0, 0, 2),
(540, 189, 390, 0, 0, 0, 1),
(541, 155, 357, 0, 0, 0, 2),
(542, 155, 358, 0, 0, 0, 1),
(543, 155, 501, 0, 0, 0, 1),
(544, 155, 502, 0, 0, 0, 1),
(545, 174, 358, 0, 0, 0, 1),
(546, 174, 503, 0, 0, 0, 1),
(547, 174, 363, 0, 0, 0, 0),
(548, 183, 504, 0, 0, 0, 1),
(549, 183, 505, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `lm_play_table`
--
CREATE TABLE IF NOT EXISTS `lm_play_table` (
`id_saison` int(11)
,`id` int(11)
,`name` varchar(255)
,`icon` varchar(45)
,`homepage` varchar(45)
,`match_count` bigint(21)
,`shoot` decimal(33,0)
,`got` decimal(33,0)
,`wins` bigint(21)
,`stand_off` bigint(21)
);
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_saison`
--

CREATE TABLE IF NOT EXISTS `lm_saison` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `isDefault` tinyint(1) DEFAULT NULL
) AUTO_INCREMENT=5 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_saison`
--

INSERT INTO `lm_saison` (`id`, `name`, `isDefault`) VALUES
(1, '2012', 0),
(2, '2013', 0),
(3, '2014', 0),
(4, '2015', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_saison_player`
--

CREATE TABLE IF NOT EXISTS `lm_saison_player` (
`id` int(11) NOT NULL,
  `id_saison_team` int(11) NOT NULL,
  `id_player` int(11) NOT NULL
) AUTO_INCREMENT=506 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_saison_player`
--

INSERT INTO `lm_saison_player` (`id`, `id_saison_team`, `id_player`) VALUES
(6, 1, 9),
(9, 7, 12),
(10, 7, 13),
(11, 3, 14),
(12, 3, 15),
(13, 3, 16),
(14, 3, 17),
(15, 3, 18),
(16, 3, 19),
(17, 3, 20),
(18, 1, 21),
(19, 1, 22),
(20, 2, 23),
(21, 1, 24),
(22, 2, 25),
(23, 2, 26),
(24, 2, 27),
(25, 2, 28),
(26, 7, 29),
(30, 7, 33),
(31, 7, 34),
(32, 4, 35),
(33, 4, 36),
(34, 2, 37),
(35, 5, 38),
(36, 7, 39),
(37, 4, 40),
(38, 4, 41),
(39, 4, 42),
(40, 2, 43),
(41, 2, 44),
(42, 3, 45),
(44, 2, 47),
(45, 4, 48),
(46, 4, 49),
(47, 7, 50),
(48, 7, 51),
(49, 7, 52),
(50, 1, 53),
(51, 1, 54),
(54, 4, 57),
(56, 7, 59),
(57, 3, 60),
(58, 1, 61),
(59, 3, 62),
(60, 5, 63),
(61, 5, 64),
(62, 5, 65),
(63, 2, 66),
(65, 2, 68),
(66, 5, 69),
(67, 5, 70),
(68, 7, 71),
(69, 2, 72),
(70, 2, 73),
(71, 2, 74),
(72, 4, 75),
(73, 5, 76),
(74, 5, 77),
(75, 5, 78),
(76, 1, 79),
(77, 3, 47),
(78, 5, 80),
(79, 4, 81),
(80, 1, 82),
(81, 1, 83),
(82, 8, 24),
(83, 8, 83),
(84, 8, 79),
(85, 8, 53),
(86, 8, 21),
(87, 8, 54),
(88, 8, 9),
(89, 8, 61),
(90, 8, 82),
(91, 8, 22),
(92, 9, 72),
(93, 9, 68),
(94, 9, 37),
(95, 9, 73),
(96, 9, 27),
(97, 9, 47),
(98, 9, 28),
(99, 9, 23),
(100, 9, 43),
(101, 9, 25),
(102, 9, 74),
(103, 9, 26),
(104, 9, 44),
(105, 9, 66),
(106, 10, 20),
(107, 10, 60),
(108, 10, 16),
(109, 10, 19),
(110, 10, 14),
(111, 10, 17),
(112, 10, 45),
(113, 10, 15),
(114, 10, 18),
(115, 10, 62),
(116, 11, 41),
(117, 11, 48),
(118, 11, 42),
(119, 11, 81),
(120, 11, 49),
(121, 11, 35),
(122, 11, 36),
(123, 11, 40),
(124, 11, 57),
(125, 11, 75),
(126, 12, 77),
(127, 12, 64),
(128, 12, 76),
(129, 12, 78),
(130, 12, 38),
(131, 12, 70),
(132, 12, 69),
(133, 12, 80),
(134, 12, 63),
(135, 12, 65),
(136, 13, 52),
(137, 13, 51),
(138, 13, 34),
(139, 13, 50),
(140, 13, 13),
(141, 13, 71),
(142, 13, 29),
(143, 13, 59),
(144, 13, 12),
(145, 13, 33),
(146, 13, 39),
(147, 8, 84),
(148, 10, 85),
(149, 9, 86),
(150, 9, 87),
(151, 9, 88),
(152, 13, 89),
(153, 12, 90),
(154, 8, 91),
(155, 8, 92),
(156, 9, 93),
(157, 9, 44),
(158, 13, 94),
(159, 13, 95),
(160, 13, 96),
(161, 8, 97),
(162, 8, 98),
(163, 10, 99),
(164, 10, 100),
(165, 10, 101),
(166, 8, 102),
(167, 8, 103),
(168, 8, 104),
(169, 11, 105),
(170, 11, 106),
(171, 11, 107),
(172, 11, 108),
(173, 13, 109),
(174, 13, 110),
(175, 11, 111),
(176, 8, 112),
(177, 8, 96),
(178, 8, 113),
(179, 10, 96),
(180, 8, 114),
(181, 12, 115),
(182, 12, 116),
(183, 8, 117),
(184, 9, 118),
(185, 12, 119),
(186, 14, 84),
(187, 14, 24),
(188, 14, 104),
(189, 14, 83),
(190, 14, 103),
(191, 14, 79),
(192, 14, 53),
(193, 14, 92),
(194, 14, 114),
(195, 14, 112),
(196, 14, 91),
(197, 14, 21),
(198, 14, 97),
(199, 14, 117),
(200, 14, 54),
(201, 14, 113),
(202, 14, 9),
(203, 14, 61),
(205, 14, 102),
(206, 14, 82),
(207, 14, 22),
(208, 15, 72),
(209, 15, 68),
(210, 15, 37),
(211, 15, 73),
(212, 15, 93),
(213, 15, 87),
(214, 15, 27),
(215, 15, 47),
(216, 15, 23),
(217, 15, 28),
(218, 15, 43),
(219, 15, 25),
(220, 15, 74),
(221, 15, 118),
(222, 15, 26),
(223, 15, 44),
(224, 15, 66),
(225, 15, 88),
(226, 15, 86),
(227, 16, 20),
(228, 16, 60),
(229, 16, 16),
(230, 16, 19),
(231, 16, 99),
(232, 16, 14),
(233, 16, 100),
(234, 16, 101),
(235, 16, 85),
(236, 16, 17),
(237, 16, 45),
(238, 16, 15),
(239, 16, 18),
(240, 16, 62),
(241, 17, 41),
(242, 17, 48),
(243, 17, 42),
(244, 17, 81),
(245, 17, 107),
(246, 17, 49),
(247, 17, 35),
(248, 17, 106),
(249, 17, 108),
(250, 17, 36),
(251, 17, 40),
(252, 17, 75),
(253, 17, 57),
(254, 18, 77),
(255, 18, 64),
(256, 18, 115),
(257, 18, 90),
(258, 18, 76),
(259, 18, 116),
(260, 18, 78),
(261, 18, 38),
(262, 18, 69),
(263, 18, 119),
(264, 18, 80),
(265, 18, 63),
(266, 18, 65),
(267, 19, 52),
(268, 19, 51),
(269, 19, 94),
(270, 19, 34),
(271, 19, 89),
(272, 19, 50),
(273, 19, 110),
(274, 19, 13),
(276, 19, 109),
(277, 19, 29),
(278, 19, 59),
(279, 19, 95),
(280, 19, 12),
(281, 19, 33),
(282, 19, 39),
(283, 14, 120),
(285, 19, 122),
(286, 15, 123),
(287, 17, 92),
(288, 18, 124),
(289, 18, 125),
(290, 18, 126),
(291, 18, 127),
(292, 15, 128),
(293, 15, 129),
(294, 17, 130),
(295, 14, 131),
(296, 14, 132),
(297, 18, 133),
(298, 18, 134),
(299, 18, 135),
(300, 16, 136),
(301, 16, 137),
(302, 16, 138),
(303, 16, 139),
(304, 18, 140),
(305, 18, 141),
(306, 17, 142),
(307, 17, 96),
(308, 18, 143),
(309, 18, 144),
(310, 17, 145),
(311, 17, 146),
(312, 17, 147),
(313, 19, 148),
(314, 17, 149),
(315, 17, 150),
(316, 17, 151),
(317, 22, 20),
(318, 22, 60),
(319, 22, 16),
(320, 22, 19),
(321, 22, 99),
(322, 22, 14),
(323, 22, 100),
(324, 22, 138),
(325, 22, 101),
(326, 22, 17),
(327, 22, 85),
(328, 22, 45),
(329, 22, 15),
(330, 22, 139),
(331, 22, 137),
(332, 22, 136),
(333, 22, 18),
(334, 22, 62),
(335, 21, 72),
(336, 21, 68),
(337, 21, 37),
(338, 21, 128),
(339, 21, 93),
(340, 21, 73),
(341, 21, 87),
(342, 21, 27),
(343, 21, 129),
(344, 21, 47),
(345, 21, 23),
(346, 21, 28),
(347, 21, 43),
(348, 21, 25),
(349, 21, 74),
(350, 21, 118),
(351, 21, 26),
(352, 21, 44),
(353, 21, 123),
(354, 21, 66),
(355, 21, 88),
(356, 21, 86),
(357, 20, 84),
(358, 20, 24),
(359, 20, 132),
(360, 20, 104),
(361, 20, 103),
(362, 20, 79),
(363, 20, 83),
(364, 20, 53),
(365, 20, 114),
(366, 20, 112),
(367, 20, 91),
(368, 20, 21),
(369, 20, 97),
(370, 20, 117),
(371, 20, 131),
(372, 20, 120),
(373, 20, 54),
(374, 20, 113),
(375, 20, 9),
(376, 20, 61),
(377, 20, 98),
(378, 20, 102),
(379, 20, 82),
(380, 20, 22),
(381, 23, 48),
(382, 23, 42),
(383, 23, 107),
(384, 23, 149),
(385, 23, 147),
(386, 23, 49),
(387, 23, 35),
(388, 23, 106),
(389, 23, 151),
(390, 23, 142),
(391, 23, 145),
(392, 23, 146),
(393, 23, 130),
(394, 23, 36),
(395, 23, 40),
(396, 23, 75),
(397, 23, 57),
(398, 24, 144),
(399, 24, 77),
(400, 24, 64),
(401, 24, 127),
(402, 24, 126),
(403, 24, 90),
(404, 24, 76),
(405, 24, 140),
(406, 24, 135),
(407, 24, 116),
(408, 24, 78),
(409, 24, 38),
(410, 24, 133),
(411, 24, 143),
(412, 24, 119),
(413, 24, 134),
(414, 24, 80),
(415, 24, 125),
(416, 24, 63),
(417, 24, 124),
(418, 24, 65),
(419, 26, 52),
(420, 26, 51),
(421, 26, 94),
(422, 26, 34),
(423, 26, 89),
(424, 26, 50),
(425, 26, 110),
(426, 26, 13),
(427, 26, 29),
(428, 26, 59),
(429, 26, 122),
(430, 26, 95),
(431, 26, 12),
(432, 26, 33),
(433, 26, 39),
(434, 24, 152),
(435, 24, 153),
(436, 24, 154),
(437, 24, 155),
(438, 24, 156),
(439, 25, 157),
(440, 20, 158),
(441, 20, 159),
(442, 20, 160),
(443, 20, 161),
(444, 23, 162),
(446, 21, 164),
(447, 21, 165),
(448, 21, 166),
(449, 20, 167),
(450, 20, 168),
(451, 21, 169),
(452, 21, 170),
(453, 21, 171),
(454, 24, 172),
(455, 24, 173),
(456, 24, 174),
(457, 24, 175),
(458, 21, 176),
(459, 21, 177),
(460, 21, 178),
(461, 22, 179),
(462, 22, 180),
(463, 22, 181),
(464, 22, 182),
(465, 24, 183),
(466, 22, 184),
(467, 20, 185),
(469, 24, 187),
(470, 24, 69),
(471, 22, 188),
(472, 22, 189),
(473, 23, 190),
(474, 23, 191),
(475, 23, 192),
(476, 25, 193),
(477, 25, 194),
(478, 25, 195),
(479, 26, 196),
(480, 26, 197),
(481, 26, 198),
(482, 22, 199),
(483, 22, 200),
(484, 22, 201),
(485, 22, 202),
(486, 20, 203),
(487, 20, 204),
(488, 23, 205),
(489, 23, 206),
(490, 25, 207),
(491, 20, 208),
(492, 20, 209),
(493, 20, 210),
(494, 21, 211),
(495, 21, 212),
(496, 21, 213),
(497, 24, 214),
(498, 24, 215),
(499, 26, 216),
(500, 26, 217),
(501, 20, 218),
(502, 20, 219),
(503, 20, 220),
(504, 25, 221),
(505, 23, 222);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_saison_team`
--

CREATE TABLE IF NOT EXISTS `lm_saison_team` (
`id` int(11) NOT NULL,
  `id_team` int(11) NOT NULL,
  `id_saison` int(11) NOT NULL
) AUTO_INCREMENT=27 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_saison_team`
--

INSERT INTO `lm_saison_team` (`id`, `id_team`, `id_saison`) VALUES
(1, 3, 1),
(8, 3, 2),
(14, 3, 3),
(20, 3, 4),
(2, 4, 1),
(9, 4, 2),
(15, 4, 3),
(21, 4, 4),
(3, 5, 1),
(10, 5, 2),
(16, 5, 3),
(22, 5, 4),
(4, 6, 1),
(11, 6, 2),
(17, 6, 3),
(23, 6, 4),
(5, 7, 1),
(12, 7, 2),
(18, 7, 3),
(24, 7, 4),
(25, 8, 4),
(7, 9, 1),
(13, 9, 2),
(19, 9, 3),
(26, 9, 4);

-- --------------------------------------------------------

--
-- Stellvertreter-Struktur des Views `lm_scorer`
--
CREATE TABLE IF NOT EXISTS `lm_scorer` (
`id` int(11)
,`id_team` int(11)
,`id_saison` int(11)
,`firstname` varchar(255)
,`lastname` varchar(255)
,`team_name` varchar(255)
,`goals` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_settings`
--

CREATE TABLE IF NOT EXISTS `lm_settings` (
  `key` varchar(50) COLLATE latin1_german1_ci NOT NULL,
  `value` varchar(255) COLLATE latin1_german1_ci DEFAULT NULL
) DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_settings`
--

INSERT INTO `lm_settings` (`key`, `value`) VALUES
('design_HighlightColor', 'rgb(160,193,255)'),
('design_Image', 'pokal.PNG'),
('design_NavBackColor', 'rgb(15,147,255)'),
('design_NavFrontColor', '#FFF'),
('design_Title', 'Hobbyliga Kreis Borken 2015'),
('design_TitleBackColor', 'rgb(15,147,255)'),
('design_TitleFrontColor', '#FFF'),
('mail_from', 'liga@liga-borken.de'),
('mail_guestbook', '1'),
('mail_sendMails', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_team`
--

CREATE TABLE IF NOT EXISTS `lm_team` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `icon` varchar(45) COLLATE latin1_german1_ci DEFAULT NULL,
  `homepage` varchar(45) COLLATE latin1_german1_ci DEFAULT NULL
) AUTO_INCREMENT=11 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_team`
--

INSERT INTO `lm_team` (`id`, `name`, `icon`, `homepage`) VALUES
(3, 'SV Holthausen', NULL, 'http://www.holthausener-sv.de/'),
(4, 'SF Klein Reken', NULL, 'http://www.sportfreundekleinreken.de/'),
(5, 'FC Lupine Weseke', NULL, 'http://www.fc-lupine.de/'),
(6, 'FC Cosmos Weseke', NULL, 'http://www.fc-cosmos-weseke.de.tl/'),
(7, 'SC Brinker Jungs', NULL, 'http://www.brinker-jungs.de.tl/'),
(8, 'FC Böinghook', NULL, 'http://www.fc-boeinghook.de.tl'),
(9, 'Fortuna Bieling', NULL, 'http://www.fortuna-bieling.de'),
(10, 'Bröker Jungs Reken', NULL, 'http://www.broeker-jungs.de/');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lm_users`
--

CREATE TABLE IF NOT EXISTS `lm_users` (
`id` int(11) NOT NULL,
  `username` varchar(45) COLLATE latin1_german1_ci NOT NULL,
  `password` varchar(45) COLLATE latin1_german1_ci NOT NULL,
  `firstname` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `lastname` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `email` varchar(255) COLLATE latin1_german1_ci NOT NULL,
  `id_team` int(11) DEFAULT NULL,
  `rights` enum('USER','TEAM_ADMIN','LIGA_ADMIN','ADMIN') COLLATE latin1_german1_ci NOT NULL DEFAULT 'USER'
) AUTO_INCREMENT=19 DEFAULT  COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lm_users`
--

INSERT INTO `lm_users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `id_team`, `rights`) VALUES
(1, 'Admin', 'f3d51c970c7d8a1274024db79b7fd6ec635a3511', 'Manfred', 'Roßkamp', 'manfred.rosskamp@gmx.de', 3, 'ADMIN'),
(2, 'Norbert', '8e38e83afc2dc2b00f1c3fe5fe4e988e9ffbf181', 'Norbert', 'Roßkamp', 'nr@altergarten4.de', 3, 'ADMIN'),
(4, 'Bieling', '34335f376ab626ad695891307faa7a59844b251a', 'Burkhard', 'Strotmann', 'burkhard.strotmann@t-online.de', 9, 'TEAM_ADMIN'),
(5, 'Böinghook', '1b89a346a0161922f786857aa28f9b1a5042510d', 'Rene', 'Müggenborg', 'fcboeinghook@gmx.de', 8, 'TEAM_ADMIN'),
(6, 'Brinker', '6d801fb2355a07c9e004ea4635b4ce3edfe405d7', 'Michael', 'Warmers', 'warmers-michael@web.de', 7, 'TEAM_ADMIN'),
(7, 'Bröker', '5ddcf858d06cfc58850ac39489f0e46f4746af62', 'Michael', 'Schmidt', 'info@heizung-sanitaerniewerth.de', 10, 'TEAM_ADMIN'),
(8, 'Cosmos', '90a288256d486987a1f089a8740ff887a809de7e', 'Norbert', 'Jägering', 'norbert.jaegering@borken.de', 6, 'TEAM_ADMIN'),
(9, 'Holthausen', 'd03b4ac0042b2b9f9bd40c84ea504b5102de6ad1', 'Michael', 'Trepmann', 'm.trepmann@web.de', 3, 'TEAM_ADMIN'),
(10, 'Reken', '4daae30edd631ac0f778310389b4bce90c8eae28', 'Uwe', 'Sarau', 'Uwe.Sarau@hobart.de', 4, 'TEAM_ADMIN'),
(11, 'Lupine', 'f360d128f6e34b605abe36c713341d9f5081a706', 'Christoph', 'Otert-Enning', 'christoph-otert-enning@gmx.de', 5, 'TEAM_ADMIN'),
(12, 'Twix', 'f169bb0a072977fa5df1351bae1688b8d3472cf2', 'Michael', 'Raida', 'm.raida@t-online.de', NULL, 'LIGA_ADMIN'),
(14, 'Jumper', '8f83e728b537eda8e428aa649f73e101cc92ccfc', 'Jumper', '', '', 5, 'TEAM_ADMIN'),
(15, 'Daniel Lüdiger', 'ce118a686b04f45fcd183f5357175bb9dd23c298', 'Daniel', 'Lüdiger', 'dluediger@aol.com', 6, 'TEAM_ADMIN'),
(16, 'DanielAdmin', '03ed68dac1f810070f80fc2a1fe5e2fad8f93270', 'Daniel', 'Lüdiger', 'daniel-luediger@t-online.de', NULL, 'ADMIN'),
(17, 'samename89', '5ee82fbd6e8faa749861b9ccdcee1da4915299a9', 'Arjen', 'Torwesten', 'a.torwesten@web.de', 9, 'USER'),
(18, 'SfR', '757a0a3799d6fde07712b01c9dfd7d2141f10616', 'Dominik', 'Sengenhorst', 'Dominik-Sengenhorst@gmx.de', 4, 'USER');

-- --------------------------------------------------------

--
-- Struktur des Views `jos_fussball_spieler_saison`
--
DROP TABLE IF EXISTS `jos_fussball_spieler_saison`;

CREATE VIEW `jos_fussball_spieler_saison` AS select `s`.`id` AS `id`,`s`.`idMannschaft` AS `idMannschaft`,`s`.`name` AS `name`,count(`ss`.`idSpieler`) AS `spiele`,sum(`ss`.`anzahlTore`) AS `tore`,sum(`ss`.`hasGelbeKarte`) AS `gelb`,sum(`ss`.`hasGelbRoteKarte`) AS `gelbrot`,sum(`ss`.`hasRoteKarte`) AS `rot` from (`jos_fussball_spieler` `s` left join `jos_fussball_spieler_spiel` `ss` on((`s`.`id` = `ss`.`idSpieler`))) group by `s`.`id`;

-- --------------------------------------------------------

--
-- Struktur des Views `lm_locks`
--
DROP TABLE IF EXISTS `lm_locks`;

CREATE VIEW `lm_locks` AS select `PM`.`id` AS `id`,`ST`.`id_saison` AS `id_saison`,`M`.`id` AS `id_match`,`P`.`firstname` AS `firstname`,`P`.`lastname` AS `lastname`,`T`.`name` AS `team_name`,`M`.`date` AS `date` from (((((`lm_player_match` `PM` left join `lm_saison_player` `SP` on((`SP`.`id` = `PM`.`id_saison_player`))) left join `lm_saison_team` `ST` on((`ST`.`id` = `SP`.`id_saison_team`))) left join `lm_team` `T` on((`T`.`id` = `ST`.`id_team`))) left join `lm_player` `P` on((`P`.`id` = `SP`.`id_player`))) left join `lm_match` `M` on((`M`.`id` = `PM`.`id_match`))) where `PM`.`hasRedCard`;

-- --------------------------------------------------------

--
-- Struktur des Views `lm_play_table`
--
DROP TABLE IF EXISTS `lm_play_table`;

CREATE VIEW `lm_play_table` AS select `st`.`id_saison` AS `id_saison`,`t`.`id` AS `id`,`t`.`name` AS `name`,`t`.`icon` AS `icon`,`t`.`homepage` AS `homepage`,ifnull((select count(0) AS `count(*)` from `lm_match` where (((`lm_match`.`id_saison_team1` = `st`.`id`) and (`lm_match`.`goal1` is not null)) or ((`lm_match`.`id_saison_team2` = `st`.`id`) and (`lm_match`.`goal1` is not null)))),0) AS `match_count`,(ifnull((select sum(ifnull(`lm_match`.`goal1`,0)) AS `sum(IFNULL(goal1,0))` from `lm_match` where (`lm_match`.`id_saison_team1` = `st`.`id`)),0) + ifnull((select sum(ifnull(`lm_match`.`goal2`,0)) AS `sum(IFNULL(goal2,0))` from `lm_match` where (`lm_match`.`id_saison_team2` = `st`.`id`)),0)) AS `shoot`,(ifnull((select sum(ifnull(`lm_match`.`goal2`,0)) AS `sum(IFNULL(goal2,0))` from `lm_match` where (`lm_match`.`id_saison_team1` = `st`.`id`)),0) + ifnull((select sum(ifnull(`lm_match`.`goal1`,0)) AS `sum(IFNULL(goal1,0))` from `lm_match` where (`lm_match`.`id_saison_team2` = `st`.`id`)),0)) AS `got`,ifnull((select count(0) AS `count(*)` from `lm_match` where (((`lm_match`.`id_saison_team1` = `st`.`id`) and (`lm_match`.`goal1` > `lm_match`.`goal2`)) or ((`lm_match`.`id_saison_team2` = `st`.`id`) and (`lm_match`.`goal2` > `lm_match`.`goal1`)))),0) AS `wins`,ifnull((select count(0) AS `count(*)` from `lm_match` where (((`lm_match`.`id_saison_team1` = `st`.`id`) or (`lm_match`.`id_saison_team2` = `st`.`id`)) and (`lm_match`.`goal1` = `lm_match`.`goal2`))),0) AS `stand_off` from (`lm_saison_team` `st` left join `lm_team` `t` on((`t`.`id` = `st`.`id_team`)));

-- --------------------------------------------------------

--
-- Struktur des Views `lm_scorer`
--
DROP TABLE IF EXISTS `lm_scorer`;

CREATE VIEW `lm_scorer` AS select `p`.`id` AS `id`,`t`.`id` AS `id_team`,`st`.`id_saison` AS `id_saison`,`p`.`firstname` AS `firstname`,`p`.`lastname` AS `lastname`,`t`.`name` AS `team_name`,(select sum(ifnull(`pm`.`goals`,0)) AS `sum(ifnull(``pm``.``goals``,0))` from `lm_player_match` `pm` where (`pm`.`id_saison_player` = `sp`.`id`)) AS `goals` from (((`lm_saison_player` `sp` left join `lm_player` `p` on((`p`.`id` = `sp`.`id_player`))) left join `lm_saison_team` `st` on((`st`.`id` = `sp`.`id_saison_team`))) left join `lm_team` `t` on((`t`.`id` = `st`.`id_team`)));

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `jos_aps_options`
--
ALTER TABLE `jos_aps_options`
 ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jos_banner`
--
ALTER TABLE `jos_banner`
 ADD PRIMARY KEY (`bid`), ADD KEY `viewbanner` (`showBanner`), ADD KEY `idx_banner_catid` (`catid`);

--
-- Indizes für die Tabelle `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
 ADD PRIMARY KEY (`cid`);

--
-- Indizes für die Tabelle `jos_categories`
--
ALTER TABLE `jos_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`section`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`);

--
-- Indizes für die Tabelle `jos_components`
--
ALTER TABLE `jos_components`
 ADD PRIMARY KEY (`id`), ADD KEY `parent_option` (`parent`,`option`(32));

--
-- Indizes für die Tabelle `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`);

--
-- Indizes für die Tabelle `jos_content`
--
ALTER TABLE `jos_content`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_section` (`sectionid`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`);

--
-- Indizes für die Tabelle `jos_content_frontpage`
--
ALTER TABLE `jos_content_frontpage`
 ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `jos_content_rating`
--
ALTER TABLE `jos_content_rating`
 ADD PRIMARY KEY (`content_id`);

--
-- Indizes für die Tabelle `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `__section_value_value_aro` (`section_value`(100),`value`(100)), ADD KEY `jos_gacl_hidden_aro` (`hidden`);

--
-- Indizes für die Tabelle `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
 ADD PRIMARY KEY (`id`), ADD KEY `jos_gacl_parent_id_aro_groups` (`parent_id`), ADD KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`);

--
-- Indizes für die Tabelle `jos_core_acl_aro_map`
--
ALTER TABLE `jos_core_acl_aro_map`
 ADD PRIMARY KEY (`acl_id`,`section_value`,`value`);

--
-- Indizes für die Tabelle `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
 ADD PRIMARY KEY (`section_id`), ADD UNIQUE KEY `jos_gacl_value_aro_sections` (`value`), ADD KEY `jos_gacl_hidden_aro_sections` (`hidden`);

--
-- Indizes für die Tabelle `jos_core_acl_groups_aro_map`
--
ALTER TABLE `jos_core_acl_groups_aro_map`
 ADD UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`);

--
-- Indizes für die Tabelle `jos_easybook`
--
ALTER TABLE `jos_easybook`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_easybook_badwords`
--
ALTER TABLE `jos_easybook_badwords`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_easycaptchas`
--
ALTER TABLE `jos_easycaptchas`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_easycaptchas_dpaulus`
--
ALTER TABLE `jos_easycaptchas_dpaulus`
 ADD PRIMARY KEY (`CodeID`);

--
-- Indizes für die Tabelle `jos_easycaptchas_secimg`
--
ALTER TABLE `jos_easycaptchas_secimg`
 ADD PRIMARY KEY (`CodeID`);

--
-- Indizes für die Tabelle `jos_eventlist_categories`
--
ALTER TABLE `jos_eventlist_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_eventlist_events`
--
ALTER TABLE `jos_eventlist_events`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_eventlist_groups`
--
ALTER TABLE `jos_eventlist_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_eventlist_register`
--
ALTER TABLE `jos_eventlist_register`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_eventlist_settings`
--
ALTER TABLE `jos_eventlist_settings`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indizes für die Tabelle `jos_eventlist_venues`
--
ALTER TABLE `jos_eventlist_venues`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_fussball_Attribute`
--
ALTER TABLE `jos_fussball_Attribute`
 ADD PRIMARY KEY (`id`), ADD KEY `Attribute_FKIndex1` (`attrType`);

--
-- Indizes für die Tabelle `jos_fussball_AttributeType`
--
ALTER TABLE `jos_fussball_AttributeType`
 ADD PRIMARY KEY (`name`);

--
-- Indizes für die Tabelle `jos_fussball_AttributeValue`
--
ALTER TABLE `jos_fussball_AttributeValue`
 ADD PRIMARY KEY (`id`), ADD KEY `AttributeValue_FKIndex1` (`idAttribute`), ADD KEY `AttributeValue_FKIndex2` (`idSpieler`);

--
-- Indizes für die Tabelle `jos_fussball_infos`
--
ALTER TABLE `jos_fussball_infos`
 ADD PRIMARY KEY (`id`), ADD KEY `infos_name_index` (`name`);

--
-- Indizes für die Tabelle `jos_fussball_mannschaft`
--
ALTER TABLE `jos_fussball_mannschaft`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_fussball_saison`
--
ALTER TABLE `jos_fussball_saison`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_fussball_spiel`
--
ALTER TABLE `jos_fussball_spiel`
 ADD PRIMARY KEY (`id`), ADD KEY `spiel_FKIndex1` (`idMannschaft2`), ADD KEY `spiel_FKIndex2` (`idMannschaft1`), ADD KEY `spiel_FKIndex3` (`idSpiel_typ`), ADD KEY `spiel_FKIndex4` (`idSaison`);

--
-- Indizes für die Tabelle `jos_fussball_spieler`
--
ALTER TABLE `jos_fussball_spieler`
 ADD PRIMARY KEY (`id`), ADD KEY `spieler_FKIndex1` (`idMannschaft`);

--
-- Indizes für die Tabelle `jos_fussball_spieler_spiel`
--
ALTER TABLE `jos_fussball_spieler_spiel`
 ADD PRIMARY KEY (`id`), ADD KEY `spieler_spiel_FKIndex1` (`idSpiel`), ADD KEY `spieler_spiel_FKIndex2` (`idSpieler`);

--
-- Indizes für die Tabelle `jos_fussball_spiel_typ`
--
ALTER TABLE `jos_fussball_spiel_typ`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_groups`
--
ALTER TABLE `jos_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_menu`
--
ALTER TABLE `jos_menu`
 ADD PRIMARY KEY (`id`), ADD KEY `componentid` (`componentid`,`menutype`,`published`,`access`), ADD KEY `menutype` (`menutype`);

--
-- Indizes für die Tabelle `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `menutype` (`menutype`);

--
-- Indizes für die Tabelle `jos_messages`
--
ALTER TABLE `jos_messages`
 ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indizes für die Tabelle `jos_messages_cfg`
--
ALTER TABLE `jos_messages_cfg`
 ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`(100));

--
-- Indizes für die Tabelle `jos_migration_backlinks`
--
ALTER TABLE `jos_migration_backlinks`
 ADD PRIMARY KEY (`itemid`);

--
-- Indizes für die Tabelle `jos_modules`
--
ALTER TABLE `jos_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`);

--
-- Indizes für die Tabelle `jos_modules_menu`
--
ALTER TABLE `jos_modules_menu`
 ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indizes für die Tabelle `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
 ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`), ADD KEY `catid` (`catid`);

--
-- Indizes für die Tabelle `jos_plugins`
--
ALTER TABLE `jos_plugins`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_folder` (`published`,`client_id`,`access`,`folder`);

--
-- Indizes für die Tabelle `jos_polls`
--
ALTER TABLE `jos_polls`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
 ADD PRIMARY KEY (`id`), ADD KEY `pollid` (`pollid`,`text`(1));

--
-- Indizes für die Tabelle `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
 ADD PRIMARY KEY (`id`), ADD KEY `poll_id` (`poll_id`);

--
-- Indizes für die Tabelle `jos_poll_menu`
--
ALTER TABLE `jos_poll_menu`
 ADD PRIMARY KEY (`pollid`,`menuid`);

--
-- Indizes für die Tabelle `jos_sections`
--
ALTER TABLE `jos_sections`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_scope` (`scope`);

--
-- Indizes für die Tabelle `jos_session`
--
ALTER TABLE `jos_session`
 ADD PRIMARY KEY (`session_id`(64)), ADD KEY `whosonline` (`guest`,`usertype`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indizes für die Tabelle `jos_templates_menu`
--
ALTER TABLE `jos_templates_menu`
 ADD PRIMARY KEY (`menuid`,`client_id`,`template`(255));

--
-- Indizes für die Tabelle `jos_users`
--
ALTER TABLE `jos_users`
 ADD PRIMARY KEY (`id`), ADD KEY `usertype` (`usertype`), ADD KEY `idx_name` (`name`(255)), ADD KEY `gid_block` (`gid`,`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indizes für die Tabelle `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`,`published`,`archived`);

--
-- Indizes für die Tabelle `lm_document`
--
ALTER TABLE `lm_document`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lm_guestbook`
--
ALTER TABLE `lm_guestbook`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lm_match`
--
ALTER TABLE `lm_match`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_lm_spiel_lm_saison_mannschaft1` (`id_saison_team1`), ADD KEY `fk_lm_spiel_lm_saison_mannschaft2` (`id_saison_team2`);

--
-- Indizes für die Tabelle `lm_player`
--
ALTER TABLE `lm_player`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_lm_spieler_lm_mannschaft1` (`id_team`);

--
-- Indizes für die Tabelle `lm_player_match`
--
ALTER TABLE `lm_player_match`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_match` (`id_match`), ADD KEY `idx_saison_player` (`id_saison_player`);

--
-- Indizes für die Tabelle `lm_saison`
--
ALTER TABLE `lm_saison`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lm_saison_player`
--
ALTER TABLE `lm_saison_player`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_lm_saison_spieler_lm_saison_mannschaft1` (`id_saison_team`), ADD KEY `fk_lm_saison_spieler_lm_spieler1` (`id_player`);

--
-- Indizes für die Tabelle `lm_saison_team`
--
ALTER TABLE `lm_saison_team`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_saison_team_unique` (`id_team`,`id_saison`), ADD KEY `fk_saison_team_mannschaft` (`id_team`), ADD KEY `fk_saison_team_saison` (`id_saison`);

--
-- Indizes für die Tabelle `lm_settings`
--
ALTER TABLE `lm_settings`
 ADD PRIMARY KEY (`key`);

--
-- Indizes für die Tabelle `lm_team`
--
ALTER TABLE `lm_team`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lm_users`
--
ALTER TABLE `lm_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username_UNIQUE` (`username`), ADD KEY `fk_lm_user_lm_mannschaft1` (`id_team`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `jos_banner`
--
ALTER TABLE `jos_banner`
MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `jos_bannerclient`
--
ALTER TABLE `jos_bannerclient`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `jos_categories`
--
ALTER TABLE `jos_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT für Tabelle `jos_components`
--
ALTER TABLE `jos_components`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT für Tabelle `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `jos_content`
--
ALTER TABLE `jos_content`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT für Tabelle `jos_core_acl_aro`
--
ALTER TABLE `jos_core_acl_aro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT für Tabelle `jos_core_acl_aro_groups`
--
ALTER TABLE `jos_core_acl_aro_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT für Tabelle `jos_core_acl_aro_sections`
--
ALTER TABLE `jos_core_acl_aro_sections`
MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `jos_easybook`
--
ALTER TABLE `jos_easybook`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT für Tabelle `jos_easybook_badwords`
--
ALTER TABLE `jos_easybook_badwords`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=534;
--
-- AUTO_INCREMENT für Tabelle `jos_easycaptchas`
--
ALTER TABLE `jos_easycaptchas`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `jos_eventlist_categories`
--
ALTER TABLE `jos_eventlist_categories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `jos_eventlist_events`
--
ALTER TABLE `jos_eventlist_events`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT für Tabelle `jos_eventlist_groups`
--
ALTER TABLE `jos_eventlist_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `jos_eventlist_register`
--
ALTER TABLE `jos_eventlist_register`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `jos_eventlist_venues`
--
ALTER TABLE `jos_eventlist_venues`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_Attribute`
--
ALTER TABLE `jos_fussball_Attribute`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_AttributeValue`
--
ALTER TABLE `jos_fussball_AttributeValue`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_infos`
--
ALTER TABLE `jos_fussball_infos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_mannschaft`
--
ALTER TABLE `jos_fussball_mannschaft`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_saison`
--
ALTER TABLE `jos_fussball_saison`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_spiel`
--
ALTER TABLE `jos_fussball_spiel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=292;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_spieler`
--
ALTER TABLE `jos_fussball_spieler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_spieler_spiel`
--
ALTER TABLE `jos_fussball_spieler_spiel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5052;
--
-- AUTO_INCREMENT für Tabelle `jos_fussball_spiel_typ`
--
ALTER TABLE `jos_fussball_spiel_typ`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `jos_menu`
--
ALTER TABLE `jos_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT für Tabelle `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `jos_messages`
--
ALTER TABLE `jos_messages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT für Tabelle `jos_modules`
--
ALTER TABLE `jos_modules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT für Tabelle `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `jos_plugins`
--
ALTER TABLE `jos_plugins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT für Tabelle `jos_polls`
--
ALTER TABLE `jos_polls`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT für Tabelle `jos_poll_data`
--
ALTER TABLE `jos_poll_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT für Tabelle `jos_poll_date`
--
ALTER TABLE `jos_poll_date`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT für Tabelle `jos_sections`
--
ALTER TABLE `jos_sections`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `jos_users`
--
ALTER TABLE `jos_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT für Tabelle `jos_weblinks`
--
ALTER TABLE `jos_weblinks`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT für Tabelle `lm_document`
--
ALTER TABLE `lm_document`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `lm_guestbook`
--
ALTER TABLE `lm_guestbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT für Tabelle `lm_match`
--
ALTER TABLE `lm_match`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT für Tabelle `lm_player`
--
ALTER TABLE `lm_player`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=223;
--
-- AUTO_INCREMENT für Tabelle `lm_player_match`
--
ALTER TABLE `lm_player_match`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=550;
--
-- AUTO_INCREMENT für Tabelle `lm_saison`
--
ALTER TABLE `lm_saison`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `lm_saison_player`
--
ALTER TABLE `lm_saison_player`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=506;
--
-- AUTO_INCREMENT für Tabelle `lm_saison_team`
--
ALTER TABLE `lm_saison_team`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT für Tabelle `lm_team`
--
ALTER TABLE `lm_team`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `lm_users`
--
ALTER TABLE `lm_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `jos_fussball_Attribute`
--
ALTER TABLE `jos_fussball_Attribute`
ADD CONSTRAINT `type` FOREIGN KEY (`attrType`) REFERENCES `jos_fussball_AttributeType` (`name`);

--
-- Constraints der Tabelle `jos_fussball_AttributeValue`
--
ALTER TABLE `jos_fussball_AttributeValue`
ADD CONSTRAINT `Attr_Value` FOREIGN KEY (`idAttribute`) REFERENCES `jos_fussball_Attribute` (`id`),
ADD CONSTRAINT `Spieler_AttrValue` FOREIGN KEY (`idSpieler`) REFERENCES `jos_fussball_spieler` (`id`);

--
-- Constraints der Tabelle `jos_fussball_spiel`
--
ALTER TABLE `jos_fussball_spiel`
ADD CONSTRAINT `Rel_10` FOREIGN KEY (`idSaison`) REFERENCES `jos_fussball_saison` (`id`),
ADD CONSTRAINT `Rel_M1` FOREIGN KEY (`idMannschaft2`) REFERENCES `jos_fussball_mannschaft` (`id`),
ADD CONSTRAINT `Rel_M2` FOREIGN KEY (`idMannschaft1`) REFERENCES `jos_fussball_mannschaft` (`id`),
ADD CONSTRAINT `Rel_SpielTyp` FOREIGN KEY (`idSpiel_typ`) REFERENCES `jos_fussball_spiel_typ` (`id`);

--
-- Constraints der Tabelle `jos_fussball_spieler`
--
ALTER TABLE `jos_fussball_spieler`
ADD CONSTRAINT `Rel_mannschaft` FOREIGN KEY (`idMannschaft`) REFERENCES `jos_fussball_mannschaft` (`id`);

--
-- Constraints der Tabelle `jos_fussball_spieler_spiel`
--
ALTER TABLE `jos_fussball_spieler_spiel`
ADD CONSTRAINT `Rel_06` FOREIGN KEY (`idSpiel`) REFERENCES `jos_fussball_spiel` (`id`),
ADD CONSTRAINT `Rel_07` FOREIGN KEY (`idSpieler`) REFERENCES `jos_fussball_spieler` (`id`);

--
-- Constraints der Tabelle `lm_match`
--
ALTER TABLE `lm_match`
ADD CONSTRAINT `fk_lm_spiel_lm_saison_mannschaft1` FOREIGN KEY (`id_saison_team1`) REFERENCES `lm_saison_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_lm_spiel_lm_saison_mannschaft2` FOREIGN KEY (`id_saison_team2`) REFERENCES `lm_saison_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lm_player`
--
ALTER TABLE `lm_player`
ADD CONSTRAINT `fk_lm_spieler_lm_mannschaft1` FOREIGN KEY (`id_team`) REFERENCES `lm_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lm_player_match`
--
ALTER TABLE `lm_player_match`
ADD CONSTRAINT `fk_match_in_player_match` FOREIGN KEY (`id_match`) REFERENCES `lm_match` (`id`),
ADD CONSTRAINT `fk_saison_player_in_player_match` FOREIGN KEY (`id_saison_player`) REFERENCES `lm_saison_player` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lm_saison_player`
--
ALTER TABLE `lm_saison_player`
ADD CONSTRAINT `fk_lm_saison_spieler_lm_saison_mannschaft1` FOREIGN KEY (`id_saison_team`) REFERENCES `lm_saison_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_lm_saison_spieler_lm_spieler1` FOREIGN KEY (`id_player`) REFERENCES `lm_player` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lm_saison_team`
--
ALTER TABLE `lm_saison_team`
ADD CONSTRAINT `fk_lm_saison_mannschaft_lm_mannschaft1` FOREIGN KEY (`id_team`) REFERENCES `lm_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_lm_saison_mannschaft_lm_saison1` FOREIGN KEY (`id_saison`) REFERENCES `lm_saison` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lm_users`
--
ALTER TABLE `lm_users`
ADD CONSTRAINT `fk_lm_user_lm_mannschaft1` FOREIGN KEY (`id_team`) REFERENCES `lm_team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
