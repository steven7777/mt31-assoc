-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 14 Décembre 2020 à 17:39
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: 'wb59832'
--

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_albums'
--

CREATE TABLE IF NOT EXISTS mt31_albums (
  idAlbum int(11) NOT NULL AUTO_INCREMENT,
  titreAlbum varchar(255) NOT NULL,
  photoCover varchar(255) NOT NULL,
  nbPhotos int(11) DEFAULT NULL,
  dateAlbum date DEFAULT NULL,
  PRIMARY KEY (idAlbum)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Liste des albums photos présent sur le site' AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_audio'
--

CREATE TABLE IF NOT EXISTS mt31_audio (
  idAudio int(11) NOT NULL AUTO_INCREMENT,
  titreAudio varchar(255) NOT NULL,
  nomFichierAudio varchar(255) NOT NULL,
  auteurAudio varchar(255) NOT NULL,
  typeAudio varchar(255) NOT NULL,
  PRIMARY KEY (idAudio)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Liste des fichiers audio du site' AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_partenaires'
--

CREATE TABLE IF NOT EXISTS mt31_partenaires (
  idPartenaire int(11) NOT NULL AUTO_INCREMENT,
  nomPartenaire varchar(255) NOT NULL,
  logoPartenaire varchar(255) NOT NULL,
  lienPartenaire varchar(255) DEFAULT NULL,
  PRIMARY KEY (idPartenaire)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Liste des partenaires de Main Tendue 31' AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_pdf'
--

CREATE TABLE IF NOT EXISTS mt31_pdf (
  idpdf int(11) NOT NULL AUTO_INCREMENT,
  titrePDF varchar(255) NOT NULL,
  nomfichier varchar(255) NOT NULL,
  dateP date NOT NULL,
  typefichier varchar(255) NOT NULL,
  `page` varchar(255) NOT NULL,
  PRIMARY KEY (idpdf)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Liste des fichiers PDF consultables sur le site' AUTO_INCREMENT=36 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_photos'
--

CREATE TABLE IF NOT EXISTS mt31_photos (
  idPhoto int(11) NOT NULL AUTO_INCREMENT,
  cheminPhoto varchar(255) NOT NULL,
  cheminVignette varchar(255) NOT NULL,
  idAlbum int(11) NOT NULL,
  PRIMARY KEY (idPhoto)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Liste des photos de chaque album' AUTO_INCREMENT=159 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_presentation'
--

CREATE TABLE IF NOT EXISTS mt31_presentation (
  idPresentation int(11) NOT NULL AUTO_INCREMENT,
  titrePresentation varchar(255) NOT NULL,
  textePresentation text NOT NULL,
  imagePresentation varchar(255) DEFAULT NULL,
  PRIMARY KEY (idPresentation)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Blocks de présentation' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mt31_video'
--

CREATE TABLE IF NOT EXISTS mt31_video (
  idVideo int(11) NOT NULL AUTO_INCREMENT,
  titreVideo varchar(255) NOT NULL,
  cheminVideo varchar(255) NOT NULL,
  descriptionVideo text,
  miniatureVideo varchar(255) DEFAULT NULL,
  estExterne tinyint(4) DEFAULT NULL,
  PRIMARY KEY (idVideo)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Médias vidéo de Main Tendue' AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_lists'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_lists (
  id int(10) NOT NULL AUTO_INCREMENT,
  list_name varchar(101) NOT NULL DEFAULT '',
  list_desc text NOT NULL,
  list_type tinyint(2) NOT NULL DEFAULT '0',
  sendername varchar(64) NOT NULL DEFAULT '',
  senderemail varchar(64) NOT NULL DEFAULT '',
  bounceadres varchar(64) NOT NULL DEFAULT '',
  layout text NOT NULL,
  template int(9) NOT NULL DEFAULT '0',
  subscribemessage text NOT NULL,
  unsubscribemessage text NOT NULL,
  unsubscribesend tinyint(1) NOT NULL DEFAULT '1',
  auto_add tinyint(1) NOT NULL DEFAULT '0',
  user_choose tinyint(1) NOT NULL DEFAULT '0',
  cat_id int(10) unsigned NOT NULL DEFAULT '0',
  delay_min int(2) NOT NULL DEFAULT '0',
  delay_max int(2) NOT NULL DEFAULT '7',
  follow_up int(10) NOT NULL DEFAULT '0',
  html tinyint(1) NOT NULL DEFAULT '1',
  hidden tinyint(1) NOT NULL DEFAULT '0',
  published tinyint(1) NOT NULL DEFAULT '0',
  createdate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  acc_level int(2) NOT NULL DEFAULT '0',
  acc_id int(11) NOT NULL DEFAULT '0',
  notification tinyint(1) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  footer tinyint(1) NOT NULL DEFAULT '1',
  notify_id int(10) NOT NULL DEFAULT '0',
  next_date int(11) NOT NULL DEFAULT '0',
  start_date date NOT NULL DEFAULT '0000-00-00',
  params text NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY list_name (list_name)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_mailings'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_mailings (
  id int(11) NOT NULL AUTO_INCREMENT,
  list_id int(10) NOT NULL DEFAULT '0',
  list_type tinyint(2) NOT NULL DEFAULT '0',
  issue_nb int(10) NOT NULL DEFAULT '0',
  `subject` varchar(120) NOT NULL DEFAULT '',
  fromname varchar(64) NOT NULL DEFAULT '',
  fromemail varchar(64) NOT NULL DEFAULT '',
  frombounce varchar(64) NOT NULL DEFAULT '',
  htmlcontent text NOT NULL,
  textonly text NOT NULL,
  attachments text NOT NULL,
  images text NOT NULL,
  send_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  delay int(10) NOT NULL DEFAULT '0',
  visible tinyint(1) NOT NULL DEFAULT '1',
  html tinyint(1) NOT NULL DEFAULT '1',
  published tinyint(1) NOT NULL DEFAULT '0',
  createdate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  acc_level int(2) NOT NULL DEFAULT '0',
  author_id int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_queue'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_queue (
  qid int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  subscriber_id int(11) NOT NULL DEFAULT '0',
  list_id int(10) NOT NULL DEFAULT '0',
  mailing_id int(11) NOT NULL DEFAULT '0',
  issue_nb int(10) NOT NULL DEFAULT '0',
  send_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `suspend` tinyint(1) NOT NULL DEFAULT '0',
  delay int(10) NOT NULL DEFAULT '0',
  acc_level int(2) NOT NULL DEFAULT '0',
  published tinyint(1) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (qid),
  UNIQUE KEY subscriber_id (subscriber_id,list_id,mailing_id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_stats_details'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_stats_details (
  mailing_id int(11) NOT NULL DEFAULT '0',
  subscriber_id int(11) NOT NULL DEFAULT '0',
  sentdate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  html tinyint(1) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (mailing_id),
  UNIQUE KEY sub_mail (mailing_id,subscriber_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_stats_global'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_stats_global (
  mailing_id int(11) NOT NULL DEFAULT '0',
  sentdate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  html_sent int(11) NOT NULL DEFAULT '0',
  text_sent int(11) NOT NULL DEFAULT '0',
  html_read int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (mailing_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_subscribers'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_subscribers (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  email varchar(100) NOT NULL DEFAULT '',
  receive_html tinyint(1) NOT NULL DEFAULT '1',
  confirmed tinyint(1) NOT NULL DEFAULT '0',
  blacklist tinyint(1) NOT NULL DEFAULT '0',
  timezone time NOT NULL DEFAULT '00:00:00',
  language_iso varchar(10) NOT NULL DEFAULT 'eng',
  subscribe_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  params text NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY email (email),
  KEY subscribe_date (subscribe_date)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_xonfig'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_xonfig (
  akey varchar(32) NOT NULL DEFAULT '',
  `text` varchar(254) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (akey)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_banner'
--

CREATE TABLE IF NOT EXISTS mtd_banner (
  bid int(11) NOT NULL AUTO_INCREMENT,
  cid int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  imptotal int(11) NOT NULL DEFAULT '0',
  impmade int(11) NOT NULL DEFAULT '0',
  clicks int(11) NOT NULL DEFAULT '0',
  imageurl varchar(100) NOT NULL DEFAULT '',
  clickurl varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  showBanner tinyint(1) NOT NULL DEFAULT '0',
  checked_out tinyint(1) NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  editor varchar(50) DEFAULT NULL,
  custombannercode text,
  catid int(10) unsigned NOT NULL DEFAULT '0',
  description text NOT NULL,
  sticky tinyint(1) unsigned NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  publish_up datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_down datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  tags text NOT NULL,
  params text NOT NULL,
  PRIMARY KEY (bid),
  KEY viewbanner (showBanner),
  KEY idx_banner_catid (catid)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_bannerclient'
--

CREATE TABLE IF NOT EXISTS mtd_bannerclient (
  cid int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  contact varchar(255) NOT NULL DEFAULT '',
  email varchar(255) NOT NULL DEFAULT '',
  extrainfo text NOT NULL,
  checked_out tinyint(1) NOT NULL DEFAULT '0',
  checked_out_time time DEFAULT NULL,
  editor varchar(50) DEFAULT NULL,
  PRIMARY KEY (cid)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_bannertrack'
--

CREATE TABLE IF NOT EXISTS mtd_bannertrack (
  track_date date NOT NULL DEFAULT '0000-00-00',
  track_type int(10) unsigned NOT NULL DEFAULT '0',
  banner_id int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_candpbuttons'
--

CREATE TABLE IF NOT EXISTS mtd_candpbuttons (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  wid varchar(100) DEFAULT NULL,
  buttoncode varchar(255) DEFAULT NULL,
  tracker varchar(100) DEFAULT NULL,
  menuid varchar(255) DEFAULT NULL,
  published char(1) NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_categories'
--

CREATE TABLE IF NOT EXISTS mtd_categories (
  id int(11) NOT NULL AUTO_INCREMENT,
  parent_id int(11) NOT NULL DEFAULT '0',
  title varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  image varchar(255) NOT NULL DEFAULT '',
  section varchar(50) NOT NULL DEFAULT '',
  image_position varchar(30) NOT NULL DEFAULT '',
  description text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  editor varchar(50) DEFAULT NULL,
  ordering int(11) NOT NULL DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  count int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY cat_idx (section,published,access),
  KEY idx_access (access),
  KEY idx_checkout (checked_out)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_communicator'
--

CREATE TABLE IF NOT EXISTS mtd_communicator (
  id int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL DEFAULT '',
  headers text NOT NULL,
  message text NOT NULL,
  html_message text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_up datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_down datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  send datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  hits int(11) NOT NULL DEFAULT '0',
  access int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Used to store all newsletters for Communicator.' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_communicator_subscribers'
--

CREATE TABLE IF NOT EXISTS mtd_communicator_subscribers (
  subscriber_id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL DEFAULT '0',
  subscriber_name varchar(64) NOT NULL DEFAULT '',
  subscriber_email varchar(64) NOT NULL DEFAULT '',
  confirmed tinyint(1) NOT NULL DEFAULT '0',
  subscribe_date datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (subscriber_id),
  UNIQUE KEY subscriber_email (subscriber_email)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Subscribers for Communicator are stored here.' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_components'
--

CREATE TABLE IF NOT EXISTS mtd_components (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  link varchar(255) NOT NULL DEFAULT '',
  menuid int(11) unsigned NOT NULL DEFAULT '0',
  parent int(11) unsigned NOT NULL DEFAULT '0',
  admin_menu_link varchar(255) NOT NULL DEFAULT '',
  admin_menu_alt varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  ordering int(11) NOT NULL DEFAULT '0',
  admin_menu_img varchar(255) NOT NULL DEFAULT '',
  iscore tinyint(4) NOT NULL DEFAULT '0',
  params text NOT NULL,
  enabled tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (id),
  KEY parent_option (parent,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_contact_details'
--

CREATE TABLE IF NOT EXISTS mtd_contact_details (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  con_position varchar(255) DEFAULT NULL,
  address text,
  suburb varchar(100) DEFAULT NULL,
  state varchar(100) DEFAULT NULL,
  country varchar(100) DEFAULT NULL,
  postcode varchar(100) DEFAULT NULL,
  telephone varchar(255) DEFAULT NULL,
  fax varchar(255) DEFAULT NULL,
  misc mediumtext,
  image varchar(255) DEFAULT NULL,
  imagepos varchar(20) DEFAULT NULL,
  email_to varchar(255) DEFAULT NULL,
  default_con tinyint(1) unsigned NOT NULL DEFAULT '0',
  published tinyint(1) unsigned NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  user_id int(11) NOT NULL DEFAULT '0',
  catid int(11) NOT NULL DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  mobile varchar(255) NOT NULL DEFAULT '',
  webpage varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  KEY catid (catid)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_content'
--

CREATE TABLE IF NOT EXISTS mtd_content (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  title_alias varchar(255) NOT NULL DEFAULT '',
  introtext mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  state tinyint(3) NOT NULL DEFAULT '0',
  sectionid int(11) unsigned NOT NULL DEFAULT '0',
  mask int(11) unsigned NOT NULL DEFAULT '0',
  catid int(11) unsigned NOT NULL DEFAULT '0',
  created datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_by int(11) unsigned NOT NULL DEFAULT '0',
  created_by_alias varchar(255) NOT NULL DEFAULT '',
  modified datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  modified_by int(11) unsigned NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_up datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_down datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  images text NOT NULL,
  urls text NOT NULL,
  attribs text NOT NULL,
  version int(11) unsigned NOT NULL DEFAULT '1',
  parentid int(11) unsigned NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  metakey text NOT NULL,
  metadesc text NOT NULL,
  access int(11) unsigned NOT NULL DEFAULT '0',
  hits int(11) unsigned NOT NULL DEFAULT '0',
  metadata text NOT NULL,
  PRIMARY KEY (id),
  KEY idx_section (sectionid),
  KEY idx_access (access),
  KEY idx_checkout (checked_out),
  KEY idx_state (state),
  KEY idx_catid (catid),
  KEY idx_createdby (created_by)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_content_frontpage'
--

CREATE TABLE IF NOT EXISTS mtd_content_frontpage (
  content_id int(11) NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (content_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_content_rating'
--

CREATE TABLE IF NOT EXISTS mtd_content_rating (
  content_id int(11) NOT NULL DEFAULT '0',
  rating_sum int(11) unsigned NOT NULL DEFAULT '0',
  rating_count int(11) unsigned NOT NULL DEFAULT '0',
  lastip varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (content_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_aro'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_aro (
  id int(11) NOT NULL AUTO_INCREMENT,
  section_value varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  order_value int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  hidden int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  UNIQUE KEY mtd_section_value_value_aro (section_value(100),`value`(100)),
  KEY mtd_gacl_hidden_aro (hidden)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_aro_groups'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_aro_groups (
  id int(11) NOT NULL AUTO_INCREMENT,
  parent_id int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  lft int(11) NOT NULL DEFAULT '0',
  rgt int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  KEY mtd_gacl_parent_id_aro_groups (parent_id),
  KEY mtd_gacl_lft_rgt_aro_groups (lft,rgt)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_aro_map'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_aro_map (
  acl_id int(11) NOT NULL DEFAULT '0',
  section_value varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (acl_id,section_value,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_aro_sections'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_aro_sections (
  id int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  order_value int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  hidden int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  UNIQUE KEY mtd_gacl_value_aro_sections (`value`),
  KEY mtd_gacl_hidden_aro_sections (hidden)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_groups_aro_map'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_groups_aro_map (
  group_id int(11) NOT NULL DEFAULT '0',
  section_value varchar(240) NOT NULL DEFAULT '',
  aro_id int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY group_id_aro_id_groups_aro_map (group_id,section_value,aro_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_log_items'
--

CREATE TABLE IF NOT EXISTS mtd_core_log_items (
  time_stamp date NOT NULL DEFAULT '0000-00-00',
  item_table varchar(50) NOT NULL DEFAULT '',
  item_id int(11) unsigned NOT NULL DEFAULT '0',
  hits int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_log_searches'
--

CREATE TABLE IF NOT EXISTS mtd_core_log_searches (
  search_term varchar(128) NOT NULL DEFAULT '',
  hits int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_donation'
--

CREATE TABLE IF NOT EXISTS mtd_donation (
  id int(11) NOT NULL AUTO_INCREMENT,
  nom varchar(50) NOT NULL DEFAULT '',
  prenom varchar(50) NOT NULL DEFAULT '',
  adresse varchar(200) NOT NULL DEFAULT '',
  codepostal varchar(5) NOT NULL DEFAULT '',
  ville varchar(50) NOT NULL DEFAULT '',
  email varchar(100) NOT NULL DEFAULT '',
  newsletter tinyint(1) DEFAULT NULL,
  recufiscal tinyint(1) DEFAULT NULL,
  montant float DEFAULT NULL,
  datepaiement date NOT NULL DEFAULT '0000-00-00',
  methodepaiement varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_groups'
--

CREATE TABLE IF NOT EXISTS mtd_groups (
  id tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_hsconfig'
--

CREATE TABLE IF NOT EXISTS mtd_hsconfig (
  id int(11) NOT NULL DEFAULT '0',
  css text NOT NULL,
  overlayhtml text NOT NULL,
  params text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  modified datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  publish_tmst datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_menu'
--

CREATE TABLE IF NOT EXISTS mtd_menu (
  id int(11) NOT NULL AUTO_INCREMENT,
  menutype varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  alias varchar(255) NOT NULL DEFAULT '',
  link text,
  `type` varchar(50) NOT NULL DEFAULT '',
  published tinyint(1) NOT NULL DEFAULT '0',
  parent int(11) unsigned NOT NULL DEFAULT '0',
  componentid int(11) unsigned NOT NULL DEFAULT '0',
  sublevel int(11) DEFAULT '0',
  ordering int(11) DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  pollid int(11) NOT NULL DEFAULT '0',
  browserNav tinyint(4) DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  utaccess tinyint(3) unsigned NOT NULL DEFAULT '0',
  params text NOT NULL,
  lft int(11) unsigned NOT NULL DEFAULT '0',
  rgt int(11) unsigned NOT NULL DEFAULT '0',
  home int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY componentid (componentid,menutype,published,access),
  KEY menutype (menutype)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_menu_types'
--

CREATE TABLE IF NOT EXISTS mtd_menu_types (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  menutype varchar(75) NOT NULL DEFAULT '',
  title varchar(255) NOT NULL DEFAULT '',
  description varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  UNIQUE KEY menutype (menutype)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_messages'
--

CREATE TABLE IF NOT EXISTS mtd_messages (
  message_id int(10) unsigned NOT NULL AUTO_INCREMENT,
  user_id_from int(10) unsigned NOT NULL DEFAULT '0',
  user_id_to int(10) unsigned NOT NULL DEFAULT '0',
  folder_id int(10) unsigned NOT NULL DEFAULT '0',
  date_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  state int(11) NOT NULL DEFAULT '0',
  priority int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  message text NOT NULL,
  PRIMARY KEY (message_id),
  KEY useridto_state (user_id_to,state)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_messages_cfg'
--

CREATE TABLE IF NOT EXISTS mtd_messages_cfg (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  cfg_name varchar(100) NOT NULL DEFAULT '',
  cfg_value varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY idx_user_var_name (user_id,cfg_name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_migration_backlinks'
--

CREATE TABLE IF NOT EXISTS mtd_migration_backlinks (
  itemid int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  url text NOT NULL,
  sefurl text NOT NULL,
  newurl text NOT NULL,
  PRIMARY KEY (itemid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_modules'
--

CREATE TABLE IF NOT EXISTS mtd_modules (
  id int(11) NOT NULL AUTO_INCREMENT,
  title text NOT NULL,
  content text NOT NULL,
  ordering int(11) NOT NULL DEFAULT '0',
  position varchar(50) DEFAULT NULL,
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  published tinyint(1) NOT NULL DEFAULT '0',
  module varchar(50) DEFAULT NULL,
  numnews int(11) NOT NULL DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  showtitle tinyint(3) unsigned NOT NULL DEFAULT '1',
  params text NOT NULL,
  iscore tinyint(4) NOT NULL DEFAULT '0',
  client_id tinyint(4) NOT NULL DEFAULT '0',
  control text NOT NULL,
  PRIMARY KEY (id),
  KEY published (published,access),
  KEY newsfeeds (module,published)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_modules_menu'
--

CREATE TABLE IF NOT EXISTS mtd_modules_menu (
  moduleid int(11) NOT NULL DEFAULT '0',
  menuid int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (moduleid,menuid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_newsfeeds'
--

CREATE TABLE IF NOT EXISTS mtd_newsfeeds (
  catid int(11) NOT NULL DEFAULT '0',
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  alias varchar(255) NOT NULL DEFAULT '',
  link text NOT NULL,
  filename varchar(200) DEFAULT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  numarticles int(11) unsigned NOT NULL DEFAULT '1',
  cache_time int(11) unsigned NOT NULL DEFAULT '3600',
  checked_out tinyint(3) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  rtl tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY published (published),
  KEY catid (catid)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  sid int(11) NOT NULL DEFAULT '0',
  title varchar(250) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  filename varchar(250) NOT NULL DEFAULT '',
  description text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  hits int(11) NOT NULL DEFAULT '0',
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  extlink1 text NOT NULL,
  extlink2 text NOT NULL,
  PRIMARY KEY (id),
  KEY catid (catid,published)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=876 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery_categories'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery_categories (
  id int(11) NOT NULL AUTO_INCREMENT,
  parent_id int(11) NOT NULL DEFAULT '0',
  title varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  image varchar(255) NOT NULL DEFAULT '',
  section varchar(50) NOT NULL DEFAULT '',
  image_position varchar(30) NOT NULL DEFAULT '',
  description text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  editor varchar(50) DEFAULT NULL,
  ordering int(11) NOT NULL DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  count int(11) NOT NULL DEFAULT '0',
  hits int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY cat_idx (section,published,access),
  KEY idx_access (access),
  KEY idx_checkout (checked_out)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery_comments'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery_comments (
  id int(11) NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  userid int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  title varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery_user_category'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery_user_category (
  id int(11) NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  userid int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY catid (catid,userid)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery_votes'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery_votes (
  id int(11) NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  userid int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  rating tinyint(1) NOT NULL DEFAULT '0',
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_phocagallery_votes_statistics'
--

CREATE TABLE IF NOT EXISTS mtd_phocagallery_votes_statistics (
  id int(11) NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  count tinyint(11) NOT NULL DEFAULT '0',
  average float(8,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_plugins'
--

CREATE TABLE IF NOT EXISTS mtd_plugins (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  element varchar(100) NOT NULL DEFAULT '',
  folder varchar(100) NOT NULL DEFAULT '',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  published tinyint(3) NOT NULL DEFAULT '0',
  iscore tinyint(3) NOT NULL DEFAULT '0',
  client_id tinyint(3) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY idx_folder (published,client_id,access,folder)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_polls'
--

CREATE TABLE IF NOT EXISTS mtd_polls (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  voters int(9) NOT NULL DEFAULT '0',
  checked_out int(11) NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  published tinyint(1) NOT NULL DEFAULT '0',
  access int(11) NOT NULL DEFAULT '0',
  lag int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_poll_data'
--

CREATE TABLE IF NOT EXISTS mtd_poll_data (
  id int(11) NOT NULL AUTO_INCREMENT,
  pollid int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  hits int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY pollid (pollid,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_poll_date'
--

CREATE TABLE IF NOT EXISTS mtd_poll_date (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  vote_id int(11) NOT NULL DEFAULT '0',
  poll_id int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY poll_id (poll_id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_poll_menu'
--

CREATE TABLE IF NOT EXISTS mtd_poll_menu (
  pollid int(11) NOT NULL DEFAULT '0',
  menuid int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (pollid,menuid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_sc_config'
--

CREATE TABLE IF NOT EXISTS mtd_sc_config (
  id int(11) NOT NULL AUTO_INCREMENT,
  keyword varchar(32) NOT NULL DEFAULT '',
  description varchar(255) NOT NULL DEFAULT '',
  setting text NOT NULL,
  cfgset int(11) NOT NULL DEFAULT '0',
  `type` enum('text','textarea','richtext','yesno','list') NOT NULL DEFAULT 'text',
  indopts text NOT NULL,
  sh int(11) NOT NULL DEFAULT '0',
  sv int(11) NOT NULL DEFAULT '0',
  pagename varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  KEY kw (keyword)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_sc_odetails'
--

CREATE TABLE IF NOT EXISTS mtd_sc_odetails (
  id int(11) NOT NULL AUTO_INCREMENT,
  orderid int(11) NOT NULL DEFAULT '0',
  prodcode varchar(10) NOT NULL DEFAULT '',
  qty int(11) NOT NULL DEFAULT '0',
  unitprice float NOT NULL DEFAULT '0',
  total float NOT NULL DEFAULT '0',
  shorttext varchar(255) NOT NULL DEFAULT '',
  `option` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_sc_orders'
--

CREATE TABLE IF NOT EXISTS mtd_sc_orders (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  email varchar(255) NOT NULL DEFAULT '',
  address text NOT NULL,
  codepostal varchar(15) NOT NULL DEFAULT '',
  city varchar(32) NOT NULL DEFAULT '',
  telephone varchar(32) NOT NULL DEFAULT '',
  ordercode varchar(16) NOT NULL DEFAULT '',
  orderdt int(11) NOT NULL DEFAULT '0',
  total float NOT NULL DEFAULT '0',
  `status` varchar(16) NOT NULL DEFAULT '',
  tax float NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_sc_products'
--

CREATE TABLE IF NOT EXISTS mtd_sc_products (
  id int(11) NOT NULL AUTO_INCREMENT,
  prodcode varchar(13) NOT NULL DEFAULT '',
  shorttext varchar(255) NOT NULL DEFAULT '',
  av_qty int(11) NOT NULL DEFAULT '0',
  unitprice float NOT NULL DEFAULT '0',
  published int(11) NOT NULL DEFAULT '0',
  optionstitle varchar(32) NOT NULL DEFAULT '',
  `options` text NOT NULL,
  showas int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_sections'
--

CREATE TABLE IF NOT EXISTS mtd_sections (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  image text NOT NULL,
  scope varchar(50) NOT NULL DEFAULT '',
  image_position varchar(30) NOT NULL DEFAULT '',
  description text NOT NULL,
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) unsigned NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  access tinyint(3) unsigned NOT NULL DEFAULT '0',
  count int(11) NOT NULL DEFAULT '0',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY idx_scope (scope)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_session'
--

CREATE TABLE IF NOT EXISTS mtd_session (
  username varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  session_id varchar(200) NOT NULL DEFAULT '0',
  guest tinyint(4) DEFAULT '1',
  userid int(11) DEFAULT '0',
  usertype varchar(50) DEFAULT '',
  gid tinyint(3) unsigned NOT NULL DEFAULT '0',
  client_id tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (session_id(64)),
  KEY whosonline (guest,usertype),
  KEY userid (userid),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_stats_agents'
--

CREATE TABLE IF NOT EXISTS mtd_stats_agents (
  agent varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  hits int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_templates_menu'
--

CREATE TABLE IF NOT EXISTS mtd_templates_menu (
  template varchar(255) NOT NULL DEFAULT '',
  menuid int(11) NOT NULL DEFAULT '0',
  client_id tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (menuid,client_id,template)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_test'
--

CREATE TABLE IF NOT EXISTS mtd_test (
  id int(11) NOT NULL AUTO_INCREMENT,
  greeting varchar(25) NOT NULL DEFAULT '',
  content text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_users'
--

CREATE TABLE IF NOT EXISTS mtd_users (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  username varchar(150) NOT NULL DEFAULT '',
  email varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  usertype varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  sendEmail tinyint(4) DEFAULT '0',
  gid tinyint(3) unsigned NOT NULL DEFAULT '1',
  registerDate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  lastvisitDate datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  activation varchar(100) NOT NULL DEFAULT '',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY usertype (usertype),
  KEY idx_name (`name`),
  KEY gid_block (gid,`block`),
  KEY username (username),
  KEY email (email)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_weblinks'
--

CREATE TABLE IF NOT EXISTS mtd_weblinks (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  catid int(11) NOT NULL DEFAULT '0',
  sid int(11) NOT NULL DEFAULT '0',
  title varchar(250) NOT NULL DEFAULT '',
  alias varchar(255) NOT NULL DEFAULT '',
  url varchar(250) NOT NULL DEFAULT '',
  description text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  hits int(11) NOT NULL DEFAULT '0',
  published tinyint(1) NOT NULL DEFAULT '0',
  checked_out int(11) NOT NULL DEFAULT '0',
  checked_out_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  ordering int(11) NOT NULL DEFAULT '0',
  archived tinyint(1) NOT NULL DEFAULT '0',
  approved tinyint(1) NOT NULL DEFAULT '1',
  params text NOT NULL,
  PRIMARY KEY (id),
  KEY catid (catid,published,archived)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_xmap'
--

CREATE TABLE IF NOT EXISTS mtd_xmap (
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_xmap_ext'
--

CREATE TABLE IF NOT EXISTS mtd_xmap_ext (
  id int(11) NOT NULL AUTO_INCREMENT,
  extension varchar(100) NOT NULL DEFAULT '',
  published int(1) DEFAULT '0',
  params text,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_xmap_sitemap'
--

CREATE TABLE IF NOT EXISTS mtd_xmap_sitemap (
  id int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  expand_category int(11) DEFAULT NULL,
  expand_section int(11) DEFAULT NULL,
  show_menutitle int(11) DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  exlinks int(11) DEFAULT NULL,
  ext_image varchar(255) DEFAULT NULL,
  menus text,
  exclmenus varchar(255) DEFAULT NULL,
  includelink int(11) DEFAULT NULL,
  usecache int(11) DEFAULT NULL,
  cachelifetime int(11) DEFAULT NULL,
  classname varchar(255) DEFAULT NULL,
  count_xml int(11) DEFAULT NULL,
  count_html int(11) DEFAULT NULL,
  views_xml int(11) DEFAULT NULL,
  views_html int(11) DEFAULT NULL,
  lastvisit_xml int(11) DEFAULT NULL,
  lastvisit_html int(11) DEFAULT NULL,
  excluded_items varchar(255) DEFAULT NULL,
  compress_xml int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_articles'
--

CREATE TABLE IF NOT EXISTS spip_articles (
  id_article bigint(21) NOT NULL AUTO_INCREMENT,
  surtitre text NOT NULL,
  titre text NOT NULL,
  soustitre text NOT NULL,
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  descriptif text NOT NULL,
  chapo mediumtext NOT NULL,
  texte longblob NOT NULL,
  ps mediumtext NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  statut varchar(10) NOT NULL DEFAULT '0',
  id_secteur bigint(21) NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  export varchar(10) DEFAULT 'oui',
  date_redac datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  visites int(11) NOT NULL DEFAULT '0',
  referers int(11) NOT NULL DEFAULT '0',
  popularite double NOT NULL DEFAULT '0',
  accepter_forum char(3) NOT NULL DEFAULT '',
  date_modif datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  lang varchar(10) NOT NULL DEFAULT '',
  langue_choisie char(3) DEFAULT 'non',
  id_trad bigint(21) NOT NULL DEFAULT '0',
  extra longblob,
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  id_version int(10) unsigned NOT NULL DEFAULT '0',
  nom_site tinytext NOT NULL,
  url_site varchar(255) NOT NULL DEFAULT '',
  url_propre varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id_article),
  KEY id_rubrique (id_rubrique),
  KEY id_secteur (id_secteur),
  KEY id_trad (id_trad),
  KEY lang (lang),
  KEY statut (statut,`date`),
  KEY url_site (url_site),
  KEY date_modif (date_modif),
  KEY idx (idx),
  KEY url_propre (url_propre)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs'
--

CREATE TABLE IF NOT EXISTS spip_auteurs (
  id_auteur bigint(21) NOT NULL AUTO_INCREMENT,
  nom text NOT NULL,
  bio text NOT NULL,
  email tinytext NOT NULL,
  nom_site tinytext NOT NULL,
  url_site text NOT NULL,
  login varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  pass tinytext NOT NULL,
  low_sec tinytext NOT NULL,
  statut varchar(255) NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  pgp blob NOT NULL,
  htpass tinyblob NOT NULL,
  en_ligne datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  imessage char(3) NOT NULL DEFAULT '',
  messagerie char(3) NOT NULL DEFAULT '',
  alea_actuel tinytext NOT NULL,
  alea_futur tinytext NOT NULL,
  prefs tinytext NOT NULL,
  cookie_oubli tinytext NOT NULL,
  `source` varchar(10) NOT NULL DEFAULT 'spip',
  lang varchar(10) NOT NULL DEFAULT '',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  url_propre varchar(255) NOT NULL DEFAULT '',
  extra longblob,
  PRIMARY KEY (id_auteur),
  KEY login (login),
  KEY statut (statut),
  KEY lang (lang),
  KEY idx (idx),
  KEY en_ligne (en_ligne),
  KEY url_propre (url_propre)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs_articles'
--

CREATE TABLE IF NOT EXISTS spip_auteurs_articles (
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_auteur,id_article),
  KEY id_article (id_article)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs_messages'
--

CREATE TABLE IF NOT EXISTS spip_auteurs_messages (
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  id_message bigint(21) NOT NULL DEFAULT '0',
  vu char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (id_auteur,id_message),
  KEY id_message (id_message)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_auteurs_rubriques (
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_auteur,id_rubrique),
  KEY id_rubrique (id_rubrique)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_breves'
--

CREATE TABLE IF NOT EXISTS spip_breves (
  id_breve bigint(21) NOT NULL AUTO_INCREMENT,
  date_heure datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  titre text NOT NULL,
  texte longblob NOT NULL,
  lien_titre text NOT NULL,
  lien_url text NOT NULL,
  statut varchar(6) NOT NULL DEFAULT '',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  lang varchar(10) NOT NULL DEFAULT '',
  langue_choisie char(3) DEFAULT 'non',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  extra longblob,
  url_propre varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (id_breve),
  KEY idx (idx),
  KEY id_rubrique (id_rubrique),
  KEY url_propre (url_propre)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_caches'
--

CREATE TABLE IF NOT EXISTS spip_caches (
  fichier char(64) NOT NULL DEFAULT '',
  id char(64) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'i',
  taille int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (fichier,id),
  KEY fichier (fichier),
  KEY id (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents'
--

CREATE TABLE IF NOT EXISTS spip_documents (
  id_document bigint(21) NOT NULL AUTO_INCREMENT,
  id_vignette bigint(21) NOT NULL DEFAULT '0',
  id_type bigint(21) NOT NULL DEFAULT '0',
  titre text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  descriptif text NOT NULL,
  fichier varchar(255) NOT NULL DEFAULT '',
  taille int(11) NOT NULL DEFAULT '0',
  largeur int(11) NOT NULL DEFAULT '0',
  hauteur int(11) NOT NULL DEFAULT '0',
  `mode` enum('vignette','document') NOT NULL DEFAULT 'vignette',
  distant char(3) DEFAULT 'non',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_document),
  KEY id_vignette (id_vignette),
  KEY `mode` (`mode`),
  KEY id_type (id_type)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_articles'
--

CREATE TABLE IF NOT EXISTS spip_documents_articles (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_article,id_document),
  KEY id_document (id_document)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_breves'
--

CREATE TABLE IF NOT EXISTS spip_documents_breves (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_breve bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_breve,id_document),
  KEY id_document (id_document)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_documents_rubriques (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_rubrique,id_document),
  KEY id_document (id_document)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_forum'
--

CREATE TABLE IF NOT EXISTS spip_forum (
  id_forum bigint(21) NOT NULL AUTO_INCREMENT,
  id_parent bigint(21) NOT NULL DEFAULT '0',
  id_thread bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  id_breve bigint(21) NOT NULL DEFAULT '0',
  date_heure datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  titre text NOT NULL,
  texte mediumtext NOT NULL,
  auteur text NOT NULL,
  email_auteur text NOT NULL,
  nom_site text NOT NULL,
  url_site text NOT NULL,
  statut varchar(8) NOT NULL DEFAULT '',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  ip varchar(16) DEFAULT NULL,
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  id_auteur bigint(20) NOT NULL DEFAULT '0',
  id_message bigint(21) NOT NULL DEFAULT '0',
  id_syndic bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_forum),
  KEY id_parent (id_parent),
  KEY id_article (id_article),
  KEY id_breve (id_breve),
  KEY id_message (id_message),
  KEY id_syndic (id_syndic),
  KEY id_rubrique (id_rubrique),
  KEY idx (idx),
  KEY statut (statut,date_heure)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_groupes_mots'
--

CREATE TABLE IF NOT EXISTS spip_groupes_mots (
  id_groupe bigint(21) NOT NULL AUTO_INCREMENT,
  titre text NOT NULL,
  descriptif text NOT NULL,
  texte longblob NOT NULL,
  unseul char(3) NOT NULL DEFAULT '',
  obligatoire char(3) NOT NULL DEFAULT '',
  articles char(3) NOT NULL DEFAULT '',
  breves char(3) NOT NULL DEFAULT '',
  rubriques char(3) NOT NULL DEFAULT '',
  syndic char(3) NOT NULL DEFAULT '',
  minirezo char(3) NOT NULL DEFAULT '',
  comite char(3) NOT NULL DEFAULT '',
  forum char(3) NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_groupe)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_index'
--

CREATE TABLE IF NOT EXISTS spip_index (
  `hash` bigint(20) unsigned NOT NULL DEFAULT '0',
  points int(10) unsigned NOT NULL DEFAULT '0',
  id_objet int(10) unsigned NOT NULL DEFAULT '0',
  id_table tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `hash` (`hash`),
  KEY id_objet (id_objet),
  KEY id_table (id_table)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_index_dico'
--

CREATE TABLE IF NOT EXISTS spip_index_dico (
  `hash` bigint(20) unsigned NOT NULL DEFAULT '0',
  dico varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (dico)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_messages'
--

CREATE TABLE IF NOT EXISTS spip_messages (
  id_message bigint(21) NOT NULL AUTO_INCREMENT,
  titre text NOT NULL,
  texte longblob NOT NULL,
  `type` varchar(6) NOT NULL DEFAULT '',
  date_heure datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  date_fin datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  rv char(3) NOT NULL DEFAULT '',
  statut varchar(6) NOT NULL DEFAULT '',
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_message),
  KEY id_auteur (id_auteur)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_meta'
--

CREATE TABLE IF NOT EXISTS spip_meta (
  nom varchar(255) NOT NULL DEFAULT '',
  valeur text,
  impt enum('non','oui') NOT NULL DEFAULT 'oui',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (nom)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots'
--

CREATE TABLE IF NOT EXISTS spip_mots (
  id_mot bigint(21) NOT NULL AUTO_INCREMENT,
  titre text NOT NULL,
  descriptif text NOT NULL,
  texte longblob NOT NULL,
  id_groupe bigint(21) NOT NULL DEFAULT '0',
  `type` text NOT NULL,
  extra longblob,
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  url_propre varchar(255) NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_mot),
  KEY idx (idx),
  KEY url_propre (url_propre)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_articles'
--

CREATE TABLE IF NOT EXISTS spip_mots_articles (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_article,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_breves'
--

CREATE TABLE IF NOT EXISTS spip_mots_breves (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_breve bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_breve,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_documents'
--

CREATE TABLE IF NOT EXISTS spip_mots_documents (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_document bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_document,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_forum'
--

CREATE TABLE IF NOT EXISTS spip_mots_forum (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_forum bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_forum,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_mots_rubriques (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_rubrique,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_syndic'
--

CREATE TABLE IF NOT EXISTS spip_mots_syndic (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_syndic bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_syndic,id_mot),
  KEY id_mot (id_mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_ortho_cache'
--

CREATE TABLE IF NOT EXISTS spip_ortho_cache (
  lang varchar(10) NOT NULL DEFAULT '',
  mot varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  ok tinyint(4) NOT NULL DEFAULT '0',
  suggest blob NOT NULL,
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (lang,mot),
  KEY maj (maj)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_ortho_dico'
--

CREATE TABLE IF NOT EXISTS spip_ortho_dico (
  lang varchar(10) NOT NULL DEFAULT '',
  mot varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  id_auteur bigint(20) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (lang,mot)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_petitions'
--

CREATE TABLE IF NOT EXISTS spip_petitions (
  id_article bigint(21) NOT NULL DEFAULT '0',
  email_unique char(3) NOT NULL DEFAULT '',
  site_obli char(3) NOT NULL DEFAULT '',
  site_unique char(3) NOT NULL DEFAULT '',
  message char(3) NOT NULL DEFAULT '',
  texte longblob NOT NULL,
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_article)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_referers'
--

CREATE TABLE IF NOT EXISTS spip_referers (
  referer_md5 bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  referer varchar(255) NOT NULL DEFAULT '',
  visites int(10) unsigned NOT NULL DEFAULT '0',
  visites_jour int(10) unsigned NOT NULL DEFAULT '0',
  visites_veille int(10) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (referer_md5)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_referers_articles'
--

CREATE TABLE IF NOT EXISTS spip_referers_articles (
  id_article int(10) unsigned NOT NULL DEFAULT '0',
  referer_md5 bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  referer varchar(255) NOT NULL DEFAULT '',
  visites int(10) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_article,referer_md5),
  KEY referer_md5 (referer_md5)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_rubriques (
  id_rubrique bigint(21) NOT NULL AUTO_INCREMENT,
  id_parent bigint(21) NOT NULL DEFAULT '0',
  titre text NOT NULL,
  descriptif text NOT NULL,
  texte longblob NOT NULL,
  id_secteur bigint(21) NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  export varchar(10) DEFAULT 'oui',
  id_import bigint(20) DEFAULT '0',
  statut varchar(10) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  lang varchar(10) NOT NULL DEFAULT '',
  langue_choisie char(3) DEFAULT 'non',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  extra longblob,
  url_propre varchar(255) NOT NULL DEFAULT '',
  statut_tmp varchar(10) NOT NULL DEFAULT '',
  date_tmp datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id_rubrique),
  KEY lang (lang),
  KEY idx (idx),
  KEY id_parent (id_parent),
  KEY url_propre (url_propre)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_signatures'
--

CREATE TABLE IF NOT EXISTS spip_signatures (
  id_signature bigint(21) NOT NULL AUTO_INCREMENT,
  id_article bigint(21) NOT NULL DEFAULT '0',
  date_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  nom_email text NOT NULL,
  ad_email text NOT NULL,
  nom_site text NOT NULL,
  url_site text NOT NULL,
  message mediumtext NOT NULL,
  statut varchar(10) NOT NULL DEFAULT '',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_signature),
  KEY id_article (id_article),
  KEY idx (idx),
  KEY statut (statut)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_syndic'
--

CREATE TABLE IF NOT EXISTS spip_syndic (
  id_syndic bigint(21) NOT NULL AUTO_INCREMENT,
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  id_secteur bigint(21) NOT NULL DEFAULT '0',
  nom_site blob NOT NULL,
  url_site blob NOT NULL,
  url_syndic blob NOT NULL,
  descriptif blob NOT NULL,
  url_propre varchar(255) NOT NULL DEFAULT '',
  idx enum('','1','non','oui','idx') NOT NULL DEFAULT '',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  syndication char(3) NOT NULL DEFAULT '',
  statut varchar(10) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  date_syndic datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  date_index datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  extra longblob,
  moderation char(3) DEFAULT 'non',
  miroir char(3) DEFAULT 'non',
  oubli char(3) DEFAULT 'non',
  `resume` char(3) DEFAULT 'oui',
  PRIMARY KEY (id_syndic),
  KEY id_rubrique (id_rubrique),
  KEY id_secteur (id_secteur),
  KEY idx (idx),
  KEY statut (statut,date_syndic),
  KEY url_propre (url_propre)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_syndic_articles'
--

CREATE TABLE IF NOT EXISTS spip_syndic_articles (
  id_syndic_article bigint(21) NOT NULL AUTO_INCREMENT,
  id_syndic bigint(21) NOT NULL DEFAULT '0',
  titre text NOT NULL,
  url varchar(255) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  lesauteurs text NOT NULL,
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  statut varchar(10) NOT NULL DEFAULT '',
  descriptif blob NOT NULL,
  lang varchar(10) NOT NULL DEFAULT '',
  url_source tinytext NOT NULL,
  `source` tinytext NOT NULL,
  tags text NOT NULL,
  PRIMARY KEY (id_syndic_article),
  KEY id_syndic (id_syndic),
  KEY statut (statut),
  KEY url (url)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_types_documents'
--

CREATE TABLE IF NOT EXISTS spip_types_documents (
  id_type bigint(21) NOT NULL AUTO_INCREMENT,
  titre text NOT NULL,
  descriptif text NOT NULL,
  extension varchar(10) NOT NULL DEFAULT '',
  mime_type varchar(100) NOT NULL DEFAULT '',
  inclus enum('non','image','embed') NOT NULL DEFAULT 'non',
  upload enum('oui','non') NOT NULL DEFAULT 'oui',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id_type),
  UNIQUE KEY extension (extension),
  KEY inclus (inclus)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_versions'
--

CREATE TABLE IF NOT EXISTS spip_versions (
  id_article bigint(21) NOT NULL DEFAULT '0',
  id_version int(10) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  id_auteur varchar(23) NOT NULL DEFAULT '',
  titre_version text NOT NULL,
  permanent char(3) NOT NULL DEFAULT '',
  champs text NOT NULL,
  PRIMARY KEY (id_article,id_version),
  KEY `date` (id_article,`date`),
  KEY id_auteur (id_auteur)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_versions_fragments'
--

CREATE TABLE IF NOT EXISTS spip_versions_fragments (
  id_fragment int(10) unsigned NOT NULL DEFAULT '0',
  version_min int(10) unsigned NOT NULL DEFAULT '0',
  version_max int(10) unsigned NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  compress tinyint(4) NOT NULL DEFAULT '0',
  fragment longblob NOT NULL,
  PRIMARY KEY (id_article,id_fragment,version_min)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_visites'
--

CREATE TABLE IF NOT EXISTS spip_visites (
  `date` date NOT NULL DEFAULT '0000-00-00',
  visites int(10) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'spip_visites_articles'
--

CREATE TABLE IF NOT EXISTS spip_visites_articles (
  `date` date NOT NULL DEFAULT '0000-00-00',
  id_article int(10) unsigned NOT NULL DEFAULT '0',
  visites int(10) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`,id_article)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
