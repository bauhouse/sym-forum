
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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (28, 9, 'off', 'Send me email when there is important news.');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (2, 15, 'off', 'Pin discussion');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (3, 16, 'off', 'Close this discussion');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (18, 28, 'on', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (32, 38, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (33, 39, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (36, 48, 'off', NULL);
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (37, 49, 'off', NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (1, 12, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (2, 14, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (11, 19, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (65, 37, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (67, 47, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (8, 60, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (9, 69, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (62, 92, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (63, 93, 'no');
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
) ENGINE=MyISAM AUTO_INCREMENT=280 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (185, 1, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (186, 3, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (187, 4, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (188, 6, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (189, 7, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (6, 10, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (34, 21, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (35, 23, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (255, 29, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (256, 30, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (259, 40, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (260, 42, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (194, 50, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (195, 52, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (254, 54, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (23, 57, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (24, 58, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (25, 59, '/^[^\\s:\\/?#]+:(?:\\/{2,3})?[^\\s.\\/?#]+(?:\\.[^\\s.\\/?#]+)*(?:\\/[^\\s?#]*\\??[^\\s?#]*(#[^\\s#]*)?)?$/');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (277, 65, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (278, 66, '/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (279, 67, NULL);
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
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (198, 87, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (190, 101, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (191, 107, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (192, 108, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 112, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (162, 118, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (163, 128, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (184, 131, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (176, 135, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (178, 140, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (219, 142, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (264, 145, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (265, 147, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (266, 150, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (217, 157, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (218, 159, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (267, 165, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (4, 27, NULL, 'no');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (12, 134, NULL, 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (10, 138, NULL, 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (13, 162, NULL, 'no');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (14, 163, NULL, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_fields_reflection` ***
INSERT INTO `tbl_fields_reflection` (`id`, `field_id`, `expression`, `formatter`, `override`, `hide`) VALUES (32, 96, '{entry/client}{entry/number}', 'none', NULL, 'yes');
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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (33, 73, 'no', 'Advertising, Design, Architecture, Construction, Ecommerce, Education, Engineering, Financial Services, Hospitality, Industry, Land Development, Manufacturing, Marketing, Non-Profit, Printing, Real Estate, Tourism, Web Development, Web Services', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (34, 74, 'no', 'Active, Inactive, Retired', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (59, 94, 'no', 'Created, In Progress, On Hold, Completed, Invoiced, Cancelled', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (55, 100, 'no', 'Non-Billable, Project, Contract, Service', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (56, 110, 'no', 'In Progress, Pending, On Hold, Completed, Invoiced, Cancelled', NULL);
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`) VALUES (61, 164, 'yes', 'DOC, EPS, JPG, PDF, PNG, RTF, TXT', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (20, 18, 'no', 10, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (21, 26, 'no', 50, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (241, 33, 'no', 21, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (240, 34, 'no', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (242, 35, 'no', 54, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (245, 41, 'no', 52, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (246, 45, 'no', 54, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (14, 61, 'no', 29, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (15, 62, 'no', 40, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (92, 78, 'yes', 1, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (184, 91, 'yes', 1, 50);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (173, 97, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (174, 98, 'no', 96, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (182, 88, 'no', 104, 20);
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
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (183, 90, 'yes', 140, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (204, 143, 'no', 104, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (251, 146, 'no', 142, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (254, 151, 'no', 145, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (252, 152, 'no', 157, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (253, 153, 'no', 159, 20);
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`) VALUES (203, 160, 'no', 157, 20);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***
INSERT INTO `tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (7, 36, NULL, 'existing');
INSERT INTO `tbl_fields_taglist` (`id`, `field_id`, `validator`, `pre_populate_source`) VALUES (9, 46, NULL, 'existing');

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (26, 17, 'markdown_with_purifier', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (28, 24, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (29, 25, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (136, 31, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (137, 32, 'markdown_extra_with_smartypants', 18);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (140, 43, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (141, 44, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (96, 51, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (97, 53, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (134, 55, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (135, 56, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (19, 63, 'markdown_with_purifier', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (149, 68, NULL, 9);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (21, 70, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 75, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (101, 95, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (92, 105, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (93, 106, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (94, 111, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (61, 113, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (70, 119, 'markdown_extra_with_smartypants', 20);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (91, 132, NULL, 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (83, 136, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (85, 141, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (115, 144, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (144, 148, 'markdown_extra_with_smartypants', 6);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (145, 149, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (113, 158, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (114, 161, 'markdown_extra_with_smartypants', 15);

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (25, 154, '/workspace/assets/images', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (26, 155, '/workspace', '/\\.(?:doc|eps|jpg|pdf|png|rtf|txt)$/i');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_104` ***
INSERT INTO `tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 15, 'abc', 'ABC');
INSERT INTO `tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 63, 'sym', 'SYM');
INSERT INTO `tbl_entries_data_104` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 72, 'bau', 'BAU');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_118` ***
INSERT INTO `tbl_entries_data_118` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 47, 'rebuild-designadmin-in-symphony-208rc3', 'Rebuild DesignAdmin in Symphony 2.0.8RC3');
INSERT INTO `tbl_entries_data_118` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 74, 'create-brands-section', 'Create Brands section');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_119` ***
INSERT INTO `tbl_entries_data_119` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 47, 'Porting templates created in Symphony 1.7.01', '<p>Porting templates created in Symphony 1.7.01</p>\n');
INSERT INTO `tbl_entries_data_119` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 74, 'Create Brands sections and fields. Create data sources. Modify Brands page template to reference the correct XML nodes. Refactor code to work with a single page template.', '<p>Create Brands sections and fields. Create data sources. Modify Brands page template to reference the correct XML nodes. Refactor code to work with a single page template.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_120` ***
INSERT INTO `tbl_entries_data_120` (`id`, `entry_id`, `value`) VALUES (8, 47, 47);
INSERT INTO `tbl_entries_data_120` (`id`, `entry_id`, `value`) VALUES (9, 74, 74);

-- *** STRUCTURE: `tbl_entries_data_121` ***
DROP TABLE IF EXISTS `tbl_entries_data_121`;
CREATE TABLE `tbl_entries_data_121` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_121` ***
INSERT INTO `tbl_entries_data_121` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, 72);
INSERT INTO `tbl_entries_data_121` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, 72);

-- *** STRUCTURE: `tbl_entries_data_122` ***
DROP TABLE IF EXISTS `tbl_entries_data_122`;
CREATE TABLE `tbl_entries_data_122` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_122` ***
INSERT INTO `tbl_entries_data_122` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, 73);
INSERT INTO `tbl_entries_data_122` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, 73);

-- *** STRUCTURE: `tbl_entries_data_123` ***
DROP TABLE IF EXISTS `tbl_entries_data_123`;
CREATE TABLE `tbl_entries_data_123` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_123` ***
INSERT INTO `tbl_entries_data_123` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, NULL);
INSERT INTO `tbl_entries_data_123` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, NULL);

-- *** STRUCTURE: `tbl_entries_data_124` ***
DROP TABLE IF EXISTS `tbl_entries_data_124`;
CREATE TABLE `tbl_entries_data_124` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_124` ***
INSERT INTO `tbl_entries_data_124` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, NULL);
INSERT INTO `tbl_entries_data_124` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, NULL);

-- *** STRUCTURE: `tbl_entries_data_125` ***
DROP TABLE IF EXISTS `tbl_entries_data_125`;
CREATE TABLE `tbl_entries_data_125` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_125` ***
INSERT INTO `tbl_entries_data_125` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, 32);
INSERT INTO `tbl_entries_data_125` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, 33);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_126` ***
INSERT INTO `tbl_entries_data_126` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 47, '2010-06-02T09:30:00-07:00', 1275496200, 1275496200);
INSERT INTO `tbl_entries_data_126` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 74, '2010-06-03T07:01:00-07:00', 1275573660, 1275573660);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_127` ***
INSERT INTO `tbl_entries_data_127` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 47, '2010-06-02T11:24:00-07:00', 1275503040, 1275503040);
INSERT INTO `tbl_entries_data_127` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 74, '2010-06-03T12:15:00-07:00', 1275592500, 1275592500);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_128` ***
INSERT INTO `tbl_entries_data_128` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 47, 8, 8);
INSERT INTO `tbl_entries_data_128` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 74, 525, 5.25);

-- *** STRUCTURE: `tbl_entries_data_129` ***
DROP TABLE IF EXISTS `tbl_entries_data_129`;
CREATE TABLE `tbl_entries_data_129` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_129` ***
INSERT INTO `tbl_entries_data_129` (`id`, `entry_id`, `value`) VALUES (8, 47, 'no');
INSERT INTO `tbl_entries_data_129` (`id`, `entry_id`, `value`) VALUES (9, 74, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_130` ***
INSERT INTO `tbl_entries_data_130` (`id`, `entry_id`, `relation_id`) VALUES (8, 47, 8);
INSERT INTO `tbl_entries_data_130` (`id`, `entry_id`, `relation_id`) VALUES (9, 74, 8);

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_135` ***
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 26, 'project-management', 'Project Management');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 27, 'art-direction', 'Art Direction');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 28, 'meeting', 'Meeting');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 29, 'analysis', 'Analysis');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 30, 'strategy', 'Strategy');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 31, 'design', 'Design');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 32, 'prototyping', 'Prototyping');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 33, 'development', 'Development');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 34, 'copywriting', 'Copywriting');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 35, 'deploying', 'Deploying');
INSERT INTO `tbl_entries_data_135` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 36, 'testing', 'Testing');

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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_136` ***
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 26, 'Managing the process and scheduling phases and tasks to meet the design objectives', '<p>Managing the process and scheduling phases and tasks to meet the design objectives</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 27, 'Overseeing the creative direction of design concepts and comprehensive layouts', '<p>Overseeing the creative direction of design concepts and comprehensive layouts</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 28, 'Initial project assessment, proposed creative direction and timeline', '<p>Initial project assessment, proposed creative direction and timeline</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 29, 'Information gathering and indepth analysis of the project requirements', '<p>Information gathering and indepth analysis of the project requirements</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 30, 'Assess the best means to convey the message and build the brand', '<p>Assess the best means to convey the message and build the brand</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 31, 'Explore possible solutions to the design problem', '<p>Explore possible solutions to the design problem</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 32, 'HTML/CSS layouts and design', '<p>HTML/CSS layouts and design</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 33, 'Using the right tools to build the application, identity or branding message', '<p>Using the right tools to build the application, identity or branding message</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 34, 'Building the final product to the highest possible standards', '<p>Building the final product to the highest possible standards</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 35, 'Deploying sites and distributing media', '<p>Deploying sites and distributing media</p>\n');
INSERT INTO `tbl_entries_data_136` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 36, 'Assess the results of the project in fulfilling the design objectives', '<p>Assess the results of the project in fulfilling the design objectives</p>\n');

-- *** STRUCTURE: `tbl_entries_data_137` ***
DROP TABLE IF EXISTS `tbl_entries_data_137`;
CREATE TABLE `tbl_entries_data_137` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_137` ***
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (1, 26, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (18, 27, 23);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (17, 28, 21);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (4, 29, 22);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (5, 30, 22);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (14, 31, 23);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (16, 32, 23);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (10, 33, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (15, 34, 24);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (20, 35, 25);
INSERT INTO `tbl_entries_data_137` (`id`, `entry_id`, `relation_id`) VALUES (19, 36, 25);

-- *** STRUCTURE: `tbl_entries_data_138` ***
DROP TABLE IF EXISTS `tbl_entries_data_138`;
CREATE TABLE `tbl_entries_data_138` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_138` ***
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (1, 26, 1);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (18, 27, 5);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (17, 28, 2);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (4, 29, 3);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (5, 30, 4);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (14, 31, 6);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (16, 32, 7);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (10, 33, 8);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (15, 34, 9);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (20, 35, 10);
INSERT INTO `tbl_entries_data_138` (`id`, `entry_id`, `value`) VALUES (19, 36, 11);

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

-- *** STRUCTURE: `tbl_entries_data_142` ***
DROP TABLE IF EXISTS `tbl_entries_data_142`;
CREATE TABLE `tbl_entries_data_142` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_142` ***
INSERT INTO `tbl_entries_data_142` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 64, 'symphony-cms', 'Symphony CMS');

-- *** STRUCTURE: `tbl_entries_data_143` ***
DROP TABLE IF EXISTS `tbl_entries_data_143`;
CREATE TABLE `tbl_entries_data_143` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_143` ***
INSERT INTO `tbl_entries_data_143` (`id`, `entry_id`, `relation_id`) VALUES (1, 64, 63);

-- *** STRUCTURE: `tbl_entries_data_144` ***
DROP TABLE IF EXISTS `tbl_entries_data_144`;
CREATE TABLE `tbl_entries_data_144` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_144` ***
INSERT INTO `tbl_entries_data_144` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 64, 'XSLT-powered open source content management system', '<p>XSLT-powered open source content management system</p>\n');

-- *** STRUCTURE: `tbl_entries_data_145` ***
DROP TABLE IF EXISTS `tbl_entries_data_145`;
CREATE TABLE `tbl_entries_data_145` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_145` ***
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (31, 65, 'symphony-cms-colors', 'Symphony CMS Colors');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 66, 'the-symphony-cms-brand', 'The Symphony CMS Brand');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 69, 'typography', 'Typography');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 70, 'symphony-cms-logo', 'Symphony CMS Logo');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 71, 'symphony-logo-png', 'Symphony Logo - PNG');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 75, 'brand-identity', 'Brand Identity');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 76, 'logo-usage-guidelines', 'Logo Usage Guidelines');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 86, 'symphony-logo-jpeg', 'Symphony Logo - JPEG');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 87, 'symphony-grey', 'Symphony Grey');
INSERT INTO `tbl_entries_data_145` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 88, 'symphony-magenta', 'Symphony Magenta');

-- *** STRUCTURE: `tbl_entries_data_146` ***
DROP TABLE IF EXISTS `tbl_entries_data_146`;
CREATE TABLE `tbl_entries_data_146` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_146` ***
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (31, 65, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (36, 66, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (4, 69, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (37, 70, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (19, 71, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (13, 75, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (14, 76, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (21, 86, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (33, 87, 64);
INSERT INTO `tbl_entries_data_146` (`id`, `entry_id`, `relation_id`) VALUES (32, 88, 64);

-- *** STRUCTURE: `tbl_entries_data_147` ***
DROP TABLE IF EXISTS `tbl_entries_data_147`;
CREATE TABLE `tbl_entries_data_147` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_147` ***
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 65, 'colors-used-throughout-the-brand-identity', 'Colors used throughout the brand identity');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 66, 'an-introduction-to-the-symphony-cms-identity-design', 'An Introduction to the Symphony CMS Identity Design');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 70, 'logo', 'Logo');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 71, 'colour-png', 'Colour - PNG');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 86, 'colour-jpeg', 'Colour - JPEG');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 87, 'symphony-grey-423a3a', 'Symphony Grey (#423A3A)');
INSERT INTO `tbl_entries_data_147` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 88, 'symphony-magenta-b20b4f', 'Symphony Magenta (#B20B4F)');

-- *** STRUCTURE: `tbl_entries_data_148` ***
DROP TABLE IF EXISTS `tbl_entries_data_148`;
CREATE TABLE `tbl_entries_data_148` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_148` ***
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 65, 'These standards have been created to ensure accurate color reproduction for various applications and media, with industry standard color matching value for print, screen and web.', '<p>These standards have been created to ensure accurate color reproduction for various applications and media, with industry standard color matching value for print, screen and web.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 69, 'Typography is a vital part of the identity system. Each typeface has its own character and evokes a different emotional and intellectual response.', '<p>Typography is a vital part of the identity system. Each typeface has its own character and evokes a different emotional and intellectual response.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 70, 'The Symphony CMS logo has been recently redesigned to better reflect the maturity of the company and its position in the marketplace. Symphony CMS is becoming recognized around the world for its commitment to bringing the power of XSLT to the open source web development community.', '<p>The Symphony CMS logo has been recently redesigned to better reflect the maturity of the company and its position in the marketplace. Symphony CMS is becoming recognized around the world for its commitment to bringing the power of XSLT to the open source web development community.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 71, 'This format is to be used for reproduction in two colours, PANTONE Red 032 and Black. This format is used best when flat colours are required, such as with vinyl signs and vehicle graphics. The JPEG and PNG files are not suitable for spot colour printing but can be used to create the same effect on screen or for desktop printing.', '<p>This format is to be used for reproduction in two colours, PANTONE Red 032 and Black. This format is used best when flat colours are required, such as with vinyl signs and vehicle graphics. The JPEG and PNG files are not suitable for spot colour printing but can be used to create the same effect on screen or for desktop printing.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 66, '#### About Symphony\r\n\r\n[Symphony](http://symphony-cms.com/) is an Open Source content management system made for web developers. It gives you all the power and flexibility you’ll need, while keeping out of your way.\r\n', '<h4>About Symphony</h4>\n\n<p><a href=\"http://symphony-cms.com/\">Symphony</a> is an Open Source content management system made for web developers. It gives you all the power and flexibility you’ll need, while keeping out of your way.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 75, 'The corporate identity provides the foundation upon which the image of the organization can be built. It serves to help focus the vision of the community and convey the personality and culture of the organization by means of a consistent application of the identity to all forms of communication.', '<p>The corporate identity provides the foundation upon which the image of the organization can be built. It serves to help focus the vision of the community and convey the personality and culture of the organization by means of a consistent application of the identity to all forms of communication.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 76, 'The following guidelines provide general information regarding various file formats and the commonly recommended file types for usage in specific applications and media. Some file types are linked to Wikipedia to provide a more thorough understanding of the file formats we have used.', '<p>The following guidelines provide general information regarding various file formats and the commonly recommended file types for usage in specific applications and media. Some file types are linked to Wikipedia to provide a more thorough understanding of the file formats we have used.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 86, 'This format is to be used for reproduction in 4-colour process printing - CMYK: Cyan, Magenta, Yellow, Black. The JPEG format comes in RGB and CMYK versions. Supply the CMYK version for printing, but only when the AI and EPS versions are not compatible with the process. ALWAYS use AI or EPS when printing whenever support is available for these formats. Supply the RGB version for web content. The PNG format can be used only for web content.', '<p>This format is to be used for reproduction in 4-colour process printing - CMYK: Cyan, Magenta, Yellow, Black. The JPEG format comes in RGB and CMYK versions. Supply the CMYK version for printing, but only when the AI and EPS versions are not compatible with the process. ALWAYS use AI or EPS when printing whenever support is available for these formats. Supply the RGB version for web content. The PNG format can be used only for web content.</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 87, 'The warm grey color used for the Symphony logotype', '<p>The warm grey color used for the Symphony logotype</p>\n');
INSERT INTO `tbl_entries_data_148` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 88, 'An accent color used as the color of the dot in the Symphony logo', '<p>An accent color used as the color of the dot in the Symphony logo</p>\n');

-- *** STRUCTURE: `tbl_entries_data_149` ***
DROP TABLE IF EXISTS `tbl_entries_data_149`;
CREATE TABLE `tbl_entries_data_149` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_149` ***
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 65, 'For color reproduction, the following the hexadecimal values for colors have been used as the basis for matching colors. Process color equivalents have been indicated below each color swatch. \r\n\r\nIt is unlikely that print materials would be printed in spot colors, since the cost, in comparison to four color printing, would be prohibitive. PANTONE color swatches are NOT provided as no suitable color matches were found for these colors. In the case that spot colors are required, the closest matches found were PANTONE 166 (orange), PANTONE 5405 (blue), PANTONE 375 (green), PANTONE 291 (sky).', '<p>For color reproduction, the following the hexadecimal values for colors have been used as the basis for matching colors. Process color equivalents have been indicated below each color swatch. </p>\n\n<p>It is unlikely that print materials would be printed in spot colors, since the cost, in comparison to four color printing, would be prohibitive. PANTONE color swatches are NOT provided as no suitable color matches were found for these colors. In the case that spot colors are required, the closest matches found were PANTONE 166 (orange), PANTONE 5405 (blue), PANTONE 375 (green), PANTONE 291 (sky).</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 69, '#### Print Materials\r\n\r\nAll Corporate Stationery use a typeface family called DIN Mittelschrift, which is based on the German industry standard (\"Deutsche Industrie Norm\") for signage on the Autobahn.\r\n\r\nDIN has a clunky functionalism and a modern character that is highly legible for a geometric sans serif typeface.\r\n\r\nDIN is the supporting text family for all printed materials, including stationery.\r\n\r\n#### Web Type\r\n\r\nType on the web is limited to fonts that tend to be installed on computer systems as part of the most popular operating systems.\r\n\r\nWhere fonts are limited to standard libraries, Helvetica and Arial provide suitable complements or replacements for DIN on the web for headlines and text.', '<h4>Print Materials</h4>\n\n<p>All Corporate Stationery use a typeface family called DIN Mittelschrift, which is based on the German industry standard (&#8220;Deutsche Industrie Norm&#8221;) for signage on the Autobahn.</p>\n\n<p>DIN has a clunky functionalism and a modern character that is highly legible for a geometric sans serif typeface.</p>\n\n<p>DIN is the supporting text family for all printed materials, including stationery.</p>\n\n<h4>Web Type</h4>\n\n<p>Type on the web is limited to fonts that tend to be installed on computer systems as part of the most popular operating systems.</p>\n\n<p>Where fonts are limited to standard libraries, Helvetica and Arial provide suitable complements or replacements for DIN on the web for headlines and text.</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 70, 'Logos for each division of Eagle West have been packaged as individual [ZIP](http://en.wikipedia.org/wiki/ZIP_%28file_format%29) files. Contained within each ZIP file are the following file formats: [AI](http://en.wikipedia.org/wiki/Adobe_Illustrator) (Adobe Illustrator Version 8), [EPS](http://en.wikipedia.org/wiki/Encapsulated_PostScript), [JPEG](http://en.wikipedia.org/wiki/Jpeg), [PDF](http://en.wikipedia.org/wiki/Pdf), [PNG](http://en.wikipedia.org/wiki/Png). These file formats are industry standards for printing, sign manufacturing and web graphics. Please follow the guidelines below when providing files for reproduction in various media. > Download Files\r\n\r\nNote: to preview overprint/overlay properties of a logo, mouse over the logo and you will be able to view the logo against a red background. You will need a modern browser to view this effect: Firefox, Safari, Opera, Internet Explorer 7 (Internet Explorer 6 does not support transparent PNG files).', '<p>Logos for each division of Eagle West have been packaged as individual <a href=\"http://en.wikipedia.org/wiki/ZIP_%28file_format%29\">ZIP</a> files. Contained within each ZIP file are the following file formats: <a href=\"http://en.wikipedia.org/wiki/Adobe_Illustrator\">AI</a> (Adobe Illustrator Version 8), <a href=\"http://en.wikipedia.org/wiki/Encapsulated_PostScript\">EPS</a>, <a href=\"http://en.wikipedia.org/wiki/Jpeg\">JPEG</a>, <a href=\"http://en.wikipedia.org/wiki/Pdf\">PDF</a>, <a href=\"http://en.wikipedia.org/wiki/Png\">PNG</a>. These file formats are industry standards for printing, sign manufacturing and web graphics. Please follow the guidelines below when providing files for reproduction in various media. > Download Files</p>\n\n<p>Note: to preview overprint/overlay properties of a logo, mouse over the logo and you will be able to view the logo against a red background. You will need a modern browser to view this effect: Firefox, Safari, Opera, Internet Explorer 7 (Internet Explorer 6 does not support transparent PNG files).</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 71, NULL, NULL);
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 66, '#### Designed to do things your way\r\n\r\nSymphony lets you organise everything the way you like, from your publishing environment to your website’s URL structure. Built to be versatile and customisable, Symphony really is what you make of it.\r\n\r\n#### Powered by XML and XSLT\r\n\r\nSymphony’s templating engine is pure XSLT goodness. XSLT is a standard recommended by the W3C, so learning Symphony means that you’re learning skills that you can also use outside of the system. If you already know the XML and CSS standards, then chances are you should be able to quickly pick up XSLT.\r\n\r\nSymphony lets you to create small blocks of XSLT code called utilities, which you can use as building blocks to construct your site’s pages. Due to the nature of XSLT, these utilities are highly reusable, so the next time you’re developing a website you’ll probably find you’ve already done half the work.\r\n\r\n#### Symphony Resources\r\n\r\nThe Symphony [community forum](http://symphony-cms.com/discuss/) is full of friendly and knowledgeable Symphony users, and the Symphony team are always quick to respond, so it’s a great place to go if you have questions.', '<h4>Designed to do things your way</h4>\n\n<p>Symphony lets you organise everything the way you like, from your publishing environment to your website’s URL structure. Built to be versatile and customisable, Symphony really is what you make of it.</p>\n\n<h4>Powered by XML and XSLT</h4>\n\n<p>Symphony’s templating engine is pure XSLT goodness. XSLT is a standard recommended by the W3C, so learning Symphony means that you’re learning skills that you can also use outside of the system. If you already know the XML and CSS standards, then chances are you should be able to quickly pick up XSLT.</p>\n\n<p>Symphony lets you to create small blocks of XSLT code called utilities, which you can use as building blocks to construct your site’s pages. Due to the nature of XSLT, these utilities are highly reusable, so the next time you’re developing a website you’ll probably find you’ve already done half the work.</p>\n\n<h4>Symphony Resources</h4>\n\n<p>The Symphony <a href=\"http://symphony-cms.com/discuss/\">community forum</a> is full of friendly and knowledgeable Symphony users, and the Symphony team are always quick to respond, so it’s a great place to go if you have questions.</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 75, 'By definition, a logo is the symbol or word mark used to visually identify an individual, group, idea or product. Over time and through consistent use, it becomes a valuable asset as the corporate image is reinforced through various media and as associations are built between the logo and the relationships people build with the organization.\r\n\r\nWhat follows are guidelines that will help to ensure the consistent application of the corporate identity in various media. The logos have been supplied in several digital formats that will facilitate the production of electronic documents and digital media, as well as printed media, whether one color, spot color or four color process.', '<p>By definition, a logo is the symbol or word mark used to visually identify an individual, group, idea or product. Over time and through consistent use, it becomes a valuable asset as the corporate image is reinforced through various media and as associations are built between the logo and the relationships people build with the organization.</p>\n\n<p>What follows are guidelines that will help to ensure the consistent application of the corporate identity in various media. The logos have been supplied in several digital formats that will facilitate the production of electronic documents and digital media, as well as printed media, whether one color, spot color or four color process.</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 76, '#### Print Reproduction and Signs\r\n\r\nWhen supplying artwork for print reproduction, ALWAYS supply the AI or EPS formats, as these are scalable vector files that will provide the highest quality reproduction possible at any size. The Adobe Illustrator ([AI](http://en.wikipedia.org/wiki/Adobe_Illustrator)) and Encapsulated PostScript ([EPS](http://en.wikipedia.org/wiki/Encapsulated_PostScript)) file formats are used by graphic design and prepress professionals for the best reproduction results on press. Applications such as Adobe InDesign, Adobe Illustrator and Adobe Photoshop are able to open or import AI and EPS formats. QuarkXPress will require the EPS format to place graphics.\r\n\r\nSigns are often produced as cut vinyl. This type of application requires a vector format. Be sure NOT to supply raster image artwork to sign manufacturers. This often means that sign manufacturers may try to reproduce vector artwork from the raster image artwork, usually with less than desirable results.\r\n\r\n#### Desktop Applications\r\n\r\nFor Microsoft Word and PowerPoint, use the JPEG and PNG file formats. Unfortunately, Microsoft has not provided adequate support for the superior vector / PostScript file formats, AI and EPS, in their popular office applications. It is therefore necessary to use high resolution raster image file formats, such as JPEG and PNG, for medium quality reproduction on desktop printers.\r\n\r\nThe Joint Photographic Experts Group created the [JPEG](http://en.wikipedia.org/wiki/Jpeg) format as a standard compression format for photographs. The Portable Network Graphics ([PNG](http://en.wikipedia.org/wiki/Png)) format has a transparency feature, allowing the ability to overlay graphics over photographs or coloured backgrounds. However, take care when placing logos over background colours. Complex photographic imagery should not be used as a background. Background colours should have a good contrast with the graphics that are being placed over the background.\r\n\r\n#### Web Content\r\n\r\nFor internet delivery, whether in web pages or by email, use JPEG files. It is possible also to use PNG files, although support for this format is not universal. Note that the files that have been provided are large enough for high quality print reproduction and are likely too large to be used for display on a web page or email message. For these applications, use an image editing application to create a smaller file.\r\n\r\n#### Cross-Platform Viewing and Printing\r\n\r\nThe Portable Document Format ([PDF](http://en.wikipedia.org/wiki/Pdf)) is a scalable vector- and raster-based format similar to AI and EPS that are often used for high quality screen display and high quality printing. Adobe Reader or Adobe Acrobat is required to be able to view and print this format. Because these readers are available for the most popular operating systems, the PDF format has become a standard for viewing and printing page layouts that maintain the integrity of the original design, regardless of the computer platform used to view and print the document. It may also be possible to supply this format to newspapers and printers for the purpose of creating ads and printed materials, though they generally prefer the EPS format. Adobe InDesign CS2 can also import PDF files into a page layout.', '<h4>Print Reproduction and Signs</h4>\n\n<p>When supplying artwork for print reproduction, ALWAYS supply the AI or EPS formats, as these are scalable vector files that will provide the highest quality reproduction possible at any size. The Adobe Illustrator (<a href=\"http://en.wikipedia.org/wiki/Adobe_Illustrator\">AI</a>) and Encapsulated PostScript (<a href=\"http://en.wikipedia.org/wiki/Encapsulated_PostScript\">EPS</a>) file formats are used by graphic design and prepress professionals for the best reproduction results on press. Applications such as Adobe InDesign, Adobe Illustrator and Adobe Photoshop are able to open or import AI and EPS formats. QuarkXPress will require the EPS format to place graphics.</p>\n\n<p>Signs are often produced as cut vinyl. This type of application requires a vector format. Be sure NOT to supply raster image artwork to sign manufacturers. This often means that sign manufacturers may try to reproduce vector artwork from the raster image artwork, usually with less than desirable results.</p>\n\n<h4>Desktop Applications</h4>\n\n<p>For Microsoft Word and PowerPoint, use the JPEG and PNG file formats. Unfortunately, Microsoft has not provided adequate support for the superior vector / PostScript file formats, AI and EPS, in their popular office applications. It is therefore necessary to use high resolution raster image file formats, such as JPEG and PNG, for medium quality reproduction on desktop printers.</p>\n\n<p>The Joint Photographic Experts Group created the <a href=\"http://en.wikipedia.org/wiki/Jpeg\">JPEG</a> format as a standard compression format for photographs. The Portable Network Graphics (<a href=\"http://en.wikipedia.org/wiki/Png\">PNG</a>) format has a transparency feature, allowing the ability to overlay graphics over photographs or coloured backgrounds. However, take care when placing logos over background colours. Complex photographic imagery should not be used as a background. Background colours should have a good contrast with the graphics that are being placed over the background.</p>\n\n<h4>Web Content</h4>\n\n<p>For internet delivery, whether in web pages or by email, use JPEG files. It is possible also to use PNG files, although support for this format is not universal. Note that the files that have been provided are large enough for high quality print reproduction and are likely too large to be used for display on a web page or email message. For these applications, use an image editing application to create a smaller file.</p>\n\n<h4>Cross-Platform Viewing and Printing</h4>\n\n<p>The Portable Document Format (<a href=\"http://en.wikipedia.org/wiki/Pdf\">PDF</a>) is a scalable vector- and raster-based format similar to AI and EPS that are often used for high quality screen display and high quality printing. Adobe Reader or Adobe Acrobat is required to be able to view and print this format. Because these readers are available for the most popular operating systems, the PDF format has become a standard for viewing and printing page layouts that maintain the integrity of the original design, regardless of the computer platform used to view and print the document. It may also be possible to supply this format to newspapers and printers for the purpose of creating ads and printed materials, though they generally prefer the EPS format. Adobe InDesign CS2 can also import PDF files into a page layout.</p>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 86, NULL, NULL);
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 87, '##### Process\r\n\r\n* C: 64%\r\n* M: 64%\r\n* Y: 61%\r\n* K: 51%\r\n\r\n##### RGB\r\n\r\n* R: 66\r\n* G: 58\r\n* B: 58\r\n\r\n##### Hex\r\n\r\n* #423A3A', '<h5>Process</h5>\n\n<ul>\n<li>C: 64%</li>\n<li>M: 64%</li>\n<li>Y: 61%</li>\n<li>K: 51%</li>\n</ul>\n\n<h5>RGB</h5>\n\n<ul>\n<li>R: 66</li>\n<li>G: 58</li>\n<li>B: 58</li>\n</ul>\n\n<h5>Hex</h5>\n\n<ul>\n<li>#423A3A</li>\n</ul>\n');
INSERT INTO `tbl_entries_data_149` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 88, '##### Process\r\n\r\n* C: 24%\r\n* M: 100%\r\n* Y: 55%\r\n* K: 9%\r\n\r\n##### RGB\r\n\r\n* R: 178\r\n* G: 11\r\n* B: 79\r\n\r\n##### Hex\r\n\r\n* #B20B4F', '<h5>Process</h5>\n\n<ul>\n<li>C: 24%</li>\n<li>M: 100%</li>\n<li>Y: 55%</li>\n<li>K: 9%</li>\n</ul>\n\n<h5>RGB</h5>\n\n<ul>\n<li>R: 178</li>\n<li>G: 11</li>\n<li>B: 79</li>\n</ul>\n\n<h5>Hex</h5>\n\n<ul>\n<li>#B20B4F</li>\n</ul>\n');

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

-- *** STRUCTURE: `tbl_entries_data_150` ***
DROP TABLE IF EXISTS `tbl_entries_data_150`;
CREATE TABLE `tbl_entries_data_150` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_150` ***

-- *** STRUCTURE: `tbl_entries_data_151` ***
DROP TABLE IF EXISTS `tbl_entries_data_151`;
CREATE TABLE `tbl_entries_data_151` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_151` ***
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (31, 65, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (36, 66, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (4, 69, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (37, 70, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (19, 71, 70);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (13, 75, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (14, 76, NULL);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (21, 86, 70);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (33, 87, 65);
INSERT INTO `tbl_entries_data_151` (`id`, `entry_id`, `relation_id`) VALUES (32, 88, 65);

-- *** STRUCTURE: `tbl_entries_data_152` ***
DROP TABLE IF EXISTS `tbl_entries_data_152`;
CREATE TABLE `tbl_entries_data_152` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_152` ***
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (31, 65, 49);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (36, 66, 51);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (4, 69, 49);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (37, 70, 48);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (19, 71, 48);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (13, 75, 51);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (14, 76, 51);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (21, 86, 48);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (33, 87, 49);
INSERT INTO `tbl_entries_data_152` (`id`, `entry_id`, `relation_id`) VALUES (32, 88, 49);

-- *** STRUCTURE: `tbl_entries_data_153` ***
DROP TABLE IF EXISTS `tbl_entries_data_153`;
CREATE TABLE `tbl_entries_data_153` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_153` ***
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (31, 65, 58);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (36, 66, 61);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (4, 69, 57);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (37, 70, 53);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (19, 71, 53);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (13, 75, 60);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (14, 76, 60);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (21, 86, 53);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (33, 87, 58);
INSERT INTO `tbl_entries_data_153` (`id`, `entry_id`, `relation_id`) VALUES (32, 88, 58);

-- *** STRUCTURE: `tbl_entries_data_154` ***
DROP TABLE IF EXISTS `tbl_entries_data_154`;
CREATE TABLE `tbl_entries_data_154` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_154` ***
INSERT INTO `tbl_entries_data_154` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 86, '/assets/images/symphony-logo-200x37.jpg', 6511, 'image/jpg', 'a:3:{s:8:\"creation\";s:25:\"2010-06-04T07:54:12-07:00\";s:5:\"width\";i:200;s:6:\"height\";i:37;}');
INSERT INTO `tbl_entries_data_154` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 71, '/assets/images/symphony-logo-200x37.png', 2266, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2010-06-04T09:32:50-07:00\";s:5:\"width\";i:200;s:6:\"height\";i:37;}');
INSERT INTO `tbl_entries_data_154` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 70, '/assets/images/symphony-logo-400x91.jpg', 8169, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-06-04T11:05:30-07:00\";s:5:\"width\";i:400;s:6:\"height\";i:91;}');
INSERT INTO `tbl_entries_data_154` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 66, '/assets/images/symphony-brand.jpg', 8169, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2010-06-04T11:05:03-07:00\";s:5:\"width\";i:400;s:6:\"height\";i:91;}');

-- *** STRUCTURE: `tbl_entries_data_155` ***
DROP TABLE IF EXISTS `tbl_entries_data_155`;
CREATE TABLE `tbl_entries_data_155` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_155` ***

-- *** STRUCTURE: `tbl_entries_data_157` ***
DROP TABLE IF EXISTS `tbl_entries_data_157`;
CREATE TABLE `tbl_entries_data_157` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_157` ***
INSERT INTO `tbl_entries_data_157` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 48, 'identity', 'Identity');
INSERT INTO `tbl_entries_data_157` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 49, 'elements', 'Elements');
INSERT INTO `tbl_entries_data_157` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 50, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_157` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 51, 'guidelines', 'Guidelines');
INSERT INTO `tbl_entries_data_157` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 52, 'resources', 'Resources');

-- *** STRUCTURE: `tbl_entries_data_158` ***
DROP TABLE IF EXISTS `tbl_entries_data_158`;
CREATE TABLE `tbl_entries_data_158` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_158` ***
INSERT INTO `tbl_entries_data_158` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 48, 'The basic elements that form the brand identity', '<p>The basic elements that form the brand identity</p>\n');
INSERT INTO `tbl_entries_data_158` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 49, 'The supporting elements of the brand identity', '<p>The supporting elements of the brand identity</p>\n');
INSERT INTO `tbl_entries_data_158` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 50, 'The brand touchpoints that establish a visual grammar and vocabulary for the elements of the identity', '<p>The brand touchpoints that establish a visual grammar and vocabulary for the elements of the identity</p>\n');
INSERT INTO `tbl_entries_data_158` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 51, 'Resources to promote awareness and support consistent usage of the elements of the identity', '<p>Resources to promote awareness and support consistent usage of the elements of the identity</p>\n');
INSERT INTO `tbl_entries_data_158` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 52, 'Files, documents or other resources related to the brand identity', '<p>Files, documents or other resources related to the brand identity</p>\n');

-- *** STRUCTURE: `tbl_entries_data_159` ***
DROP TABLE IF EXISTS `tbl_entries_data_159`;
CREATE TABLE `tbl_entries_data_159` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_159` ***
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 53, 'logos', 'Logos');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 54, 'symbol', 'Symbol');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 55, 'logotype', 'Logotype');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 56, 'signatures', 'Signatures');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 57, 'typography', 'Typography');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 58, 'colors', 'Colors');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 59, 'stationery', 'Stationery');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 60, 'identity-guidelines', 'Identity Guidelines');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'overview', 'Overview');
INSERT INTO `tbl_entries_data_159` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 62, 'wordmark', 'Wordmark');

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

-- *** STRUCTURE: `tbl_entries_data_160` ***
DROP TABLE IF EXISTS `tbl_entries_data_160`;
CREATE TABLE `tbl_entries_data_160` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_160` ***
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (1, 53, 48);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (2, 54, 48);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (3, 55, 48);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (4, 56, 48);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (5, 57, 49);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (11, 58, 49);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (7, 59, 50);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (8, 60, 50);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (9, 61, 51);
INSERT INTO `tbl_entries_data_160` (`id`, `entry_id`, `relation_id`) VALUES (10, 62, 48);

-- *** STRUCTURE: `tbl_entries_data_161` ***
DROP TABLE IF EXISTS `tbl_entries_data_161`;
CREATE TABLE `tbl_entries_data_161` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text,
  `value_formatted` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_161` ***
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 53, 'The visual elements of a brand identity', '<p>The visual elements of a brand identity</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 54, 'The image or icon element of the visual identity', '<p>The image or icon element of the visual identity</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 55, 'The typographic elements of a visual identity', '<p>The typographic elements of a visual identity</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 56, 'A logo format that combines the symbol and logotype', '<p>A logo format that combines the symbol and logotype</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 57, 'Type families chosen for use throughout the identity program', '<p>Type families chosen for use throughout the identity program</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 58, 'Color palette to be used throughout the identity program', '<p>Color palette to be used throughout the identity program</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 59, 'Letterhead, Business Card, Envelopes and related forms of business communications', '<p>Letterhead, Business Card, Envelopes and related forms of business communications</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 60, 'A document that provides standards and guidelines for using brand assets', '<p>A document that provides standards and guidelines for using brand assets</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 61, 'Overviews and text content for online identity assets and guidelines', '<p>Overviews and text content for online identity assets and guidelines</p>\n');
INSERT INTO `tbl_entries_data_161` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 62, 'The verbal elements of a visual identity', '<p>The verbal elements of a visual identity</p>\n');

-- *** STRUCTURE: `tbl_entries_data_162` ***
DROP TABLE IF EXISTS `tbl_entries_data_162`;
CREATE TABLE `tbl_entries_data_162` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_162` ***
INSERT INTO `tbl_entries_data_162` (`id`, `entry_id`, `value`) VALUES (1, 49, 2);
INSERT INTO `tbl_entries_data_162` (`id`, `entry_id`, `value`) VALUES (2, 48, 1);
INSERT INTO `tbl_entries_data_162` (`id`, `entry_id`, `value`) VALUES (3, 50, 3);
INSERT INTO `tbl_entries_data_162` (`id`, `entry_id`, `value`) VALUES (4, 51, 4);
INSERT INTO `tbl_entries_data_162` (`id`, `entry_id`, `value`) VALUES (5, 52, 5);

-- *** STRUCTURE: `tbl_entries_data_163` ***
DROP TABLE IF EXISTS `tbl_entries_data_163`;
CREATE TABLE `tbl_entries_data_163` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_163` ***
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (1, 53, 1);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (2, 54, 2);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (3, 55, 3);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (4, 62, 4);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (5, 56, 5);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (6, 57, 6);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (11, 58, 7);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (8, 59, 8);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (9, 60, 9);
INSERT INTO `tbl_entries_data_163` (`id`, `entry_id`, `value`) VALUES (10, 61, 10);

-- *** STRUCTURE: `tbl_entries_data_164` ***
DROP TABLE IF EXISTS `tbl_entries_data_164`;
CREATE TABLE `tbl_entries_data_164` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_164` ***
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 87, NULL, NULL);
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 86, 'jpg', 'JPG');
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 71, 'png', 'PNG');
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 88, NULL, NULL);
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 65, NULL, NULL);
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 70, NULL, NULL);
INSERT INTO `tbl_entries_data_164` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 66, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_165` ***
DROP TABLE IF EXISTS `tbl_entries_data_165`;
CREATE TABLE `tbl_entries_data_165` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_165` ***
INSERT INTO `tbl_entries_data_165` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 88, 'b20b4f', '#B20B4F');
INSERT INTO `tbl_entries_data_165` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 87, '423a3a', '#423A3A');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_21` ***
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 2, 'home', 'Home');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 3, 'about', 'About');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 4, 'journal', 'Journal');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 5, 'forum', 'Forum');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 6, 'calendar', 'Calendar');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 7, 'contact', 'Contact');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 42, 'overview', 'Overview');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 43, 'clients', 'Clients');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 44, 'projects', 'Projects');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 45, 'timesheet', 'Timesheet');
INSERT INTO `tbl_entries_data_21` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 46, 'brands', 'Brands');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_22` ***
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (17, 2, 16, 'Home', 'home');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (18, 3, 17, 'About', 'about');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (3, 4, 19, 'Journal', 'journal');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (4, 5, 1, 'Forum', 'forum');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (14, 6, 20, 'Calendar', 'calendar');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (7, 7, 18, 'Contact', 'contact');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (10, 42, 25, 'Overview', 'overview');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (11, 43, 26, 'Clients', 'clients');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (12, 44, 27, 'Projects', 'projects');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (13, 45, 28, 'Timesheet', 'timesheet');
INSERT INTO `tbl_entries_data_22` (`id`, `entry_id`, `page_id`, `title`, `handle`) VALUES (15, 46, 29, 'Brands', 'brands');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_23` ***
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 7, 'send-us-a-message', 'Send us a message');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 3, 'reworking-the-tools-of-industry', 'Reworking the Tools of Industry');
INSERT INTO `tbl_entries_data_23` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 2, 'a-swiss-army-knife-for-the-design-business', 'A Swiss Army Knife for the Design Business');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_24` ***
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 3, '####Using Technology To Meet the Needs of Business\r\n\r\nThe Design Administration is a group of designers who live on the edge of creative vision, entrepreneurial ingenuity and technological innovation.\r\n\r\nWell, no, actually, it\'s just me. But it could be.\r\n', '<h4>Using Technology To Meet the Needs of Business</h4>\n\n<p>The Design Administration is a group of designers who live on the edge of creative vision, entrepreneurial ingenuity and technological innovation.</p>\n\n<p>Well, no, actually, it&#8217;s just me. But it could be.</p>\n');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 4, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 5, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 6, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, 'Please use the contact form below to send us a message.', '<p>Please use the contact form below to send us a message.</p>\n');
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 42, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 45, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 46, NULL, NULL);
INSERT INTO `tbl_entries_data_24` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 2, '#### Why So Many Tools When One Will Do?\r\n\r\nAs a designer, I am used to looking for solutions to problems. One of the solutions that has eluded me has been a tool that masters the problem of managing my own business efficiently and effectively, using the very technologies that have helped to me to help my clients to effectively communicate with their own colleagues and customers.\r\n', '<h4>Why So Many Tools When One Will Do?</h4>\n\n<p>As a designer, I am used to looking for solutions to problems. One of the solutions that has eluded me has been a tool that masters the problem of managing my own business efficiently and effectively, using the very technologies that have helped to me to help my clients to effectively communicate with their own colleagues and customers.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_25` ***
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 3, '####Bringing Good to Life\r\n\r\nWhat is the ideal work environment? What sort of endeavour provides the perfect mix of social interaction, collaborative teamwork, challenging and inspiring work, and a meaningful and fulfilling vocation? How can success in the workplace transform social structures and encourage harmonious relationships within our communities, our nation, our world? The Design Administration is enlisting a task force of designers to infuse the design industry with a meaning and purpose that goes far beyond the bottom line. Design is intrinsically enmeshed with economics, as business is its primary patron. However, everyone who uses a product is also a patron. As both consumers and creators of products, if the objects of our desire extended beyond physical goods to everything that is good, how different would our world be?\r\n\r\nThere is the moral good and there is the pragmatically beneficial. I suppose I\'ll take the low road at this point. In the search for the best tools to run a business, there appears to be little that meets my requirements. I don\'t want something that is bloated with unnecessary or poorly implemented features, with a bloated price tag to match. I don\'t want a tool that meets certain requirements well but leaves a hole for other applications to fill, especially when the monthly fee for each service that is required begins to exceed what my budget comfortably allows. Plus, the need for multiple applications leads to a duplication of efforts in maintaining several fragmented solutions to the single problem of efficiently running a business. \r\n\r\n####What Good is This Site?\r\n\r\nWell, I suppose that\'s a matter of opinion, but for me, it\'s a proving ground for the development of a system that helps me as a brand, advertising, print and web designer to manage clients, projects, tasks, schedules, timesheets, assets, finances and taxes in order to establish a better working relationship with colleagues and customers. So, I am building a single application that I can use, and which I would like to offer to others as a solution to the frustrations of any jack-of-all-trades-master-of-none-learn-by-doing-build-it-yourself-freelance-graphic-design-consultant-sole-proprietor-inhouse-branding-and-corporate-communications-specialist-information-architect-web-programmer-interface-designer.', '<h4>Bringing Good to Life</h4>\n\n<p>What is the ideal work environment? What sort of endeavour provides the perfect mix of social interaction, collaborative teamwork, challenging and inspiring work, and a meaningful and fulfilling vocation? How can success in the workplace transform social structures and encourage harmonious relationships within our communities, our nation, our world? The Design Administration is enlisting a task force of designers to infuse the design industry with a meaning and purpose that goes far beyond the bottom line. Design is intrinsically enmeshed with economics, as business is its primary patron. However, everyone who uses a product is also a patron. As both consumers and creators of products, if the objects of our desire extended beyond physical goods to everything that is good, how different would our world be?</p>\n\n<p>There is the moral good and there is the pragmatically beneficial. I suppose I&#8217;ll take the low road at this point. In the search for the best tools to run a business, there appears to be little that meets my requirements. I don&#8217;t want something that is bloated with unnecessary or poorly implemented features, with a bloated price tag to match. I don&#8217;t want a tool that meets certain requirements well but leaves a hole for other applications to fill, especially when the monthly fee for each service that is required begins to exceed what my budget comfortably allows. Plus, the need for multiple applications leads to a duplication of efforts in maintaining several fragmented solutions to the single problem of efficiently running a business. </p>\n\n<h4>What Good is This Site?</h4>\n\n<p>Well, I suppose that&#8217;s a matter of opinion, but for me, it&#8217;s a proving ground for the development of a system that helps me as a brand, advertising, print and web designer to manage clients, projects, tasks, schedules, timesheets, assets, finances and taxes in order to establish a better working relationship with colleagues and customers. So, I am building a single application that I can use, and which I would like to offer to others as a solution to the frustrations of any jack-of-all-trades-master-of-none-learn-by-doing-build-it-yourself-freelance-graphic-design-consultant-sole-proprietor-inhouse-branding-and-corporate-communications-specialist-information-architect-web-programmer-interface-designer.</p>\n');
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 4, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 5, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 6, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 7, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 42, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 43, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 44, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 45, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 46, NULL, NULL);
INSERT INTO `tbl_entries_data_25` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 2, 'To be sure, solutions exist in a vast array. However, my standards are high and my budget is low. And very few solutions offer everything I might want or need. The trend is to focus on a particular functionality or a specific niche market. I am a generalist, so my requirements are broad.\r\n\r\nThis site is about my search for the Holy Grail: the all-in-one Design Business Administration tool. Is it even possible to find such a thing? If anyone has any leads, please let me know. Until then, this is what I want and this is what I am building, with a web publishing system called [Symphony](http://www.symphony21.com/).', '<p>To be sure, solutions exist in a vast array. However, my standards are high and my budget is low. And very few solutions offer everything I might want or need. The trend is to focus on a particular functionality or a specific niche market. I am a generalist, so my requirements are broad.</p>\n\n<p>This site is about my search for the Holy Grail: the all-in-one Design Business Administration tool. Is it even possible to find such a thing? If anyone has any leads, please let me know. Until then, this is what I want and this is what I am building, with a web publishing system called <a href=\"http://www.symphony21.com/\">Symphony</a>.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (17, 2, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (18, 3, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (3, 4, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (4, 5, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (14, 6, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (7, 7, 1);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (10, 42, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (11, 43, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (12, 44, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (13, 45, 41);
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `relation_id`) VALUES (15, 46, 41);

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (17, 2, 1);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (18, 3, 2);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (3, 4, 3);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (4, 5, 4);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (14, 6, 11);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (7, 7, 5);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (10, 42, 6);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (11, 43, 8);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (12, 44, 9);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (13, 45, 10);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`) VALUES (15, 46, 7);

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (17, 2, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (18, 3, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (3, 4, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (4, 5, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (14, 6, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (7, 7, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (10, 42, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (11, 43, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (12, 44, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (13, 45, 'yes');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `value`) VALUES (15, 46, 'yes');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 67, 'the-seeds-of-an-idea', 'The Seeds of an Idea');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 68, 'a-project-management-tool', 'A Project Management Tool');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 81, 'an-xslt-calendar', 'An XSLT Calendar');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 82, 'calendar-formats', 'Calendar Formats');
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 83, 'xslt-transformation-of-ics-to-xml', 'XSLT Transformation of ICS to XML');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 67, 'necessity-is-the-mother-of-invention', 'Necessity is the Mother of Invention ');
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 68, 'not-another-project-management-application', 'Not another project management application!');
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 81, 'the-first-step-in-building-a-design-administration-application', 'The First Step in Building a Design Administration Application');
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 82, 'in-search-of-an-xml-calendar-format', 'In Search of an XML Calendar Format ');
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 83, 'an-xslt-template-to-convert-icalendar-files-to-xcalendar-files', 'An XSLT Template to Convert iCalendar Files to xCalendar Files');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 68, '####Yes, another one\r\n\r\nWhile in search of tools that could simplify the administration of my design business, I found that software would force me to work a certain way, depending on what I was working on. Duplication of data entry was the biggest frustration. For a freelance business, it would be ideal to enter data once and be able to view information in many forms without having to switch from one application to another.\r\n', '<h4>Yes, another one</h4>\n\n<p>While in search of tools that could simplify the administration of my design business, I found that software would force me to work a certain way, depending on what I was working on. Duplication of data entry was the biggest frustration. For a freelance business, it would be ideal to enter data once and be able to view information in many forms without having to switch from one application to another.</p>\n');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 67, 'For close to fifteen years, I have been searching for a way to run a design business that helps me work better, but also works the way I want it to. I still haven\'t found what I\'m looking for, so I\'m building it. But not without the help of a very talented crew of web application developers, [Twentyone Degrees](http://21degrees.com.au/).', '<p>For close to fifteen years, I have been searching for a way to run a design business that helps me work better, but also works the way I want it to. I still haven&#8217;t found what I&#8217;m looking for, so I&#8217;m building it. But not without the help of a very talented crew of web application developers, <a href=\"http://21degrees.com.au/\">Twentyone Degrees</a>.</p>\n');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 81, 'To develop a design business administration application, it is essential to be able to keep track of time, schedule appointments, process phases and deadlines. This means that a calendar will be one of the first requirements.', '<p>To develop a design business administration application, it is essential to be able to keep track of time, schedule appointments, process phases and deadlines. This means that a calendar will be one of the first requirements.</p>\n');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 82, 'The most popular calendar format appears to be the ICS format used by [Apple\'s iCal](http://www.apple.com/macosx/features/ical/). Unfortunately, this format is not an XML format. To be able to use this data within Symphony or with XSLT it would be helpful to be able to convert the data into a useful format. However, I was disappointed to find out that the standard for ICS files is not XML format. Apple Developer Connection points to [Perl and PHP scripts that can convert ICS to XML](http://developer.apple.com/internet/appleapplications/icalendarfiles.html). Strangely, I did not find any XSLT templates. I probably did not search hard enough. Most likely, XSLT is not the first place people turn to for string manipulation.', '<p>The most popular calendar format appears to be the ICS format used by <a href=\"http://www.apple.com/macosx/features/ical/\">Apple&#8217;s iCal</a>. Unfortunately, this format is not an XML format. To be able to use this data within Symphony or with XSLT it would be helpful to be able to convert the data into a useful format. However, I was disappointed to find out that the standard for ICS files is not XML format. Apple Developer Connection points to <a href=\"http://developer.apple.com/internet/appleapplications/icalendarfiles.html\">Perl and PHP scripts that can convert ICS to XML</a>. Strangely, I did not find any XSLT templates. I probably did not search hard enough. Most likely, XSLT is not the first place people turn to for string manipulation.</p>\n');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 83, 'I wanted to find an XSLT template that would be able to parse an iCalendar ICS file into an XML format that would work well with the calendar application I had built with XSLT and Symphony. What I found was an XSLT template that converted XML to ICS. I found nothing that was able to reverse the process. So I created an XSLT template that can convert ICS to the [xCalendar](http://www.w3.org/2001/sw/Europe/200210/calendar/vocab_usecases.html#ical) format.', '<p>I wanted to find an XSLT template that would be able to parse an iCalendar ICS file into an XML format that would work well with the calendar application I had built with XSLT and Symphony. What I found was an XSLT template that converted XML to ICS. I found nothing that was able to reverse the process. So I created an XSLT template that can convert ICS to the <a href=\"http://www.w3.org/2001/sw/Europe/200210/calendar/vocab_usecases.html#ical\">xCalendar</a> format.</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 68, 'I found that this was not easily feasible ... until Symphony came along. Since the introduction of sections and custom fields that could be configured according to the needs of the Symphony developer, specifically section links (a feature that I requested), I have been thinking about how this feature might be used to build a project management system.\r\n\r\nI am in the process of building a project management system that uses Symphony to keep track of clients, projects and timesheets. Eventually, I want it to do everything, because I am tired of switching between several applications (desktop and web) that don\'t work together and force me to duplicate my efforts. This is a long-term project, but I am trying to solve problems I have had with running my business since I started it 16 years ago. I have never found a system that does what I need, so I am building it myself - necessity being the mother of invention.\r\n\r\nIt will be a design business administration system built on the Symphony framework that will track clients, projects, timesheets, estimates, invoices, bookkeeping and accounting reports, tax filing, as well as serve as a client login area to allow basecamp style project management, except with the ability to display work in progress according to project phase, with individual entries for each concept, with commenting enabled for each entry. Once an identity system has been developed, it can then be rolled out within the same system, to display an online corporate identity standards manual and provide a means of distributing logo file formats available for download.', '<p>I found that this was not easily feasible &#8230; until Symphony came along. Since the introduction of sections and custom fields that could be configured according to the needs of the Symphony developer, specifically section links (a feature that I requested), I have been thinking about how this feature might be used to build a project management system.</p>\n\n<p>I am in the process of building a project management system that uses Symphony to keep track of clients, projects and timesheets. Eventually, I want it to do everything, because I am tired of switching between several applications (desktop and web) that don&#8217;t work together and force me to duplicate my efforts. This is a long-term project, but I am trying to solve problems I have had with running my business since I started it 16 years ago. I have never found a system that does what I need, so I am building it myself - necessity being the mother of invention.</p>\n\n<p>It will be a design business administration system built on the Symphony framework that will track clients, projects, timesheets, estimates, invoices, bookkeeping and accounting reports, tax filing, as well as serve as a client login area to allow basecamp style project management, except with the ability to display work in progress according to project phase, with individual entries for each concept, with commenting enabled for each entry. Once an identity system has been developed, it can then be rolled out within the same system, to display an online corporate identity standards manual and provide a means of distributing logo file formats available for download.</p>\n');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 81, 'Now, we could generate calendars with JavaScript and use cookies to maintain persistent selections from one page to another. With Symphony, neither of those is necessary. Let\'s let the server do the work, with XML and XSLT to produce calendar views with XHTML. Thankfully, many have done a lot of the hard work of getting a calendar to work in XSLT. There are date and time libraries available from the [XSLT Standard Library](http://xsltsl.sourceforge.net/). It is also possible to glean templates that perform date and time functions from [EXSLT.org](http://www.exslt.org/).\r\n\r\nI took a look at a couple other calendar examples that I might be able to adapt, but both are dependent on external xslt libraries or functions, which is why I passed on them to begin with: trying to avoid any dependencies on external libraries. [XSLT Cookbook: Creating a HTML Calendar](http://www.the-wabe.com/notebook/xslt-calendar) depends on the the [EXSLT.org](http://www.exslt.org/) date-time extensions. The other is [A Calendar, using the XSelerator\'s datetime library](http://www.topxml.com/code/default.asp?p=3&id=v20020711152545). In the end, I chose to use the work of [Muhammad Athar Parvez](http://incrementaldevelopment.com/) on an XSL stylesheet that generates a single calendar month: [Parvez\'s Wing of the Gallery of Stupid XSL and XSLT Tricks](http://incrementaldevelopment.com/xsltrick/parvez/).\r\n\r\nNote: there is an interesting calendar FAQ on the issues of dates and calendars compiled by Claus Tøndering, [Frequently Asked Questions about Calendars](http://www.tondering.dk/claus/calendar.html).\r\n\r\nI started in Symphony with a static XML data source:\r\n\r\n	<calendar>\r\n		<year>\r\n			<month value=\"1\" days=\"31\">January</month>\r\n			<month value=\"2\" days=\"28\" leap-year-days=\"29\">February</month>\r\n			<month value=\"3\" days=\"31\">March</month>\r\n			<month value=\"4\" days=\"30\">April</month>\r\n			<month value=\"5\" days=\"31\">May</month>\r\n			<month value=\"6\" days=\"30\">June</month>\r\n			<month value=\"7\" days=\"31\">July</month>\r\n			<month value=\"8\" days=\"31\">August</month>\r\n			<month value=\"9\" days=\"30\">September</month>\r\n			<month value=\"10\" days=\"31\">October</month>\r\n			<month value=\"11\" days=\"30\">November</month>\r\n			<month value=\"12\" days=\"31\">December</month>\r\n		</year>\r\n	</calendar>\r\n\r\nThe rest of the application is a CSS file and four XSLT templates that display the four calendar views: year, month, week and day. View the [calendar](http://designadmin.com/calendar/) to see the results of this work, which extends the work of Parvez to include the additional views, navigation with persistent dates, and hours for the week and day views.', '<p>Now, we could generate calendars with JavaScript and use cookies to maintain persistent selections from one page to another. With Symphony, neither of those is necessary. Let&#8217;s let the server do the work, with XML and XSLT to produce calendar views with XHTML. Thankfully, many have done a lot of the hard work of getting a calendar to work in XSLT. There are date and time libraries available from the <a href=\"http://xsltsl.sourceforge.net/\">XSLT Standard Library</a>. It is also possible to glean templates that perform date and time functions from <a href=\"http://www.exslt.org/\">EXSLT.org</a>.</p>\n\n<p>I took a look at a couple other calendar examples that I might be able to adapt, but both are dependent on external xslt libraries or functions, which is why I passed on them to begin with: trying to avoid any dependencies on external libraries. <a href=\"http://www.the-wabe.com/notebook/xslt-calendar\">XSLT Cookbook: Creating a HTML Calendar</a> depends on the the <a href=\"http://www.exslt.org/\">EXSLT.org</a> date-time extensions. The other is <a href=\"http://www.topxml.com/code/default.asp?p=3&amp;id=v20020711152545\">A Calendar, using the XSelerator&#8217;s datetime library</a>. In the end, I chose to use the work of <a href=\"http://incrementaldevelopment.com/\">Muhammad Athar Parvez</a> on an XSL stylesheet that generates a single calendar month: <a href=\"http://incrementaldevelopment.com/xsltrick/parvez/\">Parvez&#8217;s Wing of the Gallery of Stupid XSL and XSLT Tricks</a>.</p>\n\n<p>Note: there is an interesting calendar FAQ on the issues of dates and calendars compiled by Claus Tøndering, <a href=\"http://www.tondering.dk/claus/calendar.html\">Frequently Asked Questions about Calendars</a>.</p>\n\n<p>I started in Symphony with a static XML data source:</p>\n\n<pre><code>&lt;calendar&gt;\n    &lt;year&gt;\n        &lt;month value=\"1\" days=\"31\"&gt;January&lt;/month&gt;\n        &lt;month value=\"2\" days=\"28\" leap-year-days=\"29\"&gt;February&lt;/month&gt;\n        &lt;month value=\"3\" days=\"31\"&gt;March&lt;/month&gt;\n        &lt;month value=\"4\" days=\"30\"&gt;April&lt;/month&gt;\n        &lt;month value=\"5\" days=\"31\"&gt;May&lt;/month&gt;\n        &lt;month value=\"6\" days=\"30\"&gt;June&lt;/month&gt;\n        &lt;month value=\"7\" days=\"31\"&gt;July&lt;/month&gt;\n        &lt;month value=\"8\" days=\"31\"&gt;August&lt;/month&gt;\n        &lt;month value=\"9\" days=\"30\"&gt;September&lt;/month&gt;\n        &lt;month value=\"10\" days=\"31\"&gt;October&lt;/month&gt;\n        &lt;month value=\"11\" days=\"30\"&gt;November&lt;/month&gt;\n        &lt;month value=\"12\" days=\"31\"&gt;December&lt;/month&gt;\n    &lt;/year&gt;\n&lt;/calendar&gt;\n</code></pre>\n\n<p>The rest of the application is a CSS file and four XSLT templates that display the four calendar views: year, month, week and day. View the <a href=\"http://designadmin.com/calendar/\">calendar</a> to see the results of this work, which extends the work of Parvez to include the additional views, navigation with persistent dates, and hours for the week and day views.</p>\n');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 67, '####The Idea Began with an Application\r\n\r\nWhy build something that already exists? Because I have high standards. I want control over the design and functionality, so that I don\'t have to wait for the next release to work the way I envision the process. I enjoy the details, maybe too much. I become immersed in them and lose the big picture. Probably more of a weakness than a strength. But it also helps me to do what I do.\r\n\r\nIn search of the right tool to build sites that worked well with web standards, I found one that had the potential to revolutionize content management and templating systems. The application was built on W3C standards, XML, XPath and XSLT. It is the web publishing system we know as [Symphony](http://21degrees.com.au/products/symphony/). It does away with proprietary templating systems that do not allow for portability from one scripting language to another.\r\n\r\nThe merits of using XML / XSLT are stated well on the [Overture Forum](http://overture21.com/forum/comments.php?DiscussionID=1302#CommentBody_9568):\r\n\r\n> Once you have a system down with XML / XSLT (be it with symphony or your own homegrown solution [as is my case with the company I work for]) maintenance and adding features is a lot faster than with the traditional \'what everyone else is doing\' methods with php. The initial overhead from the development and planning stages is more expensive but in the long run it makes life so much simpler. And it future proofs the applications you write. If you handle a lot of the logic in the XSL then if you decide that php is too slow for your application then you can essentially write a C based application that produces the same XML that your php app did and you don\'t have to make any changes to your front end logic. Portability is a cinch then. One of the many reasons I love symphony. I can port most of my symphony XSL to my own content management system and have the same exact results...\r\n> \r\n> That type of portability is non-existent in other solutions...\r\n\r\nWhile Symphony 1.5 was in [beta](http://overture21.com/forum/comments.php?DiscussionID=411), during the time when Symphony was still being licensed, I started building my design portfolio website, [bauhouse.ca](http://bauhouse.ca/), to showcase what was possible with Symphony. After that experience, I was hooked. The potential was huge, and the development team was extremely responsive to any questions, offering help, code samples and development services as well as application features and enhancements which found their way into the steady stream of releases since the [Symphony 1.5 public release](http://overture21.com/forum/comments.php?DiscussionID=457), which made the application free for anyone to use.\r\n\r\n####A Design Business Administration System\r\n\r\nWith the introduction of Campfire Services, I started to develop some thoughts around the idea of using Symphony as the hub for several business functions. The discussions I had with the Twentyone Degrees development team in September 2006 started something like this:\r\n\r\n> One of the first Campfire Services that I would be interested in developing would be some sort of front end login system for my clients. It would simply be a private area for clients to view a list of ongoing projects and to be able to view conceptual proofs and submit comments. Each client would have a code (ABC) and each job would have a number (1234).\r\n> \r\n> The next stage would be to add the ability to define objectives, establish processes, schedule projects, track time, manage customers and communicate with them through e-mail, both in text and HTML, and on forums.\r\n> \r\n> Then, as I grow my business into what I envision, I would want to tie this into an accounting system, with the ability to generate estimates, invoices, and financial statements, track credit card payments for typeface designs that I would offer for sale on my site, and manage members, sales and billings for subscriptions to print and online magazines.\r\n> \r\n> If I could have exactly what I wish for, it would be something similar to what ProActive Software, in New Zealand, has developed as a project management solution. I took their product, [ProWorkFlow](http://www.proworkflow.com/), for a test drive, and I loved what they had created. The issues I had with it were its reliance on ColdFusion, the lack of an ability to modify the look of the site to match my brand, and the subscription cost per user. I could modify colours and add a logo, but beyond this, I would not be able to customize the interface. For instance, add an area for displaying conceptual work for clients, with the ability to add comments. The cost is actually fairly reasonable, but ideally, I would like a custom solution.\r\n> \r\n> Another product that I have been looking at is from [Marketcircle](http://marketcircle.com/), called Daylite. They also have another product called Billings. I love the look of their applications and have been very tempted to purchase licenses for their software. I also love the idea that they are built specifically for Mac OS X from the ground up. But that is also one of their limitations. They are not cross-platform compatible, though they can be synced with mobile systems. Another problem is the proprietary database used by the software. Also, as far as I know, the features of Billings are separate from the functionality of Daylite. But I want both in one solution. And, ideally, I would want a web-based solution that looks like a desktop application and works just as fast.\r\n> \r\n> In trying to solve the problems of running my business, I find that I have to cobble together a process that relies on software, both desktop and web-based, that solves each specific problem, then work them together into something that gets the job done, however inefficiently, given the repetition of certain tasks.\r\n> \r\n> Instead, I have been looking for a single platform on which to build the entire process. I think Symphony is it. The first step, then, would be to set up the front end login system for my clients, which is my first priority: better communication with my clients. Then, I would want to build each of the additional modules or components onto this.\r\n> \r\n> It\'s all pretty ambitious, I know. But I am taking a long-term view of things. It also sounds as if you have solved a lot of these problems already with Conductor. I am very interested in seeing how this might work for me as well in trying to build a business involving identity, print, web and type design (with a view to eventually grow into industrial design and architecture -- a very long-term view).\r\n\r\nVery ambitious indeed. It\'s a dream, but maybe I\'ll get there one day. In the meantime, I am enjoying the process of building out these ideas, one piece at a time. Organization and business sense are one of the first things I need. They don\'t come easily. But Symphony is helping.\r\n\r\n####My Symphony Feature Request\r\n\r\nAs I started thinking about how I could use Symphony, I realized I would need some additional features. [I asked for them](http://overture21.com/forum/comments.php?DiscussionID=453) and [the Symphony Team delivered](http://overture21.com/forum/comments.php?DiscussionID=668). It went something like this:\r\n\r\n> It would be great to be able to cross-reference data between sections. If I was able to create a categories section and use those same categories as select box options within other sections, it would alleviate the challenge of having to manually modify the options for several sections that would access that same list of categories.\r\n\r\n> So, rather than listing options for the custom field, I could provide XSLT code that indicates a particular range of values from an XML node set in the categories datasource.\r\n\r\nThen, I went on to explain how this might work for building websites.\r\n\r\n> I could theoretically (since I haven\'t tried this) create static pages and menus for an entire site from a single master template using four sections: Sections, Categories, Entries, Pages. The master template would have a URL Schema of /section/category/entry/page/. Rather than using the default navigation data source, I could create a `Sections` section where each entry represents the first level in the hierarchy. This section could contain at least two custom fields:\r\n> \r\n> ### Sections\r\n> * Section Title\r\n> * Section Description\r\n> \r\n> Then, I could create other sections and custom fields:\r\n> \r\n> ### Categories\r\n> * Category Title\r\n> * Category Description\r\n> * Section (this custom field would be a select box listing the Sections by Section Title)\r\n> \r\n> ### Entries\r\n> * Entry Title\r\n> * Entry Body\r\n> * Category (this custom field would be a select box listing the Categories by Category Title)\r\n> \r\n> ### Pages\r\n> * Page Number\r\n> * Page Title\r\n> * Page Body\r\n> * Entry (this custom field would be a select box listing the Entries by Entry Title)\r\n> \r\n> With some creative XSLT templating, a single master template should be able to generate all menus and content dynamically without the Author ever having to touch any of the Structure or Blueprints areas of the admin, which should be restricted to Administrative users. However, all this depends on the custom field being dynamically generated by the primary custom field of another section (or, if possible, any custom field from another section). This is probably possible to accomplish now, though the custom field would have to be a Text Input field and the user would have to type the data rather than choosing it from a pull down menu. The ability to restrict choices, though, would be important to keep the site from getting broken because of user error.\r\n> \r\n> Also, it would be very easy to bring back a much more powerful version of the version 1.1 Categories as you described in the [Subcategories](http://overture21.com/forum/comments.php?DiscussionID=434) thread.\r\n> \r\n> Does this sort of structure make sense as far as building a site with four levels of hierarchy?\r\n\r\nIt could also be used for building a client login / project management system.\r\n\r\n> ### Clients / Projects / Phases / Tasks / Entries\r\n\r\n	<html>\r\n		<head>\r\n			<title>Clients / Projects / Phases / Tasks / Entries</title>\r\n		</head>\r\n		<body>\r\n			<ul class=\"clients\">\r\n				<li class=\"client\">Client ABC\r\n					<ul class=\"projects\">\r\n						<li class=\"project\">Project 1234\r\n							<ul class=\"phases\">\r\n								<li class=\"phase\">Phase 1: Define Objectives\r\n									<ul class=\"tasks\">\r\n										<li class=\"task\">Client Brief\r\n											<ul class=\"timesheet\">\r\n												<li class=\"entry\">Entry Title\r\n													<ul class=\"entry-data\">\r\n														<li class=\"date\">2006-10-26</li>\r\n														<li class=\"start-time\">1:00 pm</li>\r\n														<li class=\"stop-time\">2:15 pm</li>\r\n														<li class=\"hours\">1.25</li>\r\n														<li class=\"rate\">75</li>\r\n														<li class=\"amount\">93.75</li>\r\n														<li class=\"username\">User Name</li>\r\n														<li class=\"description\">Description</li>\r\n														<li class=\"notes\">Notes</li>\r\n													</ul>\r\n												</li>\r\n											</ul>\r\n										</li>\r\n										<li class=\"task\">Creative Brief</li>\r\n									</ul>\r\n								</li>\r\n								<li class=\"phase\">Phase 2: Research\r\n									<ul class=\"tasks\">\r\n										<li class=\"task\">Research</li>\r\n										<li class=\"task\">Concept Development</li>\r\n									</ul>\r\n								</li>\r\n								<li class=\"phase\">Phase 3: Design\r\n									<ul class=\"tasks\">\r\n										<li class=\"task\">Preliminary Concepts</li>\r\n										<li class=\"task\">Concept Review</li>\r\n										<li class=\"task\">Concept Refinements</li>\r\n										<li class=\"task\">Concept Approval</li>\r\n									</ul>\r\n								</li>\r\n								<li class=\"phase\">Phase 4: Production\r\n									<ul class=\"tasks\">\r\n										<li class=\"task\">Design Production</li>\r\n										<li class=\"task\">Prepress</li>\r\n										<li class=\"task\">Final Proofs for Approval</li>\r\n									</ul>\r\n								</li>\r\n								<li class=\"phase\">Phase 5: Print\r\n									<ul class=\"tasks\">\r\n										<li class=\"task\">Deliver Files</li>\r\n										<li class=\"task\">Print Supervision</li>\r\n										<li class=\"task\">Delivery</li>\r\n									</ul>\r\n								</li>\r\n							</ul>\r\n						</li>\r\n					</ul>\r\n				</li>\r\n			</ul>\r\n		</body>\r\n	</html>\r\n\r\n> Dependencies might be built in which would require warnings that by deleting a client, all related projects and entries will be deleted, but Tasks and Phases could be global. So the actual structure would be more like:\r\n\r\n    / Clients / Projects / Entries /\r\n\r\n> where the Entries section would have one required custom field for Task, which would be related to a particular Phase.\r\n\r\n> Does this make sense, or is this trying to do too much with Symphony, when there are tools like [Basecamp](http://www.basecamphq.com/), [Harvest](http://www.getharvest.com/) or [ProWorkFlow](http://www.proworkflow.com/)?\r\n\r\nWhy build something like this in Symphony? Because of today\'s announcement that Symphony 1.8 will enable the application to build other applications. The first proof of concept is the financial application that Twentyone Degrees is currently using for their inhouse operations. To find out more, visit Allen Chang\'s blog on the latest news and resources for developing XSLT templates for the Symphony web publishing system, [Chaotic Pattern](http://chaoticpattern.com/), and listen to the [podcast interview](http://chaoticpattern.com/article/interview-with-the-big-noob/) with Brad Smith and Ryan Sims from [The Big Noob](http://www.thebignoob.com/).', '<h4>The Idea Began with an Application</h4>\n\n<p>Why build something that already exists? Because I have high standards. I want control over the design and functionality, so that I don&#8217;t have to wait for the next release to work the way I envision the process. I enjoy the details, maybe too much. I become immersed in them and lose the big picture. Probably more of a weakness than a strength. But it also helps me to do what I do.</p>\n\n<p>In search of the right tool to build sites that worked well with web standards, I found one that had the potential to revolutionize content management and templating systems. The application was built on W3C standards, XML, XPath and XSLT. It is the web publishing system we know as <a href=\"http://21degrees.com.au/products/symphony/\">Symphony</a>. It does away with proprietary templating systems that do not allow for portability from one scripting language to another.</p>\n\n<p>The merits of using XML / XSLT are stated well on the <a href=\"http://overture21.com/forum/comments.php?DiscussionID=1302#CommentBody_9568\">Overture Forum</a>:</p>\n\n<blockquote>\n  <p>Once you have a system down with XML / XSLT (be it with symphony or your own homegrown solution [as is my case with the company I work for]) maintenance and adding features is a lot faster than with the traditional &#8216;what everyone else is doing&#8217; methods with php. The initial overhead from the development and planning stages is more expensive but in the long run it makes life so much simpler. And it future proofs the applications you write. If you handle a lot of the logic in the XSL then if you decide that php is too slow for your application then you can essentially write a C based application that produces the same XML that your php app did and you don&#8217;t have to make any changes to your front end logic. Portability is a cinch then. One of the many reasons I love symphony. I can port most of my symphony XSL to my own content management system and have the same exact results&#8230;</p>\n  \n  <p>That type of portability is non-existent in other solutions&#8230;</p>\n</blockquote>\n\n<p>While Symphony 1.5 was in <a href=\"http://overture21.com/forum/comments.php?DiscussionID=411\">beta</a>, during the time when Symphony was still being licensed, I started building my design portfolio website, <a href=\"http://bauhouse.ca/\">bauhouse.ca</a>, to showcase what was possible with Symphony. After that experience, I was hooked. The potential was huge, and the development team was extremely responsive to any questions, offering help, code samples and development services as well as application features and enhancements which found their way into the steady stream of releases since the <a href=\"http://overture21.com/forum/comments.php?DiscussionID=457\">Symphony 1.5 public release</a>, which made the application free for anyone to use.</p>\n\n<h4>A Design Business Administration System</h4>\n\n<p>With the introduction of Campfire Services, I started to develop some thoughts around the idea of using Symphony as the hub for several business functions. The discussions I had with the Twentyone Degrees development team in September 2006 started something like this:</p>\n\n<blockquote>\n  <p>One of the first Campfire Services that I would be interested in developing would be some sort of front end login system for my clients. It would simply be a private area for clients to view a list of ongoing projects and to be able to view conceptual proofs and submit comments. Each client would have a code (ABC) and each job would have a number (1234).</p>\n  \n  <p>The next stage would be to add the ability to define objectives, establish processes, schedule projects, track time, manage customers and communicate with them through e-mail, both in text and HTML, and on forums.</p>\n  \n  <p>Then, as I grow my business into what I envision, I would want to tie this into an accounting system, with the ability to generate estimates, invoices, and financial statements, track credit card payments for typeface designs that I would offer for sale on my site, and manage members, sales and billings for subscriptions to print and online magazines.</p>\n  \n  <p>If I could have exactly what I wish for, it would be something similar to what ProActive Software, in New Zealand, has developed as a project management solution. I took their product, <a href=\"http://www.proworkflow.com/\">ProWorkFlow</a>, for a test drive, and I loved what they had created. The issues I had with it were its reliance on ColdFusion, the lack of an ability to modify the look of the site to match my brand, and the subscription cost per user. I could modify colours and add a logo, but beyond this, I would not be able to customize the interface. For instance, add an area for displaying conceptual work for clients, with the ability to add comments. The cost is actually fairly reasonable, but ideally, I would like a custom solution.</p>\n  \n  <p>Another product that I have been looking at is from <a href=\"http://marketcircle.com/\">Marketcircle</a>, called Daylite. They also have another product called Billings. I love the look of their applications and have been very tempted to purchase licenses for their software. I also love the idea that they are built specifically for Mac OS X from the ground up. But that is also one of their limitations. They are not cross-platform compatible, though they can be synced with mobile systems. Another problem is the proprietary database used by the software. Also, as far as I know, the features of Billings are separate from the functionality of Daylite. But I want both in one solution. And, ideally, I would want a web-based solution that looks like a desktop application and works just as fast.</p>\n  \n  <p>In trying to solve the problems of running my business, I find that I have to cobble together a process that relies on software, both desktop and web-based, that solves each specific problem, then work them together into something that gets the job done, however inefficiently, given the repetition of certain tasks.</p>\n  \n  <p>Instead, I have been looking for a single platform on which to build the entire process. I think Symphony is it. The first step, then, would be to set up the front end login system for my clients, which is my first priority: better communication with my clients. Then, I would want to build each of the additional modules or components onto this.</p>\n  \n  <p>It&#8217;s all pretty ambitious, I know. But I am taking a long-term view of things. It also sounds as if you have solved a lot of these problems already with Conductor. I am very interested in seeing how this might work for me as well in trying to build a business involving identity, print, web and type design (with a view to eventually grow into industrial design and architecture &#8212; a very long-term view).</p>\n</blockquote>\n\n<p>Very ambitious indeed. It&#8217;s a dream, but maybe I&#8217;ll get there one day. In the meantime, I am enjoying the process of building out these ideas, one piece at a time. Organization and business sense are one of the first things I need. They don&#8217;t come easily. But Symphony is helping.</p>\n\n<h4>My Symphony Feature Request</h4>\n\n<p>As I started thinking about how I could use Symphony, I realized I would need some additional features. <a href=\"http://overture21.com/forum/comments.php?DiscussionID=453\">I asked for them</a> and <a href=\"http://overture21.com/forum/comments.php?DiscussionID=668\">the Symphony Team delivered</a>. It went something like this:</p>\n\n<blockquote>\n  <p>It would be great to be able to cross-reference data between sections. If I was able to create a categories section and use those same categories as select box options within other sections, it would alleviate the challenge of having to manually modify the options for several sections that would access that same list of categories.</p>\n  \n  <p>So, rather than listing options for the custom field, I could provide XSLT code that indicates a particular range of values from an XML node set in the categories datasource.</p>\n</blockquote>\n\n<p>Then, I went on to explain how this might work for building websites.</p>\n\n<blockquote>\n  <p>I could theoretically (since I haven&#8217;t tried this) create static pages and menus for an entire site from a single master template using four sections: Sections, Categories, Entries, Pages. The master template would have a URL Schema of /section/category/entry/page/. Rather than using the default navigation data source, I could create a <code>Sections</code> section where each entry represents the first level in the hierarchy. This section could contain at least two custom fields:</p>\n  \n  <h3>Sections</h3>\n  \n  <ul>\n  <li>Section Title</li>\n  <li>Section Description</li>\n  </ul>\n  \n  <p>Then, I could create other sections and custom fields:</p>\n  \n  <h3>Categories</h3>\n  \n  <ul>\n  <li>Category Title</li>\n  <li>Category Description</li>\n  <li>Section (this custom field would be a select box listing the Sections by Section Title)</li>\n  </ul>\n  \n  <h3>Entries</h3>\n  \n  <ul>\n  <li>Entry Title</li>\n  <li>Entry Body</li>\n  <li>Category (this custom field would be a select box listing the Categories by Category Title)</li>\n  </ul>\n  \n  <h3>Pages</h3>\n  \n  <ul>\n  <li>Page Number</li>\n  <li>Page Title</li>\n  <li>Page Body</li>\n  <li>Entry (this custom field would be a select box listing the Entries by Entry Title)</li>\n  </ul>\n  \n  <p>With some creative XSLT templating, a single master template should be able to generate all menus and content dynamically without the Author ever having to touch any of the Structure or Blueprints areas of the admin, which should be restricted to Administrative users. However, all this depends on the custom field being dynamically generated by the primary custom field of another section (or, if possible, any custom field from another section). This is probably possible to accomplish now, though the custom field would have to be a Text Input field and the user would have to type the data rather than choosing it from a pull down menu. The ability to restrict choices, though, would be important to keep the site from getting broken because of user error.</p>\n  \n  <p>Also, it would be very easy to bring back a much more powerful version of the version 1.1 Categories as you described in the <a href=\"http://overture21.com/forum/comments.php?DiscussionID=434\">Subcategories</a> thread.</p>\n  \n  <p>Does this sort of structure make sense as far as building a site with four levels of hierarchy?</p>\n</blockquote>\n\n<p>It could also be used for building a client login / project management system.</p>\n\n<blockquote>\n  <h3>Clients / Projects / Phases / Tasks / Entries</h3>\n</blockquote>\n\n<pre><code>&lt;html&gt;\n    &lt;head&gt;\n        &lt;title&gt;Clients / Projects / Phases / Tasks / Entries&lt;/title&gt;\n    &lt;/head&gt;\n    &lt;body&gt;\n        &lt;ul class=\"clients\"&gt;\n            &lt;li class=\"client\"&gt;Client ABC\n                &lt;ul class=\"projects\"&gt;\n                    &lt;li class=\"project\"&gt;Project 1234\n                        &lt;ul class=\"phases\"&gt;\n                            &lt;li class=\"phase\"&gt;Phase 1: Define Objectives\n                                &lt;ul class=\"tasks\"&gt;\n                                    &lt;li class=\"task\"&gt;Client Brief\n                                        &lt;ul class=\"timesheet\"&gt;\n                                            &lt;li class=\"entry\"&gt;Entry Title\n                                                &lt;ul class=\"entry-data\"&gt;\n                                                    &lt;li class=\"date\"&gt;2006-10-26&lt;/li&gt;\n                                                    &lt;li class=\"start-time\"&gt;1:00 pm&lt;/li&gt;\n                                                    &lt;li class=\"stop-time\"&gt;2:15 pm&lt;/li&gt;\n                                                    &lt;li class=\"hours\"&gt;1.25&lt;/li&gt;\n                                                    &lt;li class=\"rate\"&gt;75&lt;/li&gt;\n                                                    &lt;li class=\"amount\"&gt;93.75&lt;/li&gt;\n                                                    &lt;li class=\"username\"&gt;User Name&lt;/li&gt;\n                                                    &lt;li class=\"description\"&gt;Description&lt;/li&gt;\n                                                    &lt;li class=\"notes\"&gt;Notes&lt;/li&gt;\n                                                &lt;/ul&gt;\n                                            &lt;/li&gt;\n                                        &lt;/ul&gt;\n                                    &lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Creative Brief&lt;/li&gt;\n                                &lt;/ul&gt;\n                            &lt;/li&gt;\n                            &lt;li class=\"phase\"&gt;Phase 2: Research\n                                &lt;ul class=\"tasks\"&gt;\n                                    &lt;li class=\"task\"&gt;Research&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Concept Development&lt;/li&gt;\n                                &lt;/ul&gt;\n                            &lt;/li&gt;\n                            &lt;li class=\"phase\"&gt;Phase 3: Design\n                                &lt;ul class=\"tasks\"&gt;\n                                    &lt;li class=\"task\"&gt;Preliminary Concepts&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Concept Review&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Concept Refinements&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Concept Approval&lt;/li&gt;\n                                &lt;/ul&gt;\n                            &lt;/li&gt;\n                            &lt;li class=\"phase\"&gt;Phase 4: Production\n                                &lt;ul class=\"tasks\"&gt;\n                                    &lt;li class=\"task\"&gt;Design Production&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Prepress&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Final Proofs for Approval&lt;/li&gt;\n                                &lt;/ul&gt;\n                            &lt;/li&gt;\n                            &lt;li class=\"phase\"&gt;Phase 5: Print\n                                &lt;ul class=\"tasks\"&gt;\n                                    &lt;li class=\"task\"&gt;Deliver Files&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Print Supervision&lt;/li&gt;\n                                    &lt;li class=\"task\"&gt;Delivery&lt;/li&gt;\n                                &lt;/ul&gt;\n                            &lt;/li&gt;\n                        &lt;/ul&gt;\n                    &lt;/li&gt;\n                &lt;/ul&gt;\n            &lt;/li&gt;\n        &lt;/ul&gt;\n    &lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n\n<blockquote>\n  <p>Dependencies might be built in which would require warnings that by deleting a client, all related projects and entries will be deleted, but Tasks and Phases could be global. So the actual structure would be more like:</p>\n</blockquote>\n\n<pre><code>/ Clients / Projects / Entries /\n</code></pre>\n\n<blockquote>\n  <p>where the Entries section would have one required custom field for Task, which would be related to a particular Phase.</p>\n  \n  <p>Does this make sense, or is this trying to do too much with Symphony, when there are tools like <a href=\"http://www.basecamphq.com/\">Basecamp</a>, <a href=\"http://www.getharvest.com/\">Harvest</a> or <a href=\"http://www.proworkflow.com/\">ProWorkFlow</a>?</p>\n</blockquote>\n\n<p>Why build something like this in Symphony? Because of today&#8217;s announcement that Symphony 1.8 will enable the application to build other applications. The first proof of concept is the financial application that Twentyone Degrees is currently using for their inhouse operations. To find out more, visit Allen Chang&#8217;s blog on the latest news and resources for developing XSLT templates for the Symphony web publishing system, <a href=\"http://chaoticpattern.com/\">Chaotic Pattern</a>, and listen to the <a href=\"http://chaoticpattern.com/article/interview-with-the-big-noob/\">podcast interview</a> with Brad Smith and Ryan Sims from <a href=\"http://www.thebignoob.com/\">The Big Noob</a>.</p>\n');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 82, 'I have created an XSLT template that parses the standard ICS format and transforms it into XHTML. Here is the code that parses the properties of the ICS file into a list of properties that can be displayed in XHTML. Feed the $ical-data-raw parameter with ICS data and you will get XHTML formatted properties.\r\n\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n	\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	\r\n	<xsl:variable name=\"ical-data\" select=\"/data/vcalendar\"/>\r\n	<xsl:variable name=\"input-data\" select=\"normalize-space(/data/vcalendar)\"/>\r\n	<xsl:variable name=\"ical-events\">\r\n		<xsl:value-of select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($ical-data,\'BEGIN:VEVENT\'),\'END:VCALENDAR\'))\"/>\r\n	</xsl:variable>\r\n	\r\n	<xsl:template match=\"/\">\r\n	\r\n		<h1>XSL Transform iCalendar ICS to XHTML</h1>\r\n	\r\n		<h2>iCalendar Source file</h2>\r\n		<p><xsl:value-of select=\"$ical-data\"/></p>\r\n	\r\n	\r\n	\r\n		<h2>iCalendar Data with Normalized Spaces</h2>\r\n		<p><xsl:value-of select=\"$input-data\"/></p>\r\n	\r\n		<h2>iCalendar Events</h2>\r\n		<p><xsl:value-of select=\"$ical-events\"/></p>\r\n	\r\n		<h2>Properties as XHTML</h2>\r\n		<ul>\r\n			<xsl:call-template name=\"properties\"/>\r\n		</ul>\r\n	\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"property\">\r\n		<xsl:param name=\"input\" select=\"$input-data\"/>\r\n		<xsl:param name=\"property\" select=\"substring-before($input,\':\')\"/>\r\n		<xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/>\r\n		<xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/>\r\n		<xsl:param name=\"reverse-next-string\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"$next-string\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n		<xsl:param name=\"next-property\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"value\" select=\"substring-before($next-string, concat(\' \',$next-property))\"/>\r\n		<xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/>\r\n		<li>Property: <xsl:value-of select=\"$property\"/></li>\r\n		<li>Next String: <xsl:value-of select=\"$next-string\"/></li>\r\n		<li>Reverse Next String: <xsl:value-of select=\"$reverse-next-string\"/></li>\r\n		<li>Reverse Next Property: <xsl:value-of select=\"$reverse-next-property\"/></li>\r\n		<li>Next Property: <xsl:value-of select=\"$next-property\"/></li>\r\n		<li>Value: <xsl:value-of select=\"$value\"/></li>\r\n		<li>Remaining String: <xsl:value-of select=\"$remaining-string\"/></li>\r\n	\r\n		<p><xsl:value-of select=\"$property\"/>: <xsl:value-of select=\"$value\"/></p>\r\n		<xsl:call-template name=\"next-property\">\r\n			<xsl:with-param name=\"input\" select=\"$remaining-string\"/>\r\n		</xsl:call-template>\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"properties\">\r\n		<xsl:param name=\"input\" select=\"$input-data\"/>\r\n		<xsl:param name=\"property\" select=\"substring-before($input,\':\')\"/>\r\n		<xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/>\r\n		<xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/>\r\n		<xsl:param name=\"reverse-next-string\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"$next-string\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n		<xsl:param name=\"next-property\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"value\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"$next-property != \'\'\">\r\n					<xsl:value-of select=\"substring-before($next-string, concat(\' \',$next-property))\"/>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<xsl:value-of select=\"$string-after-property\"/>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:param>\r\n		<xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/>\r\n	\r\n		<p><xsl:value-of select=\"$property\"/>: <xsl:value-of select=\"$value\"/></p>\r\n		<xsl:if test=\"$remaining-string != \'\'\">\r\n			<xsl:call-template name=\"properties\">\r\n				<xsl:with-param name=\"input\" select=\"$remaining-string\"/>\r\n			</xsl:call-template>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"reverse\">\r\n		<xsl:param name=\"input\"/>\r\n		<xsl:variable name=\"length\" select=\"string-length($input)\"/>\r\n		<xsl:choose>\r\n			<xsl:when test=\"$length &lt; 2\">\r\n				<xsl:value-of select=\"$input\"/>\r\n			</xsl:when>		\r\n			<xsl:when test=\"$length = 2\">\r\n				<xsl:value-of select=\"substring($input,2,1)\"/>\r\n				<xsl:value-of select=\"substring($input,1,1)\"/>\r\n			</xsl:when>		\r\n			<xsl:otherwise>\r\n				<xsl:variable name=\"middle\" select=\"floor($length div 2)\"/>\r\n				<xsl:call-template name=\"reverse\">\r\n					<xsl:with-param name=\"input\" select=\"substring($input,$middle + 1,$middle + 1)\"/>\r\n				</xsl:call-template>\r\n				<xsl:call-template name=\"reverse\">\r\n					<xsl:with-param name=\"input\" select=\"substring($input,1,$middle)\"/>\r\n				</xsl:call-template>\r\n			</xsl:otherwise>		\r\n		</xsl:choose>\r\n	</xsl:template>\r\n\r\n	</xsl:stylesheet>\r\n\r\nI have completed building the [XSLT templates](http://designadmin.com/journal/2007/07/29/xslt-transformation-of-ics-to-xml/) that can output [xCalendar](http://www.w3.org/2001/sw/Europe/200210/calendar/vocab_usecases.html#ical). It should be a trivial matter to adjust the templates to output the [hCalendar](http://microformats.org/wiki/hcalendar) format as well (see also the W3C presentation on [Semantic Web Data Integration with hCalendar and GRDDL](http://www.w3.org/2002/12/cal/mash/slides). This will allow iCal files to be easily parsed to test the ability of the [XSLT Calendar](http://designadmin.com/journal/2007/07/27/an-xslt-calendar/) to be able to display iCal information.\r\n\r\nThe xCalendar format will be most useful as an XML data source for building XHTML pages.\r\n\r\n\r\n	<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n	<!DOCTYPE iCalendar PUBLIC \"-//IETF//DTD XCAL/iCalendar XML//EN\"\r\n	\"http://www.ietf.org/internet-drafts/draft-ietf-calsch-many-xcal-01.txt\">\r\n	\r\n	<iCalendar>\r\n		<vcalendar method=\"PUBLISH\"\r\n			version=\"2.0\"\r\n			prodid=\"-//HandGen//NONSGML vGen v1.0//EN\">\r\n			<vevent>\r\n				<uid>19981116T150000@cal10.host.com</uid>\r\n				<dtstamp>19981116T145958Z</dtstamp>\r\n				<summary>Project XYZ Review</summary>\r\n				<location>Conference Room 23A</location>\r\n				<dtstart>19981116T163000Z</dtstart>\r\n				<dtend>19981116T190000Z</dtend>\r\n				<categories>\r\n					<item>Appointment</item>\r\n				</categories>\r\n			</vevent>\r\n		</vcalendar>\r\n	</iCalendar>', '<p>I have created an XSLT template that parses the standard ICS format and transforms it into XHTML. Here is the code that parses the properties of the ICS file into a list of properties that can be displayed in XHTML. Feed the $ical-data-raw parameter with ICS data and you will get XHTML formatted properties.</p>\n\n<pre><code>&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n\n&lt;xsl:variable name=\"ical-data\" select=\"/data/vcalendar\"/&gt;\n&lt;xsl:variable name=\"input-data\" select=\"normalize-space(/data/vcalendar)\"/&gt;\n&lt;xsl:variable name=\"ical-events\"&gt;\n    &lt;xsl:value-of select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($ical-data,\'BEGIN:VEVENT\'),\'END:VCALENDAR\'))\"/&gt;\n&lt;/xsl:variable&gt;\n\n&lt;xsl:template match=\"/\"&gt;\n\n    &lt;h1&gt;XSL Transform iCalendar ICS to XHTML&lt;/h1&gt;\n\n    &lt;h2&gt;iCalendar Source file&lt;/h2&gt;\n    &lt;p&gt;&lt;xsl:value-of select=\"$ical-data\"/&gt;&lt;/p&gt;\n\n\n\n    &lt;h2&gt;iCalendar Data with Normalized Spaces&lt;/h2&gt;\n    &lt;p&gt;&lt;xsl:value-of select=\"$input-data\"/&gt;&lt;/p&gt;\n\n    &lt;h2&gt;iCalendar Events&lt;/h2&gt;\n    &lt;p&gt;&lt;xsl:value-of select=\"$ical-events\"/&gt;&lt;/p&gt;\n\n    &lt;h2&gt;Properties as XHTML&lt;/h2&gt;\n    &lt;ul&gt;\n        &lt;xsl:call-template name=\"properties\"/&gt;\n    &lt;/ul&gt;\n\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"property\"&gt;\n    &lt;xsl:param name=\"input\" select=\"$input-data\"/&gt;\n    &lt;xsl:param name=\"property\" select=\"substring-before($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/&gt;\n    &lt;xsl:param name=\"reverse-next-string\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$next-string\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n    &lt;xsl:param name=\"next-property\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"value\" select=\"substring-before($next-string, concat(\' \',$next-property))\"/&gt;\n    &lt;xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/&gt;\n    &lt;li&gt;Property: &lt;xsl:value-of select=\"$property\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Next String: &lt;xsl:value-of select=\"$next-string\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Reverse Next String: &lt;xsl:value-of select=\"$reverse-next-string\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Reverse Next Property: &lt;xsl:value-of select=\"$reverse-next-property\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Next Property: &lt;xsl:value-of select=\"$next-property\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Value: &lt;xsl:value-of select=\"$value\"/&gt;&lt;/li&gt;\n    &lt;li&gt;Remaining String: &lt;xsl:value-of select=\"$remaining-string\"/&gt;&lt;/li&gt;\n\n    &lt;p&gt;&lt;xsl:value-of select=\"$property\"/&gt;: &lt;xsl:value-of select=\"$value\"/&gt;&lt;/p&gt;\n    &lt;xsl:call-template name=\"next-property\"&gt;\n        &lt;xsl:with-param name=\"input\" select=\"$remaining-string\"/&gt;\n    &lt;/xsl:call-template&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"properties\"&gt;\n    &lt;xsl:param name=\"input\" select=\"$input-data\"/&gt;\n    &lt;xsl:param name=\"property\" select=\"substring-before($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/&gt;\n    &lt;xsl:param name=\"reverse-next-string\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$next-string\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n    &lt;xsl:param name=\"next-property\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"value\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"$next-property != \'\'\"&gt;\n                &lt;xsl:value-of select=\"substring-before($next-string, concat(\' \',$next-property))\"/&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:otherwise&gt;\n                &lt;xsl:value-of select=\"$string-after-property\"/&gt;\n            &lt;/xsl:otherwise&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/&gt;\n\n    &lt;p&gt;&lt;xsl:value-of select=\"$property\"/&gt;: &lt;xsl:value-of select=\"$value\"/&gt;&lt;/p&gt;\n    &lt;xsl:if test=\"$remaining-string != \'\'\"&gt;\n        &lt;xsl:call-template name=\"properties\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$remaining-string\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:if&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"reverse\"&gt;\n    &lt;xsl:param name=\"input\"/&gt;\n    &lt;xsl:variable name=\"length\" select=\"string-length($input)\"/&gt;\n    &lt;xsl:choose&gt;\n        &lt;xsl:when test=\"$length &amp;lt; 2\"&gt;\n            &lt;xsl:value-of select=\"$input\"/&gt;\n        &lt;/xsl:when&gt;     \n        &lt;xsl:when test=\"$length = 2\"&gt;\n            &lt;xsl:value-of select=\"substring($input,2,1)\"/&gt;\n            &lt;xsl:value-of select=\"substring($input,1,1)\"/&gt;\n        &lt;/xsl:when&gt;     \n        &lt;xsl:otherwise&gt;\n            &lt;xsl:variable name=\"middle\" select=\"floor($length div 2)\"/&gt;\n            &lt;xsl:call-template name=\"reverse\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"substring($input,$middle + 1,$middle + 1)\"/&gt;\n            &lt;/xsl:call-template&gt;\n            &lt;xsl:call-template name=\"reverse\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"substring($input,1,$middle)\"/&gt;\n            &lt;/xsl:call-template&gt;\n        &lt;/xsl:otherwise&gt;        \n    &lt;/xsl:choose&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n\n<p>I have completed building the <a href=\"http://designadmin.com/journal/2007/07/29/xslt-transformation-of-ics-to-xml/\">XSLT templates</a> that can output <a href=\"http://www.w3.org/2001/sw/Europe/200210/calendar/vocab_usecases.html#ical\">xCalendar</a>. It should be a trivial matter to adjust the templates to output the <a href=\"http://microformats.org/wiki/hcalendar\">hCalendar</a> format as well (see also the W3C presentation on <a href=\"http://www.w3.org/2002/12/cal/mash/slides\">Semantic Web Data Integration with hCalendar and GRDDL</a>. This will allow iCal files to be easily parsed to test the ability of the <a href=\"http://designadmin.com/journal/2007/07/27/an-xslt-calendar/\">XSLT Calendar</a> to be able to display iCal information.</p>\n\n<p>The xCalendar format will be most useful as an XML data source for building XHTML pages.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;\n&lt;!DOCTYPE iCalendar PUBLIC \"-//IETF//DTD XCAL/iCalendar XML//EN\"\n\"http://www.ietf.org/internet-drafts/draft-ietf-calsch-many-xcal-01.txt\"&gt;\n\n&lt;iCalendar&gt;\n    &lt;vcalendar method=\"PUBLISH\"\n        version=\"2.0\"\n        prodid=\"-//HandGen//NONSGML vGen v1.0//EN\"&gt;\n        &lt;vevent&gt;\n            &lt;uid&gt;19981116T150000@cal10.host.com&lt;/uid&gt;\n            &lt;dtstamp&gt;19981116T145958Z&lt;/dtstamp&gt;\n            &lt;summary&gt;Project XYZ Review&lt;/summary&gt;\n            &lt;location&gt;Conference Room 23A&lt;/location&gt;\n            &lt;dtstart&gt;19981116T163000Z&lt;/dtstart&gt;\n            &lt;dtend&gt;19981116T190000Z&lt;/dtend&gt;\n            &lt;categories&gt;\n                &lt;item&gt;Appointment&lt;/item&gt;\n            &lt;/categories&gt;\n        &lt;/vevent&gt;\n    &lt;/vcalendar&gt;\n&lt;/iCalendar&gt;\n</code></pre>\n');
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 83, 'There is one minor problem that I couldn\'t get past, which was to create XML elements for the values of those properties that have multiple values, such as the `rrule` or `category` elements. I developed the following template with the help of Marc Liyanage\'s [TextXSLT](http://www.entropy.ch/software/macosx/#testxslt) application.\r\n\r\n	<?xml version=\"1.0\" encoding=\"utf-8\" ?>\r\n	<xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\">\r\n		\r\n	<xsl:output\r\n		method=\"xml\" \r\n		doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \r\n		doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\r\n		omit-xml-declaration=\"yes\"\r\n		encoding=\"UTF-8\" \r\n		indent=\"yes\" />\r\n	\r\n	<xsl:param name=\"ical-data-raw\" select=\"/data/vcalendar\"/>\r\n	<xsl:param name=\"ical-data\" select=\"normalize-space($ical-data-raw)\"/>\r\n	<xsl:param name=\"ical-properties\" select=\"substring-before($ical-data,\' BEGIN:VEVENT\')\"/>\r\n	<xsl:param name=\"ical-events\">\r\n	<xsl:value-of select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($ical-data,\'BEGIN:VEVENT \'),\' END:VCALENDAR\'))\"/>\r\n	</xsl:param>\r\n		\r\n	<xsl:template match=\"/\">\r\n		\r\n		<h1>XSL Transformation of iCalendar ICS format to XHTML</h1>\r\n	\r\n		<h2>Individual iCalendar Events</h2>\r\n	\r\n		<h3>iCalendar to xCalendar XSL Transformation</h3>\r\n		<xsl:call-template name=\"xcal-calendar\">\r\n			<xsl:with-param name=\"input\" select=\"$ical-properties\"/>\r\n			<xsl:with-param name=\"type\" select=\"\'calendar\'\"/>\r\n			<xsl:with-param name=\"output-format\" select=\"\'xcalendar\'\"/>\r\n		</xsl:call-template>\r\n		\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"xcal-calendar\">\r\n		<xsl:param name=\"input\"/>\r\n		<xsl:param name=\"type\" select=\"\'event\'\"/>\r\n		<xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/>\r\n		<xsl:param name=\"ical-properties-data\" select=\"$input\"/>\r\n		<xsl:param name=\"remaining-event-data\" select=\"substring-after($input, $ical-properties-data)\"/>\r\n		<xsl:choose>\r\n			<xsl:when test=\"$output-format = \'xcalendar\'\">\r\n				<iCalendar>\r\n					<vcalendar>\r\n						<xsl:call-template name=\"properties\">\r\n							<xsl:with-param name=\"input\" select=\"$ical-properties-data\"/>\r\n							<xsl:with-param name=\"type\" select=\"$type\"/>\r\n							<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n						</xsl:call-template>\r\n						<xsl:call-template name=\"xcal-events\">\r\n							<xsl:with-param name=\"input\" select=\"$ical-events\"/>\r\n							<xsl:with-param name=\"type\" select=\"\'event\'\"/>\r\n							<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n						</xsl:call-template>\r\n					</vcalendar>\r\n				</iCalendar>\r\n			</xsl:when>\r\n			<xsl:when test=\"$output-format = \'xcalendar-encoded\'\">\r\n				<code><pre>\r\n				<xsl:text>&lt;iCalendar&gt;&#xd;</xsl:text>\r\n				<xsl:text>&lt;vcalendar&#xd;</xsl:text>\r\n				<xsl:call-template name=\"properties\">\r\n					<xsl:with-param name=\"input\" select=\"$ical-properties-data\"/>\r\n					<xsl:with-param name=\"type\" select=\"$type\"/>\r\n					<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n				</xsl:call-template>\r\n				<xsl:text>&gt;&#xd;</xsl:text>\r\n				<xsl:call-template name=\"xcal-events\">\r\n					<xsl:with-param name=\"input\" select=\"$ical-events\"/>\r\n					<xsl:with-param name=\"type\" select=\"\'event\'\"/>\r\n					<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n				</xsl:call-template>\r\n				<xsl:text>&lt;/vcalendar&gt;&#xd;</xsl:text>\r\n				<xsl:text>&lt;/iCalendar&gt;&#xd;</xsl:text>\r\n				</pre></code>\r\n			</xsl:when>\r\n		</xsl:choose>\r\n		<xsl:if test=\"$remaining-event-data != \'\'\">\r\n			<xsl:call-template name=\"xcal-calendar\">\r\n				<xsl:with-param name=\"input\" select=\"$remaining-event-data\"/>\r\n				<xsl:with-param name=\"type\" select=\"$type\"/>\r\n				<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n			</xsl:call-template>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"xcal-events\">\r\n		<xsl:param name=\"input\"/>\r\n		<xsl:param name=\"type\" select=\"\'event\'\"/>\r\n		<xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/>\r\n		<xsl:param name=\"ical-event-data\" select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($input,\'BEGIN:VEVENT \'),\' END:VEVENT\'),\' END:VEVENT\')\"/>\r\n		<xsl:param name=\"remaining-event-data\" select=\"substring-after($input, $ical-event-data)\"/>\r\n		<xsl:choose>\r\n			<xsl:when test=\"$output-format = \'xcalendar\'\">\r\n				<vevent>\r\n					<xsl:call-template name=\"properties\">\r\n						<xsl:with-param name=\"input\" select=\"$ical-event-data\"/>\r\n						<xsl:with-param name=\"type\" select=\"$type\"/>\r\n						<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n					</xsl:call-template>\r\n				</vevent>\r\n			</xsl:when>\r\n			<xsl:when test=\"$output-format = \'xcalendar-encoded\'\">\r\n				<xsl:text>&#x9;&lt;vevent&gt;&#xd;</xsl:text>\r\n					<xsl:call-template name=\"properties\">\r\n						<xsl:with-param name=\"input\" select=\"$ical-event-data\"/>\r\n						<xsl:with-param name=\"type\" select=\"$type\"/>\r\n						<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n					</xsl:call-template>\r\n				<xsl:text>&#x9;&lt;/vevent&gt;&#xd;</xsl:text>\r\n			</xsl:when>\r\n			<xsl:when test=\"$output-format = \'hcalendar\'\">\r\n			</xsl:when>\r\n		</xsl:choose>\r\n		<xsl:if test=\"$remaining-event-data != \'\'\">\r\n			<xsl:call-template name=\"xcal-events\">\r\n				<xsl:with-param name=\"input\" select=\"$remaining-event-data\"/>\r\n				<xsl:with-param name=\"type\" select=\"$type\"/>\r\n				<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n			</xsl:call-template>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	<xsl:template name=\"properties\">\r\n		<xsl:param name=\"input\" select=\"$ical-data\"/>\r\n		<xsl:param name=\"type\" select=\"\'event\'\"/>\r\n		<xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/>\r\n		<xsl:param name=\"property-and-attribute-caps\" select=\"substring-before($input,\':\')\"/>\r\n		<xsl:param name=\"property-and-attribute\" select=\"translate($property-and-attribute-caps,\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\',\'abcdefghijklmnopqrstuvwxyz\')\"/>\r\n		<xsl:param name=\"property\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"contains($property-and-attribute,\';\')\">\r\n					<xsl:value-of select=\"substring-before($property-and-attribute,\';\')\"/>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<xsl:value-of select=\"$property-and-attribute\"/>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:param>\r\n		<xsl:param name=\"property-attribute\" select=\"substring-after($property-and-attribute,\';\')\"/>\r\n		<xsl:param name=\"property-attribute-name\" select=\"substring-before($property-attribute,\'=\')\"/>\r\n		<xsl:param name=\"property-attribute-value\" select=\"substring-after($property-attribute,\'=\')\"/>\r\n		<xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/>\r\n		<xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/>\r\n		<xsl:param name=\"reverse-next-string\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"$next-string\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n		<xsl:param name=\"next-property\">\r\n			<xsl:call-template name=\"reverse\">\r\n				<xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"string-before-next-property\" select=\"substring-before($next-string, concat(\' \',$next-property))\"/>\r\n		<xsl:param name=\"plural-values\" select=\"contains($string-before-next-property,\';\')\"/>\r\n		<xsl:param name=\"multiple-items\">\r\n			<xsl:if test=\"$plural-values\">\r\n				<xsl:value-of select=\"translate($string-before-next-property,\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\',\'abcdefghijklmnopqrstuvwxyz\')\"/>\r\n			</xsl:if>\r\n		</xsl:param>\r\n		<xsl:param name=\"items\">\r\n			<xsl:call-template name=\"items\">\r\n				<xsl:with-param name=\"input\" select=\"$multiple-items\"/>\r\n				<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n			</xsl:call-template>\r\n		</xsl:param>\r\n		<xsl:param name=\"value\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"$next-property != \'\' and contains($string-before-next-property,\';\') and $output-format = \'xcalendar-encoded\'\">\r\n					<xsl:value-of select=\"$items\"/>\r\n				</xsl:when>\r\n				<xsl:when test=\"$next-property != \'\'\">\r\n					<xsl:value-of select=\"$string-before-next-property\"/>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<xsl:value-of select=\"$string-after-property\"/>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:param>\r\n		<xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/>\r\n		<xsl:if test=\"$property != \'begin\' and $property != \'end\'\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"$type = \'event\'\">\r\n					<xsl:choose>\r\n						<xsl:when test=\"$output-format = \'xcalendar\'\">\r\n							<xsl:choose>\r\n								<xsl:when test=\"$property-attribute-name = \'value\'\">\r\n									<xsl:element name=\"{$property}\">\r\n										<xsl:attribute name=\"{$property-attribute-name}\"><xsl:value-of select=\"$property-attribute-value\"/></xsl:attribute>\r\n										<xsl:value-of select=\"$value\"/>\r\n									</xsl:element>\r\n								</xsl:when>\r\n								<xsl:when test=\"$plural-values and $output-format = \'xcalendar\'\">\r\n									<xsl:element name=\"{$property}\">\r\n										<xsl:copy-of select=\"$items\"/>\r\n									</xsl:element>\r\n								</xsl:when>\r\n								<xsl:otherwise>\r\n									<xsl:element name=\"{$property}\">\r\n										<xsl:value-of select=\"$value\"/>\r\n									</xsl:element>\r\n								</xsl:otherwise>\r\n							</xsl:choose>\r\n						</xsl:when>\r\n						<xsl:when test=\"$output-format = \'xcalendar-encoded\'\">\r\n							<xsl:choose>\r\n								<xsl:when test=\"$property-attribute-name = \'value\'\">\r\n									<xsl:text>&#x9;&#x9;&lt;</xsl:text>\r\n									<xsl:value-of select=\"$property\"/>\r\n									<xsl:text> </xsl:text>\r\n									<xsl:value-of select=\"$property-attribute-name\"/>\r\n									<xsl:text>=\"</xsl:text>\r\n									<xsl:value-of select=\"$property-attribute-value\"/>\r\n									<xsl:text>\"&gt;</xsl:text>\r\n									<xsl:value-of select=\"$value\"/>\r\n									<xsl:text>&lt;/</xsl:text>\r\n									<xsl:value-of select=\"$property\"/>\r\n									<xsl:text>&gt;&#xd;</xsl:text>\r\n								</xsl:when>\r\n								<xsl:otherwise>\r\n									<xsl:text>&#x9;&#x9;&lt;</xsl:text>\r\n									<xsl:value-of select=\"$property\"/>\r\n									<xsl:text>&gt;</xsl:text>\r\n									<xsl:value-of select=\"$value\"/>\r\n									<xsl:text>&lt;/</xsl:text>\r\n									<xsl:value-of select=\"$property\"/>\r\n									<xsl:text>&gt;&#xd;</xsl:text>\r\n								</xsl:otherwise>\r\n							</xsl:choose>\r\n						</xsl:when>\r\n					</xsl:choose>\r\n				</xsl:when>\r\n				<xsl:when test=\"$type = \'calendar\'\">\r\n					<xsl:choose>\r\n						<xsl:when test=\"$output-format = \'xcalendar\'\">\r\n							<xsl:attribute name=\"{$property}\"><xsl:value-of select=\"$value\"/></xsl:attribute>\r\n						</xsl:when>\r\n						<xsl:when test=\"$output-format = \'xcalendar-encoded\'\">\r\n							<xsl:text>&#x9;</xsl:text>\r\n							<xsl:value-of select=\"$property\"/>\r\n							<xsl:text>=\"</xsl:text>\r\n							<xsl:value-of select=\"$value\"/>\r\n							<xsl:text>\"</xsl:text>\r\n						</xsl:when>\r\n					</xsl:choose>\r\n				</xsl:when>\r\n			</xsl:choose>\r\n		</xsl:if>\r\n		<xsl:if test=\"$remaining-string != \'\'\">\r\n			<xsl:if test=\"$property != \'begin\' and $property != \'end\' and $output-format = \'xcalendar-encoded\' and $type = \'calendar\'\">\r\n				<xsl:text>&#xd;</xsl:text>\r\n			</xsl:if>\r\n			<xsl:call-template name=\"properties\">\r\n				<xsl:with-param name=\"input\" select=\"$remaining-string\"/>\r\n				<xsl:with-param name=\"type\" select=\"$type\"/>\r\n				<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n			</xsl:call-template>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	\r\n	<xsl:template name=\"items\">\r\n		<xsl:param name=\"input\"/>\r\n		<xsl:param name=\"items\" select=\"$input\"/>\r\n		<xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/>\r\n		<xsl:param name=\"delimiter\" select=\"\';\'\"/>\r\n		<xsl:param name=\"item-and-value\">\r\n			<xsl:choose>\r\n				<xsl:when test=\"contains($items,$delimiter)\">\r\n					<xsl:value-of select=\"substring-before($items,$delimiter)\"/>\r\n				</xsl:when>\r\n				<xsl:otherwise>\r\n					<xsl:value-of select=\"$items\"/>\r\n				</xsl:otherwise>\r\n			</xsl:choose>\r\n		</xsl:param>\r\n		<xsl:param name=\"remaining-items\" select=\"substring-after($items,$delimiter)\"/>\r\n		<xsl:param name=\"item\" select=\"substring-before($item-and-value,\'=\')\"/>\r\n		<xsl:param name=\"value\" select=\"substring-after($item-and-value,\'=\')\"/>\r\n		<xsl:choose>\r\n			<xsl:when test=\"$output-format = \'xcalendar\'\">\r\n				<item class=\"{$item}\">\r\n					<xsl:value-of select=\"$value\"/>\r\n				</item>\r\n			</xsl:when>\r\n			<xsl:when test=\"$output-format = \'xcalendar-encoded\'\">\r\n				<xsl:text>&#xd;&#x9;&#x9;&#x9;&lt;</xsl:text>\r\n				<xsl:value-of select=\"$item\"/>\r\n				<xsl:text>&gt;</xsl:text>\r\n				<xsl:value-of select=\"$value\"/>\r\n				<xsl:text>&lt;/</xsl:text>\r\n				<xsl:value-of select=\"$item\"/>\r\n				<xsl:text>&gt;</xsl:text>\r\n			</xsl:when>\r\n		</xsl:choose>\r\n		<xsl:if test=\"$remaining-items != \'\'\">\r\n			<xsl:call-template name=\"items\">\r\n				<xsl:with-param name=\"input\" select=\"$remaining-items\"/>\r\n				<xsl:with-param name=\"output-format\" select=\"$output-format\"/>\r\n			</xsl:call-template>\r\n		</xsl:if>\r\n		<xsl:if test=\"$remaining-items = \'\'\">\r\n			<xsl:text>&#xd;&#x9;&#x9;</xsl:text>\r\n		</xsl:if>\r\n	</xsl:template>\r\n	\r\n	\r\n	<xsl:template name=\"reverse\">\r\n		<xsl:param name=\"input\"/>\r\n		<xsl:variable name=\"length\" select=\"string-length($input)\"/>\r\n		<xsl:choose>\r\n			<xsl:when test=\"$length &lt; 2\">\r\n				<xsl:value-of select=\"$input\"/>\r\n			</xsl:when>		\r\n			<xsl:when test=\"$length = 2\">\r\n				<xsl:value-of select=\"substring($input,2,1)\"/>\r\n				<xsl:value-of select=\"substring($input,1,1)\"/>\r\n			</xsl:when>		\r\n			<xsl:otherwise>\r\n				<xsl:variable name=\"middle\" select=\"floor($length div 2)\"/>\r\n				<xsl:call-template name=\"reverse\">\r\n					<xsl:with-param name=\"input\" select=\"substring($input,$middle + 1,$middle + 1)\"/>\r\n				</xsl:call-template>\r\n				<xsl:call-template name=\"reverse\">\r\n					<xsl:with-param name=\"input\" select=\"substring($input,1,$middle)\"/>\r\n				</xsl:call-template>\r\n			</xsl:otherwise>		\r\n		</xsl:choose>\r\n	</xsl:template>\r\n	\r\n	</xsl:stylesheet>', '<p>There is one minor problem that I couldn&#8217;t get past, which was to create XML elements for the values of those properties that have multiple values, such as the <code>rrule</code> or <code>category</code> elements. I developed the following template with the help of Marc Liyanage&#8217;s <a href=\"http://www.entropy.ch/software/macosx/#testxslt\">TextXSLT</a> application.</p>\n\n<pre><code>&lt;?xml version=\"1.0\" encoding=\"utf-8\" ?&gt;\n&lt;xsl:stylesheet version=\"1.0\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"&gt;\n\n&lt;xsl:output\n    method=\"xml\" \n    doctype-public=\"-//W3C//DTD XHTML 1.0 Strict//EN\" \n    doctype-system=\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"\n    omit-xml-declaration=\"yes\"\n    encoding=\"UTF-8\" \n    indent=\"yes\" /&gt;\n\n&lt;xsl:param name=\"ical-data-raw\" select=\"/data/vcalendar\"/&gt;\n&lt;xsl:param name=\"ical-data\" select=\"normalize-space($ical-data-raw)\"/&gt;\n&lt;xsl:param name=\"ical-properties\" select=\"substring-before($ical-data,\' BEGIN:VEVENT\')\"/&gt;\n&lt;xsl:param name=\"ical-events\"&gt;\n&lt;xsl:value-of select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($ical-data,\'BEGIN:VEVENT \'),\' END:VCALENDAR\'))\"/&gt;\n&lt;/xsl:param&gt;\n\n&lt;xsl:template match=\"/\"&gt;\n\n    &lt;h1&gt;XSL Transformation of iCalendar ICS format to XHTML&lt;/h1&gt;\n\n    &lt;h2&gt;Individual iCalendar Events&lt;/h2&gt;\n\n    &lt;h3&gt;iCalendar to xCalendar XSL Transformation&lt;/h3&gt;\n    &lt;xsl:call-template name=\"xcal-calendar\"&gt;\n        &lt;xsl:with-param name=\"input\" select=\"$ical-properties\"/&gt;\n        &lt;xsl:with-param name=\"type\" select=\"\'calendar\'\"/&gt;\n        &lt;xsl:with-param name=\"output-format\" select=\"\'xcalendar\'\"/&gt;\n    &lt;/xsl:call-template&gt;\n\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"xcal-calendar\"&gt;\n    &lt;xsl:param name=\"input\"/&gt;\n    &lt;xsl:param name=\"type\" select=\"\'event\'\"/&gt;\n    &lt;xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/&gt;\n    &lt;xsl:param name=\"ical-properties-data\" select=\"$input\"/&gt;\n    &lt;xsl:param name=\"remaining-event-data\" select=\"substring-after($input, $ical-properties-data)\"/&gt;\n    &lt;xsl:choose&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar\'\"&gt;\n            &lt;iCalendar&gt;\n                &lt;vcalendar&gt;\n                    &lt;xsl:call-template name=\"properties\"&gt;\n                        &lt;xsl:with-param name=\"input\" select=\"$ical-properties-data\"/&gt;\n                        &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n                        &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n                    &lt;/xsl:call-template&gt;\n                    &lt;xsl:call-template name=\"xcal-events\"&gt;\n                        &lt;xsl:with-param name=\"input\" select=\"$ical-events\"/&gt;\n                        &lt;xsl:with-param name=\"type\" select=\"\'event\'\"/&gt;\n                        &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n                    &lt;/xsl:call-template&gt;\n                &lt;/vcalendar&gt;\n            &lt;/iCalendar&gt;\n        &lt;/xsl:when&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar-encoded\'\"&gt;\n            &lt;code&gt;&lt;pre&gt;\n            &lt;xsl:text&gt;&amp;lt;iCalendar&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n            &lt;xsl:text&gt;&amp;lt;vcalendar&amp;#xd;&lt;/xsl:text&gt;\n            &lt;xsl:call-template name=\"properties\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"$ical-properties-data\"/&gt;\n                &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n                &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n            &lt;/xsl:call-template&gt;\n            &lt;xsl:text&gt;&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n            &lt;xsl:call-template name=\"xcal-events\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"$ical-events\"/&gt;\n                &lt;xsl:with-param name=\"type\" select=\"\'event\'\"/&gt;\n                &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n            &lt;/xsl:call-template&gt;\n            &lt;xsl:text&gt;&amp;lt;/vcalendar&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n            &lt;xsl:text&gt;&amp;lt;/iCalendar&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n            &lt;/pre&gt;&lt;/code&gt;\n        &lt;/xsl:when&gt;\n    &lt;/xsl:choose&gt;\n    &lt;xsl:if test=\"$remaining-event-data != \'\'\"&gt;\n        &lt;xsl:call-template name=\"xcal-calendar\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$remaining-event-data\"/&gt;\n            &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n            &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:if&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"xcal-events\"&gt;\n    &lt;xsl:param name=\"input\"/&gt;\n    &lt;xsl:param name=\"type\" select=\"\'event\'\"/&gt;\n    &lt;xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/&gt;\n    &lt;xsl:param name=\"ical-event-data\" select=\"concat(\'BEGIN:VEVENT \',substring-before(substring-after($input,\'BEGIN:VEVENT \'),\' END:VEVENT\'),\' END:VEVENT\')\"/&gt;\n    &lt;xsl:param name=\"remaining-event-data\" select=\"substring-after($input, $ical-event-data)\"/&gt;\n    &lt;xsl:choose&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar\'\"&gt;\n            &lt;vevent&gt;\n                &lt;xsl:call-template name=\"properties\"&gt;\n                    &lt;xsl:with-param name=\"input\" select=\"$ical-event-data\"/&gt;\n                    &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n                    &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n                &lt;/xsl:call-template&gt;\n            &lt;/vevent&gt;\n        &lt;/xsl:when&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar-encoded\'\"&gt;\n            &lt;xsl:text&gt;&amp;#x9;&amp;lt;vevent&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n                &lt;xsl:call-template name=\"properties\"&gt;\n                    &lt;xsl:with-param name=\"input\" select=\"$ical-event-data\"/&gt;\n                    &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n                    &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n                &lt;/xsl:call-template&gt;\n            &lt;xsl:text&gt;&amp;#x9;&amp;lt;/vevent&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n        &lt;/xsl:when&gt;\n        &lt;xsl:when test=\"$output-format = \'hcalendar\'\"&gt;\n        &lt;/xsl:when&gt;\n    &lt;/xsl:choose&gt;\n    &lt;xsl:if test=\"$remaining-event-data != \'\'\"&gt;\n        &lt;xsl:call-template name=\"xcal-events\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$remaining-event-data\"/&gt;\n            &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n            &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:if&gt;\n&lt;/xsl:template&gt;\n\n&lt;xsl:template name=\"properties\"&gt;\n    &lt;xsl:param name=\"input\" select=\"$ical-data\"/&gt;\n    &lt;xsl:param name=\"type\" select=\"\'event\'\"/&gt;\n    &lt;xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/&gt;\n    &lt;xsl:param name=\"property-and-attribute-caps\" select=\"substring-before($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"property-and-attribute\" select=\"translate($property-and-attribute-caps,\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\',\'abcdefghijklmnopqrstuvwxyz\')\"/&gt;\n    &lt;xsl:param name=\"property\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"contains($property-and-attribute,\';\')\"&gt;\n                &lt;xsl:value-of select=\"substring-before($property-and-attribute,\';\')\"/&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:otherwise&gt;\n                &lt;xsl:value-of select=\"$property-and-attribute\"/&gt;\n            &lt;/xsl:otherwise&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"property-attribute\" select=\"substring-after($property-and-attribute,\';\')\"/&gt;\n    &lt;xsl:param name=\"property-attribute-name\" select=\"substring-before($property-attribute,\'=\')\"/&gt;\n    &lt;xsl:param name=\"property-attribute-value\" select=\"substring-after($property-attribute,\'=\')\"/&gt;\n    &lt;xsl:param name=\"string-after-property\" select=\"substring-after($input,\':\')\"/&gt;\n    &lt;xsl:param name=\"next-string\" select=\"substring-before($string-after-property,\':\')\"/&gt;\n    &lt;xsl:param name=\"reverse-next-string\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$next-string\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"reverse-next-property\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n    &lt;xsl:param name=\"next-property\"&gt;\n        &lt;xsl:call-template name=\"reverse\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"substring-before($reverse-next-string,\' \')\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"string-before-next-property\" select=\"substring-before($next-string, concat(\' \',$next-property))\"/&gt;\n    &lt;xsl:param name=\"plural-values\" select=\"contains($string-before-next-property,\';\')\"/&gt;\n    &lt;xsl:param name=\"multiple-items\"&gt;\n        &lt;xsl:if test=\"$plural-values\"&gt;\n            &lt;xsl:value-of select=\"translate($string-before-next-property,\'ABCDEFGHIJKLMNOPQRSTUVWXYZ\',\'abcdefghijklmnopqrstuvwxyz\')\"/&gt;\n        &lt;/xsl:if&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"items\"&gt;\n        &lt;xsl:call-template name=\"items\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$multiple-items\"/&gt;\n            &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"value\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"$next-property != \'\' and contains($string-before-next-property,\';\') and $output-format = \'xcalendar-encoded\'\"&gt;\n                &lt;xsl:value-of select=\"$items\"/&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:when test=\"$next-property != \'\'\"&gt;\n                &lt;xsl:value-of select=\"$string-before-next-property\"/&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:otherwise&gt;\n                &lt;xsl:value-of select=\"$string-after-property\"/&gt;\n            &lt;/xsl:otherwise&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"remaining-string\" select=\"substring-after($string-after-property,concat($value,\' \'))\"/&gt;\n    &lt;xsl:if test=\"$property != \'begin\' and $property != \'end\'\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"$type = \'event\'\"&gt;\n                &lt;xsl:choose&gt;\n                    &lt;xsl:when test=\"$output-format = \'xcalendar\'\"&gt;\n                        &lt;xsl:choose&gt;\n                            &lt;xsl:when test=\"$property-attribute-name = \'value\'\"&gt;\n                                &lt;xsl:element name=\"{$property}\"&gt;\n                                    &lt;xsl:attribute name=\"{$property-attribute-name}\"&gt;&lt;xsl:value-of select=\"$property-attribute-value\"/&gt;&lt;/xsl:attribute&gt;\n                                    &lt;xsl:value-of select=\"$value\"/&gt;\n                                &lt;/xsl:element&gt;\n                            &lt;/xsl:when&gt;\n                            &lt;xsl:when test=\"$plural-values and $output-format = \'xcalendar\'\"&gt;\n                                &lt;xsl:element name=\"{$property}\"&gt;\n                                    &lt;xsl:copy-of select=\"$items\"/&gt;\n                                &lt;/xsl:element&gt;\n                            &lt;/xsl:when&gt;\n                            &lt;xsl:otherwise&gt;\n                                &lt;xsl:element name=\"{$property}\"&gt;\n                                    &lt;xsl:value-of select=\"$value\"/&gt;\n                                &lt;/xsl:element&gt;\n                            &lt;/xsl:otherwise&gt;\n                        &lt;/xsl:choose&gt;\n                    &lt;/xsl:when&gt;\n                    &lt;xsl:when test=\"$output-format = \'xcalendar-encoded\'\"&gt;\n                        &lt;xsl:choose&gt;\n                            &lt;xsl:when test=\"$property-attribute-name = \'value\'\"&gt;\n                                &lt;xsl:text&gt;&amp;#x9;&amp;#x9;&amp;lt;&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property\"/&gt;\n                                &lt;xsl:text&gt; &lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property-attribute-name\"/&gt;\n                                &lt;xsl:text&gt;=\"&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property-attribute-value\"/&gt;\n                                &lt;xsl:text&gt;\"&amp;gt;&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$value\"/&gt;\n                                &lt;xsl:text&gt;&amp;lt;/&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property\"/&gt;\n                                &lt;xsl:text&gt;&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n                            &lt;/xsl:when&gt;\n                            &lt;xsl:otherwise&gt;\n                                &lt;xsl:text&gt;&amp;#x9;&amp;#x9;&amp;lt;&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property\"/&gt;\n                                &lt;xsl:text&gt;&amp;gt;&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$value\"/&gt;\n                                &lt;xsl:text&gt;&amp;lt;/&lt;/xsl:text&gt;\n                                &lt;xsl:value-of select=\"$property\"/&gt;\n                                &lt;xsl:text&gt;&amp;gt;&amp;#xd;&lt;/xsl:text&gt;\n                            &lt;/xsl:otherwise&gt;\n                        &lt;/xsl:choose&gt;\n                    &lt;/xsl:when&gt;\n                &lt;/xsl:choose&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:when test=\"$type = \'calendar\'\"&gt;\n                &lt;xsl:choose&gt;\n                    &lt;xsl:when test=\"$output-format = \'xcalendar\'\"&gt;\n                        &lt;xsl:attribute name=\"{$property}\"&gt;&lt;xsl:value-of select=\"$value\"/&gt;&lt;/xsl:attribute&gt;\n                    &lt;/xsl:when&gt;\n                    &lt;xsl:when test=\"$output-format = \'xcalendar-encoded\'\"&gt;\n                        &lt;xsl:text&gt;&amp;#x9;&lt;/xsl:text&gt;\n                        &lt;xsl:value-of select=\"$property\"/&gt;\n                        &lt;xsl:text&gt;=\"&lt;/xsl:text&gt;\n                        &lt;xsl:value-of select=\"$value\"/&gt;\n                        &lt;xsl:text&gt;\"&lt;/xsl:text&gt;\n                    &lt;/xsl:when&gt;\n                &lt;/xsl:choose&gt;\n            &lt;/xsl:when&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:if&gt;\n    &lt;xsl:if test=\"$remaining-string != \'\'\"&gt;\n        &lt;xsl:if test=\"$property != \'begin\' and $property != \'end\' and $output-format = \'xcalendar-encoded\' and $type = \'calendar\'\"&gt;\n            &lt;xsl:text&gt;&amp;#xd;&lt;/xsl:text&gt;\n        &lt;/xsl:if&gt;\n        &lt;xsl:call-template name=\"properties\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$remaining-string\"/&gt;\n            &lt;xsl:with-param name=\"type\" select=\"$type\"/&gt;\n            &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:if&gt;\n&lt;/xsl:template&gt;\n\n\n&lt;xsl:template name=\"items\"&gt;\n    &lt;xsl:param name=\"input\"/&gt;\n    &lt;xsl:param name=\"items\" select=\"$input\"/&gt;\n    &lt;xsl:param name=\"output-format\" select=\"\'xcalendar\'\"/&gt;\n    &lt;xsl:param name=\"delimiter\" select=\"\';\'\"/&gt;\n    &lt;xsl:param name=\"item-and-value\"&gt;\n        &lt;xsl:choose&gt;\n            &lt;xsl:when test=\"contains($items,$delimiter)\"&gt;\n                &lt;xsl:value-of select=\"substring-before($items,$delimiter)\"/&gt;\n            &lt;/xsl:when&gt;\n            &lt;xsl:otherwise&gt;\n                &lt;xsl:value-of select=\"$items\"/&gt;\n            &lt;/xsl:otherwise&gt;\n        &lt;/xsl:choose&gt;\n    &lt;/xsl:param&gt;\n    &lt;xsl:param name=\"remaining-items\" select=\"substring-after($items,$delimiter)\"/&gt;\n    &lt;xsl:param name=\"item\" select=\"substring-before($item-and-value,\'=\')\"/&gt;\n    &lt;xsl:param name=\"value\" select=\"substring-after($item-and-value,\'=\')\"/&gt;\n    &lt;xsl:choose&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar\'\"&gt;\n            &lt;item class=\"{$item}\"&gt;\n                &lt;xsl:value-of select=\"$value\"/&gt;\n            &lt;/item&gt;\n        &lt;/xsl:when&gt;\n        &lt;xsl:when test=\"$output-format = \'xcalendar-encoded\'\"&gt;\n            &lt;xsl:text&gt;&amp;#xd;&amp;#x9;&amp;#x9;&amp;#x9;&amp;lt;&lt;/xsl:text&gt;\n            &lt;xsl:value-of select=\"$item\"/&gt;\n            &lt;xsl:text&gt;&amp;gt;&lt;/xsl:text&gt;\n            &lt;xsl:value-of select=\"$value\"/&gt;\n            &lt;xsl:text&gt;&amp;lt;/&lt;/xsl:text&gt;\n            &lt;xsl:value-of select=\"$item\"/&gt;\n            &lt;xsl:text&gt;&amp;gt;&lt;/xsl:text&gt;\n        &lt;/xsl:when&gt;\n    &lt;/xsl:choose&gt;\n    &lt;xsl:if test=\"$remaining-items != \'\'\"&gt;\n        &lt;xsl:call-template name=\"items\"&gt;\n            &lt;xsl:with-param name=\"input\" select=\"$remaining-items\"/&gt;\n            &lt;xsl:with-param name=\"output-format\" select=\"$output-format\"/&gt;\n        &lt;/xsl:call-template&gt;\n    &lt;/xsl:if&gt;\n    &lt;xsl:if test=\"$remaining-items = \'\'\"&gt;\n        &lt;xsl:text&gt;&amp;#xd;&amp;#x9;&amp;#x9;&lt;/xsl:text&gt;\n    &lt;/xsl:if&gt;\n&lt;/xsl:template&gt;\n\n\n&lt;xsl:template name=\"reverse\"&gt;\n    &lt;xsl:param name=\"input\"/&gt;\n    &lt;xsl:variable name=\"length\" select=\"string-length($input)\"/&gt;\n    &lt;xsl:choose&gt;\n        &lt;xsl:when test=\"$length &amp;lt; 2\"&gt;\n            &lt;xsl:value-of select=\"$input\"/&gt;\n        &lt;/xsl:when&gt;     \n        &lt;xsl:when test=\"$length = 2\"&gt;\n            &lt;xsl:value-of select=\"substring($input,2,1)\"/&gt;\n            &lt;xsl:value-of select=\"substring($input,1,1)\"/&gt;\n        &lt;/xsl:when&gt;     \n        &lt;xsl:otherwise&gt;\n            &lt;xsl:variable name=\"middle\" select=\"floor($length div 2)\"/&gt;\n            &lt;xsl:call-template name=\"reverse\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"substring($input,$middle + 1,$middle + 1)\"/&gt;\n            &lt;/xsl:call-template&gt;\n            &lt;xsl:call-template name=\"reverse\"&gt;\n                &lt;xsl:with-param name=\"input\" select=\"substring($input,1,$middle)\"/&gt;\n            &lt;/xsl:call-template&gt;\n        &lt;/xsl:otherwise&gt;        \n    &lt;/xsl:choose&gt;\n&lt;/xsl:template&gt;\n\n&lt;/xsl:stylesheet&gt;\n</code></pre>\n');

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (4, 67, 4);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (6, 68, 4);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (7, 81, 4);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (8, 82, 4);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (10, 83, 4);

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (4, 67, 8);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (6, 68, 8);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (7, 81, 8);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (8, 82, 8);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `relation_id`) VALUES (10, 83, 8);

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (4, 67, 78);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (6, 68, 78);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (7, 81, 78);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (8, 82, 78);
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `relation_id`) VALUES (10, 83, 78);

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (4, 67, '2007-06-28T22:31:00-07:00', 1183095060, 1183095060);
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 68, '2007-06-28T23:46:00-07:00', 1183099560, 1183099560);
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 81, '2007-07-27T00:00:00-07:00', 1185519600, 1185519600);
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 82, '2007-07-28T17:14:00-07:00', 1185668040, 1185668040);
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (10, 83, '2007-07-29T09:56:00-07:00', 1185728160, 1185728160);

-- *** STRUCTURE: `tbl_entries_data_38` ***
DROP TABLE IF EXISTS `tbl_entries_data_38`;
CREATE TABLE `tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_38` ***
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (4, 67, 'yes');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (6, 68, 'yes');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (7, 81, 'yes');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (8, 82, 'yes');
INSERT INTO `tbl_entries_data_38` (`id`, `entry_id`, `value`) VALUES (10, 83, 'yes');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (4, 67, 'no');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (6, 68, 'no');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (7, 81, 'no');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (8, 82, 'no');
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `value`) VALUES (10, 83, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 84, 'a-list-apart', 'A List Apart');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 85, 'colorschemer', 'ColorSchemer');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 89, 'chaotic-pattern', 'Chaotic Pattern');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 90, 'css-zen-garden', 'CSS Zen Garden');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 91, 'daring-fireball', 'Daring Fireball');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 92, 'designers-toolbox', 'Designers Toolbox');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 93, 'markdown', 'Markdown');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 94, 'mezzoblue', 'Mezzoblue');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 95, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 96, 'typetester', 'Typetester');
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 97, 'virb', 'Virb');

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (2, 84, 20);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (3, 85, 19);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (4, 89, 20);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (5, 90, 20);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (6, 91, 20);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (7, 92, 19);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (8, 93, 17);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (9, 94, 20);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (11, 95, 19);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (12, 96, 19);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (13, 97, 19);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_42` ***
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 84, 'http-wwwalistapartcom', 'http://www.alistapart.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 85, 'http-wwwcolorschemercom', 'http://www.colorschemer.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 89, 'http-chaoticpatterncom', 'http://chaoticpattern.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 90, 'http-wwwcsszengardencom', 'http://www.csszengarden.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 91, 'http-daringfireballnet', 'http://daringfireball.net/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 92, 'http-wwwdesignerstoolboxcom', 'http://www.designerstoolbox.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 93, 'http-daringfireballnet-projects-markdown', 'http://daringfireball.net/projects/markdown/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 94, 'http-wwwmezzobluecom', 'http://www.mezzoblue.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 95, 'http-symphony-cmscom', 'http://symphony-cms.com/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 96, 'http-wwwtypetesterorg', 'http://www.typetester.org/');
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 97, 'http-teamvirbcom-post-652808456-hello-website', 'http://team.virb.com/post/652808456/hello-website');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 84, 'Jefferey Zeldman\'s online publication \"For people who make websites\"', '<p>Jefferey Zeldman&#8217;s online publication &#8220;For people who make websites&#8221;</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 85, 'Professional color matching application and color scheme gallery', '<p>Professional color matching application and color scheme gallery</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 89, 'The blog of Allen Chang: Exclusively Symphony, straight from the source.', '<p>The blog of Allen Chang: Exclusively Symphony, straight from the source.</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 90, 'A site that demonstrated the beauty of Web Standards: the separation of structure and style with XHTML and CSS.', '<p>A site that demonstrated the beauty of Web Standards: the separation of structure and style with XHTML and CSS.</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 91, 'An informative blog, written and produced by John Gruber.', '<p>An informative blog, written and produced by John Gruber.</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 92, 'Lorem Ipsum Generator and other graphic design tools', '<p>Lorem Ipsum Generator and other graphic design tools</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 93, 'Markdown is a text-to-HTML conversion tool for web writers.', '<p>Markdown is a text-to-HTML conversion tool for web writers.</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 94, 'mezzoblue is a weblog about design, the web, and some other things. Written by Dave Shea, a designer from Vancouver, Canada.', '<p>mezzoblue is a weblog about design, the web, and some other things. Written by Dave Shea, a designer from Vancouver, Canada.</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 95, 'XSLT-powered open source content management system', '<p>XSLT-powered open source content management system</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 96, 'Test your CSS font rules with this web application', '<p>Test your CSS font rules with this web application</p>\n');
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 97, 'Virb is one of the easiest (and insanely affordable) ways to build an elegantly simple website. Virb is powered by a team of six human beings, scattered from sea to shining sea (Lee Greenwood style).', '<p>Virb is one of the easiest (and insanely affordable) ways to build an elegantly simple website. Virb is powered by a team of six human beings, scattered from sea to shining sea (Lee Greenwood style).</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 84, 'A List Apart Magazine explores the design, development, and meaning of web content, with a special focus on web standards and best practices.', '<p>A List Apart Magazine explores the design, development, and meaning of web content, with a special focus on web standards and best practices.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 85, NULL, NULL);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 89, 'The blog and XSLT resource published by Allen Chang of [Twentyone Degrees](http://21degrees.au.com/), member of the talented developers of [Symphony](http://www.symphony21.com/), the web publishing system on which this site is built.', '<p>The blog and XSLT resource published by Allen Chang of <a href=\"http://21degrees.au.com/\">Twentyone Degrees</a>, member of the talented developers of <a href=\"http://www.symphony21.com/\">Symphony</a>, the web publishing system on which this site is built.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 90, 'The site that started it all for me: XHTML, CSS, Web Standards and the beauty of the separation of structure and presentation. The site was created by a good Canadian kid, Dave Shea of mezzoblue. The site has been such a phenomenon that it also has a companion book: The Zen of CSS Design.', '<p>The site that started it all for me: XHTML, CSS, Web Standards and the beauty of the separation of structure and presentation. The site was created by a good Canadian kid, Dave Shea of mezzoblue. The site has been such a phenomenon that it also has a companion book: The Zen of CSS Design.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 91, 'John is also the creator of the [Markdown](http://daringfireball.net/projects/markdown/) text formatter that is being used on this site.', '<p>John is also the creator of the <a href=\"http://daringfireball.net/projects/markdown/\">Markdown</a> text formatter that is being used on this site.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 92, NULL, NULL);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 93, 'Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML). The overriding design goal for Markdown’s formatting syntax is to make it as readable as possible. The idea is that a Markdown-formatted document should be publishable as-is, as plain text, without looking like it’s been marked up with tags or formatting instructions. While Markdown’s syntax has been influenced by several existing text-to-HTML filters, the single biggest source of inspiration for Markdown’s syntax is the format of plain text email.', '<p>Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML). The overriding design goal for Markdown’s formatting syntax is to make it as readable as possible. The idea is that a Markdown-formatted document should be publishable as-is, as plain text, without looking like it’s been marked up with tags or formatting instructions. While Markdown’s syntax has been influenced by several existing text-to-HTML filters, the single biggest source of inspiration for Markdown’s syntax is the format of plain text email.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 94, 'Here\'s what Dave has to say about himself:\r\n\r\n> I’m a Vancouver local and a freelance designer. I’m happiest when designing, building, or creating something that didn’t previously exist; this has taken many forms over the years.', '<p>Here&#8217;s what Dave has to say about himself:</p>\n\n<blockquote>\n  <p>I’m a Vancouver local and a freelance designer. I’m happiest when designing, building, or creating something that didn’t previously exist; this has taken many forms over the years.</p>\n</blockquote>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 95, '#### Elegant\r\n\r\nApproaches content management with the underlying goals of simplicity and openness, so you can build anything.\r\n\r\n#### Flexible\r\n\r\nGives designers and developers complete control over data structures, URL schemas, and every bit of markup.\r\n\r\n#### Powerful\r\n\r\nPuts the Web\'s most exciting APIs at your fingertips with an easy-to-use, XML-centric data engine.\r\n\r\n#### Extensible\r\n\r\nProvides a lean, flexible core complemented by a rapidly growing extensions library.', '<h4>Elegant</h4>\n\n<p>Approaches content management with the underlying goals of simplicity and openness, so you can build anything.</p>\n\n<h4>Flexible</h4>\n\n<p>Gives designers and developers complete control over data structures, URL schemas, and every bit of markup.</p>\n\n<h4>Powerful</h4>\n\n<p>Puts the Web&#8217;s most exciting APIs at your fingertips with an easy-to-use, XML-centric data engine.</p>\n\n<h4>Extensible</h4>\n\n<p>Provides a lean, flexible core complemented by a rapidly growing extensions library.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 96, 'The Typetester is an online application for comparison of the fonts for the screen. Its primary role is to make web designer’s life easier. As the new fonts are bundled into operating systems, the list of the common fonts will be updated.', '<p>The Typetester is an online application for comparison of the fonts for the screen. Its primary role is to make web designer’s life easier. As the new fonts are bundled into operating systems, the list of the common fonts will be updated.</p>\n');
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 97, 'Virb has always been praised for its beautiful design, flexible media players and robust customization tools — all the elements a good website needs. It only makes sense that we hand these tools over to you. From bands and portfolios to small businesses and multi-page blogs; we’ve given you exactly what you’ll need to build your site with Virb.', '<p>Virb has always been praised for its beautiful design, flexible media players and robust customization tools — all the elements a good website needs. It only makes sense that we hand these tools over to you. From bands and portfolios to small businesses and multi-page blogs; we’ve given you exactly what you’ll need to build your site with Virb.</p>\n');

-- *** STRUCTURE: `tbl_entries_data_45` ***
DROP TABLE IF EXISTS `tbl_entries_data_45`;
CREATE TABLE `tbl_entries_data_45` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_45` ***
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (2, 84, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (3, 85, 78);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (4, 89, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (5, 90, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (6, 91, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (7, 92, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (8, 93, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (9, 94, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (11, 95, NULL);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (12, 96, 78);
INSERT INTO `tbl_entries_data_45` (`id`, `entry_id`, `relation_id`) VALUES (13, 97, 78);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 96, 'typography', 'Typography');

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (2, 84, '2010-06-03T20:09:00-07:00', 1275620940, 1275620940);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (3, 85, '2010-06-03T20:18:00-07:00', 1275621480, 1275621480);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (4, 89, '2007-07-02T12:40:00-07:00', 1183405200, 1183405200);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 90, '2007-06-28T23:33:00-07:00', 1183098780, 1183098780);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 91, '2007-07-01T07:56:00-07:00', 1183301760, 1183301760);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 92, '2007-07-02T17:49:00-07:00', 1183423740, 1183423740);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 93, '2010-06-04T12:51:00-07:00', 1275681060, 1275681060);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 94, '2007-07-01T08:33:00-07:00', 1183303980, 1183303980);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (11, 95, '2007-06-28T23:35:00-07:00', 1183098900, 1183098900);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (12, 96, '2010-06-04T12:59:00-07:00', 1275681540, 1275681540);
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (13, 97, '2010-06-04T13:03:00-07:00', 1275681780, 1275681780);

-- *** STRUCTURE: `tbl_entries_data_48` ***
DROP TABLE IF EXISTS `tbl_entries_data_48`;
CREATE TABLE `tbl_entries_data_48` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_48` ***
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (2, 84, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (3, 85, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (4, 89, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (5, 90, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (6, 91, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (7, 92, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (8, 93, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (9, 94, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (11, 95, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (12, 96, 'yes');
INSERT INTO `tbl_entries_data_48` (`id`, `entry_id`, `value`) VALUES (13, 97, 'yes');

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_49` ***
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (2, 84, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (3, 85, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (4, 89, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (5, 90, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (6, 91, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (7, 92, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (8, 93, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (9, 94, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (11, 95, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (12, 96, 'no');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`) VALUES (13, 97, 'no');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_52` ***
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 17, 'tools', 'Tools');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 18, 'files', 'Files');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 19, 'resources', 'Resources');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 20, 'sites', 'Sites');
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 77, 'books', 'Books');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_53` ***
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 17, 'Noteworthy applications and tools of the trade', '<p>Noteworthy applications and tools of the trade</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 18, 'Images and downloads', '<p>Images and downloads</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 19, 'Interesting articles', '<p>Interesting articles</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 20, 'The sites I like to frequent', '<p>The sites I like to frequent</p>\n');
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 77, 'A bibliographical reference or book review', '<p>A bibliographical reference or book review</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_54` ***
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 78, 'applications', 'Applications');
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 79, 'life', 'Life');
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 80, 'typography', 'Typography');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_55` ***
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 78, 'The tools that make our lives work', '<p>The tools that make our lives work</p>\n');
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 79, 'There is life beyond work', '<p>There is life beyond work</p>\n');
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 80, 'The art of type design and layout', '<p>The art of type design and layout</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_56` ***
INSERT INTO `tbl_entries_data_56` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 78, NULL, NULL);
INSERT INTO `tbl_entries_data_56` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 79, NULL, NULL);
INSERT INTO `tbl_entries_data_56` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 80, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 98, 'stephen-bau', 'Stephen Bau');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 98, 'bauhouse-gmailcom', 'bauhouse@gmail.com');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 98, 'testing-the-contact-form', 'Testing the contact form');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 98, 'Testing from http://home/sym/designadmin/contact/', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 15, 'abc-company-incorporated', 'ABC Company Incorporated');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'symphony-cms', 'Symphony CMS');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 72, 'bauhouse-design', 'Bauhouse Design');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 15, 'advertising', 'Advertising');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'web-development', 'Web Development');
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 72, 'design', 'Design');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 15, 'active', 'Active');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 63, 'active', 'Active');
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 72, 'active', 'Active');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 15, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 63, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 72, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'http-wwwexamplecom', 'http://www.example.com');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 63, 'http-symphony-cmscom', 'http://symphony-cms.com');
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 72, 'http-bauhouseca', 'http://bauhouse.ca');

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_78` ***
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `relation_id`) VALUES (4, 15, NULL);
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `relation_id`) VALUES (7, 63, NULL);
INSERT INTO `tbl_entries_data_78` (`id`, `entry_id`, `relation_id`) VALUES (8, 72, 8);

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_79` ***
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'john-smith', 'John Smith');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 63, 'allen-chang', 'Allen Chang');
INSERT INTO `tbl_entries_data_79` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 72, 'stephen-bau', 'Stephen Bau');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_80` ***
INSERT INTO `tbl_entries_data_80` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, '123-456-7890', '123 456 7890');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_81` ***
INSERT INTO `tbl_entries_data_81` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, '123-456-7899', '123 456 7899');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_82` ***
INSERT INTO `tbl_entries_data_82` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, '12345-main-street', '12345 Main Street');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_83` ***
INSERT INTO `tbl_entries_data_83` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'big-city', 'Big City');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_84` ***
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'on', 'ON');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_85` ***
INSERT INTO `tbl_entries_data_85` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'a1b-2c3', 'A1B 2C3');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_86` ***
INSERT INTO `tbl_entries_data_86` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 15, 'canada', 'Canada');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_87` ***
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 16, 'abc-company-website', 'ABC Company Website');
INSERT INTO `tbl_entries_data_87` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 73, 'designadmin', 'DesignAdmin');

-- *** STRUCTURE: `tbl_entries_data_88` ***
DROP TABLE IF EXISTS `tbl_entries_data_88`;
CREATE TABLE `tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_88` ***
INSERT INTO `tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (8, 16, 15);
INSERT INTO `tbl_entries_data_88` (`id`, `entry_id`, `relation_id`) VALUES (9, 73, 72);

-- *** STRUCTURE: `tbl_entries_data_89` ***
DROP TABLE IF EXISTS `tbl_entries_data_89`;
CREATE TABLE `tbl_entries_data_89` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_89` ***
INSERT INTO `tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (8, 16, 16);
INSERT INTO `tbl_entries_data_89` (`id`, `entry_id`, `value`) VALUES (9, 73, 73);

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_90` ***
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (23, 16, 40);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (22, 16, 39);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (21, 16, 38);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (20, 16, 37);
INSERT INTO `tbl_entries_data_90` (`id`, `entry_id`, `relation_id`) VALUES (24, 73, 39);

-- *** STRUCTURE: `tbl_entries_data_91` ***
DROP TABLE IF EXISTS `tbl_entries_data_91`;
CREATE TABLE `tbl_entries_data_91` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_91` ***
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (8, 16, 8);
INSERT INTO `tbl_entries_data_91` (`id`, `entry_id`, `relation_id`) VALUES (9, 73, 8);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_92` ***
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 16, '2010-05-31T23:26:00-07:00', 1275373560, 1275373560);
INSERT INTO `tbl_entries_data_92` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 73, '2010-06-03T17:56:00-07:00', 1275612960, 1275612960);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_93` ***
INSERT INTO `tbl_entries_data_93` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (8, 16, '2010-06-12T00:00:00-07:00', 1276326000, 1276326000);
INSERT INTO `tbl_entries_data_93` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (9, 73, NULL, NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_94` ***
INSERT INTO `tbl_entries_data_94` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 16, 'created', 'Created');
INSERT INTO `tbl_entries_data_94` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 73, 'in-progress', 'In Progress');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_95` ***
INSERT INTO `tbl_entries_data_95` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 16, NULL, NULL);
INSERT INTO `tbl_entries_data_95` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 73, 'A project management system built in Symphony CMS 2.0', '<p>A project management system built in Symphony CMS 2.0</p>\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA: `tbl_entries_data_96` ***
INSERT INTO `tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`, `value_formatted`) VALUES (8, 16, 'abc16', 'ABC16', 'ABC16');
INSERT INTO `tbl_entries_data_96` (`id`, `entry_id`, `handle`, `value`, `value_formatted`) VALUES (9, 73, 'bau73', 'BAU73', 'BAU73');

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
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (46, 4, 1, '2010-06-01 13:48:11', '2010-06-01 20:48:11');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (47, 17, 1, '2010-06-02 09:32:26', '2010-06-02 16:32:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (48, 23, 1, '2010-06-03 07:54:03', '2010-06-03 14:54:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (49, 23, 1, '2010-06-03 07:54:22', '2010-06-03 14:54:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (50, 23, 1, '2010-06-03 07:54:44', '2010-06-03 14:54:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (51, 23, 1, '2010-06-03 07:55:07', '2010-06-03 14:55:07');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (52, 23, 1, '2010-06-03 07:55:26', '2010-06-03 14:55:26');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (53, 24, 1, '2010-06-03 08:05:32', '2010-06-03 15:05:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (54, 24, 1, '2010-06-03 08:06:15', '2010-06-03 15:06:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (55, 24, 1, '2010-06-03 08:07:14', '2010-06-03 15:07:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (56, 24, 1, '2010-06-03 08:07:51', '2010-06-03 15:07:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 24, 1, '2010-06-03 08:08:46', '2010-06-03 15:08:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (58, 24, 1, '2010-06-03 08:09:15', '2010-06-03 15:09:15');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (59, 24, 1, '2010-06-03 08:09:48', '2010-06-03 15:09:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (60, 24, 1, '2010-06-03 08:10:43', '2010-06-03 15:10:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 24, 1, '2010-06-03 08:11:49', '2010-06-03 15:11:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (62, 24, 1, '2010-06-03 08:13:18', '2010-06-03 15:13:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (63, 13, 1, '2010-06-03 10:05:53', '2010-06-03 17:05:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (64, 21, 1, '2010-06-03 10:07:02', '2010-06-03 17:07:02');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (65, 22, 1, '2010-06-03 10:30:27', '2010-06-03 17:30:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (66, 22, 1, '2010-06-03 10:57:49', '2010-06-03 17:57:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (67, 5, 1, '2010-06-03 11:02:27', '2010-06-03 18:02:27');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (68, 5, 1, '2010-06-03 11:04:58', '2010-06-03 18:04:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (69, 22, 1, '2010-06-03 11:10:05', '2010-06-03 18:10:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (70, 22, 1, '2010-06-03 11:18:29', '2010-06-03 18:18:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (71, 22, 1, '2010-06-03 11:20:32', '2010-06-03 18:20:32');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 13, 1, '2010-06-03 17:56:19', '2010-06-04 00:56:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 14, 1, '2010-06-03 17:57:45', '2010-06-04 00:57:45');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 17, 1, '2010-06-03 18:05:20', '2010-06-04 01:05:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 22, 1, '2010-06-03 18:15:58', '2010-06-04 01:15:58');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (76, 22, 1, '2010-06-03 18:21:47', '2010-06-04 01:21:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (77, 8, 1, '2010-06-03 18:42:24', '2010-06-04 01:42:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (78, 9, 1, '2010-06-03 18:44:20', '2010-06-04 01:44:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (79, 9, 1, '2010-06-03 18:44:57', '2010-06-04 01:44:57');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (80, 9, 1, '2010-06-03 18:45:19', '2010-06-04 01:45:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (81, 5, 1, '2010-06-03 18:55:43', '2010-06-04 01:55:43');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (82, 5, 1, '2010-06-03 19:57:56', '2010-06-04 02:57:56');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (83, 5, 1, '2010-06-03 19:59:16', '2010-06-04 02:59:16');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (84, 6, 1, '2010-06-03 20:10:10', '2010-06-04 03:10:10');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (85, 6, 1, '2010-06-03 20:19:40', '2010-06-04 03:19:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (86, 22, 1, '2010-06-04 07:54:13', '2010-06-04 14:54:13');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (87, 22, 1, '2010-06-04 10:01:39', '2010-06-04 17:01:39');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (88, 22, 1, '2010-06-04 10:22:28', '2010-06-04 17:22:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (89, 6, 1, '2010-06-04 12:46:44', '2010-06-04 19:46:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (90, 6, 1, '2010-06-04 12:48:19', '2010-06-04 19:48:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (91, 6, 1, '2010-06-04 12:50:46', '2010-06-04 19:50:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 6, 1, '2010-06-04 12:51:38', '2010-06-04 19:51:38');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 6, 1, '2010-06-04 12:52:19', '2010-06-04 19:52:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 6, 1, '2010-06-04 12:54:41', '2010-06-04 19:54:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 6, 1, '2010-06-04 12:58:18', '2010-06-04 19:58:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 6, 1, '2010-06-04 12:59:53', '2010-06-04 19:59:53');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 6, 1, '2010-06-04 13:05:12', '2010-06-04 20:05:12');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 11, 1, '2010-06-05 07:14:09', '2010-06-05 14:14:09');

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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Section', 'section', 'selectbox_link', 5, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Author', 'author', 'selectbox_link', 5, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Categories', 'categories', 'selectbox_link', 5, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Tags', 'tags', 'taglist', 5, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Date', 'date', 'date', 5, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Publish', 'publish', 'checkbox', 5, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Enable Comments', 'enable-comments', 'checkbox', 5, 'no', 10, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Title', 'title', 'input', 6, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Type', 'type', 'selectbox_link', 6, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'URL', 'url', 'input', 6, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Description', 'description', 'textarea', 6, 'no', 3, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Body', 'body', 'textarea', 6, 'no', 4, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (45, 'Category', 'category', 'selectbox_link', 6, 'no', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Tags', 'tags', 'taglist', 6, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Date', 'date', 'date', 6, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (48, 'Publish', 'publish', 'checkbox', 6, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Enable Comments', 'enable-comments', 'checkbox', 6, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Navigation', 'navigation', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Description', 'description', 'textarea', 7, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Title', 'title', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Description', 'description', 'textarea', 9, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (56, 'Body', 'body', 'textarea', 9, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Author', 'author', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Email', 'email', 'input', 10, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Website', 'website', 'input', 10, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Date', 'date', 'date', 10, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Entry', 'entry', 'selectbox_link', 10, 'yes', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Item', 'item', 'selectbox_link', 10, 'yes', 5, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Comment', 'comment', 'textarea', 10, 'yes', 6, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Publish', 'publish', 'checkbox', 10, 'no', 7, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Name', 'name', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Email', 'email', 'input', 11, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Subject', 'subject', 'input', 11, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Message', 'message', 'textarea', 11, 'yes', 3, 'sidebar', 'yes');
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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (93, 'Due Date', 'due-date', 'date', 14, 'no', 8, 'sidebar', 'yes');
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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (142, 'Brand Name', 'brand-name', 'input', 21, 'yes', 0, 'main', 'yes');
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
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (143, 'Client', 'client', 'selectbox_link', 21, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (144, 'Description', 'description', 'textarea', 21, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (145, 'Asset', 'asset', 'input', 22, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (146, 'Brand', 'brand', 'selectbox_link', 22, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (147, 'Description', 'description', 'input', 22, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (148, 'Overview', 'overview', 'textarea', 22, 'no', 6, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (149, 'Body', 'body', 'textarea', 22, 'no', 7, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (150, 'URL', 'url', 'input', 22, 'no', 8, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (151, 'Parent Asset', 'parent-asset', 'selectbox_link', 22, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (152, 'Asset Type', 'asset-type', 'selectbox_link', 22, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (153, 'Asset Category', 'asset-category', 'selectbox_link', 22, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (154, 'Image', 'image', 'upload', 22, 'no', 10, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (155, 'File', 'file', 'upload', 22, 'no', 11, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (164, 'File Formats', 'file-formats', 'select', 22, 'no', 12, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (157, 'Asset Type', 'asset-type', 'input', 23, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (158, 'Description', 'description', 'textarea', 23, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (159, 'Asset Category', 'asset-category', 'input', 24, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (160, 'Asset Type', 'asset-type', 'selectbox_link', 24, 'no', 1, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (161, 'Description', 'description', 'textarea', 24, 'yes', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (162, 'Sort', 'sort', 'order_entries', 23, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (163, 'Sort', 'sort', 'order_entries', 24, 'no', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (165, 'Color', 'color', 'input', 22, 'no', 9, 'sidebar', 'yes');

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
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (16, NULL, 'Home', 'home', NULL, 'section', 'resources,entries,navigation,section,sites', 'login', 0);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (17, NULL, 'About', 'about', NULL, 'section', 'resources,entries,navigation,section,sites', 'login', 1);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (18, NULL, 'Contact', 'contact', NULL, 'entry/section', 'entries,navigation,resources,section,sites', 'login,send_message', 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (19, NULL, 'Journal', 'journal', NULL, 'year/month/day/entry/item/section', 'resources,entries,journal_archives,journal_entry,journal_excerpts,navigation,section,sites', 'login', 2);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (20, NULL, 'Calendar', 'calendar', NULL, 'year/month/day/section/event', 'navigation,tickets', 'login', 4);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (21, 20, 'Year', 'year', 'calendar', 'year/month/day/section/event', 'navigation', 'login', 5);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (22, 20, 'Week', 'week', 'calendar', 'year/month/day/section/event', 'navigation,tickets', 'login', 6);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (23, 20, 'Day', 'day', 'calendar', 'year/month/day/section/event', 'navigation,tickets', 'login', 7);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (24, NULL, 'Login', 'login', NULL, NULL, 'entries,navigation,resources,sites', NULL, 23);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (25, NULL, 'Overview', 'overview', NULL, NULL, 'client_names,navigation,project_titles,timesheet_recent', NULL, 24);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (26, NULL, 'Clients', 'clients', NULL, 'client', 'clients,navigation', NULL, 25);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (27, NULL, 'Projects', 'projects', NULL, 'client/project/filter/sort', 'client,client_names,navigation,project,projects', NULL, 26);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (28, NULL, 'Timesheet', 'timesheet', NULL, 'filter/page/client/project/entry', 'client_names,navigation,project_titles,timesheet_entry,timesheet_pages,timesheet_recent', NULL, 27);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (29, NULL, 'Brands', 'brands', NULL, 'brand/type/category/asset', 'brand_assets,brands,navigation', NULL, 28);

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
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (5, 'Entries', 'entries', 2, 37, 'asc', 'no', 'Content');
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
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (19, 'Functions', 'functions', 19, 138, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (20, 'Project Types', 'project-types', 17, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (21, 'Brands', 'brands', 20, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (22, 'Brand Assets', 'brand-assets', 21, NULL, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (23, 'Asset Types', 'asset-types', 22, 162, 'asc', 'no', 'Assets');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (24, 'Asset Categories', 'asset-categories', 23, 163, 'asc', 'no', 'Assets');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (20, 2, 10, 3, 18, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (21, 7, 50, 4, 26, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (240, 4, 21, 5, 33, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (239, 1, 1, 5, 34, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (241, 9, 54, 5, 35, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (244, 8, 52, 6, 41, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (245, 9, 54, 6, 45, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (14, 5, 29, 10, 61, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (15, 6, 40, 10, 62, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (91, 1, 1, 13, 78, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (181, 13, 104, 14, 88, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (182, 20, 140, 14, 90, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (183, 1, 1, 14, 91, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (172, 13, 104, 15, 97, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (173, 14, 96, 15, 98, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (203, 13, 104, 21, 143, 'no');
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
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (250, 21, 142, 22, 146, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (253, 22, 145, 22, 151, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (251, 23, 157, 22, 152, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (252, 24, 159, 22, 153, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `cascading_deletion`) VALUES (202, 23, 157, 24, 160, 'no');

-- *** DATA: `tbl_forum_read_discussions` ***
INSERT INTO `tbl_forum_read_discussions` (`id`, `member_id`, `discussion_id`, `last_viewed`, `comments`) VALUES (1, 8, 9, 1275320433, 1);
INSERT INTO `tbl_forum_read_discussions` (`id`, `member_id`, `discussion_id`, `last_viewed`, `comments`) VALUES (2, 8, 11, 1275612829, 1);

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
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (120, 3, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (141, 4, 'members_register', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (140, 4, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (203, 1, 'members_register', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (139, 4, 'members_change_password', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (138, 4, 'members_change_password', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (137, 4, 'members_activate_account', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (136, 4, 'members_activate_account', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (135, 4, 'forum_utilities', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (134, 4, 'forum_utilities', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (133, 4, 'forum_resend_activation_email', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (132, 4, 'forum_resend_activation_email', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (119, 3, 'members_change_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (118, 3, 'members_activate_account', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (117, 3, 'forum_utilities', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (116, 3, 'forum_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (115, 3, 'forum_post', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (114, 3, 'forum_post', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (113, 3, 'forum_activate_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (131, 4, 'forum_post', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (130, 4, 'forum_post', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (129, 4, 'forum_activate_member', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (128, 4, 'forum_activate_member', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (127, 4, 'edit_member', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (126, 4, 'edit_member', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (112, 3, 'edit_member', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (202, 1, 'members_register', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (201, 1, 'members_change_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (200, 1, 'members_activate_account', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (199, 1, 'forum_utilities', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (198, 1, 'forum_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (197, 1, 'forum_post', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (196, 1, 'forum_activate_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (195, 1, 'edit_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (121, 3, 'members_register', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (122, 3, 'members_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (123, 3, 'members_reset_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (124, 3, 'send_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (125, 3, 'send_message', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (142, 4, 'members_resend_activation_email', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (143, 4, 'members_resend_activation_email', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (144, 4, 'members_reset_password', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (145, 4, 'members_reset_password', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (146, 4, 'send_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (147, 4, 'send_message', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (167, 2, 'members_register', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (166, 2, 'members_change_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (165, 2, 'members_activate_account', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (164, 2, 'forum_utilities', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (163, 2, 'forum_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (162, 2, 'forum_post', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (161, 2, 'forum_activate_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (160, 2, 'edit_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (168, 2, 'members_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (169, 2, 'members_reset_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (170, 2, 'send_message', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (204, 1, 'members_resend_activation_email', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (205, 1, 'members_reset_password', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (206, 1, 'send_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (207, 1, 'send_message', 'edit', 0);

-- *** DATA: `tbl_members_roles_forbidden_pages` ***
