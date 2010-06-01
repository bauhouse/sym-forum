
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (28, 9, 'off', 'Send me email when there is important news.');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (2, 15, 'off', 'Pin discussion');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (3, 16, 'off', 'Close this discussion');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 28, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (15, 38, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (16, 39, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (11, 48, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (12, 49, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (14, 64, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (29, 117, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (23, 129, 'off', NULL);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (1, 12, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (2, 14, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (11, 19, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (10, 37, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (7, 47, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (8, 60, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (9, 69, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (58, 92, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (59, 93, 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (57, 109, 'no');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (47, 126, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (48, 127, 'no');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (185, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (186, 3, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (187, 4, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (188, 6, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (189, 7, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (6, 10, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (34, 21, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (35, 23, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (29, 29, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (30, 30, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (19, 40, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (20, 42, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (194, 50, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (195, 52, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (196, 54, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (23, 57, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (24, 58, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (25, 59, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (26, 65, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (27, 66, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (28, 67, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (128, 71, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (129, 76, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (130, 77, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (131, 79, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (132, 80, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (133, 81, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (134, 82, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (135, 83, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (136, 84, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (137, 85, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (138, 86, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (193, 87, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (190, 101, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (191, 107, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (192, 108, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 112, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (162, 118, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (163, 128, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (184, 131, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (176, 135, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (178, 140, NULL);

-- *** STRUCTURE: `tbl_fields_member` ***
DROP TABLE IF EXISTS `tbl_fields_member`;
CREATE TABLE `tbl_fields_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_member` ***
INSERT INTO `tbl_fields_member` (`id`, `field_id`) VALUES (2, 2);

-- *** STRUCTURE: `tbl_fields_memberlink` ***
DROP TABLE IF EXISTS `tbl_fields_memberlink`;
CREATE TABLE `tbl_fields_memberlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberlink` ***
INSERT INTO `tbl_fields_memberlink` (`id`, `field_id`, `allow_multiple`) VALUES (1, 11, 'no');
INSERT INTO `tbl_fields_memberlink` (`id`, `field_id`, `allow_multiple`) VALUES (2, 13, 'no');
INSERT INTO `tbl_fields_memberlink` (`id`, `field_id`, `allow_multiple`) VALUES (4, 20, 'no');

-- *** STRUCTURE: `tbl_fields_memberrole` ***
DROP TABLE IF EXISTS `tbl_fields_memberrole`;
CREATE TABLE `tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberrole` ***
INSERT INTO `tbl_fields_memberrole` (`id`, `field_id`) VALUES (2, 5);

-- *** STRUCTURE: `tbl_fields_number` ***
DROP TABLE IF EXISTS `tbl_fields_number`;
CREATE TABLE `tbl_fields_number` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_number` ***

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (4, 27, NULL, 'no');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (12, 134, NULL, 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (10, 138, NULL, 'yes');

-- *** STRUCTURE: `tbl_fields_pages` ***
DROP TABLE IF EXISTS `tbl_fields_pages`;
CREATE TABLE `tbl_fields_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_pages` ***
INSERT INTO `tbl_fields_pages` (`id`, `field_id`, `allow_multiple_selection`) VALUES (4, 22, 'no');

-- *** STRUCTURE: `tbl_fields_reflection` ***
DROP TABLE IF EXISTS `tbl_fields_reflection`;
CREATE TABLE `tbl_fields_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `expression` varchar(255) DEFAULT NULL,
  `formatter` varchar(255) DEFAULT NULL,
  `override` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_reflection` ***
INSERT INTO `tbl_fields_reflection` (`id`, `field_id`, `expression`, `formatter`, `override`, `hide`) VALUES (30, 96, '{entry/project-client}{entry/project-number}', 'none', NULL, 'yes');
INSERT INTO `tbl_fields_reflection` (`id`, `field_id`, `expression`, `formatter`, `override`, `hide`) VALUES (29, 103, '{entry/project-code}-{entry/task-number}', 'none', NULL, 'yes');

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (33, 73, 'no', 'Advertising, Design, Architecture, Construction, Ecommerce, Education, Engineering, Financial Services, Hospitality, Industry, Land Development, Manufacturing, Marketing, Non-Profit, Printing, Real Estate, Tourism, Web Development, Web Services', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (34, 74, 'no', 'Active, Inactive, Retired', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (57, 94, 'no', 'Created, In Progress, On Hold, Completed, Invoiced, Cancelled', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (55, 100, 'no', 'Non-Billable, Project, Contract, Service', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (56, 110, 'no', 'In Progress, Pending, On Hold, Completed, Invoiced, Cancelled', NULL);

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (20, 18, 'no', 10, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (21, 26, 'no', 50, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (16, 33, 'no', 21, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (17, 34, 'no', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (18, 35, 'no', 54, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (11, 41, 'no', 52, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (12, 45, 'no', 54, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (14, 61, 'no', 29, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (15, 62, 'no', 40, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (92, 78, 'yes', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (177, 90, 'yes', 140, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (178, 91, 'yes', 1, 50);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (173, 97, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (174, 98, 'no', 96, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (176, 88, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (114, 114, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (115, 115, 'no', 96, 100);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (116, 116, 'no', 103, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (139, 121, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (140, 122, 'no', 96, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (141, 123, 'no', 103, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (142, 124, 'no', 112, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (143, 125, 'no', 135, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (144, 130, 'no', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (172, 133, 'no', 140, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (160, 137, 'no', 131, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (175, 139, 'no', 131, 20);

-- *** STRUCTURE: `tbl_fields_systemid` ***
DROP TABLE IF EXISTS `tbl_fields_systemid`;
CREATE TABLE `tbl_fields_systemid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_systemid` ***

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***
INSERT INTO `tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (5, 36, NULL, 'existing');
INSERT INTO `tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (4, 46, NULL, 'existing');

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (26, 17, 'markdown_with_purifier', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (28, 24, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (29, 25, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (22, 31, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (23, 32, 'markdown_extra_with_smartypants', 18);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (15, 43, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (16, 44, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (96, 51, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (97, 53, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (98, 55, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (99, 56, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (19, 63, 'markdown_with_purifier', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (20, 68, NULL, 9);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (21, 70, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 75, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (95, 95, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (92, 105, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (93, 106, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (94, 111, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (61, 113, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (70, 119, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (91, 132, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (83, 136, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (85, 141, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE: `tbl_fields_uniqueinput` ***
DROP TABLE IF EXISTS `tbl_fields_uniqueinput`;
CREATE TABLE `tbl_fields_uniqueinput` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) DEFAULT NULL,
  `auto_unique` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_uniqueinput` ***
INSERT INTO `tbl_fields_uniqueinput` (`id`, `field_id`, `validator`, `auto_unique`) VALUES (3, 104, NULL, 'no');

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***

-- *** STRUCTURE: `tbl_entries_data_1` ***
DROP TABLE IF EXISTS `tbl_entries_data_1`;
CREATE TABLE `tbl_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_1` ***
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'stephen-bau', 'Stephen Bau');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 13, 'john-doe', 'John Doe');
INSERT INTO `tbl_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 14, 'jane-doe', 'Jane Doe');

-- *** STRUCTURE: `tbl_entries_data_10` ***
DROP TABLE IF EXISTS `tbl_entries_data_10`;
CREATE TABLE `tbl_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_10` ***
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 9, 'overview', 'Overview');
INSERT INTO `tbl_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 11, 'block-elements', 'Block Elements');

-- *** STRUCTURE: `tbl_entries_data_100` ***
DROP TABLE IF EXISTS `tbl_entries_data_100`;
CREATE TABLE `tbl_entries_data_100` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_100` ***

-- *** STRUCTURE: `tbl_entries_data_101` ***
DROP TABLE IF EXISTS `tbl_entries_data_101`;
CREATE TABLE `tbl_entries_data_101` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_101` ***

-- *** STRUCTURE: `tbl_entries_data_102` ***
DROP TABLE IF EXISTS `tbl_entries_data_102`;
CREATE TABLE `tbl_entries_data_102` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_102` ***

-- *** STRUCTURE: `tbl_entries_data_103` ***
DROP TABLE IF EXISTS `tbl_entries_data_103`;
CREATE TABLE `tbl_entries_data_103` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_103` ***

-- *** STRUCTURE: `tbl_entries_data_104` ***
DROP TABLE IF EXISTS `tbl_entries_data_104`;
CREATE TABLE `tbl_entries_data_104` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_104` ***
INSERT INTO `tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 15, 'abc', 'ABC');

-- *** STRUCTURE: `tbl_entries_data_105` ***
DROP TABLE IF EXISTS `tbl_entries_data_105`;
CREATE TABLE `tbl_entries_data_105` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_105` ***

-- *** STRUCTURE: `tbl_entries_data_106` ***
DROP TABLE IF EXISTS `tbl_entries_data_106`;
CREATE TABLE `tbl_entries_data_106` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_106` ***

-- *** STRUCTURE: `tbl_entries_data_107` ***
DROP TABLE IF EXISTS `tbl_entries_data_107`;
CREATE TABLE `tbl_entries_data_107` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_107` ***

-- *** STRUCTURE: `tbl_entries_data_108` ***
DROP TABLE IF EXISTS `tbl_entries_data_108`;
CREATE TABLE `tbl_entries_data_108` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_108` ***

-- *** STRUCTURE: `tbl_entries_data_109` ***
DROP TABLE IF EXISTS `tbl_entries_data_109`;
CREATE TABLE `tbl_entries_data_109` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_109` ***

-- *** STRUCTURE: `tbl_entries_data_11` ***
DROP TABLE IF EXISTS `tbl_entries_data_11`;
CREATE TABLE `tbl_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_11` ***
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `member_id`, `username`) VALUES (5, 9, 8, 'stephen');
INSERT INTO `tbl_entries_data_11` (`id`, `entry_id`, `member_id`, `username`) VALUES (6, 11, 8, 'stephen');

-- *** STRUCTURE: `tbl_entries_data_110` ***
DROP TABLE IF EXISTS `tbl_entries_data_110`;
CREATE TABLE `tbl_entries_data_110` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_110` ***

-- *** STRUCTURE: `tbl_entries_data_111` ***
DROP TABLE IF EXISTS `tbl_entries_data_111`;
CREATE TABLE `tbl_entries_data_111` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_111` ***

-- *** STRUCTURE: `tbl_entries_data_112` ***
DROP TABLE IF EXISTS `tbl_entries_data_112`;
CREATE TABLE `tbl_entries_data_112` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_112` ***

-- *** STRUCTURE: `tbl_entries_data_113` ***
DROP TABLE IF EXISTS `tbl_entries_data_113`;
CREATE TABLE `tbl_entries_data_113` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_113` ***

-- *** STRUCTURE: `tbl_entries_data_114` ***
DROP TABLE IF EXISTS `tbl_entries_data_114`;
CREATE TABLE `tbl_entries_data_114` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_114` ***

-- *** STRUCTURE: `tbl_entries_data_115` ***
DROP TABLE IF EXISTS `tbl_entries_data_115`;
CREATE TABLE `tbl_entries_data_115` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_115` ***

-- *** STRUCTURE: `tbl_entries_data_116` ***
DROP TABLE IF EXISTS `tbl_entries_data_116`;
CREATE TABLE `tbl_entries_data_116` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_116` ***

-- *** STRUCTURE: `tbl_entries_data_117` ***
DROP TABLE IF EXISTS `tbl_entries_data_117`;
CREATE TABLE `tbl_entries_data_117` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_117` ***

-- *** STRUCTURE: `tbl_entries_data_118` ***
DROP TABLE IF EXISTS `tbl_entries_data_118`;
CREATE TABLE `tbl_entries_data_118` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_118` ***

-- *** STRUCTURE: `tbl_entries_data_119` ***
DROP TABLE IF EXISTS `tbl_entries_data_119`;
CREATE TABLE `tbl_entries_data_119` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_119` ***

-- *** STRUCTURE: `tbl_entries_data_12` ***
DROP TABLE IF EXISTS `tbl_entries_data_12`;
CREATE TABLE `tbl_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_12` ***
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 9, '2010-05-30T16:53:00-07:00', 1275263580, 1275263580);
INSERT INTO `tbl_entries_data_12` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 11, '2010-05-30T17:06:00-07:00', 1275264360, 1275264360);

-- *** STRUCTURE: `tbl_entries_data_120` ***
DROP TABLE IF EXISTS `tbl_entries_data_120`;
CREATE TABLE `tbl_entries_data_120` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_120` ***

-- *** STRUCTURE: `tbl_entries_data_121` ***
DROP TABLE IF EXISTS `tbl_entries_data_121`;
CREATE TABLE `tbl_entries_data_121` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_121` ***

-- *** STRUCTURE: `tbl_entries_data_122` ***
DROP TABLE IF EXISTS `tbl_entries_data_122`;
CREATE TABLE `tbl_entries_data_122` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_122` ***

-- *** STRUCTURE: `tbl_entries_data_123` ***
DROP TABLE IF EXISTS `tbl_entries_data_123`;
CREATE TABLE `tbl_entries_data_123` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_123` ***

-- *** STRUCTURE: `tbl_entries_data_124` ***
DROP TABLE IF EXISTS `tbl_entries_data_124`;
CREATE TABLE `tbl_entries_data_124` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_124` ***

-- *** STRUCTURE: `tbl_entries_data_125` ***
DROP TABLE IF EXISTS `tbl_entries_data_125`;
CREATE TABLE `tbl_entries_data_125` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_125` ***

-- *** STRUCTURE: `tbl_entries_data_126` ***
DROP TABLE IF EXISTS `tbl_entries_data_126`;
CREATE TABLE `tbl_entries_data_126` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_126` ***

-- *** STRUCTURE: `tbl_entries_data_127` ***
DROP TABLE IF EXISTS `tbl_entries_data_127`;
CREATE TABLE `tbl_entries_data_127` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_127` ***

-- *** STRUCTURE: `tbl_entries_data_128` ***
DROP TABLE IF EXISTS `tbl_entries_data_128`;
CREATE TABLE `tbl_entries_data_128` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_128` ***

-- *** STRUCTURE: `tbl_entries_data_129` ***
DROP TABLE IF EXISTS `tbl_entries_data_129`;
CREATE TABLE `tbl_entries_data_129` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_129` ***

-- *** STRUCTURE: `tbl_entries_data_13` ***
DROP TABLE IF EXISTS `tbl_entries_data_13`;
CREATE TABLE `tbl_entries_data_13` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_13` ***
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `member_id`, `username`) VALUES (5, 9, 8, 'stephen');
INSERT INTO `tbl_entries_data_13` (`id`, `entry_id`, `member_id`, `username`) VALUES (6, 11, 8, 'stephen');

-- *** STRUCTURE: `tbl_entries_data_130` ***
DROP TABLE IF EXISTS `tbl_entries_data_130`;
CREATE TABLE `tbl_entries_data_130` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_130` ***

-- *** STRUCTURE: `tbl_entries_data_131` ***
DROP TABLE IF EXISTS `tbl_entries_data_131`;
CREATE TABLE `tbl_entries_data_131` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_131` ***
INSERT INTO `tbl_entries_data_131` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 21, 'discovery', 'Discovery');
INSERT INTO `tbl_entries_data_131` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 22, 'research', 'Research');
INSERT INTO `tbl_entries_data_131` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 23, 'design', 'Design');
INSERT INTO `tbl_entries_data_131` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 24, 'production', 'Production');
INSERT INTO `tbl_entries_data_131` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 25, 'delivery', 'Delivery');

-- *** STRUCTURE: `tbl_entries_data_132` ***
DROP TABLE IF EXISTS `tbl_entries_data_132`;
CREATE TABLE `tbl_entries_data_132` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_132` ***
INSERT INTO `tbl_entries_data_132` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 21, 'Establishing the defining parameters of the project', NULL);
INSERT INTO `tbl_entries_data_132` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 22, 'Gathering information is one of the most important phases of the project', NULL);
INSERT INTO `tbl_entries_data_132` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 23, 'Exploring and refining concepts and ideas that will provide the best impact for your message', NULL);
INSERT INTO `tbl_entries_data_132` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 24, 'Using the right tools and applications for the job to ensure a quality product', NULL);
INSERT INTO `tbl_entries_data_132` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 25, 'Deploying sites, distributing brand assets and propagating your message through various media', NULL);

-- *** STRUCTURE: `tbl_entries_data_133` ***
DROP TABLE IF EXISTS `tbl_entries_data_133`;
CREATE TABLE `tbl_entries_data_133` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_133` ***
INSERT INTO `tbl_entries_data_133` (`id`, `entry_id`, `relation_id`) VALUES (7, 21, 37);
INSERT INTO `tbl_entries_data_133` (`id`, `entry_id`, `relation_id`) VALUES (8, 22, 37);
INSERT INTO `tbl_entries_data_133` (`id`, `entry_id`, `relation_id`) VALUES (9, 23, 40);
INSERT INTO `tbl_entries_data_133` (`id`, `entry_id`, `relation_id`) VALUES (10, 24, 39);
INSERT INTO `tbl_entries_data_133` (`id`, `entry_id`, `relation_id`) VALUES (11, 25, 38);

-- *** STRUCTURE: `tbl_entries_data_134` ***
DROP TABLE IF EXISTS `tbl_entries_data_134`;
CREATE TABLE `tbl_entries_data_134` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_134` ***
INSERT INTO `tbl_entries_data_134` (`id`, `entry_id`, `value`) VALUES (7, 21, 1);
INSERT INTO `tbl_entries_data_134` (`id`, `entry_id`, `value`) VALUES (8, 22, 2);
INSERT INTO `tbl_entries_data_134` (`id`, `entry_id`, `value`) VALUES (9, 23, 3);
INSERT INTO `tbl_entries_data_134` (`id`, `entry_id`, `value`) VALUES (10, 24, 4);
INSERT INTO `tbl_entries_data_134` (`id`, `entry_id`, `value`) VALUES (11, 25, 5);

-- *** STRUCTURE: `tbl_entries_data_135` ***
DROP TABLE IF EXISTS `tbl_entries_data_135`;
CREATE TABLE `tbl_entries_data_135` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_135` ***
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 26, 'project-management', 'Project Management');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 27, 'client-brief', 'Client Brief');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 28, 'creative-brief', 'Creative Brief');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 29, 'analysis', 'Analysis');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 30, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 31, 'preliminary-concepts', 'Preliminary Concepts');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 32, 'comprehensive-layouts', 'Comprehensive Layouts');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 33, 'development', 'Development');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 34, 'content-integration', 'Content Integration');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 35, 'test-and-deploy', 'Test & Deploy');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 36, 'evaluate-results', 'Evaluate Results');

-- *** STRUCTURE: `tbl_entries_data_136` ***
DROP TABLE IF EXISTS `tbl_entries_data_136`;
CREATE TABLE `tbl_entries_data_136` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_136` ***
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 26, 'Managing the process and scheduling phases and tasks to meet the design objectives', '<p>Managing the process and scheduling phases and tasks to meet the design objectives</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 27, 'Initial discussions regarding the details and scope of the project', '<p>Initial discussions regarding the details and scope of the project</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 28, 'Initial project assessment, proposed creative direction and timeline', '<p>Initial project assessment, proposed creative direction and timeline</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 29, 'Information gathering and indepth analysis of the project requirements', '<p>Information gathering and indepth analysis of the project requirements</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 30, 'Assess the best means to convey the message and build the brand', '<p>Assess the best means to convey the message and build the brand</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 31, 'Explore possible solutions to the design problem', '<p>Explore possible solutions to the design problem</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 32, 'Establish design direction and refine layouts and design details', '<p>Establish design direction and refine layouts and design details</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 33, 'Using the right tools to build the application, identity or branding message', '<p>Using the right tools to build the application, identity or branding message</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 34, 'Building the final product to the highest possible standards', '<p>Building the final product to the highest possible standards</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 35, 'Deploying sites and distributing media', '<p>Deploying sites and distributing media</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 36, 'Assess the results of the project in fulfilling the design objectives', '<p>Assess the results of the project in fulfilling the design objectives</p>\n');

-- *** STRUCTURE: `tbl_entries_data_137` ***
DROP TABLE IF EXISTS `tbl_entries_data_137`;
CREATE TABLE `tbl_entries_data_137` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_137` ***
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (1, 26, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (2, 27, 21);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (3, 28, 21);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (4, 29, 22);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (5, 30, 22);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (8, 31, 23);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (9, 32, 23);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (10, 33, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (11, 34, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (12, 35, 25);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (13, 36, 25);

-- *** STRUCTURE: `tbl_entries_data_138` ***
DROP TABLE IF EXISTS `tbl_entries_data_138`;
CREATE TABLE `tbl_entries_data_138` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_138` ***
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (1, 26, 1);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (2, 27, 2);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (3, 28, 3);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (4, 29, 4);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (5, 30, 5);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (8, 31, 6);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (9, 32, 7);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (10, 33, 8);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (11, 34, 9);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (12, 35, 10);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (13, 36, 11);

-- *** STRUCTURE: `tbl_entries_data_139` ***
DROP TABLE IF EXISTS `tbl_entries_data_139`;
CREATE TABLE `tbl_entries_data_139` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_139` ***

-- *** STRUCTURE: `tbl_entries_data_14` ***
DROP TABLE IF EXISTS `tbl_entries_data_14`;
CREATE TABLE `tbl_entries_data_14` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_14` ***
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 9, '2010-05-30T16:53:00-07:00', 1275263580, 1275263580);
INSERT INTO `tbl_entries_data_14` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 11, '2010-05-30T17:06:00-07:00', 1275264360, 1275264360);

-- *** STRUCTURE: `tbl_entries_data_140` ***
DROP TABLE IF EXISTS `tbl_entries_data_140`;
CREATE TABLE `tbl_entries_data_140` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_140` ***
INSERT INTO `tbl_entries_data_140` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 37, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_140` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 38, 'marketing', 'Marketing');
INSERT INTO `tbl_entries_data_140` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 39, 'development', 'Development');
INSERT INTO `tbl_entries_data_140` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 40, 'creative', 'Creative');

-- *** STRUCTURE: `tbl_entries_data_141` ***
DROP TABLE IF EXISTS `tbl_entries_data_141`;
CREATE TABLE `tbl_entries_data_141` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_141` ***
INSERT INTO `tbl_entries_data_141` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 37, 'Brand Development, Content Strategy & Web Governance', '<p>Brand Development, Content Strategy &amp; Web Governance</p>\n');
INSERT INTO `tbl_entries_data_141` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 39, 'Web & Application Development', '<p>Web &amp; Application Development</p>\n');
INSERT INTO `tbl_entries_data_141` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 40, 'Creative Branding & Identity', '<p>Creative Branding &amp; Identity</p>\n');
INSERT INTO `tbl_entries_data_141` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 38, 'Print, Web and Search Engine Marketing', '<p>Print, Web and Search Engine Marketing</p>\n');

-- *** STRUCTURE: `tbl_entries_data_15` ***
DROP TABLE IF EXISTS `tbl_entries_data_15`;
CREATE TABLE `tbl_entries_data_15` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_15` ***
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (5, 9, 'no');
INSERT INTO `tbl_entries_data_15` (`id`, `entry_id`, `value`) VALUES (6, 11, 'no');

-- *** STRUCTURE: `tbl_entries_data_16` ***
DROP TABLE IF EXISTS `tbl_entries_data_16`;
CREATE TABLE `tbl_entries_data_16` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_16` ***
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (5, 9, 'no');
INSERT INTO `tbl_entries_data_16` (`id`, `entry_id`, `value`) VALUES (6, 11, 'no');

-- *** STRUCTURE: `tbl_entries_data_17` ***
DROP TABLE IF EXISTS `tbl_entries_data_17`;
CREATE TABLE `tbl_entries_data_17` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_17` ***
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 10, '### Philosophy\r\n\r\nMarkdown is intended to be as easy-to-read and easy-to-write as is feasible.\r\n\r\nReadability, however, is emphasized above all else. A Markdown-formatted\r\ndocument should be publishable as-is, as plain text, without looking\r\nlike it\'s been marked up with tags or formatting instructions. While\r\nMarkdown\'s syntax has been influenced by several existing text-to-HTML\r\nfilters -- including [Setext] [1], [atx] [2], [Textile] [3], [reStructuredText] [4],\r\n[Grutatext] [5], and [EtText] [6] -- the single biggest source of\r\ninspiration for Markdown\'s syntax is the format of plain text email.\r\n\r\n  [1]: http://docutils.sourceforge.net/mirror/setext.html\r\n  [2]: http://www.aaronsw.com/2002/atx/\r\n  [3]: http://textism.com/tools/textile/\r\n  [4]: http://docutils.sourceforge.net/rst.html\r\n  [5]: http://www.triptico.com/software/grutatxt.html\r\n  [6]: http://ettext.taint.org/doc/\r\n\r\nTo this end, Markdown\'s syntax is comprised entirely of punctuation\r\ncharacters, which punctuation characters have been carefully chosen so\r\nas to look like what they mean. E.g., asterisks around a word actually\r\nlook like *emphasis*. Markdown lists look like, well, lists. Even\r\nblockquotes look like quoted passages of text, assuming you\'ve ever\r\nused email.\r\n\r\n\r\n\r\n<h3 id=\"html\">Inline HTML</h3>\r\n\r\nMarkdown\'s syntax is intended for one purpose: to be used as a\r\nformat for *writing* for the web.\r\n\r\nMarkdown is not a replacement for HTML, or even close to it. Its\r\nsyntax is very small, corresponding only to a very small subset of\r\nHTML tags. The idea is *not* to create a syntax that makes it easier\r\nto insert HTML tags. In my opinion, HTML tags are already easy to\r\ninsert. The idea for Markdown is to make it easy to read, write, and\r\nedit prose. HTML is a *publishing* format; Markdown is a *writing*\r\nformat. Thus, Markdown\'s formatting syntax only addresses issues that\r\ncan be conveyed in plain text.\r\n\r\nFor any markup that is not covered by Markdown\'s syntax, you simply\r\nuse HTML itself. There\'s no need to preface it or delimit it to\r\nindicate that you\'re switching from Markdown to HTML; you just use\r\nthe tags.\r\n\r\nThe only restrictions are that block-level HTML elements -- e.g. `<div>`,\r\n`<table>`, `<pre>`, `<p>`, etc. -- must be separated from surrounding\r\ncontent by blank lines, and the start and end tags of the block should\r\nnot be indented with tabs or spaces. Markdown is smart enough not\r\nto add extra (unwanted) `<p>` tags around HTML block-level tags.\r\n\r\nFor example, to add an HTML table to a Markdown article:\r\n\r\n    This is a regular paragraph.\r\n\r\n    <table>\r\n        <tr>\r\n            <td>Foo</td>\r\n        </tr>\r\n    </table>\r\n\r\n    This is another regular paragraph.\r\n\r\nNote that Markdown formatting syntax is not processed within block-level\r\nHTML tags. E.g., you can\'t use Markdown-style `*emphasis*` inside an\r\nHTML block.\r\n\r\nSpan-level HTML tags -- e.g. `<span>`, `<cite>`, or `<del>` -- can be\r\nused anywhere in a Markdown paragraph, list item, or header. If you\r\nwant, you can even use HTML tags instead of Markdown formatting; e.g. if\r\nyou\'d prefer to use HTML `<a>` or `<img>` tags instead of Markdown\'s\r\nlink or image syntax, go right ahead.\r\n\r\nUnlike block-level HTML tags, Markdown syntax *is* processed within\r\nspan-level tags.\r\n\r\n\r\n<h3 id=\"autoescape\">Automatic Escaping for Special Characters</h3>\r\n\r\nIn HTML, there are two characters that demand special treatment: `<`\r\nand `&`. Left angle brackets are used to start tags; ampersands are\r\nused to denote HTML entities. If you want to use them as literal\r\ncharacters, you must escape them as entities, e.g. `&lt;`, and\r\n`&amp;`.\r\n\r\nAmpersands in particular are bedeviling for web writers. If you want to\r\nwrite about \'AT&T\', you need to write \'`AT&amp;T`\'. You even need to\r\nescape ampersands within URLs. Thus, if you want to link to:\r\n\r\n    http://images.google.com/images?num=30&q=larry+bird\r\n\r\nyou need to encode the URL as:\r\n\r\n    http://images.google.com/images?num=30&amp;q=larry+bird\r\n\r\nin your anchor tag `href` attribute. Needless to say, this is easy to\r\nforget, and is probably the single most common source of HTML validation\r\nerrors in otherwise well-marked-up web sites.\r\n\r\nMarkdown allows you to use these characters naturally, taking care of\r\nall the necessary escaping for you. If you use an ampersand as part of\r\nan HTML entity, it remains unchanged; otherwise it will be translated\r\ninto `&amp;`.\r\n\r\nSo, if you want to include a copyright symbol in your article, you can write:\r\n\r\n    &copy;\r\n\r\nand Markdown will leave it alone. But if you write:\r\n\r\n    AT&T\r\n\r\nMarkdown will translate it to:\r\n\r\n    AT&amp;T\r\n\r\nSimilarly, because Markdown supports [inline HTML](#html), if you use\r\nangle brackets as delimiters for HTML tags, Markdown will treat them as\r\nsuch. But if you write:\r\n\r\n    4 < 5\r\n\r\nMarkdown will translate it to:\r\n\r\n    4 &lt; 5\r\n\r\nHowever, inside Markdown code spans and blocks, angle brackets and\r\nampersands are *always* encoded automatically. This makes it easy to use\r\nMarkdown to write about HTML code. (As opposed to raw HTML, which is a\r\nterrible format for writing about HTML syntax, because every single `<`\r\nand `&` in your example code needs to be escaped.)\r\n\r\n\r\n* * *\r\n', '<h3>Philosophy</h3>\n\n<p>Markdown is intended to be as easy-to-read and easy-to-write as is feasible.</p>\n\n<p>Readability, however, is emphasized above all else. A Markdown-formatted\ndocument should be publishable as-is, as plain text, without looking\nlike it\'s been marked up with tags or formatting instructions. While\nMarkdown\'s syntax has been influenced by several existing text-to-HTML\nfilters -- including <a href=\"http://docutils.sourceforge.net/mirror/setext.html\">Setext</a>, <a href=\"http://www.aaronsw.com/2002/atx/\">atx</a>, <a href=\"http://textism.com/tools/textile/\">Textile</a>, <a href=\"http://docutils.sourceforge.net/rst.html\">reStructuredText</a>,\n<a href=\"http://www.triptico.com/software/grutatxt.html\">Grutatext</a>, and <a href=\"http://ettext.taint.org/doc/\">EtText</a> -- the single biggest source of\ninspiration for Markdown\'s syntax is the format of plain text email.</p>\n\n<p>To this end, Markdown\'s syntax is comprised entirely of punctuation\ncharacters, which punctuation characters have been carefully chosen so\nas to look like what they mean. E.g., asterisks around a word actually\nlook like <em>emphasis</em>. Markdown lists look like, well, lists. Even\nblockquotes look like quoted passages of text, assuming you\'ve ever\nused email.</p>\n\n<h3>Inline HTML</h3>\n\n<p>Markdown\'s syntax is intended for one purpose: to be used as a\nformat for <em>writing</em> for the web.</p>\n\n<p>Markdown is not a replacement for HTML, or even close to it. Its\nsyntax is very small, corresponding only to a very small subset of\nHTML tags. The idea is <em>not</em> to create a syntax that makes it easier\nto insert HTML tags. In my opinion, HTML tags are already easy to\ninsert. The idea for Markdown is to make it easy to read, write, and\nedit prose. HTML is a <em>publishing</em> format; Markdown is a <em>writing</em>\nformat. Thus, Markdown\'s formatting syntax only addresses issues that\ncan be conveyed in plain text.</p>\n\n<p>For any markup that is not covered by Markdown\'s syntax, you simply\nuse HTML itself. There\'s no need to preface it or delimit it to\nindicate that you\'re switching from Markdown to HTML; you just use\nthe tags.</p>\n\n<p>The only restrictions are that block-level HTML elements -- e.g. <code>&lt;div&gt;</code>,\n<code>&lt;table&gt;</code>, <code>&lt;pre&gt;</code>, <code>&lt;p&gt;</code>, etc. -- must be separated from surrounding\ncontent by blank lines, and the start and end tags of the block should\nnot be indented with tabs or spaces. Markdown is smart enough not\nto add extra (unwanted) <code>&lt;p&gt;</code> tags around HTML block-level tags.</p>\n\n<p>For example, to add an HTML table to a Markdown article:</p>\n\n<pre><code>This is a regular paragraph.\n\n&lt;table&gt;\n    &lt;tr&gt;\n        &lt;td&gt;Foo&lt;/td&gt;\n    &lt;/tr&gt;\n&lt;/table&gt;\n\nThis is another regular paragraph.\n</code></pre>\n\n<p>Note that Markdown formatting syntax is not processed within block-level\nHTML tags. E.g., you can\'t use Markdown-style <code>*emphasis*</code> inside an\nHTML block.</p>\n\n<p>Span-level HTML tags -- e.g. <code>&lt;span&gt;</code>, <code>&lt;cite&gt;</code>, or <code>&lt;del&gt;</code> -- can be\nused anywhere in a Markdown paragraph, list item, or header. If you\nwant, you can even use HTML tags instead of Markdown formatting; e.g. if\nyou\'d prefer to use HTML <code>&lt;a&gt;</code> or <code>&lt;img&gt;</code> tags instead of Markdown\'s\nlink or image syntax, go right ahead.</p>\n\n<p>Unlike block-level HTML tags, Markdown syntax <em>is</em> processed within\nspan-level tags.</p>\n\n<h3>Automatic Escaping for Special Characters</h3>\n\n<p>In HTML, there are two characters that demand special treatment: <code>&lt;</code>\nand <code>&amp;</code>. Left angle brackets are used to start tags; ampersands are\nused to denote HTML entities. If you want to use them as literal\ncharacters, you must escape them as entities, e.g. <code>&amp;lt;</code>, and\n<code>&amp;amp;</code>.</p>\n\n<p>Ampersands in particular are bedeviling for web writers. If you want to\nwrite about \'AT&amp;T\', you need to write \'<code>AT&amp;amp;T</code>\'. You even need to\nescape ampersands within URLs. Thus, if you want to link to:</p>\n\n<pre><code>http://images.google.com/images?num=30&amp;q=larry+bird\n</code></pre>\n\n<p>you need to encode the URL as:</p>\n\n<pre><code>http://images.google.com/images?num=30&amp;amp;q=larry+bird\n</code></pre>\n\n<p>in your anchor tag <code>href</code> attribute. Needless to say, this is easy to\nforget, and is probably the single most common source of HTML validation\nerrors in otherwise well-marked-up web sites.</p>\n\n<p>Markdown allows you to use these characters naturally, taking care of\nall the necessary escaping for you. If you use an ampersand as part of\nan HTML entity, it remains unchanged; otherwise it will be translated\ninto <code>&amp;amp;</code>.</p>\n\n<p>So, if you want to include a copyright symbol in your article, you can write:</p>\n\n<pre><code>&amp;copy;\n</code></pre>\n\n<p>and Markdown will leave it alone. But if you write:</p>\n\n<pre><code>AT&amp;T\n</code></pre>\n\n<p>Markdown will translate it to:</p>\n\n<pre><code>AT&amp;amp;T\n</code></pre>\n\n<p>Similarly, because Markdown supports <a href=\"#html\">inline HTML</a>, if you use\nangle brackets as delimiters for HTML tags, Markdown will treat them as\nsuch. But if you write:</p>\n\n<pre><code>4 &lt; 5\n</code></pre>\n\n<p>Markdown will translate it to:</p>\n\n<pre><code>4 &amp;lt; 5\n</code></pre>\n\n<p>However, inside Markdown code spans and blocks, angle brackets and\nampersands are <em>always</em> encoded automatically. This makes it easy to use\nMarkdown to write about HTML code. (As opposed to raw HTML, which is a\nterrible format for writing about HTML syntax, because every single <code>&lt;</code>\nand <code>&amp;</code> in your example code needs to be escaped.)</p>\n\n<hr />');
INSERT INTO `tbl_entries_data_17` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 12, '<h2 id=\"block\">Block Elements</h2>\r\n\r\n\r\n<h3 id=\"p\">Paragraphs and Line Breaks</h3>\r\n\r\nA paragraph is simply one or more consecutive lines of text, separated\r\nby one or more blank lines. (A blank line is any line that looks like a\r\nblank line -- a line containing nothing but spaces or tabs is considered\r\nblank.) Normal paragraphs should not be indented with spaces or tabs.\r\n\r\nThe implication of the \"one or more consecutive lines of text\" rule is\r\nthat Markdown supports \"hard-wrapped\" text paragraphs. This differs\r\nsignificantly from most other text-to-HTML formatters (including Movable\r\nType\'s \"Convert Line Breaks\" option) which translate every line break\r\ncharacter in a paragraph into a `<br />` tag.\r\n\r\nWhen you *do* want to insert a `<br />` break tag using Markdown, you\r\nend a line with two or more spaces, then type return.\r\n\r\nYes, this takes a tad more effort to create a `<br />`, but a simplistic\r\n\"every line break is a `<br />`\" rule wouldn\'t work for Markdown.\r\nMarkdown\'s email-style [blockquoting][bq] and multi-paragraph [list items][l]\r\nwork best -- and look better -- when you format them with hard breaks.\r\n\r\n  [bq]: #blockquote\r\n  [l]:  #list\r\n\r\n\r\n\r\n<h3 id=\"header\">Headers</h3>\r\n\r\nMarkdown supports two styles of headers, [Setext] [1] and [atx] [2].\r\n\r\nSetext-style headers are \"underlined\" using equal signs (for first-level\r\nheaders) and dashes (for second-level headers). For example:\r\n\r\n    This is an H1\r\n    =============\r\n\r\n    This is an H2\r\n    -------------\r\n\r\nAny number of underlining `=`\'s or `-`\'s will work.\r\n\r\nAtx-style headers use 1-6 hash characters at the start of the line,\r\ncorresponding to header levels 1-6. For example:\r\n\r\n    # This is an H1\r\n\r\n    ## This is an H2\r\n\r\n    ###### This is an H6\r\n\r\nOptionally, you may \"close\" atx-style headers. This is purely\r\ncosmetic -- you can use this if you think it looks better. The\r\nclosing hashes don\'t even need to match the number of hashes\r\nused to open the header. (The number of opening hashes\r\ndetermines the header level.) :\r\n\r\n    # This is an H1 #\r\n\r\n    ## This is an H2 ##\r\n\r\n    ### This is an H3 ######\r\n\r\n\r\n<h3 id=\"blockquote\">Blockquotes</h3>\r\n\r\nMarkdown uses email-style `>` characters for blockquoting. If you\'re\r\nfamiliar with quoting passages of text in an email message, then you\r\nknow how to create a blockquote in Markdown. It looks best if you hard\r\nwrap the text and put a `>` before every line:\r\n\r\n    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\n    > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\n    > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n    > \r\n    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\r\n    > id sem consectetuer libero luctus adipiscing.\r\n\r\nMarkdown allows you to be lazy and only put the `>` before the first\r\nline of a hard-wrapped paragraph:\r\n\r\n    > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\r\n    consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\r\n    Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\r\n\r\n    > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\r\n    id sem consectetuer libero luctus adipiscing.\r\n\r\nBlockquotes can be nested (i.e. a blockquote-in-a-blockquote) by\r\nadding additional levels of `>`:\r\n\r\n    > This is the first level of quoting.\r\n    >\r\n    > > This is nested blockquote.\r\n    >\r\n    > Back to the first level.\r\n\r\nBlockquotes can contain other Markdown elements, including headers, lists,\r\nand code blocks:\r\n\r\n	> ## This is a header.\r\n	> \r\n	> 1.   This is the first list item.\r\n	> 2.   This is the second list item.\r\n	> \r\n	> Here\'s some example code:\r\n	> \r\n	>     return shell_exec(\"echo $input | $markdown_script\");\r\n\r\nAny decent text editor should make email-style quoting easy. For\r\nexample, with BBEdit, you can make a selection and choose Increase\r\nQuote Level from the Text menu.\r\n\r\n\r\n<h3 id=\"list\">Lists</h3>\r\n\r\nMarkdown supports ordered (numbered) and unordered (bulleted) lists.\r\n\r\nUnordered lists use asterisks, pluses, and hyphens -- interchangably\r\n-- as list markers:\r\n\r\n    *   Red\r\n    *   Green\r\n    *   Blue\r\n\r\nis equivalent to:\r\n\r\n    +   Red\r\n    +   Green\r\n    +   Blue\r\n\r\nand:\r\n\r\n    -   Red\r\n    -   Green\r\n    -   Blue\r\n\r\nOrdered lists use numbers followed by periods:\r\n\r\n    1.  Bird\r\n    2.  McHale\r\n    3.  Parish\r\n\r\nIt\'s important to note that the actual numbers you use to mark the\r\nlist have no effect on the HTML output Markdown produces. The HTML\r\nMarkdown produces from the above list is:\r\n\r\n    <ol>\r\n    <li>Bird</li>\r\n    <li>McHale</li>\r\n    <li>Parish</li>\r\n    </ol>\r\n\r\nIf you instead wrote the list in Markdown like this:\r\n\r\n    1.  Bird\r\n    1.  McHale\r\n    1.  Parish\r\n\r\nor even:\r\n\r\n    3. Bird\r\n    1. McHale\r\n    8. Parish\r\n\r\nyou\'d get the exact same HTML output. The point is, if you want to,\r\nyou can use ordinal numbers in your ordered Markdown lists, so that\r\nthe numbers in your source match the numbers in your published HTML.\r\nBut if you want to be lazy, you don\'t have to.\r\n\r\nIf you do use lazy list numbering, however, you should still start the\r\nlist with the number 1. At some point in the future, Markdown may support\r\nstarting ordered lists at an arbitrary number.\r\n\r\nList markers typically start at the left margin, but may be indented by\r\nup to three spaces. List markers must be followed by one or more spaces\r\nor a tab.\r\n\r\nTo make lists look nice, you can wrap items with hanging indents:\r\n\r\n    *   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n        Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\r\n        viverra nec, fringilla in, laoreet vitae, risus.\r\n    *   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\r\n        Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\nBut if you want to be lazy, you don\'t have to:\r\n\r\n    *   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\r\n    viverra nec, fringilla in, laoreet vitae, risus.\r\n    *   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\r\n    Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\nIf list items are separated by blank lines, Markdown will wrap the\r\nitems in `<p>` tags in the HTML output. For example, this input:\r\n\r\n    *   Bird\r\n    *   Magic\r\n\r\nwill turn into:\r\n\r\n    <ul>\r\n    <li>Bird</li>\r\n    <li>Magic</li>\r\n    </ul>\r\n\r\nBut this:\r\n\r\n    *   Bird\r\n\r\n    *   Magic\r\n\r\nwill turn into:\r\n\r\n    <ul>\r\n    <li><p>Bird</p></li>\r\n    <li><p>Magic</p></li>\r\n    </ul>\r\n\r\nList items may consist of multiple paragraphs. Each subsequent\r\nparagraph in a list item must be indented by either 4 spaces\r\nor one tab:\r\n\r\n    1.  This is a list item with two paragraphs. Lorem ipsum dolor\r\n        sit amet, consectetuer adipiscing elit. Aliquam hendrerit\r\n        mi posuere lectus.\r\n\r\n        Vestibulum enim wisi, viverra nec, fringilla in, laoreet\r\n        vitae, risus. Donec sit amet nisl. Aliquam semper ipsum\r\n        sit amet velit.\r\n\r\n    2.  Suspendisse id sem consectetuer libero luctus adipiscing.\r\n\r\nIt looks nice if you indent every line of the subsequent\r\nparagraphs, but here again, Markdown will allow you to be\r\nlazy:\r\n\r\n    *   This is a list item with two paragraphs.\r\n\r\n        This is the second paragraph in the list item. You\'re\r\n    only required to indent the first line. Lorem ipsum dolor\r\n    sit amet, consectetuer adipiscing elit.\r\n\r\n    *   Another item in the same list.\r\n\r\nTo put a blockquote within a list item, the blockquote\'s `>`\r\ndelimiters need to be indented:\r\n\r\n    *   A list item with a blockquote:\r\n\r\n        > This is a blockquote\r\n        > inside a list item.\r\n\r\nTo put a code block within a list item, the code block needs\r\nto be indented *twice* -- 8 spaces or two tabs:\r\n\r\n    *   A list item with a code block:\r\n\r\n            <code goes here>\r\n\r\n\r\nIt\'s worth noting that it\'s possible to trigger an ordered list by\r\naccident, by writing something like this:\r\n\r\n    1986. What a great season.\r\n\r\nIn other words, a *number-period-space* sequence at the beginning of a\r\nline. To avoid this, you can backslash-escape the period:\r\n\r\n    1986. What a great season.\r\n\r\n\r\nMarkdown is intended to be as easy-to-read and easy-to-write as is feasible.\r\n\r\nReadability, however, is emphasized above all else. A Markdown-formatted\r\ndocument should be publishable as-is, as plain text, without looking\r\nlike it\'s been marked up with tags or formatting instructions. While\r\nMarkdown\'s syntax has been influenced by several existing text-to-HTML\r\nfilters -- including [Setext] [1], [atx] [2], [Textile] [3], [reStructuredText] [4],\r\n[Grutatext] [5], and [EtText] [6] -- the single biggest source of\r\ninspiration for Markdown\'s syntax is the format of plain text email.\r\n\r\n  [1]: http://docutils.sourceforge.net/mirror/setext.html\r\n  [2]: http://www.aaronsw.com/2002/atx/\r\n  [3]: http://textism.com/tools/textile/\r\n  [4]: http://docutils.sourceforge.net/rst.html\r\n  [5]: http://www.triptico.com/software/grutatxt.html\r\n  [6]: http://ettext.taint.org/doc/\r\n\r\nTo this end, Markdown\'s syntax is comprised entirely of punctuation\r\ncharacters, which punctuation characters have been carefully chosen so\r\nas to look like what they mean. E.g., asterisks around a word actually\r\nlook like *emphasis*. Markdown lists look like, well, lists. Even\r\nblockquotes look like quoted passages of text, assuming you\'ve ever\r\nused email.\r\n\r\n\r\n\r\n<h3 id=\"html\">Inline HTML</h3>\r\n\r\nMarkdown\'s syntax is intended for one purpose: to be used as a\r\nformat for *writing* for the web.\r\n\r\nMarkdown is not a replacement for HTML, or even close to it. Its\r\nsyntax is very small, corresponding only to a very small subset of\r\nHTML tags. The idea is *not* to create a syntax that makes it easier\r\nto insert HTML tags. In my opinion, HTML tags are already easy to\r\ninsert. The idea for Markdown is to make it easy to read, write, and\r\nedit prose. HTML is a *publishing* format; Markdown is a *writing*\r\nformat. Thus, Markdown\'s formatting syntax only addresses issues that\r\ncan be conveyed in plain text.\r\n\r\nFor any markup that is not covered by Markdown\'s syntax, you simply\r\nuse HTML itself. There\'s no need to preface it or delimit it to\r\nindicate that you\'re switching from Markdown to HTML; you just use\r\nthe tags.\r\n\r\nThe only restrictions are that block-level HTML elements -- e.g. `<div>`,\r\n`<table>`, `<pre>`, `<p>`, etc. -- must be separated from surrounding\r\ncontent by blank lines, and the start and end tags of the block should\r\nnot be indented with tabs or spaces. Markdown is smart enough not\r\nto add extra (unwanted) `<p>` tags around HTML block-level tags.\r\n\r\nFor example, to add an HTML table to a Markdown article:\r\n\r\n    This is a regular paragraph.\r\n\r\n    <table>\r\n        <tr>\r\n            <td>Foo</td>\r\n        </tr>\r\n    </table>\r\n\r\n    This is another regular paragraph.\r\n\r\nNote that Markdown formatting syntax is not processed within block-level\r\nHTML tags. E.g., you can\'t use Markdown-style `*emphasis*` inside an\r\nHTML block.\r\n\r\nSpan-level HTML tags -- e.g. `<span>`, `<cite>`, or `<del>` -- can be\r\nused anywhere in a Markdown paragraph, list item, or header. If you\r\nwant, you can even use HTML tags instead of Markdown formatting; e.g. if\r\nyou\'d prefer to use HTML `<a>` or `<img>` tags instead of Markdown\'s\r\nlink or image syntax, go right ahead.\r\n\r\nUnlike block-level HTML tags, Markdown syntax *is* processed within\r\nspan-level tags.\r\n\r\n\r\n<h3 id=\"autoescape\">Automatic Escaping for Special Characters</h3>\r\n\r\nIn HTML, there are two characters that demand special treatment: `<`\r\nand `&`. Left angle brackets are used to start tags; ampersands are\r\nused to denote HTML entities. If you want to use them as literal\r\ncharacters, you must escape them as entities, e.g. `&lt;`, and\r\n`&amp;`.\r\n\r\nAmpersands in particular are bedeviling for web writers. If you want to\r\nwrite about \'AT&T\', you need to write \'`AT&amp;T`\'. You even need to\r\nescape ampersands within URLs. Thus, if you want to link to:\r\n\r\n    http://images.google.com/images?num=30&q=larry+bird\r\n\r\nyou need to encode the URL as:\r\n\r\n    http://images.google.com/images?num=30&amp;q=larry+bird\r\n\r\nin your anchor tag `href` attribute. Needless to say, this is easy to\r\nforget, and is probably the single most common source of HTML validation\r\nerrors in otherwise well-marked-up web sites.\r\n\r\nMarkdown allows you to use these characters naturally, taking care of\r\nall the necessary escaping for you. If you use an ampersand as part of\r\nan HTML entity, it remains unchanged; otherwise it will be translated\r\ninto `&amp;`.\r\n\r\nSo, if you want to include a copyright symbol in your article, you can write:\r\n\r\n    &copy;\r\n\r\nand Markdown will leave it alone. But if you write:\r\n\r\n    AT&T\r\n\r\nMarkdown will translate it to:\r\n\r\n    AT&amp;T\r\n\r\nSimilarly, because Markdown supports [inline HTML](#html), if you use\r\nangle brackets as delimiters for HTML tags, Markdown will treat them as\r\nsuch. But if you write:\r\n\r\n    4 < 5\r\n\r\nMarkdown will translate it to:\r\n\r\n    4 &lt; 5\r\n\r\nHowever, inside Markdown code spans and blocks, angle brackets and\r\nampersands are *always* encoded automatically. This makes it easy to use\r\nMarkdown to write about HTML code. (As opposed to raw HTML, which is a\r\nterrible format for writing about HTML syntax, because every single `<`\r\nand `&` in your example code needs to be escaped.)\r\n\r\n\r\n* * *\r\n', '<h2>Block Elements</h2>\n\n<h3>Paragraphs and Line Breaks</h3>\n\n<p>A paragraph is simply one or more consecutive lines of text, separated\nby one or more blank lines. (A blank line is any line that looks like a\nblank line -- a line containing nothing but spaces or tabs is considered\nblank.) Normal paragraphs should not be indented with spaces or tabs.</p>\n\n<p>The implication of the \"one or more consecutive lines of text\" rule is\nthat Markdown supports \"hard-wrapped\" text paragraphs. This differs\nsignificantly from most other text-to-HTML formatters (including Movable\nType\'s \"Convert Line Breaks\" option) which translate every line break\ncharacter in a paragraph into a <code>&lt;br /&gt;</code> tag.</p>\n\n<p>When you <em>do</em> want to insert a <code>&lt;br /&gt;</code> break tag using Markdown, you\nend a line with two or more spaces, then type return.</p>\n\n<p>Yes, this takes a tad more effort to create a <code>&lt;br /&gt;</code>, but a simplistic\n\"every line break is a <code>&lt;br /&gt;</code>\" rule wouldn\'t work for Markdown.\nMarkdown\'s email-style <a href=\"#blockquote\">blockquoting</a> and multi-paragraph <a href=\"#list\">list items</a>\nwork best -- and look better -- when you format them with hard breaks.</p>\n\n<h3>Headers</h3>\n\n<p>Markdown supports two styles of headers, <a href=\"http://docutils.sourceforge.net/mirror/setext.html\">Setext</a> and <a href=\"http://www.aaronsw.com/2002/atx/\">atx</a>.</p>\n\n<p>Setext-style headers are \"underlined\" using equal signs (for first-level\nheaders) and dashes (for second-level headers). For example:</p>\n\n<pre><code>This is an H1\n=============\n\nThis is an H2\n-------------\n</code></pre>\n\n<p>Any number of underlining <code>=</code>\'s or <code>-</code>\'s will work.</p>\n\n<p>Atx-style headers use 1-6 hash characters at the start of the line,\ncorresponding to header levels 1-6. For example:</p>\n\n<pre><code># This is an H1\n\n## This is an H2\n\n###### This is an H6\n</code></pre>\n\n<p>Optionally, you may \"close\" atx-style headers. This is purely\ncosmetic -- you can use this if you think it looks better. The\nclosing hashes don\'t even need to match the number of hashes\nused to open the header. (The number of opening hashes\ndetermines the header level.) :</p>\n\n<pre><code># This is an H1 #\n\n## This is an H2 ##\n\n### This is an H3 ######\n</code></pre>\n\n<h3>Blockquotes</h3>\n\n<p>Markdown uses email-style <code>&gt;</code> characters for blockquoting. If you\'re\nfamiliar with quoting passages of text in an email message, then you\nknow how to create a blockquote in Markdown. It looks best if you hard\nwrap the text and put a <code>&gt;</code> before every line:</p>\n\n<pre><code>&gt; This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\n&gt; consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\n&gt; Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\n&gt; \n&gt; Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\n&gt; id sem consectetuer libero luctus adipiscing.\n</code></pre>\n\n<p>Markdown allows you to be lazy and only put the <code>&gt;</code> before the first\nline of a hard-wrapped paragraph:</p>\n\n<pre><code>&gt; This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.\nVestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.\n\n&gt; Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse\nid sem consectetuer libero luctus adipiscing.\n</code></pre>\n\n<p>Blockquotes can be nested (i.e. a blockquote-in-a-blockquote) by\nadding additional levels of <code>&gt;</code>:</p>\n\n<pre><code>&gt; This is the first level of quoting.\n&gt;\n&gt; &gt; This is nested blockquote.\n&gt;\n&gt; Back to the first level.\n</code></pre>\n\n<p>Blockquotes can contain other Markdown elements, including headers, lists,\nand code blocks:</p>\n\n<pre><code>&gt; ## This is a header.\n&gt; \n&gt; 1.   This is the first list item.\n&gt; 2.   This is the second list item.\n&gt; \n&gt; Here\'s some example code:\n&gt; \n&gt;     return shell_exec(\"echo $input | $markdown_script\");\n</code></pre>\n\n<p>Any decent text editor should make email-style quoting easy. For\nexample, with BBEdit, you can make a selection and choose Increase\nQuote Level from the Text menu.</p>\n\n<h3>Lists</h3>\n\n<p>Markdown supports ordered (numbered) and unordered (bulleted) lists.</p>\n\n<p>Unordered lists use asterisks, pluses, and hyphens -- interchangably\n-- as list markers:</p>\n\n<pre><code>*   Red\n*   Green\n*   Blue\n</code></pre>\n\n<p>is equivalent to:</p>\n\n<pre><code>+   Red\n+   Green\n+   Blue\n</code></pre>\n\n<p>and:</p>\n\n<pre><code>-   Red\n-   Green\n-   Blue\n</code></pre>\n\n<p>Ordered lists use numbers followed by periods:</p>\n\n<pre><code>1.  Bird\n2.  McHale\n3.  Parish\n</code></pre>\n\n<p>It\'s important to note that the actual numbers you use to mark the\nlist have no effect on the HTML output Markdown produces. The HTML\nMarkdown produces from the above list is:</p>\n\n<pre><code>&lt;ol&gt;\n&lt;li&gt;Bird&lt;/li&gt;\n&lt;li&gt;McHale&lt;/li&gt;\n&lt;li&gt;Parish&lt;/li&gt;\n&lt;/ol&gt;\n</code></pre>\n\n<p>If you instead wrote the list in Markdown like this:</p>\n\n<pre><code>1.  Bird\n1.  McHale\n1.  Parish\n</code></pre>\n\n<p>or even:</p>\n\n<pre><code>3. Bird\n1. McHale\n8. Parish\n</code></pre>\n\n<p>you\'d get the exact same HTML output. The point is, if you want to,\nyou can use ordinal numbers in your ordered Markdown lists, so that\nthe numbers in your source match the numbers in your published HTML.\nBut if you want to be lazy, you don\'t have to.</p>\n\n<p>If you do use lazy list numbering, however, you should still start the\nlist with the number 1. At some point in the future, Markdown may support\nstarting ordered lists at an arbitrary number.</p>\n\n<p>List markers typically start at the left margin, but may be indented by\nup to three spaces. List markers must be followed by one or more spaces\nor a tab.</p>\n\n<p>To make lists look nice, you can wrap items with hanging indents:</p>\n\n<pre><code>*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\n    Aliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\n    viverra nec, fringilla in, laoreet vitae, risus.\n*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\n    Suspendisse id sem consectetuer libero luctus adipiscing.\n</code></pre>\n\n<p>But if you want to be lazy, you don\'t have to:</p>\n\n<pre><code>*   Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nAliquam hendrerit mi posuere lectus. Vestibulum enim wisi,\nviverra nec, fringilla in, laoreet vitae, risus.\n*   Donec sit amet nisl. Aliquam semper ipsum sit amet velit.\nSuspendisse id sem consectetuer libero luctus adipiscing.\n</code></pre>\n\n<p>If list items are separated by blank lines, Markdown will wrap the\nitems in <code>&lt;p&gt;</code> tags in the HTML output. For example, this input:</p>\n\n<pre><code>*   Bird\n*   Magic\n</code></pre>\n\n<p>will turn into:</p>\n\n<pre><code>&lt;ul&gt;\n&lt;li&gt;Bird&lt;/li&gt;\n&lt;li&gt;Magic&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>But this:</p>\n\n<pre><code>*   Bird\n\n*   Magic\n</code></pre>\n\n<p>will turn into:</p>\n\n<pre><code>&lt;ul&gt;\n&lt;li&gt;&lt;p&gt;Bird&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;Magic&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n</code></pre>\n\n<p>List items may consist of multiple paragraphs. Each subsequent\nparagraph in a list item must be indented by either 4 spaces\nor one tab:</p>\n\n<pre><code>1.  This is a list item with two paragraphs. Lorem ipsum dolor\n    sit amet, consectetuer adipiscing elit. Aliquam hendrerit\n    mi posuere lectus.\n\n    Vestibulum enim wisi, viverra nec, fringilla in, laoreet\n    vitae, risus. Donec sit amet nisl. Aliquam semper ipsum\n    sit amet velit.\n\n2.  Suspendisse id sem consectetuer libero luctus adipiscing.\n</code></pre>\n\n<p>It looks nice if you indent every line of the subsequent\nparagraphs, but here again, Markdown will allow you to be\nlazy:</p>\n\n<pre><code>*   This is a list item with two paragraphs.\n\n    This is the second paragraph in the list item. You\'re\nonly required to indent the first line. Lorem ipsum dolor\nsit amet, consectetuer adipiscing elit.\n\n*   Another item in the same list.\n</code></pre>\n\n<p>To put a blockquote within a list item, the blockquote\'s <code>&gt;</code>\ndelimiters need to be indented:</p>\n\n<pre><code>*   A list item with a blockquote:\n\n    &gt; This is a blockquote\n    &gt; inside a list item.\n</code></pre>\n\n<p>To put a code block within a list item, the code block needs\nto be indented <em>twice</em> -- 8 spaces or two tabs:</p>\n\n<pre><code>*   A list item with a code block:\n\n        &lt;code goes here&gt;\n</code></pre>\n\n<p>It\'s worth noting that it\'s possible to trigger an ordered list by\naccident, by writing something like this:</p>\n\n<pre><code>1986. What a great season.\n</code></pre>\n\n<p>In other words, a <em>number-period-space</em> sequence at the beginning of a\nline. To avoid this, you can backslash-escape the period:</p>\n\n<pre><code>1986. What a great season.\n</code></pre>\n\n<p>Markdown is intended to be as easy-to-read and easy-to-write as is feasible.</p>\n\n<p>Readability, however, is emphasized above all else. A Markdown-formatted\ndocument should be publishable as-is, as plain text, without looking\nlike it\'s been marked up with tags or formatting instructions. While\nMarkdown\'s syntax has been influenced by several existing text-to-HTML\nfilters -- including <a href=\"http://docutils.sourceforge.net/mirror/setext.html\">Setext</a>, <a href=\"http://www.aaronsw.com/2002/atx/\">atx</a>, <a href=\"http://textism.com/tools/textile/\">Textile</a>, <a href=\"http://docutils.sourceforge.net/rst.html\">reStructuredText</a>,\n<a href=\"http://www.triptico.com/software/grutatxt.html\">Grutatext</a>, and <a href=\"http://ettext.taint.org/doc/\">EtText</a> -- the single biggest source of\ninspiration for Markdown\'s syntax is the format of plain text email.</p>\n\n<p>To this end, Markdown\'s syntax is comprised entirely of punctuation\ncharacters, which punctuation characters have been carefully chosen so\nas to look like what they mean. E.g., asterisks around a word actually\nlook like <em>emphasis</em>. Markdown lists look like, well, lists. Even\nblockquotes look like quoted passages of text, assuming you\'ve ever\nused email.</p>\n\n<h3>Inline HTML</h3>\n\n<p>Markdown\'s syntax is intended for one purpose: to be used as a\nformat for <em>writing</em> for the web.</p>\n\n<p>Markdown is not a replacement for HTML, or even close to it. Its\nsyntax is very small, corresponding only to a very small subset of\nHTML tags. The idea is <em>not</em> to create a syntax that makes it easier\nto insert HTML tags. In my opinion, HTML tags are already easy to\ninsert. The idea for Markdown is to make it easy to read, write, and\nedit prose. HTML is a <em>publishing</em> format; Markdown is a <em>writing</em>\nformat. Thus, Markdown\'s formatting syntax only addresses issues that\ncan be conveyed in plain text.</p>\n\n<p>For any markup that is not covered by Markdown\'s syntax, you simply\nuse HTML itself. There\'s no need to preface it or delimit it to\nindicate that you\'re switching from Markdown to HTML; you just use\nthe tags.</p>\n\n<p>The only restrictions are that block-level HTML elements -- e.g. <code>&lt;div&gt;</code>,\n<code>&lt;table&gt;</code>, <code>&lt;pre&gt;</code>, <code>&lt;p&gt;</code>, etc. -- must be separated from surrounding\ncontent by blank lines, and the start and end tags of the block should\nnot be indented with tabs or spaces. Markdown is smart enough not\nto add extra (unwanted) <code>&lt;p&gt;</code> tags around HTML block-level tags.</p>\n\n<p>For example, to add an HTML table to a Markdown article:</p>\n\n<pre><code>This is a regular paragraph.\n\n&lt;table&gt;\n    &lt;tr&gt;\n        &lt;td&gt;Foo&lt;/td&gt;\n    &lt;/tr&gt;\n&lt;/table&gt;\n\nThis is another regular paragraph.\n</code></pre>\n\n<p>Note that Markdown formatting syntax is not processed within block-level\nHTML tags. E.g., you can\'t use Markdown-style <code>*emphasis*</code> inside an\nHTML block.</p>\n\n<p>Span-level HTML tags -- e.g. <code>&lt;span&gt;</code>, <code>&lt;cite&gt;</code>, or <code>&lt;del&gt;</code> -- can be\nused anywhere in a Markdown paragraph, list item, or header. If you\nwant, you can even use HTML tags instead of Markdown formatting; e.g. if\nyou\'d prefer to use HTML <code>&lt;a&gt;</code> or <code>&lt;img&gt;</code> tags instead of Markdown\'s\nlink or image syntax, go right ahead.</p>\n\n<p>Unlike block-level HTML tags, Markdown syntax <em>is</em> processed within\nspan-level tags.</p>\n\n<h3>Automatic Escaping for Special Characters</h3>\n\n<p>In HTML, there are two characters that demand special treatment: <code>&lt;</code>\nand <code>&amp;</code>. Left angle brackets are used to start tags; ampersands are\nused to denote HTML entities. If you want to use them as literal\ncharacters, you must escape them as entities, e.g. <code>&amp;lt;</code>, and\n<code>&amp;amp;</code>.</p>\n\n<p>Ampersands in particular are bedeviling for web writers. If you want to\nwrite about \'AT&amp;T\', you need to write \'<code>AT&amp;amp;T</code>\'. You even need to\nescape ampersands within URLs. Thus, if you want to link to:</p>\n\n<pre><code>http://images.google.com/images?num=30&amp;q=larry+bird\n</code></pre>\n\n<p>you need to encode the URL as:</p>\n\n<pre><code>http://images.google.com/images?num=30&amp;amp;q=larry+bird\n</code></pre>\n\n<p>in your anchor tag <code>href</code> attribute. Needless to say, this is easy to\nforget, and is probably the single most common source of HTML validation\nerrors in otherwise well-marked-up web sites.</p>\n\n<p>Markdown allows you to use these characters naturally, taking care of\nall the necessary escaping for you. If you use an ampersand as part of\nan HTML entity, it remains unchanged; otherwise it will be translated\ninto <code>&amp;amp;</code>.</p>\n\n<p>So, if you want to include a copyright symbol in your article, you can write:</p>\n\n<pre><code>&amp;copy;\n</code></pre>\n\n<p>and Markdown will leave it alone. But if you write:</p>\n\n<pre><code>AT&amp;T\n</code></pre>\n\n<p>Markdown will translate it to:</p>\n\n<pre><code>AT&amp;amp;T\n</code></pre>\n\n<p>Similarly, because Markdown supports <a href=\"#html\">inline HTML</a>, if you use\nangle brackets as delimiters for HTML tags, Markdown will treat them as\nsuch. But if you write:</p>\n\n<pre><code>4 &lt; 5\n</code></pre>\n\n<p>Markdown will translate it to:</p>\n\n<pre><code>4 &amp;lt; 5\n</code></pre>\n\n<p>However, inside Markdown code spans and blocks, angle brackets and\nampersands are <em>always</em> encoded automatically. This makes it easy to use\nMarkdown to write about HTML code. (As opposed to raw HTML, which is a\nterrible format for writing about HTML syntax, because every single <code>&lt;</code>\nand <code>&amp;</code> in your example code needs to be escaped.)</p>\n\n<hr />');

-- *** STRUCTURE: `tbl_entries_data_18` ***
DROP TABLE IF EXISTS `tbl_entries_data_18`;
CREATE TABLE `tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_18` ***
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (5, 10, 9);
INSERT INTO `tbl_entries_data_18` (`id`, `entry_id`, `relation_id`) VALUES (6, 12, 11);

-- *** STRUCTURE: `tbl_entries_data_19` ***
DROP TABLE IF EXISTS `tbl_entries_data_19`;
CREATE TABLE `tbl_entries_data_19` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_19` ***
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 10, '2010-05-30T16:53:00-07:00', 1275263580, 1275263580);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 12, '2010-05-30T17:06:00-07:00', 1275264360, 1275264360);
INSERT INTO `tbl_entries_data_19` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 8, '2010-05-30T22:39:57-07:00', 1275284397, 1275309597);

-- *** STRUCTURE: `tbl_entries_data_2` ***
DROP TABLE IF EXISTS `tbl_entries_data_2`;
CREATE TABLE `tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_2` ***
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `username`, `password`) VALUES (2, 8, 'stephen', '6a204bd89f3c8348afd5c77c717a097a');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `username`, `password`) VALUES (3, 13, 'john', '6a204bd89f3c8348afd5c77c717a097a');
INSERT INTO `tbl_entries_data_2` (`id`, `entry_id`, `username`, `password`) VALUES (4, 14, 'jane', '6a204bd89f3c8348afd5c77c717a097a');

-- *** STRUCTURE: `tbl_entries_data_20` ***
DROP TABLE IF EXISTS `tbl_entries_data_20`;
CREATE TABLE `tbl_entries_data_20` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `member_id` (`member_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_20` ***
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `member_id`, `username`) VALUES (5, 10, 8, 'stephen');
INSERT INTO `tbl_entries_data_20` (`id`, `entry_id`, `member_id`, `username`) VALUES (6, 12, 8, 'stephen');

-- *** STRUCTURE: `tbl_entries_data_21` ***
DROP TABLE IF EXISTS `tbl_entries_data_21`;
CREATE TABLE `tbl_entries_data_21` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 2, 'home', 'Home');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 3, 'about', 'About');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 4, 'journal', 'Journal');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 5, 'forum', 'Forum');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 6, 'calendar', 'Calendar');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 42, 'overview', 'Overview');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 43, 'clients', 'Clients');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 44, 'projects', 'Projects');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 45, 'timesheet', 'Timesheet');

-- *** STRUCTURE: `tbl_entries_data_22` ***
DROP TABLE IF EXISTS `tbl_entries_data_22`;
CREATE TABLE `tbl_entries_data_22` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `page_id` int(11) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (8, 2, 16, 'Home', 'home');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (9, 3, 17, 'About', 'about');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (3, 4, 19, 'Journal', 'journal');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (4, 5, 1, 'Forum', 'forum');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (14, 6, 20, 'Calendar', 'calendar');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (7, 7, 18, 'Contact', 'contact');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (10, 42, 25, 'Overview', 'overview');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (11, 43, 26, 'Clients', 'clients');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (12, 44, 27, 'Projects', 'projects');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (13, 45, 28, 'Timesheet', 'timesheet');

-- *** STRUCTURE: `tbl_entries_data_23` ***
DROP TABLE IF EXISTS `tbl_entries_data_23`;
CREATE TABLE `tbl_entries_data_23` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'send-us-a-message', 'Send us a message');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 2, 'take-me-home', 'Take Me Home');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 3, 'what-its-all-about', 'What It\'s All About');

-- *** STRUCTURE: `tbl_entries_data_24` ***
DROP TABLE IF EXISTS `tbl_entries_data_24`;
CREATE TABLE `tbl_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 2, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 3, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 4, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 5, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 6, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, 'Please use the contact form below to send us a message.', '<p>Please use the contact form below to send us a message.</p>\n');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 42, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 45, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_25` ***
DROP TABLE IF EXISTS `tbl_entries_data_25`;
CREATE TABLE `tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 2, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 3, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 4, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 5, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 6, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 42, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 45, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (8, 2, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (9, 3, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (3, 4, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (4, 5, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (14, 6, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (7, 7, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (10, 42, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (11, 43, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (12, 44, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (13, 45, 41);

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (8, 2, 1);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (9, 3, 2);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (3, 4, 3);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (4, 5, 4);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (14, 6, 10);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (7, 7, 5);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (10, 42, 6);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (11, 43, 7);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (12, 44, 8);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (13, 45, 9);

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (8, 2, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (9, 3, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (3, 4, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (4, 5, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (14, 6, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (7, 7, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (10, 42, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (11, 43, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (12, 44, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (13, 45, 'yes');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***

-- *** STRUCTURE: `tbl_entries_data_3` ***
DROP TABLE IF EXISTS `tbl_entries_data_3`;
CREATE TABLE `tbl_entries_data_3` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_3` ***
INSERT INTO `tbl_entries_data_3` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'http-bauhouseca', 'http://bauhouse.ca/');

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_30` ***

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_32` ***

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_33` ***

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_36` ***

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_37` ***

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_38` ***

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_39` ***

-- *** STRUCTURE: `tbl_entries_data_4` ***
DROP TABLE IF EXISTS `tbl_entries_data_4`;
CREATE TABLE `tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_4` ***
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'bauhouse-gmailcom', 'bauhouse@gmail.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 13, 'bauhouse-gmailcom', 'bauhouse@gmail.com');
INSERT INTO `tbl_entries_data_4` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 14, 'bauhouse-gmailcom', 'bauhouse@gmail.com');

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_40` ***

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_42` ***

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***

-- *** STRUCTURE: `tbl_entries_data_5` ***
DROP TABLE IF EXISTS `tbl_entries_data_5`;
CREATE TABLE `tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`,`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_5` ***
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `role_id`) VALUES (2, 8, 4);
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `role_id`) VALUES (3, 13, 3);
INSERT INTO `tbl_entries_data_5` (`id`, `entry_id`, `role_id`) VALUES (4, 14, 3);

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_50` ***
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'main', 'Main');
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 41, 'projects', 'Projects');

-- *** STRUCTURE: `tbl_entries_data_51` ***
DROP TABLE IF EXISTS `tbl_entries_data_51`;
CREATE TABLE `tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_51` ***
INSERT INTO `tbl_entries_data_51` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 1, 'Main Navigation Menu', '<p>Main Navigation Menu</p>\n');
INSERT INTO `tbl_entries_data_51` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 41, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 17, 'tools', 'Tools');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 18, 'files', 'Files');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 19, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 20, 'sites', 'Sites');

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 17, 'Noteworthy applications and tools of the trade', '<p>Noteworthy applications and tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 18, 'Images and downloads', '<p>Images and downloads</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 19, 'Interesting articles', '<p>Interesting articles</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 20, 'Sites we like to frequent', '<p>Sites we like to frequent</p>\n');

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_54` ***

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***

-- *** STRUCTURE: `tbl_entries_data_56` ***
DROP TABLE IF EXISTS `tbl_entries_data_56`;
CREATE TABLE `tbl_entries_data_56` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_57` ***

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_58` ***

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_59` ***

-- *** STRUCTURE: `tbl_entries_data_6` ***
DROP TABLE IF EXISTS `tbl_entries_data_6`;
CREATE TABLE `tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_6` ***
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'can', 'CAN');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 13, 'aus', 'AUS');
INSERT INTO `tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 14, 'can', 'CAN');

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_60` ***

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_61` ***

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_62` ***

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_63` ***

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_64` ***

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_66` ***

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_69` ***

-- *** STRUCTURE: `tbl_entries_data_7` ***
DROP TABLE IF EXISTS `tbl_entries_data_7`;
CREATE TABLE `tbl_entries_data_7` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_7` ***
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 8, 'abbotsford', 'Abbotsford');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 13, 'new-york', 'New York');
INSERT INTO `tbl_entries_data_7` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 14, 'abbotsford', 'Abbotsford');

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_70` ***

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'abc-company', 'ABC Company');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'advertising', 'Advertising');

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 15, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***

-- *** STRUCTURE: `tbl_entries_data_77` ***
DROP TABLE IF EXISTS `tbl_entries_data_77`;
CREATE TABLE `tbl_entries_data_77` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_77` ***

-- *** STRUCTURE: `tbl_entries_data_78` ***
DROP TABLE IF EXISTS `tbl_entries_data_78`;
CREATE TABLE `tbl_entries_data_78` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_78` ***
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `relation_id`) VALUES (2, 15, NULL);

-- *** STRUCTURE: `tbl_entries_data_79` ***
DROP TABLE IF EXISTS `tbl_entries_data_79`;
CREATE TABLE `tbl_entries_data_79` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_79` ***

-- *** STRUCTURE: `tbl_entries_data_8` ***
DROP TABLE IF EXISTS `tbl_entries_data_8`;
CREATE TABLE `tbl_entries_data_8` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_8` ***
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`) VALUES (2, 8, -8);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`) VALUES (3, 13, -5);
INSERT INTO `tbl_entries_data_8` (`id`, `entry_id`, `value`) VALUES (4, 14, -8);

-- *** STRUCTURE: `tbl_entries_data_80` ***
DROP TABLE IF EXISTS `tbl_entries_data_80`;
CREATE TABLE `tbl_entries_data_80` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_80` ***

-- *** STRUCTURE: `tbl_entries_data_81` ***
DROP TABLE IF EXISTS `tbl_entries_data_81`;
CREATE TABLE `tbl_entries_data_81` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_81` ***

-- *** STRUCTURE: `tbl_entries_data_82` ***
DROP TABLE IF EXISTS `tbl_entries_data_82`;
CREATE TABLE `tbl_entries_data_82` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_82` ***

-- *** STRUCTURE: `tbl_entries_data_83` ***
DROP TABLE IF EXISTS `tbl_entries_data_83`;
CREATE TABLE `tbl_entries_data_83` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_83` ***

-- *** STRUCTURE: `tbl_entries_data_84` ***
DROP TABLE IF EXISTS `tbl_entries_data_84`;
CREATE TABLE `tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_84` ***

-- *** STRUCTURE: `tbl_entries_data_85` ***
DROP TABLE IF EXISTS `tbl_entries_data_85`;
CREATE TABLE `tbl_entries_data_85` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_85` ***

-- *** STRUCTURE: `tbl_entries_data_86` ***
DROP TABLE IF EXISTS `tbl_entries_data_86`;
CREATE TABLE `tbl_entries_data_86` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_86` ***

-- *** STRUCTURE: `tbl_entries_data_87` ***
DROP TABLE IF EXISTS `tbl_entries_data_87`;
CREATE TABLE `tbl_entries_data_87` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_87` ***
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 16, 'abc-company-website', 'ABC Company Website');

-- *** STRUCTURE: `tbl_entries_data_88` ***
DROP TABLE IF EXISTS `tbl_entries_data_88`;
CREATE TABLE `tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_88` ***
INSERT INTO `tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (4, 16, 15);

-- *** STRUCTURE: `tbl_entries_data_89` ***
DROP TABLE IF EXISTS `tbl_entries_data_89`;
CREATE TABLE `tbl_entries_data_89` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_89` ***
INSERT INTO `tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (4, 16, 16);

-- *** STRUCTURE: `tbl_entries_data_9` ***
DROP TABLE IF EXISTS `tbl_entries_data_9`;
CREATE TABLE `tbl_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_9` ***
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (2, 8, 'yes');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (3, 13, 'no');
INSERT INTO `tbl_entries_data_9` (`id`, `entry_id`, `value`) VALUES (4, 14, 'no');

-- *** STRUCTURE: `tbl_entries_data_90` ***
DROP TABLE IF EXISTS `tbl_entries_data_90`;
CREATE TABLE `tbl_entries_data_90` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_90` ***
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (4, 16, 37);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (5, 16, 38);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (6, 16, 39);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (7, 16, 40);

-- *** STRUCTURE: `tbl_entries_data_91` ***
DROP TABLE IF EXISTS `tbl_entries_data_91`;
CREATE TABLE `tbl_entries_data_91` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_91` ***
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (4, 16, NULL);

-- *** STRUCTURE: `tbl_entries_data_92` ***
DROP TABLE IF EXISTS `tbl_entries_data_92`;
CREATE TABLE `tbl_entries_data_92` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_92` ***
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (4, 16, '2010-05-31T23:26:00-07:00', 1275373560, 1275373560);

-- *** STRUCTURE: `tbl_entries_data_93` ***
DROP TABLE IF EXISTS `tbl_entries_data_93`;
CREATE TABLE `tbl_entries_data_93` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_93` ***
INSERT INTO `tbl_entries_data_93` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (4, 16, NULL, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_94` ***
DROP TABLE IF EXISTS `tbl_entries_data_94`;
CREATE TABLE `tbl_entries_data_94` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_94` ***
INSERT INTO `tbl_entries_data_94` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 16, 'created', 'Created');

-- *** STRUCTURE: `tbl_entries_data_95` ***
DROP TABLE IF EXISTS `tbl_entries_data_95`;
CREATE TABLE `tbl_entries_data_95` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_95` ***
INSERT INTO `tbl_entries_data_95` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 16, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_96` ***
DROP TABLE IF EXISTS `tbl_entries_data_96`;
CREATE TABLE `tbl_entries_data_96` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`),
  FULLTEXT KEY `value_formatted` (`value_formatted`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_96` ***
INSERT INTO `tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`, `value_formatted`) VALUES (4, 16, NULL, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_97` ***
DROP TABLE IF EXISTS `tbl_entries_data_97`;
CREATE TABLE `tbl_entries_data_97` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_97` ***

-- *** STRUCTURE: `tbl_entries_data_98` ***
DROP TABLE IF EXISTS `tbl_entries_data_98`;
CREATE TABLE `tbl_entries_data_98` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_98` ***

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 7, 1, '2010-05-30 13:01:51', '2010-05-30 20:01:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 4, 1, '2010-05-30 13:02:59', '2010-05-30 20:02:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (3, 4, 1, '2010-05-30 13:03:09', '2010-05-30 20:03:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 4, 1, '2010-05-30 13:03:19', '2010-05-30 20:03:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (5, 4, 1, '2010-05-30 13:03:33', '2010-05-30 20:03:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 4, 1, '2010-05-30 13:03:46', '2010-05-30 20:03:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (7, 4, 1, '2010-05-30 13:03:55', '2010-05-30 20:03:55');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (8, 1, 1, '2010-05-30 16:24:42', '2010-05-30 23:24:42');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 2, 1, '2010-05-30 16:53:06', '2010-05-30 23:53:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 3, 1, '2010-05-30 16:53:06', '2010-05-30 23:53:06');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 2, 1, '2010-05-30 17:06:21', '2010-05-31 00:06:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 3, 1, '2010-05-30 17:06:21', '2010-05-31 00:06:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 1, 1, '2010-05-31 21:18:27', '2010-06-01 04:18:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 1, 1, '2010-05-31 21:23:51', '2010-06-01 04:23:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 13, 1, '2010-05-31 23:26:13', '2010-06-01 06:26:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 14, 1, '2010-05-31 23:29:28', '2010-06-01 06:29:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 8, 1, '2010-06-01 07:55:14', '2010-06-01 14:55:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 8, 1, '2010-06-01 07:55:57', '2010-06-01 14:55:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 8, 1, '2010-06-01 07:57:32', '2010-06-01 14:57:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 8, 1, '2010-06-01 07:58:44', '2010-06-01 14:58:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 18, 1, '2010-06-01 09:01:11', '2010-06-01 16:01:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 18, 1, '2010-06-01 09:01:37', '2010-06-01 16:01:37');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 18, 1, '2010-06-01 09:01:59', '2010-06-01 16:01:59');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 18, 1, '2010-06-01 09:03:43', '2010-06-01 16:03:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 18, 1, '2010-06-01 09:04:18', '2010-06-01 16:04:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 19, 1, '2010-06-01 09:10:49', '2010-06-01 16:10:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 19, 1, '2010-06-01 09:12:24', '2010-06-01 16:12:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 19, 1, '2010-06-01 09:12:54', '2010-06-01 16:12:54');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 19, 1, '2010-06-01 09:13:22', '2010-06-01 16:13:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 19, 1, '2010-06-01 09:14:15', '2010-06-01 16:14:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (31, 19, 1, '2010-06-01 09:15:29', '2010-06-01 16:15:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (32, 19, 1, '2010-06-01 09:18:51', '2010-06-01 16:18:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 19, 1, '2010-06-01 09:19:33', '2010-06-01 16:19:33');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (34, 19, 1, '2010-06-01 09:20:17', '2010-06-01 16:20:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (35, 19, 1, '2010-06-01 09:20:44', '2010-06-01 16:20:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (36, 19, 1, '2010-06-01 09:21:05', '2010-06-01 16:21:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (37, 20, 1, '2010-06-01 09:27:05', '2010-06-01 16:27:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (38, 20, 1, '2010-06-01 09:27:53', '2010-06-01 16:27:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (39, 20, 1, '2010-06-01 09:28:13', '2010-06-01 16:28:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (40, 20, 1, '2010-06-01 09:28:47', '2010-06-01 16:28:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (41, 7, 1, '2010-06-01 10:20:14', '2010-06-01 17:20:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (42, 4, 1, '2010-06-01 10:25:11', '2010-06-01 17:25:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (43, 4, 1, '2010-06-01 11:50:00', '2010-06-01 18:50:00');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (44, 4, 1, '2010-06-01 11:59:18', '2010-06-01 18:59:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (45, 4, 1, '2010-06-01 12:10:57', '2010-06-01 19:10:57');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'debugdevkit', 'enabled', '1.0.8');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (15, 'export_ensemble', 'disabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'selectbox_link_field', 'enabled', 1.18);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'jit_image_manipulation', 'enabled', 1.08);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'maintenance_mode', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (21, 'markdown', 'enabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'asdc', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'content_type_mappings', 'enabled', 1.3);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'numberfield', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'forum', 'enabled', 1.0);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'members', 'enabled', '1.2.1beta');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'smtp_email_library', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (22, 'pagesfield', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (23, 'entity_diagram', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (20, 'export_forum', 'enabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (24, 'reflectionfield', 'enabled', '1.0.8');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (25, 'order_entries', 'enabled', 1.8);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (26, 'section_schemas', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (27, 'xmlimporter', 'enabled', 0.10);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (28, 'systemidfield', 'enabled', '1.0.2');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (29, 'uniqueinputfield', 'enabled', 1.3);

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (43, 20, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 4, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 5, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 5, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 5, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 5, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 5, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 5, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 6, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 6, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 9, '/frontend/', 'FrontendPreRenderHeaders', 'setContentType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 11, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 11, '/extension/members/new/', 'MemberRolePermissionFieldsetsNew', 'appendMemberRolePermissionFieldsets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 11, '/extension/members/edit/', 'MemberRolePermissionFieldsetsEdit', 'appendMemberRolePermissionFieldsets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 12, '/frontend/', 'FrontendPageResolved', 'cbCheckFrontendPagePermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 12, '/frontend/', 'FrontendParamsResolve', 'cbAddParamsToPage');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 12, '/frontend/', 'FrontendParamsResolve', 'cbAddMemberDetailsToPageParams');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 12, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 12, '/frontend/', 'EventPostSaveFilter', 'processEventData');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 12, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 12, '/publish/new/', 'EntryPostCreate', 'cbEmailNewMember');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (37, 14, '/blueprints/events/edit/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (36, 14, '/blueprints/events/new/', 'AppendEventFilterDocumentation', 'cbAppendEventFilterDocumentation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (35, 14, '/blueprints/events/edit/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (34, 14, '/blueprints/events/new/', 'AppendEventFilter', 'cbAddFilterToEventEditor');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (33, 14, '/system/preferences/', 'Save', 'cbSavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (32, 14, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'cbAppendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (38, 14, '/frontend/', 'EventPostSaveFilter', 'cbSendEmailSMTPFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (44, 23, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (45, 24, '/publish/new/', 'EntryPostCreate', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (46, 24, '/publish/edit/', 'EntryPostEdit', 'compileBackendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (47, 24, '/frontend/', 'EventPostSaveFilter', 'compileFrontendFields');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (48, 25, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (49, 25, '/backend/', 'AppendElementBelowView', 'appendOrderFieldId');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (50, 27, '/backend/', 'InitaliseAdminPageHead', 'initializeAdmin');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Name', 'name', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Username and Password', 'username-and-password', 'member', 1, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (3, 'Website', 'website', 'input', 1, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Email Address', 'email-address', 'input', 1, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Role', 'role', 'memberrole', 1, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Location', 'location', 'input', 1, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (7, 'City', 'city', 'input', 1, 'no', 6, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (8, 'Timezone Offset', 'timezone-offset', 'number', 1, 'yes', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Email Opt-in', 'email-opt-in', 'checkbox', 1, 'no', 8, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Topic', 'topic', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'Created By', 'created-by', 'memberlink', 2, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'Creation Date', 'creation-date', 'date', 2, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (13, 'Last Post', 'last-post', 'memberlink', 2, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (14, 'Last Active', 'last-active', 'date', 2, 'no', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (15, 'Pinned', 'pinned', 'checkbox', 2, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (16, 'Closed', 'closed', 'checkbox', 2, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (17, 'Comment', 'comment', 'textarea', 3, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Parent ID', 'parent-id', 'selectbox_link', 3, 'yes', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (19, 'Date', 'date', 'date', 3, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (20, 'Created By', 'created-by', 'memberlink', 3, 'yes', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (21, 'Title', 'title', 'input', 4, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (22, 'Page', 'page', 'pages', 4, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (23, 'Heading', 'heading', 'input', 4, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (24, 'Description', 'description', 'textarea', 4, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Body', 'body', 'textarea', 4, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Navigation', 'navigation', 'selectbox_link', 4, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Sort', 'sort', 'order_entries', 4, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Publish', 'publish', 'checkbox', 4, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Title', 'title', 'input', 5, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Heading', 'heading', 'input', 5, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Description', 'description', 'textarea', 5, 'yes', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Body', 'body', 'textarea', 5, 'yes', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Section', 'section', 'selectbox_link', 5, 'yes', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Author', 'author', 'selectbox_link', 5, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Categories', 'categories', 'selectbox_link', 5, 'yes', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Tags', 'tags', 'taglist', 5, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Date', 'date', 'date', 5, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Publish', 'publish', 'checkbox', 5, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Enable Comments', 'enable-comments', 'checkbox', 5, 'no', 10, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Title', 'title', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Type', 'type', 'selectbox_link', 6, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'URL', 'url', 'input', 6, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Description', 'description', 'textarea', 6, 'yes', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Body', 'body', 'textarea', 6, 'yes', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Category', 'category', 'selectbox_link', 6, 'yes', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Tags', 'tags', 'taglist', 6, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Date', 'date', 'date', 6, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Publish', 'publish', 'checkbox', 6, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Enable Comments', 'enable-comments', 'checkbox', 6, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Navigation', 'navigation', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Description', 'description', 'textarea', 7, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Title', 'title', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Description', 'description', 'textarea', 9, 'yes', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Body', 'body', 'textarea', 9, 'yes', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Author', 'author', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Email', 'email', 'input', 10, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Website', 'website', 'input', 10, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Date', 'date', 'date', 10, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Entry', 'entry', 'selectbox_link', 10, 'yes', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Item', 'item', 'selectbox_link', 10, 'yes', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Comment', 'comment', 'textarea', 10, 'yes', 6, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Publish', 'publish', 'checkbox', 10, 'no', 7, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Author', 'author', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Email', 'email', 'input', 11, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Subject', 'subject', 'input', 11, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Message', 'message', 'textarea', 11, 'yes', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Date', 'date', 'date', 12, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Note', 'note', 'textarea', 12, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Name', 'name', 'input', 13, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (104, 'Code', 'code', 'uniqueinput', 13, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Type', 'type', 'select', 13, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Status', 'status', 'select', 13, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'Description', 'description', 'textarea', 13, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Website URL', 'website-url', 'input', 13, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (77, 'PST Number', 'pst-number', 'input', 13, 'no', 6, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (78, 'Contacts', 'contacts', 'selectbox_link', 13, 'no', 15, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (79, 'Primary Contact', 'primary-contact', 'input', 13, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (80, 'Phone', 'phone', 'input', 13, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (81, 'Fax', 'fax', 'input', 13, 'no', 9, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (82, 'Address', 'address', 'input', 13, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (83, 'City', 'city', 'input', 13, 'no', 11, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Province/State', 'province-state', 'input', 13, 'no', 12, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (85, 'Postal/Zip Code', 'postal-zip-code', 'input', 13, 'no', 13, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (86, 'Country', 'country', 'input', 13, 'no', 14, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (87, 'Title', 'title', 'input', 14, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'Client', 'client', 'selectbox_link', 14, 'yes', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (89, 'Number', 'number', 'systemid', 14, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (90, 'Type', 'type', 'selectbox_link', 14, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (91, 'Assigned To', 'assigned-to', 'selectbox_link', 14, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (92, 'Start Date', 'start-date', 'date', 14, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (93, 'Completed Date', 'completed-date', 'date', 14, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (94, 'Status', 'status', 'select', 14, 'no', 9, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (95, 'Description', 'description', 'textarea', 14, 'no', 5, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (96, 'Code', 'code', 'reflection', 14, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (97, 'Client', 'client', 'selectbox_link', 15, 'yes', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (98, 'Project', 'project', 'selectbox_link', 15, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (100, 'Billing Terms', 'billing-terms', 'select', 15, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (101, 'Title', 'title', 'input', 15, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (102, 'Number', 'number', 'systemid', 15, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (103, 'Code', 'code', 'reflection', 15, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (106, 'Notes', 'notes', 'textarea', 15, 'yes', 8, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (105, 'Description', 'description', 'textarea', 15, 'yes', 7, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (107, 'Hourly Rate', 'hourly-rate', 'input', 15, 'no', 9, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (108, 'Budget', 'budget', 'input', 15, 'no', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (109, 'Due Date', 'due-date', 'date', 15, 'no', 11, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (110, 'Status', 'status', 'select', 15, 'no', 12, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (111, 'Status Details', 'status-details', 'textarea', 15, 'no', 13, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (112, 'Title', 'title', 'input', 16, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (113, 'Description', 'description', 'textarea', 16, 'yes', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (114, 'Client', 'client', 'selectbox_link', 16, 'yes', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (115, 'Project', 'project', 'selectbox_link', 16, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (116, 'Milestone', 'milestone', 'selectbox_link', 16, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (117, 'Quote Required', 'quote-required', 'checkbox', 15, 'no', 14, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (118, 'Title', 'title', 'input', 17, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (119, 'Description', 'description', 'textarea', 17, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (120, 'Number', 'number', 'systemid', 17, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (121, 'Client', 'client', 'selectbox_link', 17, 'yes', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (122, 'Project', 'project', 'selectbox_link', 17, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (123, 'Milestone', 'milestone', 'selectbox_link', 17, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (124, 'Task', 'task', 'selectbox_link', 17, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (125, 'Function', 'function', 'selectbox_link', 17, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (126, 'Start Time', 'start-time', 'date', 17, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (127, 'Stop Time', 'stop-time', 'date', 17, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (128, 'Hours', 'hours', 'input', 17, 'no', 10, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (129, 'Overtime', 'overtime', 'checkbox', 17, 'no', 11, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (130, 'Person', 'person', 'selectbox_link', 17, 'yes', 12, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (131, 'Title', 'title', 'input', 18, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (132, 'Description', 'description', 'textarea', 18, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (133, 'Type', 'type', 'selectbox_link', 18, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (134, 'Sort', 'sort', 'order_entries', 18, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (135, 'Title', 'title', 'input', 19, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (136, 'Description', 'description', 'textarea', 19, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (137, 'Phase', 'phase', 'selectbox_link', 19, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (138, 'Sort', 'sort', 'order_entries', 19, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (139, 'Phase', 'phase', 'selectbox_link', 15, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (140, 'Title', 'title', 'input', 20, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (141, 'Description', 'description', 'textarea', 20, 'no', 1, 'main', 'yes');

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Forum', 'forum', NULL, 'dpage', 'forum_discussions,forum_read_discussions,navigation,search_comments,whosonline', 'forum_utilities', 3);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, 1, 'Filter', 'forum-filter', 'forum', 'dpage', 'forum_discussions_filtered,forum_read_discussions,navigation,whosonline', 'forum_utilities', 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (3, 1, 'Discussions', 'discussions', 'forum', 'discussion-id/cpage', 'forum_comments,forum_discussions,forum_moderators,navigation,whosonline', 'forum_post,forum_utilities', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (4, 3, 'New Discussion', 'new', 'forum/discussions', NULL, 'navigation,whosonline', 'forum_post,forum_utilities', 11);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (5, 3, 'Edit Discussion', 'edit-discussion', 'forum/discussions', 'discussion-id', 'forum_discussions,forum_edit_discussion,navigation,whosonline', 'forum_post', 12);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (6, 3, 'Edit Comment', 'edit-comment', 'forum/discussions', 'comment-id/cpage/position', 'forum_edit_comment,navigation,whosonline', 'forum_post', 13);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (7, 1, 'Code Source', 'code-source', 'forum', 'comment-id/position', 'forum_code_source', NULL, 14);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (8, 1, 'Members', 'members', 'forum', 'member', 'members,members_forum_comment_count,members_forum_discussion_count,navigation,whosonline', NULL, 15);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (9, 8, 'New', 'new', 'forum/members', NULL, 'members_location,navigation,whosonline', 'members_register', 16);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (10, 8, 'Edit', 'edit', 'forum/members', NULL, 'members_edit,members_location,navigation,whosonline', 'edit_member', 17);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (11, 8, 'Activate', 'activate', 'forum/members', 'code', 'navigation,whosonline', 'members_activate_account,members_resend_activation_email', 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (12, 8, 'Reset Password', 'reset-pass', 'forum/members', 'mode', 'navigation,whosonline', 'members_reset_password', 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (13, 8, 'Change Password', 'change-pass', 'forum/members', NULL, 'navigation,whosonline', 'members_change_password', 20);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (14, NULL, 'Forbidden', 'forbidden', NULL, NULL, 'whosonline', NULL, 21);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (15, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, 'navigation,whosonline', NULL, 22);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, NULL, 'Home', 'home', NULL, 'section', 'bookmarks,entries,navigation,section,sites', 'login', 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, NULL, 'About', 'about', NULL, 'section', 'bookmarks,entries,navigation,section,sites', 'login', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, NULL, 'Contact', 'contact', NULL, 'entry/section', 'bookmarks,entries,navigation,section,sites', 'login', 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, NULL, 'Journal', 'journal', NULL, 'year/month/day/entry/item/section', 'bookmarks,entries,journal_entry,journal_excerpts,navigation,section,sites', 'login', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (20, NULL, 'Calendar', 'calendar', NULL, 'year/month/day/section/event', 'navigation', 'login', 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, 20, 'Year', 'year', 'calendar', 'year/month/day/section/event', 'navigation', 'login', 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (22, 20, 'Week', 'week', 'calendar', 'year/month/day/section/event', 'navigation', 'login', 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (23, 20, 'Day', 'day', 'calendar', 'year/month/day/section/event', 'navigation', 'login', 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (24, NULL, 'Login', 'login', NULL, NULL, 'navigation', NULL, 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (25, NULL, 'Overview', 'overview', NULL, NULL, 'navigation', NULL, 24);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (26, NULL, 'Clients', 'clients', NULL, 'client', 'navigation', NULL, 25);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (27, NULL, 'Projects', 'projects', NULL, 'client/project/filter/sort', 'navigation', NULL, 26);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (28, NULL, 'Timesheet', 'timesheet', NULL, 'page/client/project/entry', 'navigation', NULL, 27);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (9, 16, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (3, 7, 'text');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (4, 14, 403);
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (11, 15, 404);

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Members', 'members', 9, NULL, 'asc', 'no', 'Forum');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Discussions', 'discussions', 10, NULL, 'asc', 'no', 'Forum');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (3, 'Comments', 'comments', 11, NULL, 'asc', 'no', 'Forum');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (4, 'Sections', 'sections', 1, 27, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Entries', 'entries', 2, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (6, 'Items', 'items', 3, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (7, 'Menus', 'menus', 0, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Types', 'types', 4, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Categories', 'categories', 5, NULL, 'asc', 'no', 'Content');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Entry Comments', 'entry-comments', 6, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Messages', 'messages', 7, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Notes', 'notes', 8, NULL, 'asc', 'no', 'Social');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (13, 'Clients', 'clients', 12, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (14, 'Projects', 'projects', 13, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (15, 'Milestones', 'milestones', 14, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (16, 'Tasks', 'tasks', 15, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (17, 'Tickets', 'tickets', 16, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (18, 'Phases', 'phases', 18, 134, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (19, 'Functions', 'functions', 19, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (20, 'Project Types', 'project-types', 17, NULL, 'asc', 'no', 'Projects');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (20, 2, 10, 3, 18, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (21, 7, 50, 4, 26, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (16, 4, 21, 5, 33, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (17, 1, 1, 5, 34, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (18, 9, 54, 5, 35, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (11, 8, 52, 6, 41, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (12, 9, 54, 6, 45, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (14, 5, 29, 10, 61, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (15, 6, 40, 10, 62, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (91, 1, 1, 13, 78, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (175, 13, 104, 14, 88, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (176, 20, 140, 14, 90, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (177, 1, 1, 14, 91, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (172, 13, 104, 15, 97, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (173, 14, 96, 15, 98, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (113, 13, 104, 16, 114, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (114, 14, 96, 16, 115, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (115, 15, 103, 16, 116, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (138, 13, 104, 17, 121, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (139, 14, 96, 17, 122, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (140, 15, 103, 17, 123, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (141, 16, 112, 17, 124, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (142, 19, 135, 17, 125, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (143, 1, 1, 17, 130, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (171, 20, 140, 18, 133, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (159, 18, 131, 19, 137, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (174, 18, 131, 15, 139, 'no');

-- *** DATA: `tbl_forum_read_discussions` ***
INSERT INTO `tbl_forum_read_discussions` (`id`, `member_id`, `discussion_id`, `last_viewed`, `comments`) VALUES (1, 8, 9, 1275320433, 1);
INSERT INTO `tbl_forum_read_discussions` (`id`, `member_id`, `discussion_id`, `last_viewed`, `comments`) VALUES (2, 8, 11, 1275367843, 1);

-- *** DATA: `tbl_members_codes` ***
INSERT INTO `tbl_members_codes` (`member_id`, `code`, `expiry`) VALUES (14, '07460078ecd74cf1de37391659ce638f', 1275369856);
INSERT INTO `tbl_members_codes` (`member_id`, `code`, `expiry`) VALUES (13, '21ce96b84d5af1c279cc7e6f0f0543f4', 1275369607);

-- *** DATA: `tbl_members_email_templates` ***
INSERT INTO `tbl_members_email_templates` (`id`, `subject`, `body`, `type`) VALUES (1, 'Account Activation', 'Dear {$name},\r\n\r\nThanks for registering at {$site-name}!\r\n\r\nTo activate your account, head to {$root}/forum/members/activate/{$code}\r\n\r\nThis code will expire in one hour, so if you miss your window, simply head to the link above and click \"Resend activation email\" to get a new one.\r\n\r\nIf you have problems activating your account, please get in touch with us using our contact form at {$root}/contact/ and we\'ll do our best to help.\r\n\r\nWe don\'t know you yet, but we can already tell that you\'ll be a wonderful addition to our growing community!\r\n\r\nRegards,\r\n\r\n---\r\nSymphony Team', 'activate-account');
INSERT INTO `tbl_members_email_templates` (`id`, `subject`, `body`, `type`) VALUES (2, 'Reset Password', 'Dear {$name},\r\n\r\nTo reset your password, please head over to: {$root}/forum/members/reset-password/{$code}\r\n\r\nThe code will expire in one hour, so if you miss your window, head back to {$root}/forum/members/reset-password/ and click the \"Resend Email\" button to generate a new reset key.\r\n\r\nIf you have any trouble, please get in touch with us via our contact form at {$root}/contact/ and we\'ll do our best to help.\r\n\r\nRegards,\r\n\r\n---\r\nSymphony Team', 'reset-password');
INSERT INTO `tbl_members_email_templates` (`id`, `subject`, `body`, `type`) VALUES (3, 'New password', 'Dear {$name},\r\n\r\nJust now, you have made a request for a new password. Here it is: {$new-password}\r\n\r\nThere\'s a good chance that you won\'t like this new password and would like to change it--that\'s okay, we\'re not offended.\r\n\r\nYou can do that once you\'re logged in by going to your member profile page.\r\n\r\nIf you have any trouble, please get in touch with us via our contact form at {$root}/contact/ and we\'ll do our best to help.\r\n\r\nRegards,\r\n\r\n---\r\nSymphony Team', 'new-password');
INSERT INTO `tbl_members_email_templates` (`id`, `subject`, `body`, `type`) VALUES (4, 'Membership Activated', 'Dear {$name},\r\n\r\nCongratulations on obtaining your citizenship! You are now a fully fledged member of the community.\r\n\r\nRegards,\r\n\r\n---\r\nSymphony Team', 'welcome');

-- *** DATA: `tbl_members_email_templates_role_mapping` ***
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (18, 2, 4);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (15, 1, 2);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (17, 2, 3);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (16, 2, 2);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (9, 3, 3);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (10, 3, 2);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (11, 3, 4);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (12, 4, 4);
INSERT INTO `tbl_members_email_templates_role_mapping` (`id`, `email_template_id`, `role_id`) VALUES (13, 4, 3);

-- *** DATA: `tbl_members_roles` ***
INSERT INTO `tbl_members_roles` (`id`, `name`) VALUES (1, 'Guest');
INSERT INTO `tbl_members_roles` (`id`, `name`) VALUES (2, 'Inactive');
INSERT INTO `tbl_members_roles` (`id`, `name`) VALUES (3, 'Member');
INSERT INTO `tbl_members_roles` (`id`, `name`) VALUES (4, 'Administrator');

-- *** DATA: `tbl_members_roles_event_permissions` ***
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (97, 3, 'members_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (80, 4, 'members_change_password', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (79, 4, 'members_change_password', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (7, 1, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (8, 1, 'members_register', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (96, 3, 'members_register', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (78, 4, 'members_activate_account', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (77, 4, 'members_activate_account', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (76, 4, 'forum_utilities', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (75, 4, 'forum_utilities', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (74, 4, 'forum_resend_activation_email', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (73, 4, 'forum_resend_activation_email', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (72, 4, 'forum_post', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (71, 4, 'forum_post', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (70, 4, 'forum_activate_member', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (69, 4, 'forum_activate_member', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (68, 4, 'edit_member', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (67, 4, 'edit_member', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (95, 3, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (94, 3, 'members_change_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (92, 3, 'forum_utilities', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (93, 3, 'members_activate_account', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (91, 3, 'forum_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (90, 3, 'forum_post', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (89, 3, 'forum_post', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (88, 3, 'forum_activate_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (87, 3, 'edit_member', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (81, 4, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (82, 4, 'members_register', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (83, 4, 'members_resend_activation_email', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (84, 4, 'members_resend_activation_email', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (85, 4, 'members_reset_password', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (86, 4, 'members_reset_password', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (98, 3, 'members_reset_password', 'edit', 0);

-- *** DATA: `tbl_members_roles_forbidden_pages` ***
