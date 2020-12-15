-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 14 Décembre 2020 à 17:33
-- Version du serveur: 5.1.44
-- Version de PHP: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: 'wb59832'
-- Base de données: maintendue
--

-- --------------------------------------------------------

USE $db_name;

-- Est-ce bien utile ?
-- SET FOREIGN_KEY_CHECKS = 0;


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Liste des albums photos présent sur le site' AUTO_INCREMENT=7 ;

--
-- Contenu de la table 'mt31_albums'
--

INSERT INTO mt31_albums (idAlbum, titreAlbum, photoCover, nbPhotos, dateAlbum) VALUES
(1, 'Distribution des repas', 'edit/album1/DSC-155.jpg', 40, NULL),
(2, 'Épicerie solidaire', 'edit/album2/DSC_2522.jpg', 9, NULL),
(3, 'Préparation des repas', 'edit/album3/mt31_011.jpg', 15, NULL),
(4, 'Repas de Noël', 'edit/album4/mt31_npt_001.jpg', 84, NULL),
(5, 'Chorale KoKeLiKo', 'edit/album5/34339930_10212679339240802_63013702877577216_n.jpg', 2, NULL),
(6, 'Solidaribus', 'edit/album6/01-IMG_6919.jpg', 5, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Liste des fichiers audio du site' AUTO_INCREMENT=5 ;


--
-- Contenu de la table 'mt31_audio'
--

INSERT INTO mt31_audio (idAudio, titreAudio, nomFichierAudio, auteurAudio, typeAudio) VALUES
(1, 'Une main tendue aux démunis', 'SDF_UC_02.mp3', 'Univers Cité', 'reportage'),
(2, 'Stéphane Reynier', 'SDF_UC_01.mp3', 'Radio Radio', 'reportage'),
(3, 'Noël MT31 2012', 'radio_20bleu_20noel_202012_20mp3.mp3', 'France Bleu Toulouse', 'reportage'),
(4, 'MT31 2013', 'MT31_20France_20Info_202013.mp3', 'France Inter', 'reportage');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Liste des partenaires de Main Tendue 31' AUTO_INCREMENT=38 ;

--
-- Contenu de la table 'mt31_partenaires'
--

INSERT INTO mt31_partenaires (idPartenaire, nomPartenaire, logoPartenaire, lienPartenaire) VALUES
(1, 'Fondation Orange', 'media/partenaires/crbst_1-fondation_fr_quadri.jpg', 'http://www.fondationorange.com/'),
(2, 'Mairie de Toulouse', 'media/partenaires/crbst_logo_mairie_toulouse_5B1_5D.jpg', 'http://www.toulouse.fr/accueil'),
(3, 'ACTES', 'media/partenaires/crbst_Actes0.jpg', '#'),
(4, 'Auchan', 'media/partenaires/crbst_auchan_5B1_5D.jpg', 'https://www.auchan.fr/'),
(5, 'Casino', 'media/partenaires/crbst_Casino.png', 'http://www.casino.fr/'),
(6, 'Haute Garonne', 'media/partenaires/crbst_CD_2031.png', 'https://www.haute-garonne.fr/'),
(7, 'Fondation Crédit Agricole 31', 'media/partenaires/crbst_Cr_C3_A9dit_20Agricole.jpg', 'http://www.ca-toulouse31.fr/initiatives-solidaires-es.html'),
(8, 'L''agence du don', 'media/partenaires/crbst_don_20en_20nature.jpg', 'http://www.adnfrance.org/'),
(9, 'Dons Solidaires', 'media/partenaires/crbst_Dons_20Solidaires.jpg', 'http://www.donsolidaires.fr/'),
(10, 'Écureil et Solidarité', 'media/partenaires/crbst_Ecureuil_20Solidarit_C3_A9.jpg', 'http://www.ecureuiletsolidarite.fr/'),
(11, 'Fédération Entraide Protestante', 'media/partenaires/crbst_fep_5B1_5D.jpg', 'http://www.fep.asso.fr/'),
(12, 'Fondation Monoprix', 'media/partenaires/crbst_Fond__20Monoprix.png', 'http://www.fondationmonoprix.fr/'),
(13, 'Fondation de France', 'media/partenaires/crbst_fondation-de-france.png', 'http://www.fondationdefrance.org/'),
(14, 'Gripple', 'media/partenaires/crbst_Gripple.jpg', 'http://www.gripple.com/fr/fr/'),
(15, 'nFrance', 'media/partenaires/crbst_logo_2520nfrance_5B1_5D.jpg', 'https://www.nfrance.com/'),
(16, 'Banques Alimentaires', 'media/partenaires/crbst_logo_banqalim_62123_5B1_5D.png', 'http://www.banquealimentaire.org/'),
(17, 'Institut Ranstad', 'media/partenaires/crbst_logo_institut_randstad_5B1_5D.gif', 'http://grouperandstad.fr/institut/'),
(18, 'FA Traiteur', 'media/partenaires/crbst_logo-haut_2520traiteur_5B1_5D.jpg', 'http://www.fa-traiteur.com/'),
(19, 'MAIF', 'media/partenaires/crbst_maif-logo.jpg', 'https://www.maif.fr/'),
(20, 'Radio Présence', 'media/partenaires/crbst_Radio_20Pr_C3_A9sence.jpg', 'http://www.radiopresence.com/index.php/'),
(21, 'Revivre Pays d''Oc', 'media/partenaires/crbst_ReVivre.png', 'http://www.revivre-paysdoc.fr/'),
(22, 'SO Phenix', 'media/partenaires/crbst_SO_20Phenix.png', 'http://www.wearephenix.com/so-phenix/'),
(23, 'Studio 82', 'media/partenaires/crbst_Studio_2082.jpg', 'http://studio82.fr/'),
(24, 'Comité d''entreprise Thales', 'media/partenaires/crbst_Tales_5B1_5D.jpg', 'http://www.cethalestoulouse.com/'),
(25, 'TV Sol', 'media/partenaires/crbst_TVSOL1_5B1_5D.jpg', 'http://www.tv-sol.org/'),
(26, 'Fondation Vinci pour la cité', 'media/partenaires/crbst_VINCI.png', 'https://www.fondation-vinci.com/fondation/fr/page/accueil.htm'),
(27, 'VISA', 'media/partenaires/crbst_VISA.jpg', 'http://www.visa-ad.org/visa/'),
(28, 'Simply Market', 'media/partenaires/crbst_logo_simply_market.png', 'http://www.simplymarket.fr/'),
(29, 'Etymon', 'media/partenaires/crbst_logo_etymon.png', 'http://www.etymon.fr/'),
(30, 'Hello Ernest', 'media/partenaires/crbst_hello-ernest.png', 'http://hello-ernest.com/fr/'),
(31, 'Union Photographes Chrétiens', 'media/partenaires/crbst_UPC_2.png', 'https://www.facebook.com/uniondesphotographeschretiens/'),
(32, 'Fondation Bruneau', 'media/partenaires/crbst_logo_bruneau.jpg', 'http://www.fondationdefrance.org/fr/portrait-de-fondation-jm-bruneau?gclid=COeQzv2Zo9ICFVXnGwodU4sAAw'),
(34, 'Lush', 'media/partenaires/crbst_Lush.jpg', 'https://fr.lush.com/'),
(35, 'Fondation SNCF', 'media/partenaires/crbst_fondation_SNCF.jpg', 'https://www.fondation-sncf.org/fr/');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Liste des fichiers PDF consultables sur le site' AUTO_INCREMENT=36 ;

--
-- Contenu de la table 'mt31_pdf'
--

INSERT INTO mt31_pdf (idpdf, titrePDF, nomfichier, dateP, typefichier, page) VALUES
(1, 'Le repas de Nöel, c''est cadeau', 'Le_20repas_20de_20No_C3_ABl_2C_20c_27est_20cadeau_20-_2014_12_2014_20-_20LaDepeche.pdf', '2014-12-14', 'pdf', 'revuepresse'),
(2, 'La Main Tendue : 52 000 repas en 10 ans', 'La_20main_20tendue_20__2052000_20repas_20en_2010_20ans_20-_2027_04_2014_20-_20LaDepeche.pdf', '2014-04-27', 'pdf', 'revuepresse'),
(3, 'Barrière de Paris. Faire ses courses à l''épicerie solidaire', 'Barri_C3_A8re_20de_20Paris__20Faire_20ses_20courses_20_C3_A0_20l_27_C3_A9picerie_20solidaire_20-_202.pdf', '2014-04-26', 'pdf', 'revuepresse'),
(4, 'Les plus pauvres à la cantine de la rue', 'https://blogs.mediapart.fr/friture-mag/blog/060513/les-plus-pauvres-la-cantine-de-la-rue', '2013-05-06', 'article', 'revuepresse'),
(5, 'Les nouveaux exclus mangent à l''écluse', '__www_ladepeche_fr_article_2011_07_17_1129816-les-nouveaux-exclus-mangent-a-l-ecluse.pdf', '2011-07-17', 'pdf', 'revuepresse'),
(6, 'Repas de fête pour les SDF mais pas seulement', '__www_ladepeche_fr_article_2010_12_20_973810-Repas-de-fete-pour-les-SDF-mais-pas-seulement.pdf', '2010-12-20', 'pdf', 'revuepresse'),
(7, 'Pauvreté : les chiffres qui font peur', '__www_ladepeche_fr_article_2010_11_11_945959-Pauvrete-les-chiffres-qui-font-peur.pdf', '2010-11-11', 'pdf', 'revuepresse'),
(8, 'Le repas de Noël des oubliés de la fête', '__www_ladepeche_fr_article_2009_12_21_741190-Le-repas-de-Noel-des-oublies-de-la-fete.pdf', '2009-12-21', 'pdf', 'revuepresse'),
(9, 'Les cantines de la misère sont de plus en plus visitées', '__www_ladepeche_fr_article_2009_10_11_691663-Les-cantines-de-la-misere-sont-de-plus-en-plus-visitees.pdf', '2011-10-11', 'pdf', 'revuepresse'),
(10, 'Galère estivale pour les SDF', '__www_ladepeche_fr_article_2009_07_15_639416-Galere-estivale-pour-les-SDF.pdf', '2009-07-15', 'pdf', 'revuepresse'),
(11, 'Ils se nourissent dans les poubelles des magasins', '__www_ladepeche_fr_article_2009_03_20_576205-Ils-se-nourrissent-dans-les-poubelles-des-magasins.pdf', '2009-03-20', 'pdf', 'revuepresse'),
(12, ' Les SDF ne sont pas les seuls à venir\r\nchercher des repas gratuits', '__www_ladepeche_fr_article_2008_12_23_512092-Minimes-Les-SDF-ne-sont-pas-les-seuls-a-venir-chercher-.pdf', '2008-12-23', 'pdf', 'revuepresse'),
(13, 'Un concert pour des repas', '__www_ladepeche_fr_article_2008_11_21_495851-Pouvourville-Un-concert-pour-des-repas.pdf', '2008-11-21', 'pdf', 'revuepresse'),
(14, 'Liz Mc Comb, le cœur sur la\r\nmain', '__www_ladepeche_fr_article_2008_11_20_495564-La-Halle-aux-Grains-Liz-Mc-Comb-le-c-ur-sur-la-main.pdf', '2008-11-20', 'pdf', 'revuepresse'),
(15, 'Une main tendue vers les exclus', '18_12_2005.jpg', '2005-12-18', 'jpg', 'revuepresse'),
(16, 'Un repas de fête pour les SDF', '16_12_2005.jpg', '2005-12-16', 'jpg', 'revuepresse'),
(17, 'Retraités et condamnés à vivre dans la rue', '17_09_2005.jpg', '2005-09-17', 'jpg', 'revuepresse'),
(18, 'Journée contre l''alcoolisme - Boire : l''illusion du bien-être', '14_06_2005.jpg', '2005-06-14', 'jpg', 'revuepresse'),
(19, 'Le mercredi, un repas est servi aux démunis', '03_05_2005.jpg', '2005-05-03', 'jpg', 'revuepresse'),
(20, 'Tous les dimanches, un repas devant la gare', '05_02_2005.jpg', '2005-02-05', 'jpg', 'revuepresse'),
(21, 'Ils ont du coeur', '03_01_2005.jpg', '2005-01-03', 'jpg', 'revuepresse'),
(22, 'Plus de solidarité encore pour la nouvelle année', '01_01_2005.jpg', '2005-01-01', 'jpg', 'revuepresse'),
(23, 'Repas de fête pour les sans-abris', '22_12_2004.jpg', '2004-12-22', 'jpg', 'revuepresse'),
(24, 'Tous les dimanches, repas chauds servis dans la rue', '27_10_2004.jpg', '2004-10-27', 'jpg', 'revuepresse'),
(25, 'Dimanche soir, une main tendue dans la rue', '23_06_2004.jpg', '2004-06-23', 'jpg', 'revuepresse'),
(26, 'Des repas pour réchauffer les coeurs', '15_06_2004.jpg', '2004-06-15', 'jpg', 'revuepresse'),
(27, 'Rapport d''Activités 2013', 'Rapport_20d_27activit_C3_A9s_202013.pdf', '2013-12-31', 'pdf', 'nosrapports'),
(28, 'Rapport d''Activités 2012', 'Rapport_20d_27Activit_C3_A9s_202012-.pdf', '2012-12-31', 'pdf', 'nosrapports'),
(29, 'Rapport d''Activités 2011', 'Rapport_20d_27Activit_C3_A9s_202011.pdf', '2011-12-31', 'pdf', 'nosrapports'),
(30, 'Rapport d''Activités 2010', 'Rapport_20d_27Activit_C3_A9s_202010.pdf', '2010-12-31', 'pdf', 'nosrapports'),
(31, 'Rapport d''Activités 2009', 'Rapport_20d_27Activit_C3_A9s_202009.pdf', '2009-12-31', 'pdf', 'nosrapports'),
(32, 'Rapport d''Activités 2014', 'Rapport_d_activites_2014.pdf', '2014-12-31', 'pdf', 'nosrapports'),
(33, 'Rapport d''Activités 2015', 'Rapport_d_activites_2015.pdf', '2015-12-31', 'pdf', 'nosrapports'),
(34, 'Bon de soutien', 'BON_20DE_20SOUTIEN_202014.pdf', '2017-02-13', 'pdf', 'faireundon'),
(35, 'Rapport d''activités 2016', 'Rapport_d_activites_2016.pdf', '2016-12-31', 'pdf', 'nosrapports');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Liste des photos de chaque album' AUTO_INCREMENT=159 ;

--
-- Contenu de la table 'mt31_photos'
--

INSERT INTO mt31_photos (idPhoto, cheminPhoto, cheminVignette, idAlbum) VALUES
(1, 'edit/album4/mt31_npt_001.jpg', 'edit/album4/thumbs/tn_mt31_npt_001.jpg', 4),
(2, 'edit/album4/mt31_npt_002.jpg', 'edit/album4/thumbs/tn_mt31_npt_002.jpg', 4),
(3, 'edit/album4/mt31_npt_004.jpg', 'edit/album4/thumbs/tn_mt31_npt_004.jpg', 4),
(4, 'edit/album4/mt31_npt_006.jpg', 'edit/album4/thumbs/tn_mt31_npt_006.jpg', 4),
(5, 'edit/album4/mt31_npt_014.jpg', 'edit/album4/thumbs/tn_mt31_npt_014.jpg', 4),
(6, 'edit/album4/mt31_npt_021.jpg', 'edit/album4/thumbs/tn_mt31_npt_021.jpg', 4),
(7, 'edit/album4/mt31_npt_022.jpg', 'edit/album4/thumbs/tn_mt31_npt_022.jpg', 4),
(8, 'edit/album4/mt31_npt_023.jpg', 'edit/album4/thumbs/tn_mt31_npt_023.jpg', 4),
(9, 'edit/album4/mt31_npt_026.jpg', 'edit/album4/thumbs/tn_mt31_npt_026.jpg', 4),
(10, 'edit/album4/mt31_npt_030.jpg', 'edit/album4/thumbs/tn_mt31_npt_030.jpg', 4),
(11, 'edit/album4/mt31_npt_034.jpg', 'edit/album4/thumbs/tn_mt31_npt_034.jpg', 4),
(12, 'edit/album4/mt31_npt_035.jpg', 'edit/album4/thumbs/tn_mt31_npt_035.jpg', 4),
(13, 'edit/album4/mt31_npt_036.jpg', 'edit/album4/thumbs/tn_mt31_npt_036.jpg', 4),
(14, 'edit/album4/mt31_npt_037.jpg', 'edit/album4/thumbs/tn_mt31_npt_037.jpg', 4),
(15, 'edit/album4/mt31_npt_038.jpg', 'edit/album4/thumbs/tn_mt31_npt_038.jpg', 4),
(16, 'edit/album4/mt31_npt_044.jpg', 'edit/album4/thumbs/tn_mt31_npt_044.jpg', 4),
(17, 'edit/album4/mt31_npt_049.jpg', 'edit/album4/thumbs/tn_mt31_npt_049.jpg', 4),
(18, 'edit/album4/mt31_npt_052.jpg', 'edit/album4/thumbs/tn_mt31_npt_052.jpg', 4),
(19, 'edit/album4/mt31_npt_060.jpg', 'edit/album4/thumbs/tn_mt31_npt_060.jpg', 4),
(20, 'edit/album4/mt31_npt_061.jpg', 'edit/album4/thumbs/tn_mt31_npt_061.jpg', 4),
(21, 'edit/album4/mt31_npt_062.jpg', 'edit/album4/thumbs/tn_mt31_npt_062.jpg', 4),
(22, 'edit/album4/mt31_npt_063.jpg', 'edit/album4/thumbs/tn_mt31_npt_063.jpg', 4),
(23, 'edit/album4/mt31_npt_067.jpg', 'edit/album4/thumbs/tn_mt31_npt_067.jpg', 4),
(24, 'edit/album4/mt31_npt_069.jpg', 'edit/album4/thumbs/tn_mt31_npt_069.jpg', 4),
(25, 'edit/album4/mt31_npt_076.jpg', 'edit/album4/thumbs/tn_mt31_npt_076.jpg', 4),
(26, 'edit/album4/mt31_npt_078.jpg', 'edit/album4/thumbs/tn_mt31_npt_078.jpg', 4),
(27, 'edit/album4/mt31_npt_107.jpg', 'edit/album4/thumbs/tn_mt31_npt_107.jpg', 4),
(28, 'edit/album4/mt31_npt_110.jpg', 'edit/album4/thumbs/tn_mt31_npt_110.jpg', 4),
(29, 'edit/album4/mt31_npt_111.jpg', 'edit/album4/thumbs/tn_mt31_npt_111.jpg', 4),
(30, 'edit/album4/mt31_npt_112.jpg', 'edit/album4/thumbs/tn_mt31_npt_112.jpg', 4),
(31, 'edit/album4/mt31_npt_113.jpg', 'edit/album4/thumbs/tn_mt31_npt_113.jpg', 4),
(32, 'edit/album4/mt31_npt_122.jpg', 'edit/album4/thumbs/tn_mt31_npt_122.jpg', 4),
(33, 'edit/album4/mt31_npt_123.jpg', 'edit/album4/thumbs/tn_mt31_npt_123.jpg', 4),
(34, 'edit/album4/mt31_npt_124.jpg', 'edit/album4/thumbs/tn_mt31_npt_124.jpg', 4),
(35, 'edit/album4/mt31_npt_128.jpg', 'edit/album4/thumbs/tn_mt31_npt_128.jpg', 4),
(36, 'edit/album4/mt31_npt_135.jpg', 'edit/album4/thumbs/tn_mt31_npt_135.jpg', 4),
(37, 'edit/album4/mt31_npt_138.jpg', 'edit/album4/thumbs/tn_mt31_npt_138.jpg', 4),
(38, 'edit/album4/mt31_npt_139.jpg', 'edit/album4/thumbs/tn_mt31_npt_139.jpg', 4),
(39, 'edit/album4/mt31_npt_141.jpg', 'edit/album4/thumbs/tn_mt31_npt_141.jpg', 4),
(40, 'edit/album4/mt31_npt_144.jpg', 'edit/album4/thumbs/tn_mt31_npt_144.jpg', 4),
(41, 'edit/album4/mt31_npt_148.jpg', 'edit/album4/thumbs/tn_mt31_npt_148.jpg', 4),
(42, 'edit/album4/mt31_npt_156.jpg', 'edit/album4/thumbs/tn_mt31_npt_156.jpg', 4),
(43, 'edit/album4/mt31_npt_158.jpg', 'edit/album4/thumbs/tn_mt31_npt_158.jpg', 4),
(44, 'edit/album4/mt31_npt_166.jpg', 'edit/album4/thumbs/tn_mt31_npt_166.jpg', 4),
(45, 'edit/album4/mt31_npt_168.jpg', 'edit/album4/thumbs/tn_mt31_npt_168.jpg', 4),
(46, 'edit/album4/mt31_npt_174.jpg', 'edit/album4/thumbs/tn_mt31_npt_174.jpg', 4),
(47, 'edit/album4/mt31_npt_182.jpg', 'edit/album4/thumbs/tn_mt31_npt_182.jpg', 4),
(48, 'edit/album4/mt31_npt_190.jpg', 'edit/album4/thumbs/tn_mt31_npt_190.jpg', 4),
(49, 'edit/album4/mt31_npt_194.jpg', 'edit/album4/thumbs/tn_mt31_npt_194.jpg', 4),
(50, 'edit/album4/mt31_npt_197.jpg', 'edit/album4/thumbs/tn_mt31_npt_197.jpg', 4),
(51, 'edit/album4/mt31_npt_202.jpg', 'edit/album4/thumbs/tn_mt31_npt_202.jpg', 4),
(52, 'edit/album4/mt31_npt_203.jpg', 'edit/album4/thumbs/tn_mt31_npt_203.jpg', 4),
(53, 'edit/album4/mt31_npt_205.jpg', 'edit/album4/thumbs/tn_mt31_npt_205.jpg', 4),
(54, 'edit/album4/mt31_npt_206.jpg', 'edit/album4/thumbs/tn_mt31_npt_206.jpg', 4),
(55, 'edit/album4/mt31_npt_208.jpg', 'edit/album4/thumbs/tn_mt31_npt_208.jpg', 4),
(56, 'edit/album4/mt31_npt_209.jpg', 'edit/album4/thumbs/tn_mt31_npt_209.jpg', 4),
(57, 'edit/album4/mt31_npt_212.jpg', 'edit/album4/thumbs/tn_mt31_npt_212.jpg', 4),
(58, 'edit/album4/mt31_npt_213.jpg', 'edit/album4/thumbs/tn_mt31_npt_213.jpg', 4),
(59, 'edit/album4/mt31_npt_214.jpg', 'edit/album4/thumbs/tn_mt31_npt_214.jpg', 4),
(60, 'edit/album4/mt31_npt_219.jpg', 'edit/album4/thumbs/tn_mt31_npt_219.jpg', 4),
(61, 'edit/album4/mt31_npt_220.jpg', 'edit/album4/thumbs/tn_mt31_npt_220.jpg', 4),
(62, 'edit/album4/mt31_npt_223.jpg', 'edit/album4/thumbs/tn_mt31_npt_223.jpg', 4),
(63, 'edit/album4/mt31_npt_224.jpg', 'edit/album4/thumbs/tn_mt31_npt_224.jpg', 4),
(64, 'edit/album4/mt31_npt_225.jpg', 'edit/album4/thumbs/tn_mt31_npt_225.jpg', 4),
(65, 'edit/album4/mt31_npt_226.jpg', 'edit/album4/thumbs/tn_mt31_npt_226.jpg', 4),
(101, 'edit/album2/DSC_2675.jpg', 'edit/album2/thumbs/tn_DSC_2675.jpg', 2),
(100, 'edit/album2/DSC_2663.jpg', 'edit/album2/thumbs/tn_DSC_2663.jpg', 2),
(99, 'edit/album2/DSC_2659.jpg', 'edit/album2/thumbs/tn_DSC_2659.jpg', 2),
(98, 'edit/album2/DSC_2657.jpg', 'edit/album2/thumbs/tn_DSC_2657.jpg', 2),
(97, 'edit/album2/DSC_2629.jpg', 'edit/album2/thumbs/tn_DSC_2629.jpg', 2),
(96, 'edit/album2/DSC_2621.jpg', 'edit/album2/thumbs/tn_DSC_2621.jpg', 2),
(95, 'edit/album2/DSC_2611.jpg', 'edit/album2/thumbs/tn_DSC_2611.jpg', 2),
(94, 'edit/album2/DSC_2522.jpg', 'edit/album2/thumbs/tn_DSC_2522.jpg', 2),
(93, 'edit/album2/DSC_2507.jpg', 'edit/album2/thumbs/tn_DSC_2507.jpg', 2),
(92, 'edit/album2/DSC_2503.jpg', 'edit/album2/thumbs/tn_DSC_2503.jpg', 2),
(91, 'edit/album2/DSC_2477.jpg', 'edit/album2/thumbs/tn_DSC_2477.jpg', 2),
(90, 'edit/album2/DSC_2464.jpg', 'edit/album2/thumbs/tn_DSC_2464.jpg', 2),
(89, 'edit/album2/DSC_2405.jpg', 'edit/album2/thumbs/tn_DSC_2405.jpg', 2),
(88, 'edit/album2/DSC_2374.jpg', 'edit/album2/thumbs/tn_DSC_2374.jpg', 2),
(87, 'edit/album2/DSC_2359.jpg', 'edit/album2/thumbs/tn_DSC_2359.jpg', 2),
(86, 'edit/album2/DSC_0573.jpg', 'edit/album2/thumbs/tn_DSC_0573.jpg', 2),
(85, 'edit/album2/DSC_0559.jpg', 'edit/album2/thumbs/tn_DSC_0559.jpg', 2),
(84, 'edit/album2/DSC_0551.jpg', 'edit/album2/thumbs/tn_DSC_0551.jpg', 2),
(102, 'edit/album1/DSC-8.jpg', 'edit/album1/thumbs/tn_DSC-8.jpg', 1),
(103, 'edit/album1/DSC-17.jpg', 'edit/album1/thumbs/tn_DSC-17.jpg', 1),
(104, 'edit/album1/DSC-18.jpg', 'edit/album1/thumbs/tn_DSC-18.jpg', 1),
(105, 'edit/album1/DSC-20.jpg', 'edit/album1/thumbs/tn_DSC-20.jpg', 1),
(106, 'edit/album1/DSC-32.jpg', 'edit/album1/thumbs/tn_DSC-32.jpg', 1),
(107, 'edit/album1/DSC-36.jpg', 'edit/album1/thumbs/tn_DSC-36.jpg', 1),
(108, 'edit/album1/DSC-55.jpg', 'edit/album1/thumbs/tn_DSC-55.jpg', 1),
(109, 'edit/album1/DSC-59.jpg', 'edit/album1/thumbs/tn_DSC-59.jpg', 1),
(110, 'edit/album1/DSC-66.jpg', 'edit/album1/thumbs/tn_DSC-66.jpg', 1),
(111, 'edit/album1/DSC-86.jpg', 'edit/album1/thumbs/tn_DSC-86.jpg', 1),
(112, 'edit/album1/DSC-88.jpg', 'edit/album1/thumbs/tn_DSC-88.jpg', 1),
(113, 'edit/album1/DSC-90.jpg', 'edit/album1/thumbs/tn_DSC-90.jpg', 1),
(114, 'edit/album1/DSC-95.jpg', 'edit/album1/thumbs/tn_DSC-95.jpg', 1),
(115, 'edit/album1/DSC-97.jpg', 'edit/album1/thumbs/tn_DSC-97.jpg', 1),
(116, 'edit/album1/DSC-102.jpg', 'edit/album1/thumbs/tn_DSC-102.jpg', 1),
(117, 'edit/album1/DSC-108.jpg', 'edit/album1/thumbs/tn_DSC-108.jpg', 1),
(118, 'edit/album1/DSC-115.jpg', 'edit/album1/thumbs/tn_DSC-115.jpg', 1),
(119, 'edit/album1/DSC-120.jpg', 'edit/album1/thumbs/tn_DSC-120.jpg', 1),
(120, 'edit/album1/DSC-122.jpg', 'edit/album1/thumbs/tn_DSC-122.jpg', 1),
(121, 'edit/album1/DSC-123.jpg', 'edit/album1/thumbs/tn_DSC-123.jpg', 1),
(122, 'edit/album1/DSC-129.jpg', 'edit/album1/thumbs/tn_DSC-129.jpg', 1),
(123, 'edit/album1/DSC-134.jpg', 'edit/album1/thumbs/tn_DSC-134.jpg', 1),
(124, 'edit/album1/DSC-149.jpg', 'edit/album1/thumbs/tn_DSC-149.jpg', 1),
(125, 'edit/album1/DSC-153.jpg', 'edit/album1/thumbs/tn_DSC-153.jpg', 1),
(126, 'edit/album1/DSC-155.jpg', 'edit/album1/thumbs/tn_DSC-155.jpg', 1),
(127, 'edit/album1/DSC-157.jpg', 'edit/album1/thumbs/tn_DSC-157.jpg', 1),
(128, 'edit/album1/DSC-159.jpg', 'edit/album1/thumbs/tn_DSC-159.jpg', 1),
(129, 'edit/album1/DSC-162.jpg', 'edit/album1/thumbs/tn_DSC-162.jpg', 1),
(130, 'edit/album1/DSC-178.jpg', 'edit/album1/thumbs/tn_DSC-178.jpg', 1),
(131, 'edit/album1/DSC-179.jpg', 'edit/album1/thumbs/tn_DSC-179.jpg', 1),
(132, 'edit/album1/DSC-183.jpg', 'edit/album1/thumbs/tn_DSC-183.jpg', 1),
(133, 'edit/album1/DSC-192.jpg', 'edit/album1/thumbs/tn_DSC-192.jpg', 1),
(134, 'edit/album1/DSC-195.jpg', 'edit/album1/thumbs/tn_DSC-195.jpg', 1),
(135, 'edit/album1/DSC-196.jpg', 'edit/album1/thumbs/tn_DSC-196.jpg', 1),
(136, 'edit/album1/DSC-198.jpg', 'edit/album1/thumbs/tn_DSC-198.jpg', 1),
(137, 'edit/album3/mt31_008.jpg', 'edit/album3/thumbs/tn_mt31_008.jpg', 3),
(138, 'edit/album3/mt31_001.jpg', 'edit/album3/thumbs/tn_mt31_001.jpg', 3),
(139, 'edit/album3/mt31_002.jpg', 'edit/album3/thumbs/tn_mt31_002.jpg', 3),
(140, 'edit/album3/mt31_003.jpg', 'edit/album3/thumbs/tn_mt31_003.jpg', 3),
(141, 'edit/album3/mt31_004.jpg', 'edit/album3/thumbs/tn_mt31_004.jpg', 3),
(142, 'edit/album3/mt31_005.jpg', 'edit/album3/thumbs/tn_mt31_005.jpg', 3),
(143, 'edit/album3/mt31_006.jpg', 'edit/album3/thumbs/tn_mt31_006.jpg', 3),
(144, 'edit/album3/mt31_007.jpg', 'edit/album3/thumbs/tn_mt31_007.jpg', 3),
(145, 'edit/album3/mt31_009.jpg', 'edit/album3/thumbs/tn_mt31_009.jpg', 3),
(146, 'edit/album3/mt31_010.jpg', 'edit/album3/thumbs/tn_mt31_010.jpg', 3),
(147, 'edit/album3/mt31_011.jpg', 'edit/album3/thumbs/tn_mt31_011.jpg', 3),
(148, 'edit/album3/mt31_012.jpg', 'edit/album3/thumbs/tn_mt31_012.jpg', 3),
(149, 'edit/album3/mt31_013.jpg', 'edit/album3/thumbs/tn_mt31_013.jpg', 3),
(150, 'edit/album3/mt31_014.jpg', 'edit/album3/thumbs/tn_mt31_014.jpg', 3),
(151, 'edit/album3/mt31_015.jpg', 'edit/album3/thumbs/tn_mt31_015.jpg', 3),
(152, 'edit/album5/34339930_10212679339240802_63013702877577216_n.jpg', 'edit/album5/34339930_10212679339240802_63013702877577216_n.jpg', 5),
(153, 'edit/album5/36227211_217302009082238_4465180943044313088_n.jpg', 'edit/album5/36227211_217302009082238_4465180943044313088_n.jpg', 5),
(154, 'edit/album6/01-IMG_6919.jpg', 'edit/album6/01-IMG_6919.jpg', 6),
(155, 'edit/album6/08-IMG_6926.jpg', 'edit/album6/08-IMG_6926.jpg', 6),
(156, 'edit/album6/10-IMG_6929.jpg', 'edit/album6/10-IMG_6929.jpg', 6),
(157, 'edit/album6/11-IMG_6932.jpg', 'edit/album6/11-IMG_6932.jpg', 6),
(158, 'edit/album6/12-IMG_6938.jpg', 'edit/album6/12-IMG_6938.jpg', 6);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Blocks de présentation' AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mt31_presentation'
--

INSERT INTO mt31_presentation (idPresentation, titrePresentation, textePresentation, imagePresentation) VALUES
(1, 'Le mot du président', 'Aujourd’hui en France, deux millions de personnes vivent avec au maximum 651 euros par mois, soit en situation de grande pauvreté Pour ces personnes, il est quasiment impossible notamment de se loger sans compter sur l’aide d’autrui, de parents ou d’amis.\r\n1,8 million de personnes déclarent ne pas avoir pris un repas complet au moins une journée au cours des deux dernières semaines. Plus de 3 millions de personnes bénéficient d’une aide alimentaire distribuée par les associations caritatives.\r\n \r\nPrès de 700 000 personnes n’ont pas de domicile personnel, et plus de 400 000 sont hébergées de façon contrainte chez des tiers. Selon l’Insee, Le nombre de personnes sans domicile recensées est passé de 86 000 SDF en 2001 à 141 500 dont 30 000 enfants. Plus de 10 000 personnes dorment dans la rue (données 2012).\r\n \r\nDans un récent rapport sur l’Etat du mal-logement en France, la Fondation Abbé Pierre rappelle que tous les seniors ne sont pas riches et bien portants ; et surtout, que 600.000 personnes âgées vivent actuellement en France sous le seuil de pauvreté et que le mal-logement des aînés reste « un phénomène sous-estimé ».\r\n \r\nPour la Caisse d’Allocations Familiales, la pauvreté a augmenté dans la Haute Garonne. Ses statistiques font état d’une forte hausse du nombre des allocataires des minimas sociaux. Le nombre de haut garonnais qui touchent le Revenu Minimum d’Activité (RSA) a explosé en 2013 pour bondir de 40 000 à 44 000 allocataires soit une hausse de 9,50% par rapport à l’année précédente. Une conséquence directe de la crise économique qui frappe la France depuis plusieurs années.\r\n \r\nPlus de 424000 personnes vivant sous le seuil de pauvreté en Midi –Pyrénées. Soit 1 habitant sur 7.\r\n \r\nIl y a plus de 8600 SDF sur Toulouse. Les refus par manque de places enregistrés au 115 représentent ainsi en moyenne plus de 90% des demandes, et parfois 95%. Cela veut dire que chaque jour, 9 personnes sur 10 qui appellent le 115 restent sans réponse de mise à l’abri.  Ce sont ainsi en moyenne 250 personnes laissées sans solution d’hébergement. Et encore le 115 ne peut décrocher que 10 à 15% des appels composés. De ce fait, beaucoup de personnes sans abri renoncent à appeler.\r\n \r\nFace à cette avalanche de chiffres, et à ces situations inacceptables, les bénévoles de l’association Main Tendue apportent leur contribution pour soulager la souffrance de cette « sous-France » frappés par la précarité, la pauvreté ou l’exclusion. Forts de leurs valeurs de solidarité ils se mobilisent avec courage, empressement et persévérance pour répondre à des demandes de plus en plus importantes venant des services sociaux ou directement des personnes « en galère ». Dans un esprit d’ouverture aux autres et dans le respect des libertés individuelles, ils servent avec une grande disponibilité, une oreille qui sait écouter, un cœur qui sait comprendre, tous en respectant la vie privée de chacun. Rien ne serait possible sans cette équipe passionnée. Qu''ils en soient tous remerciés encore et encore !\r\n \r\nEn visitant notre site, vous trouverez sur les différentes pages, des informations, des liens, des contacts mais vous avez aussi la possibilité de nous soutenir si notre cause vous interpelle.\r\n \r\nBonne visite.', 'media/crbst_pr_C3_A9sident.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Médias vidéo de Main Tendue' AUTO_INCREMENT=8 ;

--
-- Contenu de la table 'mt31_video'
--

INSERT INTO mt31_video (idVideo, titreVideo, cheminVideo, descriptionVideo, miniatureVideo, estExterne) VALUES
(1, 'Reportage France Télévision 19|20 Toulouse', 'edit/video/NVEExport_0002', NULL, 'edit/video/thumbs/NVEExport_0002.png', NULL),
(2, 'Main Tendue 31 se bat contre la précarité, Christian SOULIE', 'http://www.zebuzztv.com/?buzz=ze-mag&item=1399', 'Main Tendue 31 se bat contre la précarité, Christian SOULIE. Des êtres humains accueillent d''autres êtres humains. Dimanche soir, 18h30. La gare de Toulouse Matabiau s''agite. Le camion de l''association " Main Tendue 31 " offre un repas chaud et complet. Main Tendue 31 est née en 2003, de la volonté d''un groupe d''individus d''aller au devant des personnes subissant une situation d''exclusion sur la ville de Toulouse : des jeunes que l''on n''ose regarder, avec leurs chiens et leur coiffure hirsute, auxquelles s''ajoutent maintenant des personnes âgées de plus en plus nombreuses, des familles, et même des gens qui travaillent et ne s''en sortent pas. La pauvreté ne cesse de s''accroître en France. Depuis le début de son activité, l''association a distribué des repas à des centaines de personnes par semaine. Et Main Tendue 31 ne s''arrête pas là. Depuis 2007, l''association distribue des colis alimentaires, et en 2011, elle a ouvert une épicerie solidaire, où notamment, en plus des produits de base et des produits d''hygiène, les familles peuvent acheter des produits de marque entre 10 % et 30 du prix normal. " Ce sont des produits plaisirs, pas essentiels pour la survie, mais nécessaires pour se sentir comme tout le monde ", précise le président. Au-delà d''une simple aide alimentaire, cela permet aussi de conserver le lien social indispensable. Christian Soulié mène son action en s''appuyant sur une équipe de 52 bénévoles autour de ce qui constitue la clef de voûte de son action : l''accueil inconditionnel et sa présence à l''autre : l''amour du prochain en paroles et en actes.', 'edit/video/thumbs/zebuzztv.png', 1),
(3, 'Reportage TLT', 'edit/video/Solidarite_20__20Distribution_20de_20repas_20dans_20la_20rue_20de_20Toulouse', NULL, 'edit/video/thumbs/reportagetlt.png', NULL),
(4, 'Journal Télévisé FR3', 'edit/video/jt_20fr3', NULL, 'edit/video/thumbs/jt_20fr3.png', NULL),
(5, 'Repas de Noël 2007', 'edit/video/pps_20noel', NULL, 'edit/video/thumbs/repasnoel2007.png', NULL),
(6, 'Reportage TV SOL', 'edit/video/ReportageTVSOL3', NULL, 'edit/video/thumbs/ReportageTVSOL3.png', NULL),
(7, 'Concert de Liz McComb à la Halle Aux Grains', 'edit/video/Musique_20__20LIZ_20MC_20COMB_20fait_20chanter_20Toulouse', 'Un concert au profil de Main Tendue', 'edit/video/thumbs/Musique_20__20LIZ_20MC_20COMB_20fait_20chanter_20Toulouse.png', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_acajoom_lists'
--

INSERT INTO mtd_acajoom_lists (id, list_name, list_desc, list_type, sendername, senderemail, bounceadres, layout, template, subscribemessage, unsubscribemessage, unsubscribesend, auto_add, user_choose, cat_id, delay_min, delay_max, follow_up, html, hidden, published, createdate, acc_level, acc_id, notification, owner, footer, notify_id, next_date, start_date, params) VALUES
(1, 'Newsletters MainTendue', '', 1, 'Main Tendue', 'maintendue31@hotmail.com', 'maintendue31@hotmail.com', '<div>\r\n<!-- /// gutter  -->\r\n<!--  gutter /// --> <!-- /// content cell  -->\r\n</div>\r\n<p>Informations d''abonnement:<br /> [SUBSCRIPTIONS]</p>\r\n<!-- /// footer area with contact info and opt-out link  -->', 0, '', 'Ceci un courriel de confirmation de d&eacute;sabonnement &agrave; notre liste. Nous sommes d&eacute;sol&eacute;s que vous ayez d&eacute;cid&eacute; de vous d&eacute;sabonner .Si vous d&eacute;cidez de vous r&eacute;-inscrire vous pouvez le faire sur notre site. Pour toutes questions veuillez contacter le webmaster.', 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, '2009-02-16 15:49:30', 25, 29, 0, 62, 1, 0, 0, '0000-00-00', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table 'mtd_acajoom_mailings'
--

INSERT INTO mtd_acajoom_mailings (id, list_id, list_type, issue_nb, `subject`, fromname, fromemail, frombounce, htmlcontent, textonly, attachments, images, send_date, delay, visible, html, published, createdate, acc_level, author_id, params) VALUES
(6, 1, 1, 1, 'testavril', 'Main Tendue', 'maintendue31@hotmail.com', 'maintendue31@hotmail.com', '<div><!-- /// gutter  --> <!--  gutter /// --> <!-- /// content cell  -->Ceci est un test<br />\r\nInformations d''abonnement:<br />\r\n[SUBSCRIPTIONS]</div>\r\n<!-- /// footer area with contact info and opt-out link  -->', '', '', '', '2009-04-19 15:12:44', 1440, 1, 1, 1, '2009-04-19 15:12:43', 29, 62, ''),
(7, 1, 1, 2, 'testavril2', 'Main Tendue', 'maintendue31@hotmail.com', 'maintendue31@hotmail.com', '<div><!-- /// gutter  --> <!--  gutter /// --> <!-- /// content cell  --></div>\r\n<p>Informations d''abonnement:<br />\r\n[SUBSCRIPTIONS]</p>\r\n<!-- /// footer area with contact info and opt-out link  -->', '', '', '', '2009-04-19 15:21:22', 1440, 1, 1, 1, '2009-04-19 15:21:21', 29, 62, ''),
(8, 1, 1, 3, 'testavril3', 'Main Tendue', 'maintendue31@hotmail.com', 'maintendue31@hotmail.com', '<div><!-- /// gutter  --> <!--  gutter /// --> <!-- /// content cell  --></div>\r\n<p>Informations d''abonnement:<br />\r\n[SUBSCRIPTIONS]</p>\r\n<!-- /// footer area with contact info and opt-out link  -->', '', '', '', '2009-04-19 15:34:38', 1440, 1, 1, 1, '2009-04-19 15:34:37', 29, 62, ''),
(9, 1, 1, 4, 'testavril4', 'Main Tendue', 'maintendue31@hotmail.com', 'e.pecatte@free.fr', '<div><!-- /// gutter  --> <!--  gutter /// --> <!-- /// content cell  --></div>\r\n<p>Informations d''abonnement:<br />\r\n[SUBSCRIPTIONS]</p>\r\n<!-- /// footer area with contact info and opt-out link  -->', '', '', '', '2009-04-19 15:42:44', 1440, 1, 1, 1, '2009-04-19 15:42:43', 29, 62, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table 'mtd_acajoom_queue'
--

INSERT INTO mtd_acajoom_queue (qid, `type`, subscriber_id, list_id, mailing_id, issue_nb, send_date, `suspend`, delay, acc_level, published, params) VALUES
(1, 1, 2, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(4, 1, 3, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(3, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(5, 1, 4, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(6, 1, 5, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(7, 1, 6, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(8, 1, 8, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(9, 1, 9, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(10, 1, 10, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(11, 1, 11, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(12, 1, 12, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(13, 1, 13, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(14, 1, 14, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, ''),
(15, 1, 15, 1, 0, 0, '0000-00-00 00:00:00', 0, 0, 29, 0, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_acajoom_stats_details'
--

INSERT INTO mtd_acajoom_stats_details (mailing_id, subscriber_id, sentdate, html, `read`) VALUES
(8, 3, '0000-00-00 00:00:00', 1, 1),
(9, 3, '2009-04-19 15:42:44', 1, 0),
(7, 2, '0000-00-00 00:00:00', 1, 1),
(6, 2, '0000-00-00 00:00:00', 1, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_acajoom_stats_global'
--

INSERT INTO mtd_acajoom_stats_global (mailing_id, sentdate, html_sent, text_sent, html_read) VALUES
(8, '2009-04-19 15:41:12', 3, 0, 3),
(9, '2009-04-19 15:42:44', 3, 0, 0),
(7, '2009-04-19 15:23:05', 2, 0, 1),
(6, '2009-04-19 15:23:13', 2, 0, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table 'mtd_acajoom_subscribers'
--

INSERT INTO mtd_acajoom_subscribers (id, user_id, `name`, email, receive_html, confirmed, blacklist, timezone, language_iso, subscribe_date, params) VALUES
(1, 62, 'Administrator', 'maintendue31@hotmail.com', 1, 1, 0, '00:00:00', 'eng', '2009-01-15 12:47:32', ''),
(2, 0, 'doumenc', 'elisabeth.pecatte@free.fr', 1, 1, 0, '00:00:00', 'eng', '2009-02-17 14:55:24', ''),
(3, 0, 'pecatte', 'jeanmarie.pecatte@free.fr', 1, 1, 0, '00:00:00', 'eng', '2009-02-17 14:58:46', ''),
(4, 0, 'Dubreuil Claire', 'clairedubreuil@wanadoo.fr', 1, 1, 0, '00:00:00', 'eng', '2009-10-27 11:39:46', ''),
(5, 0, 'Chiner yohan', 'yohan.chiner@gmail.com', 1, 1, 0, '00:00:00', 'eng', '2009-10-28 10:41:15', ''),
(6, 0, 'Gilles HARDOUIN', 'chezgilles0945@orange.fr', 1, 1, 0, '00:00:00', 'eng', '2009-11-17 09:26:28', ''),
(7, 65, 'DAVID', 'davidkarineboot@orange.fr', 1, 1, 0, '00:00:00', 'eng', '2010-03-16 21:17:15', ''),
(8, 0, 'Anna Preteur', 'anna.preteur@yahoo.fr', 1, 1, 0, '00:00:00', 'eng', '2010-11-07 14:56:51', ''),
(9, 0, 'Laurent', 'laurentfremond@yahoo.com', 1, 1, 0, '00:00:00', 'eng', '2010-11-25 18:28:00', ''),
(10, 0, 'lory', 'brigittelory@wanadoo.fr', 1, 1, 0, '00:00:00', 'eng', '2010-12-20 16:00:48', ''),
(11, 0, 'zlaakcgrst', 'kcgrnb@nsqohw.com', 1, 1, 0, '00:00:00', 'eng', '2011-02-09 05:21:34', ''),
(12, 0, 'Luquet', 'luquetnathalie@yahoo.fr', 1, 1, 0, '00:00:00', 'eng', '2011-02-09 22:31:56', ''),
(13, 0, 'martchantry@hotmail.f', 'martchantry@hotmail.fr', 1, 1, 0, '00:00:00', 'eng', '2011-07-01 12:13:05', ''),
(14, 0, 'Stobéo-Grèze Mathilde', 'mathilde.gsr@hotmail.fr', 1, 1, 0, '00:00:00', 'eng', '2011-11-06 22:41:19', ''),
(15, 0, 'Simo', 'rivelino_armani@hotmail.com', 1, 1, 0, '00:00:00', 'eng', '2012-01-14 14:28:13', '');

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_acajoom_xonfig'
--

CREATE TABLE IF NOT EXISTS mtd_acajoom_xonfig (
  akey varchar(32) NOT NULL DEFAULT '',
  `text` varchar(254) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (akey)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_acajoom_xonfig'
--

INSERT INTO mtd_acajoom_xonfig (akey, `text`, `value`) VALUES
('component', 'Acajoom', 0),
('type', 'News', 0),
('version', '3.1.0', 0),
('emailmethod', 'mail', 0),
('sendmail_from', 'maintendue31@hotmail.com', 0),
('sendmail_name', 'Main Tendue', 0),
('sendmail_path', '/usr/sbin/sendmail', 0),
('smtp_host', 'localhost', 0),
('smtp_auth_required', '0', 0),
('smtp_username', '', 0),
('smtp_password', '', 0),
('use_embedded_images', '1', 0),
('confirm_return', 'maintendue31@hotmail.com', 0),
('upload_url', '/components/com_acajoom/upload', 0),
('enable_statistics', '1', 0),
('statistics_per_subscriber', '1', 0),
('send_data', '1', 0),
('allow_unregistered', '1', 0),
('require_confirmation', '0', 0),
('show_login', '1', 0),
('show_logout', '1', 0),
('send_unsubcribe', '1', 0),
('confirm_fromname', 'Main Tendue', 0),
('confirm_fromemail', 'maintendue31@hotmail.com', 0),
('confirm_html', '0', 0),
('time_zone', '0', 0),
('show_archive', '0', 0),
('pause_time', '15', 0),
('emails_between_pauses', '65', 0),
('wait_for_user', '0', 0),
('script_timeout', '60', 0),
('display_trace', '1', 0),
('send_log', '1', 0),
('send_auto_log', '0', 0),
('send_log_simple', '0', 0),
('send_log_closed', '1', 0),
('save_log', '1', 0),
('send_email', '1', 0),
('save_log_simple', '0', 0),
('save_log_file', '/administrator/components/com_acajoom/com_acajoom.log', 0),
('send_log_address', '@ijoobi.com', 0),
('option', 'com_sdonkey', 0),
('send_log_name', 'Acajoom Mailing Report', 0),
('homesite', 'http://www.acajoom.com', 0),
('report_site', 'http://www.acajoom.com', 0),
('integration', '0', 0),
('cb_plugin', '1', 0),
('cb_listIds', '0', 0),
('cb_intro', '', 0),
('cb_showname', '1', 0),
('cb_checkLists', '1', 0),
('cb_showHTML', '1', 0),
('cb_defaultHTML', '1', 0),
('cb_integration', '0', 0),
('cb_pluginInstalled', '0', 0),
('show_footer', '1', 0),
('show_signature', '1', 0),
('update_url', 'http://www.ijoobi.com/update/', 0),
('date_update', '2009-04-19 15:12:43', 0),
('update_message', '', 0),
('show_guide', '0', 0),
('news1', '0', 0),
('news2', '0', 0),
('news3', '0', 0),
('cron_setup', '0', 0),
('queuedate', '', 0),
('update_avail', '0', 0),
('show_tips', '0', 0),
('show_lists', '0', 0),
('use_sef', '0', 0),
('listHTMLeditor', '1', 0),
('mod_pub', '1', 0),
('firstmailing', '1', 0),
('nblist', '18', 0),
('admin_debug', '0', 0),
('send_error', '1', 0),
('report_error', '1', 0),
('listname0', '', 0),
('listnames0', 'Tous les envoie', 0),
('listype0', '1', 0),
('listshow0', '1', 0),
('classes0', '', 0),
('listlogo0', 'addedit.png', 0),
('totallist0', '', 1),
('act_totallist0', '', 1),
('totalmailing0', '', 9),
('totalmailingsent0', '', 23),
('act_totalmailing0', '', 4),
('totalsubcribers0', '', 15),
('act_totalsubcribers0', '', 15),
('donkey0', '', 0),
('listname1', '_ACA_NEWSLETTER', 0),
('listnames1', '_ACA_MENU_NEWSLETTERS', 0),
('listype1', '1', 0),
('listshow1', '1', 0),
('classes1', 'newsletter', 0),
('listlogo1', 'inbox.png', 0),
('totallist1', '', 1),
('act_totallist1', '', 1),
('totalmailing1', '', 9),
('totalmailingsent1', '', 23),
('act_totalmailing1', '', 4),
('totalsubcribers1', '', 0),
('act_totalsubcribers1', '', 0),
('donkey1', '', 0),
('listname2', '', 0),
('listnames2', '', 0),
('listype2', '', 0),
('listshow2', '', 0),
('classes2', 'autoresponder', 0),
('listlogo2', '', 0),
('totallist2', '', 0),
('act_totallist2', '', 0),
('totalmailing2', '', 0),
('totalmailingsent2', '', 0),
('act_totalmailing2', '', 0),
('totalsubcribers2', '', 0),
('act_totalsubcribers2', '', 0),
('donkey2', '', 0),
('listname3', '', 0),
('listnames3', '', 0),
('listype3', '', 0),
('listshow3', '', 0),
('classes3', '', 0),
('listlogo3', '', 0),
('totallist3', '', 0),
('act_totallist3', '', 0),
('totalmailing3', '', 0),
('totalmailingsent3', '', 0),
('act_totalmailing3', '', 0),
('totalsubcribers3', '', 0),
('act_totalsubcribers3', '', 0),
('donkey3', '', 0),
('listname4', '', 0),
('listnames4', '', 0),
('listype4', '', 0),
('listshow4', '', 0),
('classes4', '', 0),
('listlogo4', '', 0),
('totallist4', '', 0),
('act_totallist4', '', 0),
('totalmailing4', '', 0),
('totalmailingsent4', '', 0),
('act_totalmailing4', '', 0),
('totalsubcribers4', '', 0),
('act_totalsubcribers4', '', 0),
('donkey4', '', 0),
('listname5', '', 0),
('listnames5', '', 0),
('listype5', '', 0),
('listshow5', '', 0),
('classes5', '', 0),
('listlogo5', '', 0),
('totallist5', '', 0),
('act_totallist5', '', 0),
('totalmailing5', '', 0),
('totalmailingsent5', '', 0),
('act_totalmailing5', '', 0),
('totalsubcribers5', '', 0),
('act_totalsubcribers5', '', 0),
('donkey5', '', 0),
('listname6', '', 0),
('listnames6', '', 0),
('listype6', '', 0),
('listshow6', '', 0),
('classes6', '', 0),
('listlogo6', '', 0),
('totallist6', '', 0),
('act_totallist6', '', 0),
('totalmailing6', '', 0),
('totalmailingsent6', '', 0),
('act_totalmailing6', '', 0),
('totalsubcribers6', '', 0),
('act_totalsubcribers6', '', 0),
('donkey6', '', 0),
('listname7', '', 0),
('listnames7', '', 0),
('listype7', '', 0),
('listshow7', '', 0),
('classes7', 'autonews', 0),
('listlogo7', '', 0),
('totallist7', '', 0),
('act_totallist7', '', 0),
('totalmailing7', '', 0),
('totalmailingsent7', '', 0),
('act_totalmailing7', '', 0),
('totalsubcribers7', '', 0),
('act_totalsubcribers7', '', 0),
('donkey7', '', 0),
('listname8', '', 0),
('listnames8', '', 0),
('listype8', '', 0),
('listshow8', '', 0),
('classes8', '', 0),
('listlogo8', '', 0),
('totallist8', '', 0),
('act_totallist8', '', 0),
('totalmailing8', '', 0),
('totalmailingsent8', '', 0),
('act_totalmailing8', '', 0),
('totalsubcribers8', '', 0),
('act_totalsubcribers8', '', 0),
('donkey8', '', 0),
('listname9', '', 0),
('listnames9', '', 0),
('listype9', '', 0),
('listshow9', '', 0),
('classes9', '', 0),
('listlogo9', '', 0),
('totallist9', '', 0),
('act_totallist9', '', 0),
('totalmailing9', '', 0),
('totalmailingsent9', '', 0),
('act_totalmailing9', '', 0),
('totalsubcribers9', '', 0),
('act_totalsubcribers9', '', 0),
('donkey9', '', 0),
('listname10', '', 0),
('listnames10', '', 0),
('listype10', '', 0),
('listshow10', '', 0),
('classes10', '', 0),
('listlogo10', '', 0),
('totallist10', '', 0),
('act_totallist10', '', 0),
('totalmailing10', '', 0),
('totalmailingsent10', '', 0),
('act_totalmailing10', '', 0),
('totalsubcribers10', '', 0),
('act_totalsubcribers10', '', 0),
('donkey10', '', 0),
('listname11', '', 0),
('listnames11', '', 0),
('listype11', '', 0),
('listshow11', '', 0),
('classes11', '', 0),
('listlogo11', '', 0),
('totallist11', '', 0),
('act_totallist11', '', 0),
('totalmailing11', '', 0),
('totalmailingsent11', '', 0),
('act_totalmailing11', '', 0),
('totalsubcribers11', '', 0),
('act_totalsubcribers11', '', 0),
('donkey11', '', 0),
('listname12', '', 0),
('listnames12', '', 0),
('listype12', '', 0),
('listshow12', '', 0),
('classes12', '', 0),
('listlogo12', '', 0),
('totallist12', '', 0),
('act_totallist12', '', 0),
('totalmailing12', '', 0),
('totalmailingsent12', '', 0),
('act_totalmailing12', '', 0),
('totalsubcribers12', '', 0),
('act_totalsubcribers12', '', 0),
('donkey12', '', 0),
('listname13', '', 0),
('listnames13', '', 0),
('listype13', '', 0),
('listshow13', '', 0),
('classes13', '', 0),
('listlogo13', '', 0),
('totallist13', '', 0),
('act_totallist13', '', 0),
('totalmailing13', '', 0),
('totalmailingsent13', '', 0),
('act_totalmailing13', '', 0),
('totalsubcribers13', '', 0),
('act_totalsubcribers13', '', 0),
('donkey13', '', 0),
('listname14', '', 0),
('listnames14', '', 0),
('listype14', '', 0),
('listshow14', '', 0),
('classes14', '', 0),
('listlogo14', '', 0),
('totallist14', '', 0),
('act_totallist14', '', 0),
('totalmailing14', '', 0),
('totalmailingsent14', '', 0),
('act_totalmailing14', '', 0),
('totalsubcribers14', '', 0),
('act_totalsubcribers14', '', 0),
('donkey14', '', 0),
('listname15', '', 0),
('listnames15', '', 0),
('listype15', '', 0),
('listshow15', '', 0),
('classes15', '', 0),
('listlogo15', '', 0),
('totallist15', '', 0),
('act_totallist15', '', 0),
('totalmailing15', '', 0),
('totalmailingsent15', '', 0),
('act_totalmailing15', '', 0),
('totalsubcribers15', '', 0),
('act_totalsubcribers15', '', 0),
('donkey15', '', 0),
('listname16', '', 0),
('listnames16', '', 0),
('listype16', '', 0),
('listshow16', '', 0),
('classes16', '', 0),
('listlogo16', '', 0),
('totallist16', '', 0),
('act_totallist16', '', 0),
('totalmailing16', '', 0),
('totalmailingsent16', '', 0),
('act_totalmailing16', '', 0),
('totalsubcribers16', '', 0),
('act_totalsubcribers16', '', 0),
('donkey16', '', 0),
('listname17', '', 0),
('listnames17', '', 0),
('listype17', '', 0),
('listshow17', '', 0),
('classes17', '', 0),
('listlogo17', '', 0),
('totallist17', '', 0),
('act_totallist17', '', 0),
('totalmailing17', '', 0),
('totalmailingsent17', '', 0),
('act_totalmailing17', '', 0),
('totalsubcribers17', '', 0),
('act_totalsubcribers17', '', 0),
('donkey17', '', 0),
('aca_wait_for_user', '0', 0),
('activelist', '1', 0),
('update_notification', '0', 0),
('last_sub_update', '1277413049', 0),
('level', '1', 0),
('show_author', '0', 0),
('addEmailRedLink', '1', 0),
('show_jcalpro', '0', 0),
('redirectconfirm', '', 0),
('itemidAca', '99', 0),
('cron_max_freq', '10', 0),
('cron_max_emails', '60', 0),
('last_cron', '', 0),
('next_autonews', '', 0),
('license', '', 0),
('token', '', 0),
('maintenance', '', 0),
('frequency', '0', 0),
('nb_days', '7', 0),
('date_type', '1', 0),
('arv_cat', '', 0),
('arv_sec', '', 0),
('maintenance_clear', '24', 0),
('maintenance_date', '', 0),
('mail_format', '1', 0),
('showtag', '0', 0),
('disabletooltip', '0', 0),
('minisendmail', '0', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table 'mtd_banner'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_bannerclient'
--


-- --------------------------------------------------------

--
-- Structure de la table 'mtd_bannertrack'
--

CREATE TABLE IF NOT EXISTS mtd_bannertrack (
  track_date date NOT NULL DEFAULT '0000-00-00',
  track_type int(10) unsigned NOT NULL DEFAULT '0',
  banner_id int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_bannertrack'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'mtd_candpbuttons'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Contenu de la table 'mtd_categories'
--

INSERT INTO mtd_categories (id, parent_id, title, `name`, alias, image, section, image_position, description, published, checked_out, checked_out_time, editor, ordering, access, count, params) VALUES
(40, 0, 'Archive Evénements', '', 'archive-evenements', '', '5', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(39, 0, 'Evénements', '', 'evenements', '', '6', 'left', '<br type="_moz" />', 1, 65, '2010-03-16 21:47:22', NULL, 1, 0, 0, ''),
(38, 0, 'News', '', 'news', '', '5', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(37, 0, 'Revue de Presse', '', 'revue-de-presse', '', '5', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(36, 0, 'Infos', '', 'infos', '', '5', 'left', '<br type="_moz" />', 1, 62, '2010-01-04 21:10:24', NULL, 2, 0, 0, ''),
(35, 0, 'Contact Asso', '', 'contact-asso', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(34, 0, 'Presentation', '', 'presentation', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used to store all newsletters for Communicator.' AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_communicator'
--

INSERT INTO mtd_communicator (id, `subject`, headers, message, html_message, published, checked_out, checked_out_time, publish_up, publish_down, created, send, hits, access) VALUES
(1, 'Sample Newsletter', '', 'Hello [NAME],\r\n\r\nthis is a nice sample Newsletter *Text Edition* from your guys at the newsletter team!.\r\n\r\nAfter having set up this newsletter component you can easily delete or modify this Newsletter.\r\n\r\nNow please enjoy Communicator!\r\n\r\nRegards, XXX\r\n', '<p style=\\"font-family: verdana,arial,helvetica,sans-serif;\\">Hello [NAME],<img src=\\"administrator/components/com_communicator/communicator.png\\" vspace=\\"5\\" align=\\"right\\" border=\\"0\\" hspace=\\"3\\" /></p>\r\n<p style=\\"font-family: verdana,arial,helvetica,sans-serif;\\">this is a nice sample Newsletter <span style=\\"font-weight: bold;\\">with Graphics</span> from your guys at the newsletter team!.</p>\r\n<p style=\\"font-weight: bold;\\"> </p>\r\n<p style=\\"font-family: verdana,arial,helvetica,sans-serif;\\">After having set up this newsletter component you can easily delete or modify this Newsletter.</p>\r\n<p style=\\"font-weight: bold;\\"><span style=\\"font-weight: normal; font-family: verdana,arial,helvetica,sans-serif;\\">Now please enjoy Communicator!</span></p>\r\n<p style=\\"font-weight: bold;\\">Regards, XXX</p>', 1, 0, '0000-00-00 00:00:00', '2009-02-16 00:00:00', '2009-02-27 00:00:00', '2009-02-17 16:24:18', '2009-02-17 16:25:30', 6, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Subscribers for Communicator are stored here.' AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_communicator_subscribers'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Contenu de la table 'mtd_components'
--

INSERT INTO mtd_components (id, `name`, link, menuid, parent, admin_menu_link, admin_menu_alt, `option`, ordering, admin_menu_img, iscore, params, enabled) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_groups=18\nfilter_type=BL\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=fr-FR\nsite=fr-FR', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(108, '2-Faire un don', 'option=com_donation', 0, 0, 'option=com_donation', 'donation', 'com_donation', 0, 'components/com_easycreator/assets/images/easy-joomla-favicon.ico', 0, '', 1),
(175, 'Ã€ propos', '', 0, 168, 'option=com_acajoom&act=about', 'Ã€ propos', 'com_acajoom', 6, '../includes/js/ThemeOffice/credits.png', 0, '', 1),
(174, 'Importation', '', 0, 168, 'option=com_acajoom&act=update', 'Importation', 'com_acajoom', 5, '../includes/js/ThemeOffice/restore.png', 0, '', 1),
(173, 'Configuration', '', 0, 168, 'option=com_acajoom&act=configuration', 'Configuration', 'com_acajoom', 4, '../includes/js/ThemeOffice/menus.png', 0, '', 1),
(168, '1-Newsletter', 'option=com_acajoom', 0, 0, 'option=com_acajoom', 'Acajoom', 'com_acajoom', 0, '../administrator/components/com_acajoom/images/acajoom_icon.png', 0, '', 1),
(169, 'Gestion de Listes', '', 0, 168, 'option=com_acajoom&act=list', 'Gestion de Listes', 'com_acajoom', 0, '../includes/js/ThemeOffice/edit.png', 0, '', 1),
(170, 'AbonnÃ©s', '', 0, 168, 'option=com_acajoom&act=subscribers', 'AbonnÃ©s', 'com_acajoom', 1, '../includes/js/ThemeOffice/users_add.png', 0, '', 1),
(171, 'Infolettres', '', 0, 168, 'option=com_acajoom&act=mailing&listype=1', 'Infolettres', 'com_acajoom', 2, '../includes/js/ThemeOffice/messaging_inbox.png', 0, '', 1),
(172, 'Statistiques', '', 0, 168, 'option=com_acajoom&act=statistics', 'Statistiques', 'com_acajoom', 3, '../includes/js/ThemeOffice/query.png', 0, '', 1),
(72, 'Highslide JS Configuration', 'option=com_hsconfig', 0, 0, 'option=com_hsconfig', 'Highslide JS Configuration', 'com_hsconfig', 0, 'components/com_hsconfig/images/icon-16-config.png', 0, 'backgroundDimmingColor=black\ndimmingDuration=50\nmodalWhenDimmed=no\nshowCredits=tru\nthumbNail=hidden\nallowMultipleInstances=tru\nblockRightClick=fals\nenableKeyListener=tru\nnumberOfImagesToPreload=5\nzIndexCounter=1001\n', 1),
(160, '3-Galerie Photos', 'option=com_phocagallery', 0, 0, 'option=com_phocagallery', 'Phoca Gallery', 'com_phocagallery', 0, 'components/com_phocagallery/assets/images/icon-16-menu.png', 0, 'font_color=#ee7037\nbackground_color=#ffffff\nbackground_color_hover=#ffffff\nimage_background_color=#ffffff\nimage_background_shadow=shadow1\nborder_color=#ffffff\nborder_color_hover=#ffffff\nmargin_box=5\npadding_box=5\ndisplay_name=1\ndisplay_icon_detail=1\ndisplay_icon_download=0\ndisplay_icon_folder=1\ndisplay_icon_random_image=1\ndisplay_back_button=1\ndisplay_categories_back_button=1\ndisplay_subcat_page=1\nfont_size_name=12\nchar_length_name=15\ncategory_box_space=0\ncategories_columns=1\ndisplay_image_categories=1\nimage_categories_size=4\ndisplay_subcategories=1\ndisplay_empty_categories=0\nhide_categories=\ndisplay_access_category=0\ndetail_window=0\ndetail_window_background_color=#ffffff\nmodal_box_overlay_color=#000000\nmodal_box_overlay_opacity=0.9\nmodal_box_border_color=#6b6b6b\nmodal_box_border_width=2\nsb_slideshow_delay=5\nsb_lang=fr\ndisplay_description_detail=2\ndisplay_title_description=1\nfont_size_desc=11\nfont_color_desc=#333333\ndescription_detail_height=16\ndescription_lightbox_font_size=12\ndescription_lightbox_font_color=#ffffff\ndescription_lightbox_bg_color=#000000\nslideshow_delay=3000\nslideshow_pause=1\nslideshow_random=1\ndetail_buttons=1\nphocagallery_width=\ndisplay_phoca_info=4\ndefault_pagination=100\npagination=5;10;15;20;50\nenable_piclens=1\nstart_piclens=0\npiclens_image=1\nswitch_image=0\nswitch_width=640\nswitch_height=480\nenable_overlib=0\nol_bg_color=#666666\nol_fg_color=#f6f6f6\nol_tf_color=#000000\nol_cf_color=#ffffff\noverlib_overlay_opacity=0.7\ncreate_watermark=0\nwatermark_position_x=center\nwatermark_position_y=middle\ndisplay_icon_vm=0\nenable_user_cp=1\nmax_create_cat_char=1000\ndisplay_rating=0\ndisplay_comment=0\ncomment_width=500\nmax_comment_char=1000\ndisplay_category_statistics=0\ndisplay_main_cat_stat=1\ndisplay_lastadded_cat_stat=1\ncount_lastadded_cat_stat=3\ndisplay_mostviewed_cat_stat=1\ncount_mostviewed_cat_stat=3\ndisplay_camera_info=0\nexif_information=FILE.FileName;FILE.FileDateTime;FILE.FileSize;FILE.MimeType;COMPUTED.Height;COMPUTED.Width;COMPUTED.IsColor;COMPUTED.ApertureFNumber;IFD0.Make;IFD0.Model;IFD0.Orientation;IFD0.XResolution;IFD0.YResolution;IFD0.ResolutionUnit;IFD0.Software;IFD0.DateTime;IFD0.Exif_IFD_Pointer;IFD0.GPS_IFD_Pointer;EXIF.ExposureTime;EXIF.FNumber;EXIF.ExposureProgram;EXIF.ISOSpeedRatings;EXIF.ExifVersion;EXIF.DateTimeOriginal;EXIF.DateTimeDigitized;EXIF.ShutterSpeedValue;EXIF.ApertureValue;EXIF.ExposureBiasValue;EXIF.MaxApertureValue;EXIF.MeteringMode;EXIF.LightSource;EXIF.Flash;EXIF.FocalLength;EXIF.SubSecTimeOriginal;EXIF.SubSecTimeDigitized;EXIF.ColorSpace;EXIF.ExifImageWidth;EXIF.ExifImageLength;EXIF.SensingMethod;EXIF.CustomRendered;EXIF.ExposureMode;EXIF.WhiteBalance;EXIF.DigitalZoomRatio;EXIF.FocalLengthIn35mmFilm;EXIF.SceneCaptureType;EXIF.GainControl;EXIF.Contrast;EXIF.Saturation;EXIF.Sharpness;EXIF.SubjectDistanceRange;GPS.GPSLatitudeRef;GPS.GPSLatitude;GPS.GPSLongitudeRef;GPS.GPSLongitude;GPS.GPSAltitudeRef;GPS.GPSAltitude;GPS.GPSTimeStamp;GPS.GPSStatus;GPS.GPSMapDatum;GPS.GPSDateStamp\ngoogle_maps_api_key=\ndisplay_categories_geotagging=0\ncategories_lng=\ncategories_lat=\ncategories_zoom=2\ncategories_map_width=500\ncategories_map_height=500\ndisplay_icon_geotagging=0\ndisplay_category_geotagging=0\ncategory_map_width=500\ncategory_map_height=400\ndisplay_title_upload=0\ndisplay_description_upload=1\nmax_upload_char=1000\nupload_maxsize=3000000\ncat_folder_maxsize=20000000\nenable_java=1\njava_resize_width=-1\njava_resize_height=-1\njava_box_width=480\njava_box_height=480\npagination_thumbnail_creation=1\nclean_thumbnails=1\nenable_thumb_creation=1\ncrop_thumbnail=5\nicon_format=png\nlarge_image_width=500\nlarge_image_height=400\nmedium_image_width=100\nmedium_image_height=100\nsmall_image_width=50\nsmall_image_height=50\nfront_modal_box_width=500\nfront_modal_box_height=475\nadmin_modal_box_width=680\nadmin_modal_box_height=520\n\n', 1),
(161, 'Control Panel', '', 0, 160, 'option=com_phocagallery', 'Control Panel', 'com_phocagallery', 0, 'components/com_phocagallery/assets/images/icon-16-control-panel.png', 0, '', 1),
(162, 'Images', '', 0, 160, 'option=com_phocagallery&view=phocagallerys', 'Images', 'com_phocagallery', 1, 'components/com_phocagallery/assets/images/icon-16-menu-gal.png', 0, '', 1),
(163, 'Categories', '', 0, 160, 'option=com_phocagallery&view=phocagallerycs', 'Categories', 'com_phocagallery', 2, 'components/com_phocagallery/assets/images/icon-16-menu-cat.png', 0, '', 1),
(164, 'Themes', '', 0, 160, 'option=com_phocagallery&view=phocagalleryt', 'Themes', 'com_phocagallery', 3, 'components/com_phocagallery/assets/images/icon-16-menu-theme.png', 0, '', 1),
(165, 'Rating', '', 0, 160, 'option=com_phocagallery&view=phocagalleryra', 'Rating', 'com_phocagallery', 4, 'components/com_phocagallery/assets/images/icon-16-menu-vote.png', 0, '', 1),
(166, 'Comments', '', 0, 160, 'option=com_phocagallery&view=phocagallerycos', 'Comments', 'com_phocagallery', 5, 'components/com_phocagallery/assets/images/icon-16-menu-comment.png', 0, '', 1),
(167, 'Info', '', 0, 160, 'option=com_phocagallery&view=phocagalleryin', 'Info', 'com_phocagallery', 6, 'components/com_phocagallery/assets/images/icon-16-menu-info.png', 0, '', 1),
(181, 'Xmap', 'option=com_xmap', 0, 0, 'option=com_xmap', 'Xmap', 'com_xmap', 0, 'js/ThemeOffice/component.png', 0, '', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_contact_details'
--

INSERT INTO mtd_contact_details (id, `name`, alias, con_position, address, suburb, state, country, postcode, telephone, fax, misc, image, imagepos, email_to, default_con, published, checked_out, checked_out_time, ordering, params, user_id, catid, access, mobile, webpage) VALUES
(1, 'Association Main Tendue 31', 'association-main-tendue-', '', '410, chemin des Vignes \r\nLieu dit "Sayrac"\r\n31340 Villemur sur Tarn', 'Villemur sur Tarn', '', '', '31340', '06.66.27.96.74', '', '', '', 'top', 'maintendue31@hotmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=0\nshow_email=0\nshow_street_address=1\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=2\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 62, 35, 0, '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Contenu de la table 'mtd_content'
--

INSERT INTO mtd_content (id, title, alias, title_alias, introtext, `fulltext`, state, sectionid, mask, catid, created, created_by, created_by_alias, modified, modified_by, checked_out, checked_out_time, publish_up, publish_down, images, urls, attribs, version, parentid, ordering, metakey, metadesc, access, hits, metadata) VALUES
(72, 'Faire un Don - Avec Paypal', 'faire-un-don', '', '<h2 style="text-align: center;"><br />\r\nB&eacute;n&eacute;ficiez d''une d&eacute;fiscalisation de vos dons &agrave; Main Tendue 31</h2>\r\n<!--  Header: [end] -->  			 		<!--  Text: [begin] -->\r\n<div class="bodytext">\r\n<p><span style="font-size: larger;">La l&eacute;gislation fran&ccedil;aise pr&eacute;voit pour chaque don &agrave; un organisme d''aide aux personnes en difficult&eacute;, une <strong><span style="color: rgb(255, 102, 0);">d&eacute;fiscalisation du don &agrave; hauteur de 75%</span></strong><span style="color: rgb(255, 102, 0);">.</span> <br />\r\nSi le montant cumul&eacute; sur l''ann&eacute;e d&eacute;passe 495&euro;, la <strong>d&eacute;fiscalisation du don</strong> sera alors de 66% dans la limite de 20% de votre revenu imposable.</span></p>\r\n<p><span style="font-size: larger;">Ainsi un <strong><span style="color: rgb(255, 102, 0);">don de 100&euro;</span></strong> ne vous co&ucirc;tera en r&eacute;alit&eacute; <span style="color: rgb(255, 102, 0);"><strong>que 25&euro;</strong></span>.<br />\r\n</span></p>\r\n<img height="75" width="583" align="bottom" alt="defiscalisation.jpg" src="/images/stories/defiscalisation.jpg" /></div>\r\n<h2>&nbsp;</h2>\r\n<h2 style="text-align: center;">Modalit&eacute;s de donation &agrave; Main Tendue 31</h2>\r\n<span style="font-size: larger;">Plusieurs formules de dons sont possibles.<br />\r\n</span>\r\n<ul>\r\n    <li><span style="font-size: larger;">Un <strong>bon de soutien en PDF</strong> que vous pouvez imprimer, puis nous renvoyer compl&eacute;t&eacute;, est disponible pour les paiements par ch&egrave;que,esp&egrave;ces, virement en une fois ou plusieurs fois.<br />\r\n    </span></li>\r\n    <li><span style="font-size: larger;">Un <strong>paiement en ligne via Paypal,</strong> par carte bancaire ou compte paypal.</span></li>\r\n</ul>\r\n<br />\r\n&nbsp;\r\n<table cellspacing="1" cellpadding="1" border="0" style="width: 575px; height: 66px;">\r\n    <tbody>\r\n        <tr>\r\n            <td><a href="/files/BonSoutien_MT31.pdf"><img height="28" width="205" border="0" align="top" src="/images/stories/bonsoutien.jpg" alt="bon de soutien pdf" />             </a><br />\r\n            &nbsp;<br />\r\n            &nbsp;</td>\r\n            <td><a href="/component/donation/?view=donation&amp;layout=form"><img border="0" align="top" src="/images/stories/Paypal.jpg" alt="Paiement en ligne via paypal" style="width: 205px; height: 28px;" /><br />\r\n            <img border="0" align="bottom" src="/images/stories/logo_ccCB_37wx23h.gif" alt="carte bleue" style="width: 38px; height: 24px;" /><img height="23" width="37" border="0" align="bottom" src="/images/stories/logo_ccVisa.gif" alt="Visa" /><img height="23" width="37" border="0" align="bottom" src="/images/stories/logo_ccMC.gif" alt="Mastercard" /><img height="23" width="37" border="0" align="bottom" src="/images/stories/logo_ccAurora_37wx23h.gif" alt="carte Aurore" /><img height="23" width="22" border="0" align="bottom" src="/images/stories/logo_ccCofinoga_22wx23h.gif" alt="carte cofinoga" /><img height="23" width="37" border="0" align="bottom" src="/images/stories/logo_ccCofidis_37wx23h.gif" alt="carte cofidis" /><br />\r\n            </a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br />\r\n<br />', '', -2, 5, 0, 34, '2009-01-28 22:19:02', 62, '', '2009-09-15 18:00:46', 62, 0, '0000-00-00 00:00:00', '2009-01-28 22:19:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(69, 'Autre évènement', 'autre-evenement', '', 'ceci est un autreevenement<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\ntest<br />\r\n<br />\r\n<br />\r\n<br />\r\ntest<br type="_moz" />', '', -2, 6, 0, 39, '2009-06-29 08:01:29', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-06-29 08:01:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(71, 'EDITORIAL', 'editorial', '', '<p>&nbsp;</p>\r\n<div align="center"><span style="color: #ff6600"><b><span style="font-size: 26pt">L&rsquo;Esprit de No&euml;l&nbsp;!</span></b></span></div>\r\n<div>&nbsp;</div>\r\n<div align="center"><span style="color: #ff6600"><b><span style="font-size: 18pt">NO&Euml;L</span>&nbsp;</b><span style="font-size: 18pt">!</span></span> <span style="font-size: 16pt">Qu&rsquo;est-ce que </span><span style="color: #ff6600"><b><span style="font-size: 18pt">No&euml;l</span></b>&nbsp;<span style="font-size: 18pt">?</span></span></div>\r\n<div>&nbsp;</div>\r\n<div style="text-align: justify"><b><span style="font-size: 16pt">E</span></b>st-ce seulement une f&ecirc;te &agrave; laquelle sont associ&eacute;s toute une s&eacute;rie de symboles&nbsp;?</div>\r\n<div style="text-align: justify"><b><span style="font-size: 16pt">E</span></b>st -ce seulement une p&eacute;riode d&rsquo;hyperconsommation o&ugrave; l&rsquo;on se gave de foie gras, de dinde et de b&ucirc;che devant un sapin illumin&eacute;&nbsp;?</div>\r\n<div style="text-align: justify"><b><span style="font-size: 16pt">O</span></b>u<b>e</b>st -ce encore le moment o&ugrave; nous nous sentons oblig&eacute;s de saturer de jouets nos enfants avec <span style="font-size: 14pt">l</span>esquels nous oublions de passer du temps tout le reste de l&rsquo;ann&eacute;e&nbsp; ou&nbsp;d&rsquo;offrir des cadeaux &agrave; nos proches qui <span style="font-size: 14pt">l</span>es vendront le lendemain sur internet&nbsp;?</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div style="text-align: center"><span style="font-size: 18pt">Et </span><span style="color: #ff6600"><b><span style="font-size: 18pt">si </span></b><b><span style="font-size: 18pt">l&rsquo;Esprit de No&euml;l</span></b><span style="font-size: 18pt"> </span></span><span style="font-size: 18pt">c&rsquo;&eacute;tait autre chose&nbsp;?</span></div>\r\n<div align="center">&nbsp;</div>\r\n<div style="text-align: justify"><span style="font-size: large"><strong><span style="color: #ff6600">S</span></strong></span><span style="font-size: larger"><span style="color: #ff6600"><b>i</b> <b>No&euml;l</b></span></span><span style="color: #ff6600"> </span>&eacute;tait porteur d&rsquo;autres valeurs comme la <span style="font-size: larger"><span style="color: #ff6600"><b>Paix</b></span></span>, l&rsquo;<span style="font-size: larger"><span style="color: #ff6600"><b>Espoir</b></span></span>, la <span style="font-size: larger"><span style="color: #ff6600"><b>Fraternit&eacute;</b></span></span>,&nbsp;<br />\r\nqui permettraient un regard diff&eacute;rent vers les oubli&eacute;s de la F&ecirc;te&nbsp;: les familles fragilis&eacute;es par le ch&ocirc;mage, les personnes &acirc;g&eacute;es abandonn&eacute;es et confront&eacute;es &agrave; la solitude, les exclus que nous croisons chaque jour dans nos rues, sur nos trottoirs, sur nos places et nos bancs.</div>\r\n<div style="text-align: justify; text-indent: 35.4pt"><span style="font-size: larger">Si</span>&nbsp;nous acceptions de voir l&rsquo;<span style="font-size: larger">autre</span> tel qu&rsquo;Il est,&nbsp;et non comme nous pensons le voir,&nbsp;&nbsp;<span style="font-size: larger">si</span> nous tendions la main, si nous cessions de d&eacute;tourner le regard de cette pauvret&eacute; qui nous d&eacute;range et qui nous renvoie l&rsquo;image de notre propre fragilit&eacute;,</div>\r\n<div>&nbsp;</div>\r\n<div style="text-align: center"><span style="color: #ff6600"><font size="5"><strong>Alors nous nous rapprocherions certainement </strong></font></span></div>\r\n<div style="text-align: center"><span style="color: #ff6600"><strong><font size="5">de l&rsquo;Esprit de No&euml;l&nbsp;!</font></strong></span></div>\r\n<div><span style="color: #ff6600">&nbsp;</span></div>\r\n<div align="center"><span style="color: #ff6600"><span style="font-size: 24pt">Bonnes F&ecirc;tes&nbsp;!</span></span></div>\r\n<div>&nbsp;</div>\r\n<div style="text-indent: 342pt"><strong><em>C. SOULIE, Pr&eacute;sident</em></strong></div>\r\n<p>&nbsp;</p>', '', -2, 5, 0, 38, '2009-09-14 09:58:09', 62, '', '2009-12-10 20:31:22', 62, 0, '0000-00-00 00:00:00', '2009-09-14 09:58:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 11, 0, 0, '', '', 0, 125, 'robots=\nauthor='),
(68, 'Liz McComb', 'liz-mccomb', '', 'Concert &agrave; la halle aux grains<br />\r\nle ....<br />\r\n<br type="_moz" />', '', -2, 6, 0, 39, '2009-06-29 07:59:59', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-06-29 07:59:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(67, 'Mentions légales', 'mention-legales', '', '<u><b>1. Coordonn&eacute;es de l''association : </b></u><br />\r\n410, chemin des Vignes <br />\r\nLieu dit &quot;Sayrac&quot;<br />\r\n31340 Villemur sur Tarn<br />\r\n<u><strong>Responsable de la r&eacute;daction : </strong></u>M.Christian Souli&eacute;<br />\r\n<br />\r\n<u><b>2. H&eacute;bergeur</b></u><br />\r\nL''h&eacute;bergement du site est assur&eacute; par :<br />\r\nNFrance Conseil&nbsp;- 4 rue J.F. Kennedy - 31000 Toulouse<br />\r\n<div style="text-align: justify;"><u><b><br />\r\n3. Traitement des donn&eacute;es.<br />\r\n</b></u>En communiquant vos donn&eacute;es, vous acceptez implicitement qu''elles puissent &ecirc;tre utilis&eacute;es, trait&eacute;es et transf&eacute;r&eacute;es au sein de l''association &quot;Main Tendue 31&quot;.<br />\r\nElles ne seront communiqu&eacute;es &agrave; aucun tiers externe &agrave; l''association.<br />\r\nConform&eacute;ment &agrave; la loi informatique et libert&eacute;s, vous pouvez exercer votre droit d''acc&egrave;s et de rectification et ainsi acc&eacute;der &agrave; vos donn&eacute;es nominatives, les rectifier ou les faire supprimer.</div>\r\n&nbsp;  			 		 				  		<span class="article_seperator"><br />\r\n</span>', '', 1, 5, 0, 34, '2009-04-18 07:53:37', 62, '', '2009-06-29 07:29:44', 62, 65, '2010-04-12 22:39:26', '2009-04-18 07:53:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 2, '', '', 0, 1119, 'robots=\nauthor='),
(65, 'Audios', 'audios', '', '<h4>Reportage &quot;Univers Cit&eacute;&quot; - St&eacute;phane Reynier</h4>\r\n{play}/files/SDF_UC_01.mp3{/play}   <br />\r\n<br />\r\n<h4>Reportage Radio - St&eacute;phane Reynier</h4>\r\n<div>{play}/files/SDF_UC_02(1).mp3{/play}</div>\r\n<br type="_moz" />', '', 1, 5, 0, 34, '2009-03-19 08:33:22', 62, '', '2009-09-15 20:19:49', 62, 0, '0000-00-00 00:00:00', '2009-03-19 08:33:22', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 4, '', '', 0, 1179, 'robots=\nauthor='),
(64, 'Audios', 'audios', '', '<div>Ecouter la musique de l''association :<br />\r\n{play}/files/Message in a bottle.mp3{/play}<br />\r\nT&eacute;l&eacute;charger <a href="/files/Message in a bottle.mp3">files/Message in a bottle.mp3</a></div>', '', -2, 5, 0, 34, '2009-03-19 06:56:20', 62, '', '2009-03-19 08:31:35', 62, 0, '0000-00-00 00:00:00', '2009-03-19 06:56:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 9, '', '', 0, 11, 'robots=\nauthor='),
(60, 'Nos actions', 'nos-actions', '', '{tab=Resto''rue}<br />\r\nPour mettre en oeuvre les objectifs qu&rsquo;elle s&rsquo;est fix&eacute;s, l&rsquo;association a d&eacute;but&eacute; ses activit&eacute;s par la cr&eacute;ation  d&rsquo;un <strong>service de distribution de repas aupr&egrave;s des plus d&eacute;munis</strong>, en allant au devant d&rsquo;eux, c&rsquo;est-&agrave;-dire  directement dans la rue.<br />\r\nCe service, d&eacute;nomm&eacute; <strong>&laquo;&nbsp;Resto&rsquo;rue&nbsp;&raquo;</strong>, propose des repas complets et chauds, une fois par semaine tout au long de l&rsquo;ann&eacute;e.<br />\r\nD&egrave;s le d&eacute;marrage de son action, Main Tendue 31 a souhait&eacute; s&rsquo;inscrire dans le r&eacute;seau social de la ville de Toulouse, en restant vigilante &agrave; d&eacute;velopper des activit&eacute;s compl&eacute;mentaires &agrave; celles d&eacute;j&agrave; men&eacute;es par d&rsquo;autres acteurs locaux. <br />\r\nLe choix des lieux, jours et heures des distributions de repas a fait l&rsquo;objet d&rsquo;une &eacute;tude pr&eacute;alable aupr&egrave;s des diff&eacute;rents partenaires, pour s&rsquo;assurer de ne pas s&rsquo;inscrire en doublon d&rsquo;autres actions d&eacute;j&agrave; mises en oeuvre par ailleurs. <font face="Arial"><br />\r\nDepuis le d&eacute;but de cette activit&eacute;, l&rsquo;association a servi des repas &agrave; environ 100 personnes en moyenne tous les dimanches, ce qui repr&eacute;sente plus de 15000 repas au total en 4 ans et 6 mois.</font><br />\r\n<br />\r\n{tab=Aide Alimentaire}<br />\r\nDepuis le mois de juin 2008 l&rsquo;association Main Tendue 31 a cr&eacute;&eacute; un nouveau service appel&eacute; &quot;Aide alimentaire&quot; au travers duquel sont distribu&eacute;s des colis alimentaires &agrave; destination des familles dans le besoin :<br />\r\n-15 familles soutenues toutes les semaines - soit 42 personnes et dix enfants de moins de 3 ans - soit 15 colis d&rsquo;une valeur moyenne de 25 &euro;.<br />\r\n-4 b&eacute;n&eacute;voles donnent 6 heures de leur temps par semaine pour cette action.<br />\r\n{tab=Autres actions}<br />\r\n<font face="Arial">L&rsquo;association Main Tendue travaille dans le respect de l&rsquo;individu. Au-del&agrave; de la distribution des repas chauds dans la rue, elle se montre attentive aux besoins rep&eacute;r&eacute;s ou exprim&eacute;s par les personnes rencontr&eacute;es, et, le cas &eacute;chant, est amen&eacute;e &agrave; effectuer des orientations vers les partenaires sociaux et/ou m&eacute;dicaux les mieux adapt&eacute;s aux probl&eacute;matiques de chacune des situations.<br />\r\nLa distribution des repas, au-del&agrave; de son utilit&eacute; directe pour les b&eacute;n&eacute;ficiaires, constitue pour l&rsquo;association un bon support permettant d&rsquo;&eacute;tablir un contact plus approfondi et de nouer des liens privil&eacute;gi&eacute;s avec les personnes rencontr&eacute;es r&eacute;guli&egrave;rement. Elle utilise &eacute;galement cette action pour mener diverses actions de pr&eacute;vention&nbsp;: le camion sert de support &agrave; divers tracts d&rsquo;information (pr&eacute;vention drogue, SIDA, maladies sexuellement transmissibles, etc.), et permet &eacute;galement d&rsquo;assurer une distribution ponctuelle<br />\r\nde produits d&rsquo;hygi&egrave;ne (shampoings, savons, dentifrices, brosses &agrave; dents, serviettes hygi&eacute;niques, couches pour b&eacute;b&eacute;, etc., qui nous sont fournis par des laboratoires pharmaceutiques).</font><br />\r\n<font face="Arial">Enfin, l&rsquo;association organise &eacute;galement r&eacute;guli&egrave;rement des temps conviviaux et collectifs, o&ugrave; sont invit&eacute;es des personnes rencontr&eacute;es dans la rue lors de la distribution des repas&nbsp;: f&ecirc;tes de No&euml;l (une centaine de personnes), rencontres sportives, grillades, etc.</font><br />\r\n<br />\r\n<font face="Arial"><br />\r\n{tab=Projets}<br />\r\nL&rsquo;association Main Tendue souhaite aujourd&rsquo;hui d&eacute;velopper ses actions en direction des plus d&eacute;munis, et, au vu des besoins rep&eacute;r&eacute;s sur la ville de Toulouse, s&rsquo;est donn&eacute;e comme nouveau projet la cr&eacute;ation d&rsquo;une &eacute;picerie solidaire en centre-ville.<br />\r\n{/tabs} </font>', '', -2, 5, 0, 34, '2009-01-15 12:37:29', 62, '', '2009-02-18 20:56:26', 62, 0, '0000-00-00 00:00:00', '2009-01-15 12:37:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 14, '', '', 0, 0, 'robots=\nauthor='),
(58, 'essai video', 'essai-video', '', '<a target="_self" rel="lightbox;width=405;height=390" href="http://www.youtube.com/v/axPE0Ks-3_M&amp;autoplay=1">Journal TV</a>', '', -2, 5, 0, 36, '2009-02-18 15:12:23', 62, '', '2009-02-18 15:37:25', 62, 0, '0000-00-00 00:00:00', '2009-02-18 15:12:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 13, 'robots=\nauthor='),
(59, 'Nos actions', 'nos-actions', '', '{tab=Resto''rue}<br />\r\n<span style="font-size: larger">Pour mettre en oeuvre les objectifs qu&rsquo;elle s&rsquo;est fix&eacute;s, l&rsquo;association a d&eacute;but&eacute; ses activit&eacute;s par la cr&eacute;ation d&rsquo;un <strong>service de distribution de repas aupr&egrave;s des plus d&eacute;munis</strong>, en allant au devant d&rsquo;eux, c&rsquo;est-&agrave;-dire directement dans la rue.<br />\r\n<br />\r\nCe service, d&eacute;nomm&eacute; <strong>&laquo;&nbsp;Resto&rsquo;rue&nbsp;&raquo;</strong>, propose des repas complets et chauds, une fois par semaine tout au long de l&rsquo;ann&eacute;e.<br />\r\n<br />\r\nD&egrave;s le d&eacute;marrage de son action, Main Tendue 31 a souhait&eacute; s&rsquo;inscrire <strong>dans le r&eacute;seau social de la ville de Toulouse</strong>, en restant vigilante &agrave; d&eacute;velopper des <strong>activit&eacute;s compl&eacute;mentaires</strong> &agrave; celles d&eacute;j&agrave; men&eacute;es par d&rsquo;autres acteurs locaux. <br />\r\nLe choix des lieux, jours et heures des distributions de repas a fait l&rsquo;objet d&rsquo;une &eacute;tude pr&eacute;alable aupr&egrave;s des diff&eacute;rents partenaires, pour s&rsquo;assurer de ne pas s&rsquo;inscrire en doublon d&rsquo;autres actions d&eacute;j&agrave; mises en oeuvre par ailleurs. <br />\r\n<font face="Arial"><br />\r\n<span class="Apple-style-span" style="line-height: 17px"><font class="Apple-style-span" face="Verdana">Depuis le d&eacute;but de nos activit&eacute;s, l''association main tendue a servi plus de 30 000 repas. Hors p&eacute;riode hivernale, entre 150 et 180 repas sont servis tous les dimanches soir.</font></span></font><br />\r\n</span><br />\r\n{tab=Aide Alimentaire}<br />\r\n<span style="font-size: larger">Depuis le <strong>mois de juin 2008</strong> l&rsquo;association Main Tendue 31 a cr&eacute;&eacute; un nouveau service appel&eacute; &quot;<strong>Aide alimentaire</strong>&quot; au travers duquel sont distribu&eacute;s des colis alimentaires &agrave; destination des familles dans le besoin :</span>\r\n<ul>\r\n    <li><span style="font-size: larger">23&nbsp;familles soutenues toutes les semaines </span><span style="font-size: larger">soit 42 personnes et dix enfants de moins de 3 ans -</span></li>\r\n    <li><span style="font-size: larger">7&nbsp;b&eacute;n&eacute;voles donnent 6 heures de leur temps par semaine pour cette action.</span></li>\r\n</ul>\r\n{tab=Autres actions}<br />\r\n<div style="font-size: larger">L&rsquo;association <strong>Main Tendue</strong> travaille dans le <strong>respect de l&rsquo;individu</strong>. <br />\r\nAu-del&agrave; de la distribution des repas chauds dans la rue, elle se montre <strong>attentive aux besoins rep&eacute;r&eacute;s ou exprim&eacute;s</strong> par les personnes rencontr&eacute;es, et, le cas &eacute;chant, est amen&eacute;e &agrave; effectuer des <strong>orientations vers les partenaires sociaux et/ou m&eacute;dicaux</strong> les mieux adapt&eacute;s aux probl&eacute;matiques de chacune des situations.<br />\r\nLa <strong>distribution des repas</strong>, au-del&agrave; de son utilit&eacute; directe pour les b&eacute;n&eacute;ficiaires, constitue pour l&rsquo;association un bon support permettant d&rsquo;&eacute;tablir un contact plus approfondi et de<strong> nouer des liens privil&eacute;gi&eacute;s</strong> avec les personnes rencontr&eacute;es r&eacute;guli&egrave;rement. <br />\r\nElle utilise &eacute;galement cette action pour mener diverses <strong>actions de pr&eacute;vention</strong>&nbsp;:\r\n<div style="margin-left: 40px">le camion sert de support &agrave; divers tracts d&rsquo;information (pr&eacute;vention <strong>drogue, SIDA, maladies sexuellement transmissibles</strong>, etc.),<br />\r\net permet &eacute;galement d&rsquo;assurer une <strong>distribution ponctuelle de produits d&rsquo;hygi&egrave;ne</strong> (shampoings, savons, dentifrices, brosses &agrave; dents, serviettes hygi&eacute;niques, couches pour b&eacute;b&eacute;, etc., qui nous sont fournis par des laboratoires pharmaceutiques).</div>\r\nEnfin, l&rsquo;association <strong>organise </strong>&eacute;galement r&eacute;guli&egrave;rement des <strong>temps conviviaux et collectifs</strong>, o&ugrave; sont invit&eacute;es des personnes rencontr&eacute;es dans la rue lors de la distribution des repas&nbsp;: <strong>f&ecirc;tes de No&euml;l</strong> (une centaine de personnes), <strong>rencontres sportives, grillades,</strong> etc.</div>\r\n<br />\r\n<br />\r\n<br />\r\n{tab=Projets}<br />\r\n<span style="font-size: larger">L&rsquo;association <strong>Main Tendue</strong> souhaite aujourd&rsquo;hui d&eacute;velopper ses actions <strong>en direction des plus d&eacute;munis,</strong> et, au vu des besoins rep&eacute;r&eacute;s sur la ville de Toulouse, s&rsquo;est donn&eacute;e comme nouveau projet la <strong>cr&eacute;ation d&rsquo;une &eacute;picerie solidaire au quartier des Minimes</strong>.</span><br />\r\n{/tabs}', '', 1, 5, 0, 34, '2009-01-15 12:37:29', 62, '', '2010-12-08 20:14:43', 62, 0, '0000-00-00 00:00:00', '2009-01-15 12:37:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 7, '', '', 0, 2357, 'robots=\nauthor='),
(57, 'APEC', 'actions-scolaires', '', '<div>j j biuhbiuhbkj b,n <br />nkjnlib<a class="highslide" onclick="return hs.expand(this)" href="images/stories/repas1grand.jpg"><img src="images/stories/Repas1.jpg" /></a></div>\r\n<div style="position: absolute; left: 381px; top: 18px; width: 100px; height: 100px; background-color: #ff6600;">\r\n<p>nkjnlib</p>\r\n<p>nuhbouyguy</p>\r\n</div>', '', -2, 5, 0, 34, '2009-02-16 22:17:11', 62, '', '2009-02-17 08:47:30', 62, 0, '0000-00-00 00:00:00', '2009-02-16 22:17:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 17, '', '', 0, 17, 'robots=\nauthor='),
(50, 'Aide Alimentaire', 'aide-alimentaire', '', 'Depuis le mois de juin 2008 l&rsquo;association Main Tendue 31 a cr&eacute;&eacute; un nouveau service appel&eacute; &quot;Aide alimentaire&quot; au travers duquel sont distribu&eacute;s des colis alimentaires &agrave; destination des familles dans le besoin :<br />\r\n-15 familles soutenues toutes les semaines - soit 42 personnes et dix enfants de moins de 3 ans - soit 15 colis d&rsquo;une valeur moyenne de 25 &euro;.<br />\r\n-4 b&eacute;n&eacute;voles donnent 6 heures de leur temps par semaine pour cette action.<br />', '', -2, 5, 0, 34, '2009-01-15 13:38:17', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-15 13:38:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 18, '', '', 0, 14, 'robots=\nauthor='),
(51, 'Revue de Presse', 'revue-de-presse', '', '<h3>\r\n<h3>\r\n<h3>\r\n<h3>\r\n<h3>\r\n<h3>\r\n<h3>\r\n<h3>&quot;Les nouveaux exclus mangent&nbsp;&agrave; l''&eacute;cluse&quot;</h3>\r\n<p style="margin-left: 40px"><span style="font-size: x-small">17 Juillet 2011<br />\r\n</span><span style="font-size: x-small"><a target="_blank" href="http://www.ladepeche.fr/article/2011/07/17/1129816-les-nouveaux-exclus-mangent-a-l-ecluse.html">Lire l''article en ligne</a></span><span style="font-size: x-small"><br />\r\n</span><a target="_blank" href="http://www.ladepeche.fr/article/2011/07/17/1129816-les-nouveaux-exclus-mangent-a-l-ecluse.html">&nbsp;</a></p>\r\n</h3>\r\n<hr />\r\n<br />\r\n&quot;Repas de f&ecirc;te pour les SDF, mais pas seulement&quot;</h3>\r\n<p style="margin-left: 40px"><span style="font-size: x-small">20 D&eacute;cembre 2010<br />\r\n</span><a target="_blank" rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr:80/article/2010/12/20/973810-Repas-de-fete-pour-les-SDF-mais-pas-seulement.html"><span style="font-size: x-small">Lire l''article en ligne</span></a><span style="font-size: x-small"><br />\r\n</span>&nbsp;</p>\r\n</h3>\r\n<hr />\r\n<p style="margin-left: 40px">&nbsp;</p>\r\n<h3>&quot;Pauvret&eacute;, les chiffres qui font peur&quot;</h3>\r\n<p style="margin-left: 40px"><span style="font-size: x-small">11&nbsp;Novembre 2010<br />\r\n</span><a target="_blank" rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2010/11/11/945959-Pauvrete-les-chiffres-qui-font-peur.html"><span style="font-size: x-small">Lire l''article en ligne</span></a><span style="font-size: x-small"><br />\r\n</span>&nbsp;</p>\r\n<hr />\r\n</h3>\r\n&quot;Le repas de No&euml;l des oubli&eacute;s de la f&ecirc;te&quot;</h3>\r\n<p style="margin-left: 40px"><span style="font-size: x-small">21&nbsp;D&eacute;cembre&nbsp;2009<br />\r\n</span><a target="_blank" rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2009/12/21/741190-Le-repas-de-Noel-des-oublies-de-la-fete.html"><span style="font-size: x-small">Lire l''article en ligne</span></a><span style="font-size: x-small"><br />\r\n</span>&nbsp;</p>\r\n<hr />\r\n</h3>\r\n<h3>&quot;Les cantines de la mis&egrave;re sont de plus en plus visit&eacute;es&quot;</h3>\r\n<p style="margin-left: 40px"><span style="font-size: x-small">11 Octobre 2009<br />\r\n</span><a target="_blank" rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2009/10/11/691663-Les-cantines-de-la-misere-sont-de-plus-en-plus-visitees.html"><span style="font-size: x-small">Lire l''article en ligne</span></a><span style="font-size: x-small"><br />\r\n&nbsp;</span></p>\r\n<hr />\r\n</h3>\r\n<h3>&quot;Gal&egrave;re estivale pour les SDF&quot;</h3>\r\n<p style="margin-left: 40px">15 Juillet 2009<br />\r\n<a rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2009/07/15/639416-Galere-estivale-pour-les-SDF.html">Lire l''article en ligne</a><br />\r\n&nbsp;</p>\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>\r\n<h3>&quot;Ils se nourrissent dans les poubelles des magasins&quot;&nbsp;</h3>\r\n<p style="margin-left: 40px">20 Mars 2009<br />\r\n<a rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2009/03/20/576205-Ils-se-nourrissent-dans-les-poubelles-des-magasins.html">Lire l''article en ligne</a><br />\r\n&nbsp;</p>\r\n<hr />\r\n<h3>&quot;Les SDF ne sont pas les seuls &agrave; venir chercher des repas gratuits&quot;</h3>\r\n<p style="margin-left: 40px">23 D&eacute;cembre 2008<br />\r\n<a rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2008/12/23/512092-Minimes-Les-SDF-ne-sont-pas-les-seuls-a-venir-chercher-des-repas-gratuits.html">Lire l''article en ligne.</a><br />\r\n&nbsp;</p>\r\n<hr />\r\n<h3>&quot;Un concert pour des repas&quot;</h3>\r\n<div style="margin-left: 40px">21 Novembre 2008<a rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2008/11/21/495851-Pouvourville-Un-concert-pour-des-repas.html"><br />\r\nLire l''article en ligne<br />\r\n</a></div>\r\n<hr />\r\n<h3>&quot;La Halle aux Grains. Liz Mc Comb, le c&oelig;ur sur la main&quot;</h3>\r\n<p style="margin-left: 40px">Concert caritatif, samedi soir, &agrave; la Halle aux Grains.<br />\r\n20 Novembre 2008<br />\r\n<a rel="lightbox;width=700;height=600" href="http://www.ladepeche.fr/article/2008/11/20/495564-La-Halle-aux-Grains-Liz-Mc-Comb-le-c-ur-sur-la-main.html">Lire l''article en ligne</a><br />\r\n&nbsp;</p>\r\n<hr />\r\n<h3>&quot;Une main tendue vers les exclus&quot;</h3>\r\n<div style="margin-left: 40px">18 D&eacute;cembre 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/18_12_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Un repas de f&ecirc;te pour les SDF&quot;</h3>\r\n<div style="margin-left: 40px">16 D&eacute;cembre 2005<br />\r\n<a target="_blank" href="/images/stories/revue_presse/16_12_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Retrait&eacute;s et condamn&eacute;s &agrave; vivre dans la rue&quot;</h3>\r\n<div style="margin-left: 40px">17 Septembre 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/17_09_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Journ&eacute;e contre l''alcoolisme : boire, l''illusion du bien-&ecirc;tre&quot;</h3>\r\n<div style="margin-left: 40px">14 Juin 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/14_06_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Le mercredi, un repas est servi aux d&eacute;munis&quot;</h3>\r\n<p style="margin-left: 40px">3 Mai 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/03_05_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</p>\r\n<hr />\r\n<h3><br />\r\n&quot;Tous les dimanches, un repas servi devant la gare&quot;</h3>\r\n<div style="margin-left: 40px">5 F&eacute;vrier 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/05_02_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Ils ont du coeur&quot;</h3>\r\n<div style="margin-left: 40px">3 Janvier 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/03_01_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Plus de solidarit&eacute; encore pour la nouvelle ann&eacute;e&quot;</h3>\r\n<div style="margin-left: 40px">1 Janvier 2005<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/01_01_2005.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Repas de f&ecirc;te pour les sans-abris&quot;</h3>\r\n<div style="margin-left: 40px">22 D&eacute;cembre 2004<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/22_12_2004.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Tous les dimanches, repas chauds servis dans la rue&quot;</h3>\r\n<div style="margin-left: 40px">27 Octobre 2004<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/27_10_2004.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<h3>&quot;Dimanche soir, une main tendue dans la rue.&quot;</h3>\r\n<div style="margin-left: 40px">23 Juin 2004<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/23_06_2004.jpg">voir le scan de l''article</a><br />\r\n&nbsp;</div>\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>\r\n<h3>&quot;Des repas pour r&eacute;chauffer les coeurs&quot;</h3>\r\n<div style="margin-left: 40px">15 Juin 2004<br />\r\n<a onclick="window.open(this.href,'''',''resizable=no,location=no,menubar=no,scrollbars=yes,status=no,toolbar=no,fullscreen=no,dependent=no,status''); return false" href="/images/stories/revue_presse/15_06_2004.jpg">voir le scan de l''article</a></div>\r\n<hr />\r\n<p><br />\r\n&nbsp;</p>', '', 1, 5, 0, 37, '2009-01-15 13:44:53', 62, '', '2011-10-01 06:33:11', 62, 0, '0000-00-00 00:00:00', '2009-01-15 13:44:53', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 37, 0, 1, '', '', 0, 393, 'robots=\nauthor='),
(52, 'Quelques chiffres', 'quelques-chiffres', '', 'L&rsquo;activit&eacute; Resto&rsquo;Rue, un service de longue haleine<br />\r\n<br />\r\n<br />\r\nChaque semaine le b&eacute;n&eacute;vole de service offre au moins 4 heures de son temps Chaque semaine une &eacute;quipe de 12 b&eacute;n&eacute;voles est au service des autres pendant 48h00 Et cela pendant 47 semaines soit 2256 heures sur l&rsquo;ann&eacute;e<br />\r\n<br />\r\nL&rsquo;Activit&eacute; Aide Alimentaire, un service aux familles en difficult&eacute; depuis juin 2007<br />\r\n<br />\r\n<br />\r\nChaque semaine 4 b&eacute;n&eacute;voles ont offert chacun un service de 6 heures pour l&rsquo;Aide Alimentaire, pendant 27 semaines. Chaque semaine il est distribu&eacute; 15 colis adapt&eacute;s sp&eacute;cifiquement aux besoins des familles auxquels ils sont destin&eacute;s.<br />\r\nN&rsquo;OUBLIONS PAS NON PLUS &hellip;<br />\r\n<br />\r\nQue pour la seule journ&eacute;e de NO&Euml;L POUR TOUS les &eacute;quipiers de Main Tendue 31 et les Volontaires qui se sont associ&eacute;s &agrave; eux ont cumul&eacute; 600 heures de service pour pr&eacute;parer et distribuer 95 repas assis et des cadeaux &agrave; ses invit&eacute;s.<br />\r\nTOUS ENSEMBLE, NOUS AVONS PRODUIT L&rsquo;EFFORT SUIVANT ...<br />\r\n<br />\r\nSur une p&eacute;riode de 47 semaines, Une dur&eacute;e globale de service de : 3504 heures<br />\r\n<br />\r\n- Ou encore : 100 semaines de 35 Heures<br />\r\n- Ou enfin : 23 mois de 151,67 heures<br />\r\n- Mais aussi une Valeur de Service de 42030,09 &euro;<br />\r\nPOUR ATTEINDRE L&rsquo;OBJECTIF SUIVANT &hellip;<br />\r\n<br />\r\n-Distribuer 3533 Repas de Dimanche<br />\r\n-Distribuer 95 Repas de No&euml;l<br />\r\n-Distribuer 405 Colis Alimentaires.<br />\r\nSoit une valeur distribu&eacute;e globale de : 19126 &euro;<br />\r\nMain-Tendue 31 a donc partag&eacute; en 2007 :<br />\r\n<br />\r\n-42030 &euro; de Valeur Service.<br />\r\n-19126 &euro; de Valeur Repas ...<br />\r\n<br />\r\nMission Accomplie ! Et c&rsquo;est bien l&agrave; l&rsquo;Essentiel.<br />', '', -2, 5, 0, 34, '2009-01-15 13:51:12', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2009-01-15 13:51:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 8, 'robots=\nauthor='),
(53, 'Faire un don', 'faire-un-don', '', '<h2 style="text-align: left"><br />\r\nB&eacute;n&eacute;ficiez d''une d&eacute;fiscalisation de vos dons &agrave; Main Tendue 31</h2>\r\n<p style="text-align: left">&nbsp;</p>\r\n<p style="text-align: left"><span style="font-size: larger">La l&eacute;gislation fran&ccedil;aise pr&eacute;voit pour chaque don &agrave; un organisme d''aide aux personnes en difficult&eacute;, une <strong><span style="color: rgb(255,102,0)">d&eacute;fiscalisation du don &agrave; hauteur de 75%</span></strong><span style="color: rgb(255,102,0)">.</span> <br />\r\nSi le montant cumul&eacute; sur l''ann&eacute;e d&eacute;passe 513 &euro;, la <strong>d&eacute;fiscalisation du don</strong> sera alors de 66% dans la limite de 20% de votre revenu imposable.</span></p>\r\n<p style="text-align: left">&nbsp;</p>\r\n<p style="text-align: left">&nbsp;</p>\r\n<p style="text-align: left"><span style="font-size: larger">Ainsi un <strong><span style="color: rgb(255,102,0)">don de 100&euro;</span></strong> ne vous co&ucirc;tera en r&eacute;alit&eacute; <span style="color: rgb(255,102,0)"><strong>que 25&euro;</strong></span>.<br />\r\n</span></p>\r\n<p style="text-align: left"><img height="75" alt="defiscalisation.jpg" width="583" align="bottom" src="/images/stories/defiscalisation.jpg" /></p>\r\n<p style="text-align: left">&nbsp;</p>\r\n<p style="text-align: left"><!--  Header: [end] --><!--  Text: [begin] --></p>\r\n<h2>&nbsp;</h2>\r\n<h2>Pour faire un don &agrave; Main Tendue 31</h2>\r\n<p><span style="font-size: medium">Imprimez&nbsp;le&nbsp;</span><a href="/files/BonSoutien_MT31.pdf"><span style="font-size: medium"><strong>bon de soutien en PDF</strong>&nbsp;</span></a><span style="font-size: medium">&nbsp;et&nbsp;renvoyez le nous&nbsp;compl&eacute;t&eacute; &agrave; l''adresse indiqu&eacute;e.</span></p>\r\n&nbsp;\r\n<table style="width: 708px; height: 66px" cellspacing="1" cellpadding="1" border="0">\r\n    <tbody>\r\n        <tr>\r\n            <td style="text-align: center">&nbsp;<br />\r\n            <a href="/files/BonSoutien_MT31.pdf"><img height="28" alt="bon de soutien pdf" width="205" align="top" border="0" src="/images/stories/bonsoutien.jpg" /></a>&nbsp;</td>\r\n            <td><a href="/component/donation/?view=donation&amp;layout=form"><br />\r\n            <br />\r\n            </a></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<br type="_moz" />\r\n<p><br />\r\n&nbsp;</p>\r\n<p><br />\r\n<br />\r\n&nbsp;</p>\r\n<p>&nbsp;</p>', '', 1, 5, 0, 34, '2009-01-28 22:19:02', 62, '', '2011-02-25 15:46:15', 62, 0, '0000-00-00 00:00:00', '2009-01-28 22:19:02', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 39, 0, 3, '', '', 0, 1006, 'robots=\nauthor='),
(54, 'Qui sommes-nous?', 'qui-sommes-nous', '', '<div class="presentation">L&rsquo;association Main Tendue 31 (MT31), constitu&eacute;e sous le statut de la loi de 1901, est n&eacute;e de la volont&eacute; d&rsquo;un groupe d&rsquo;individus d&rsquo;aller au devant des personnes subissant une situation d&rsquo;exclusion.</div>\r\n<p><br />\r\n<br />\r\n&nbsp;</p>', '', 1, 5, 0, 34, '2009-02-14 14:55:48', 62, '', '2010-01-04 20:28:04', 62, 0, '0000-00-00 00:00:00', '2009-02-14 14:55:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 9, '', '', 0, 0, 'robots=\nauthor='),
(75, '"ACTUALITE"', 'actualite', '', '<pre>\r\n&nbsp;</pre>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<span style="font-family: Tahoma"><span style="font-size: larger">\r\n<div><span style="font-size: larger"><span class="Apple-style-span" style="line-height: 17px"><font class="Apple-style-span">Cette ann&eacute;e encore, le 18 D&eacute;cembre, l''association Main Tendue va servir un repas de No&euml;l &agrave; plusieurs dizaine de personnes en situation de tr&egrave;s grande pr&eacute;carit&eacute;.<br />\r\nLe but de cette journ&eacute;e est d''offrir un vrai moment de partage, d&rsquo;amiti&eacute;, de joie et de solidarit&eacute;. Pendant les f&ecirc;tes de fin d''ann&eacute;e la solitude et l''exclusion sont encore plus difficiles &agrave; supporter que le reste de l''ann&eacute;e. Cette journ&eacute;e est une journ&eacute;e de f&ecirc;te autour d''un tr&egrave;s bon repas accompagn&eacute; d''un concert. Cette ann&eacute;e, c''est </font></span></span></div>\r\n</span></span><span style="font-size: larger"><span>\r\n<div>&nbsp;</div>\r\n</span></span><span style="font-size: larger">\r\n<div><span class="Apple-style-span" style="line-height: 17px"><span style="font-size: larger"><font class="Apple-style-span" face="Verdana"><a target="_blank" href="http://www.myspace.com/myriamsoulie"><span style="font-family: Tahoma">Myriam</span></a></font><span style="font-family: Tahoma"><span><font class="Apple-style-span"> et le groupe &quot;A fleur de Notes&quot; qui assureront l''animation musicale.</font></span></span></span></span></div>\r\n</span>', '', 0, 5, 0, 38, '2009-02-14 14:55:48', 62, '', '2010-12-08 21:05:29', 62, 0, '0000-00-00 00:00:00', '2009-02-14 14:55:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 1, '', '', 0, 120, 'robots=\nauthor='),
(55, 'Image fixe accueil', 'nos-actions', '', '<h3>Resto Rue</h3>\r\n<p><img height="90" alt="DSC_0030_1.JPG" align="left" border="0" src="/images/stories/DSC_0030_1.JPG" /> Main Tendue&nbsp; organise un service de distribution de repas aupr&egrave;s des plus d&eacute;munis,&nbsp;directement <strong>dans la rue</strong>. Des <strong>repas complets et chauds</strong> sont servis <strong>tous les dimanches soir de l''ann&eacute;e</strong>.</p>\r\n<h3>Aide Alimentaire</h3>\r\n<p><img height="90" alt="DSC_0196.JPG" width="134" align="left" border="0" src="/images/stories/DSC_0196.JPG" /> En compl&eacute;ment de l''action Resto Rue, Main Tendue organise &eacute;galement une distribution de <strong>colis alimentaire </strong>et d&eacute;veloppe un projet de cr&eacute;ation d''<strong>&eacute;picerie solidaire.</strong></p>', '', 1, 5, 0, 34, '2009-02-14 15:45:39', 62, '', '2011-02-25 15:51:32', 62, 0, '0000-00-00 00:00:00', '2009-02-14 15:45:39', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 75, 0, 8, '', '', 0, 0, 'robots=\nauthor='),
(66, 'essai', 'essai', '', '<table width="200" cellspacing="1" cellpadding="1" border="0">\r\n    <tbody>\r\n        <tr>\r\n            <td>\r\n            <div>test audio<br />\r\n            {play}/files/atelier4_morceau3.mp3{/play}</div>\r\n            &nbsp;</td>\r\n            <td><img height="112" width="150" align="baseline" alt="strawberry.jpg" src="/images/stories/fruit/strawberry.jpg" /></td>\r\n        </tr>\r\n        <tr>\r\n            <td>gjhbjhjhvkhjkhjkhjgkjhgkjhhgf<br />\r\n            hgjghfjhgvjhvhjgfjhgfjhf</td>\r\n            <td><a href="http://www.google.fr" target="_blank">cliquez-ici</a></td>\r\n        </tr>\r\n        <tr>\r\n            <td>&nbsp;</td>\r\n            <td>&nbsp;</td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n<a href="http://www.youtube.com/watch?v=U1Kq4q1xxqg" rel="lightbox;width=405;height=390">erfvfgdg</a><br />\r\n<br />\r\n<a href="http://www.lizmccomb.com/common/video/flv/vhmtctoul1erm-flv.html" rel="lightbox;width=600;height=800">Liz McComb</a><br />\r\n<a href="http://www.youtube.com/v/U1Kq4q1xxqg" rel="lightbox;width=405;height=390">Description...</a><br />\r\n<br type="_moz" />', '', -2, 5, 0, 34, '2009-04-04 12:43:16', 62, '', '2009-04-05 21:32:38', 62, 0, '0000-00-00 00:00:00', '2009-04-04 12:43:16', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(56, 'Nos actions 2', 'nos-actions', '', '<br />\r\n<br />\r\n<h3><a rel="lightbox" title="Distribution" href="images/stories/repas1grand.jpg"><img height="75" align="left" width="110" alt="Repas1.jpg" src="images/stories/Repas1.jpg" /></a>Resto Rue</h3>\r\nLorem ipsum dolor sit amet, consectetur<br />\r\nsed do eiusmod tempor incididunt ut labore <br />\r\naliqua. Ut enim ad minim veniam, quis nostrud <a href="index.php?view=article&amp;id=46&amp;Itemid=53"><br />\r\nEn savoir plus</a>\r\n<h3><a rel="lightbox" title="Distribution" href="images/stories/Repas2.jpg"><img height="73" align="left" width="110" alt="Repas2.jpg" src="images/stories/Repas2.jpg" /></a>Pr&eacute;paration et <br />\r\ndistribution des repas</h3>\r\nLorem ipsum dolor sit amet, consectetur <br />\r\nsed do eiusmod tempor incididunt ut labore<br />\r\naliqua. Ut enim ad minim veniam, quis nostrud exercitation <a href="index.php?view=article&amp;id=46&amp;Itemid=53"><br />\r\nEn savoir plus</a>', '', -2, 5, 0, 34, '2009-02-14 15:45:39', 62, '', '2009-02-18 20:40:30', 62, 0, '0000-00-00 00:00:00', '2009-02-14 15:45:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 16, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO mtd_content (id, title, alias, title_alias, introtext, `fulltext`, state, sectionid, mask, catid, created, created_by, created_by_alias, modified, modified_by, checked_out, checked_out_time, publish_up, publish_down, images, urls, attribs, version, parentid, ordering, metakey, metadesc, access, hits, metadata) VALUES
(48, 'Partenaires', 'partenaires', '', '<p style="text-align: center">&nbsp;</p>\r\n<p style="text-align: center"><a target="_blank" href="http://cethalesispaca.com/"><img style="width: 180px; height: 54px" alt="Mairie de Toulouse" border="0" src="/images/stories/Tales.jpg" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target="_blank" href="http://www.toulouse.fr"><img height="90" alt="Mairie de Toulouse" width="85" border="0" src="/images/stories/images_partenaires/logo_mairie_toulouse.jpg" /></a>&nbsp;&nbsp;&nbsp; &nbsp; <a target="_blank" href="http://www.cg31.fr"><img height="57" alt="conseil general Haute Garonne" width="150" border="0" src="/images/stories/images_partenaires/conseil.jpg" /></a>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a target="_blank" href="http://www.caisse-epargne.fr/"><img height="120" alt="Caisse d''Epargne" width="103" border="0" src="/images/stories/images_partenaires/caissedepargne_7c2f4.png" /></a></p>\r\n<p style="text-align: center"><a target="_blank" href="http://www.auchan.fr"><img height="53" alt="Auchan" width="96" border="0" src="/images/stories/images_partenaires/auchan.jpg" /></a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a target="_blank" href="http://www.banquealimentaire.org"><img height="66" alt="Banque alimentaire de Toulouse" width="64" border="0" src="/images/stories/images_partenaires/logo_banqalim_62123.png" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a target="_blank" href="http://www.tv-sol.org/"><img height="75" alt="TV SOL" width="100" border="0" src="/images/stories/images_partenaires/TVSOL1.jpg" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a target="_blank" href="http://www.fa-traiteur.com/"><img height="100" alt="Fa Traiteur" width="187" border="0" src="/images/stories/images_partenaires/logo-haut%20traiteur.jpg" /></a>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <a target="_blank" href="http://www.fep.asso.fr/"><img height="99" alt="FEP" width="131" border="0" src="/images/stories/fep.jpg" /></a>&nbsp;&nbsp;&nbsp; <a target="_blank" href="http://www.nfrance.com"><img height="74" alt="nfrance" width="215" border="0" src="/images/stories/images_partenaires/logo%20nfrance.jpg" /></a><a href="http://diversite.randstad.fr/Pages/PageInterieureInstitut.aspx?p=00017"><img style="width: 179px; height: 41px" alt="" src="images/stories/images_partenaires/logo_institut_randstad.gif" /></a></p>', '', 1, 5, 0, 34, '2009-01-15 13:02:11', 62, '', '2011-10-01 06:24:42', 62, 0, '0000-00-00 00:00:00', '2009-01-15 13:02:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 23, 0, 10, '', '', 0, 1483, 'robots=\nauthor='),
(70, 'Focus sur le concert de Liz McComb', 'focus-sur-le-concert-de-liz-mccomb', '', '<div style="text-align: center"><span style="font-size: large">Retour sur le concert &eacute;v&egrave;nement de LizMcComb, au profit de notre association.<br />\r\n</span></div>\r\n<div style="text-align: center">&nbsp;</div>\r\n<div style="text-align: center"><a rel="lightbox;width=10;height=10" href="http://www.lizmccomb.com/common/video/flv/vhmtctoulconc-flv.html"><span style="color: #ff0000"><span style="font-size: xx-large">Voir la vid&eacute;o du concert</span></span></a></div>\r\n<div style="text-align: center">&nbsp;<br />\r\n<br />\r\n&nbsp;<img style="width: 332px; height: 258px" alt="Affiche_4x3_toulouse500px.jpg" align="baseline" src="/images/stories/Affiche_4x3_toulouse500px.jpg" /><br />\r\n<br />\r\n<span style="font-size: medium"><strong>Un d&eacute;fit fou </strong>a &eacute;t&eacute; envisag&eacute; afin de faire conna&icirc;tre l&rsquo;association et de financer une partie de ce projet : <strong>Organiser un concert avec la chanteuse Liz Mc Comb</strong>, diva du gospel, consid&eacute;r&eacute;e comme la digne h&eacute;riti&egrave;re de Mahalia Jackson, <strong>accompagn&eacute;e d&rsquo;une chorale de 300 personnes &agrave; la Halle aux Grains de Toulouse</strong>.<br />\r\n<br />\r\n</span><object width="240" type="application/x-shockwave-flash" data="http://www.dailymotion.com/swf/xaj82v&amp;related=0" height="200">\r\n<param name="movie" value="http://www.dailymotion.com/swf/xaj82v&amp;related=0" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowScriptAccess" value="always" /><a href="http://www.dailymotion.com/video/xaj82v_concert-liz-mccomb_music?embed=1"><img height="200" alt="" width="240" src="http://www.dailymotion.com/thumbnail/video/xaj82v" /></a></object></div>\r\n<p><span style="font-size: medium">Apr&egrave;s avoir pris contact avec G&eacute;rard VACHER, producteur de Liz McComb, et au bout de 9 mois de travail, la date du 22 novembre 2008 est arr&ecirc;t&eacute;e pour une coproduction au profit de l&rsquo;association.<br />\r\n<br />\r\nPour r&eacute;aliser cet &eacute;v&egrave;nement nous avons b&eacute;n&eacute;fici&eacute; du soutien de:</span></p>\r\n<ul>\r\n    <li><span style="font-size: medium"><strong>12 b&eacute;n&eacute;voles</strong> pour l&rsquo;affichage et distribution de flyers durant 4/5semaines </span></li>\r\n    <li><span style="font-size: medium"><strong>10 partenaires</strong> (Mairie de Toulouse, La D&eacute;p&ecirc;che de Midi, Phare FM, Auchan, Nfrance Conseil, BEEI, Le Petit Journal, Le Cr&eacute;dit Agricole Midi Toulousain, FNAC, ARPA.) </span></li>\r\n    <li><span style="font-size: medium"><strong>27 b&eacute;n&eacute;voles</strong> le soir du concert </span></li>\r\n    <li><span style="font-size: medium"><strong>300 choristes</strong> (12 chorales de la r&eacute;gion Toulousaine pr&eacute;sentes sur sc&egrave;ne) </span></li>\r\n</ul>\r\n<p><span style="font-size: medium"><br />\r\nCeci sans compter <strong>tous ceux qui ont particip&eacute; durant ces 9 mois</strong> &agrave; la mise en place de la billeterie, les contacts avec les comit&eacute;s d&rsquo;entreprises, les t&acirc;ches administratives,&hellip;..<br />\r\n<br />\r\nVoici le r&eacute;sultat bien m&eacute;rit&eacute; de tous ces efforts :</span></p>\r\n<div style="text-align: center"><span style="font-size: medium"><strong>3h de concert &eacute;poustouflant &amp; 1600 spectateurs</strong></span></div>\r\n<p><span style="font-size: medium">&nbsp;</span></p>\r\n<div style="text-align: center"><span style="font-size: medium">Alors vraiment, un grand Merci &agrave; tous !!<br />\r\n<strong>Merci &agrave; Liz Mc Comb</strong> d&rsquo;avoir accept&eacute; de soutenir notre cause.<br />\r\n<strong>Merci &agrave; G&eacute;rard Vacher</strong> pour nous avoir fait confiance.<br />\r\n<strong>Merci &agrave; tous nos partenaires.</strong> Sans vous, tout ceci n&rsquo;aurait pas pu &ecirc;tre possible .</span></div>\r\n<p>&nbsp;</p>\r\n<div><i><br />\r\n</i></div>', '', 1, 6, 0, 39, '2009-09-14 09:37:18', 62, '', '2010-12-08 10:31:29', 62, 0, '0000-00-00 00:00:00', '2009-09-14 09:37:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 387, 'robots=\nauthor='),
(49, 'CONCERT EVENEMENT', 'concert-evenement', '', '<p style="text-align: justify">&nbsp;<span style="color: black; font-size: 9pt">&nbsp;&nbsp;Unique dans l&rsquo;univers du gospel fran&ccedil;ais, le groupe Gospel Praise Family a fait sien tout le registre du gospel, sans rien perdre de son intensit&eacute;, de ses rythmes et de ses multiples influences. Un r&eacute;pertoire revisit&eacute; sur sc&egrave;ne lors de nombreux concerts (plus d&rsquo;une centaine), qui va du gospel urbain teint&eacute; de sons soul et funky aux balades pop gospel. Sans oublier le gospel traditionnel o&ugrave; le groupe trouve son inspiration principale cr&eacute;&eacute;e en 2001 la formation Gospel Praise Family compte 40 choristes, tous issus de la r&eacute;gion toulousaine,&nbsp; tous passionn&eacute;s par cette musique authentique et inspir&eacute;e qui se d&eacute;cline au-del&agrave; de tous les horizons.&nbsp;&nbsp;</span><span style="color: rgb(227,108,10)"><a href="http://www.gospelpraisefamily.com/accueil.htm">www.gospelpraisefamily.com</a></span></p>\r\n<div style="margin: 0cm 0cm 10pt"><span style="line-height: 115%; color: black; font-size: 9pt"><br />\r\n</span><span style="color: rgb(255,102,0)"><b><i>LE 21 NOVEMBRE AU CENTRE CULTUREL BONNEFOY A 20H30</i></b></span></div>\r\n<div style="margin: 0cm 0cm 10pt"><span style="color: rgb(255,102,0)"><strong><span style="font-size: x-small"><em>CONCERT DE SOUTIEN A L''ASSOCIATION MAIN TENDUE 31&nbsp;&nbsp;</em></span></strong></span></div>\r\n<div style="margin: 0cm 0cm 10pt"><span style="color: rgb(255,102,0)"><strong><span style="font-size: x-small"><em><img alt="" width="425" height="601" src="/images/stories/afficheconcert_2009%20-1-.jpg" /></em></span></strong></span></div>\r\n<div style="margin: 0cm 0cm 10pt"><span style="color: rgb(255,102,0)"><strong><span style="font-size: x-small"><em><br />\r\n</em></span></strong></span></div>\r\n<div style="margin: 0cm 0cm 10pt">&nbsp;</div>\r\n<div style="text-align: center; margin: 0cm 0cm 10pt">&nbsp;</div>\r\n<div style="margin: 0cm 0cm 10pt">&nbsp;</div>\r\n<div style="text-align: center; margin: 0cm 0cm 10pt">&nbsp;</div>\r\n<div style="text-align: center; margin: 0cm 0cm 10pt">&nbsp;</div>', '', -2, 5, 0, 38, '2009-01-15 13:36:24', 62, '', '2009-11-26 06:32:12', 62, 0, '0000-00-00 00:00:00', '2009-01-15 13:36:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 25, 0, 0, '', '', 0, 191, 'robots=\nauthor='),
(61, 'Multimédia', 'multimedia', '', '<p><a id="img1" class="imagebas" href="/multimedia/galeriephotos.html"> <span>PHOTOS</span> </a> <a id="img2" class="imagebas" href="/multimedia/audios.html"> <span>AUDIOS</span> </a>   <a id="img3" class="imagebas" href="/multimedia/videos.html">REPORTAGES/VIDEOS</a></p>', '', 1, 5, 0, 34, '2009-02-18 21:15:48', 62, '', '2009-11-02 07:33:44', 62, 0, '0000-00-00 00:00:00', '2009-02-18 21:15:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 6, '', '', 0, 1445, 'robots=\nauthor='),
(62, 'Vidéos', 'videos', '', 'wcsgsdg', '', -2, 5, 0, 34, '2009-02-18 21:38:05', 62, '', '2009-02-18 23:09:14', 62, 0, '0000-00-00 00:00:00', '2009-02-18 21:38:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 19, '', '', 0, 5, 'robots=\nauthor='),
(47, '"SORTIR DE LA RUE"', 'qsortir-de-la-rueq', '', '<p style="text-align: center">&nbsp;</p>\r\n<p style="text-align: center"><strong><span style="font-size: large">&quot; <u>SORTIR DE LA RUE</u> &quot;&nbsp;</span></strong></p>\r\n<p style="text-align: center">&nbsp;</p>\r\n<p style="text-align: center"><span style="font-size: small">Conf&eacute;rence de consensus de novembre 2007 sur le lien suivant :&nbsp;&nbsp;</span><a target="_blank" href="http://sans-abri.typepad.fr/conference_de_consensus/"><span style="font-size: small">sans-abri.typepad.fr/conference_de_consensus/</span></a></p>', '', 1, 5, 0, 38, '2009-01-15 12:49:52', 62, '', '2011-02-25 15:38:39', 62, 0, '0000-00-00 00:00:00', '2009-01-15 12:49:52', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 15, 0, 3, '', '', 0, 1339, 'robots=\nauthor='),
(63, 'Vidéos', 'videos', '', '<div><br />\r\n<br />\r\n<object width="240" height="200" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">\r\n<param name="movie" value="http://www.dailymotion.com/swf/xaibrc_reportage-tv-sol_news" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowScriptAccess" value="always" /><embed width="240" type="application/x-shockwave-flash" height="200" allowscriptaccess="always" allowfullscreen="true" src="http://www.dailymotion.com/swf/xaibrc_reportage-tv-sol_news"></embed></object><b><a href="http://www.dailymotion.com/video/xaibrc_reportage-tv-sol_news">&nbsp;&nbsp; Reportage TV SOL</a></b><br />\r\n<i><br />\r\n</i></div>\r\n<br />\r\n<div><object width="240" height="200" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">\r\n<param name="movie" value="http://www.dailymotion.com/swf/k672mbi8L5IIin1c3qK" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowScriptAccess" value="always" /><embed width="240" type="application/x-shockwave-flash" height="200" allowscriptaccess="always" allowfullscreen="true" src="http://www.dailymotion.com/swf/k672mbi8L5IIin1c3qK"></embed></object><b><a href="http://www.dailymotion.com/video/xaiaeu_repas-de-noel-2007_news">&nbsp;&nbsp; Repas de No&euml;l 2007</a></b><br />\r\n<i><br />\r\n<br />\r\n</i></div>\r\n<div><object width="240" height="200" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000">\r\n<param name="movie" value="http://www.dailymotion.com/swf/k2F47lTHTVaiN61c2l3" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowScriptAccess" value="always" /><embed width="240" type="application/x-shockwave-flash" height="200" allowscriptaccess="always" allowfullscreen="true" src="http://www.dailymotion.com/swf/k2F47lTHTVaiN61c2l3"></embed></object><b><a href="http://www.dailymotion.com/video/xai769_journal-televise_news">&nbsp;&nbsp; Journal T&eacute;l&eacute;vis&eacute;</a></b><br />\r\n<i><br />\r\n</i></div>\r\n<object width="240" height="200">\r\n<param name="movie" value="http://www.youtube.com/v/zRM-WEHJANo&amp;hl=fr&amp;fs=1&amp;" />\r\n<param name="allowFullScreen" value="true" />\r\n<param name="allowscriptaccess" value="always" /><embed width="240" type="application/x-shockwave-flash" height="200" allowscriptaccess="always" allowfullscreen="true" src="http://www.youtube.com/v/zRM-WEHJANo&amp;hl=fr&amp;fs=1&amp;"></embed></object>Concert LizMcComb &agrave; la Halle aux grains. Au profit de la Main Tendue<br />', '', 1, 5, 0, 34, '2009-02-19 07:33:17', 62, '', '2010-12-08 11:40:02', 62, 62, '2011-10-05 08:23:39', '2009-02-19 07:33:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 32, 0, 5, '', '', 0, 1413, 'robots=\nauthor='),
(46, 'Notre association', 'notre-association', '', '<p>{tab=L''association}</p>\r\n<p><br />\r\n<span style="font-size: larger">L&rsquo;association <strong>Main Tendue 31 </strong>(MT31), constitu&eacute;e le 10 juin 2003 sous le statut de la loi de 1901, est n&eacute;e de la volont&eacute; d&rsquo;un groupe d&rsquo;individus d&rsquo;aller au devant des <strong>personnes</strong> subissant une <strong>situation d&rsquo;exclusion</strong>.<br />\r\nL&rsquo;association s&rsquo;est donn&eacute;e pour objet d&rsquo;apporter une <strong>aide morale, mat&eacute;rielle et &eacute;ducative</strong> aux personnes se trouvant en situation de <strong>pr&eacute;carit&eacute; et/ou d&rsquo;exclusion sociale</strong>, en&nbsp;: </span></p>\r\n<ul>\r\n    <li><span style="font-size: larger">leur venant en <strong>aide pour leurs besoins</strong> indispensables&nbsp;;</span></li>\r\n    <li><span style="font-size: larger">leur fournissant des <strong>repas gratuits</strong>&nbsp;;</span></li>\r\n    <li><span style="font-size: larger">contribuant &agrave; favoriser leur <strong>logement</strong>, leur <strong>insertion</strong>, leur <strong>promotion sociale</strong>&nbsp;;</span></li>\r\n    <li><span style="font-size: larger">les <strong>accompagnant </strong>dans leurs <strong>d&eacute;marches administratives</strong>&nbsp;;</span></li>\r\n    <li><span style="font-size: larger">leur consacrant du <strong>temps d&rsquo;&eacute;coute</strong>.</span></li>\r\n</ul>\r\n<p style="text-align: justify"><span style="font-size: larger"><span style="font-family: Arial"><span style="line-height: 115%">En portant assistance dans les domaines pr&eacute;cit&eacute;s, Main Tendue 31 reconnait comme ses valeurs fondatrices,&nbsp; les principes moraux et &eacute;thiques de l&rsquo;&Eacute;vangile<span style="color: red"> </span>et de la D&eacute;claration Universelle des Droits de l&rsquo;Homme de 1948.<span style="color: red"> </span>Main Tendue 31 apporte son aide &agrave; toute personne dans le besoin, sans distinction d&rsquo;origine raciale, religieuse, politiques ou de sexe. Main Tendue 31 accepte en son sein comme adh&eacute;rent ou b&eacute;n&eacute;vole, toute personne se reconnaissant librement dans ses valeurs fondatrices.</span><br type="_moz" />\r\n</span></span></p>\r\n<p style="text-align: left"><span style="font-size: small"><span><span style="color: #ff6600"><span style="background-color: #ffffff"><em>&quot; <b>L''association Main Tendue 31 est membre de la <a target="_blank" href="http://www.fep.asso.fr/">F&eacute;d&eacute;ration de&nbsp;l''Entraide&nbsp;Protestante</a></b>&quot;<br />\r\n</em></span></span></span></span><br />\r\n<br />\r\n{tab=Actions en partenariat}<br />\r\n<span style="font-size: larger">L&rsquo;association <strong>Main Tendue</strong> est ainsi aujourd&rsquo;hui bien connue des<strong> autres acteurs associatifs et institutionnels</strong> agissant dans la <strong>lutte contre la grande pr&eacute;carit&eacute;</strong>, et en particulier des diff&eacute;rents services de la Veille Sociale g&eacute;r&eacute;e par le CCAS de Toulouse (<strong>le 115, l&rsquo;Equipe Mobile Sociale et le P&ocirc;le d&rsquo;Accueil, d&rsquo;Information et d&rsquo;Orientation</strong>), avec lesquels l&rsquo;Association a pu d&eacute;velopper un partenariat de qualit&eacute;.<br />\r\n<br />\r\nL&rsquo;association a &eacute;galement men&eacute; une action de <strong>pr&eacute;vention et d&rsquo;information</strong> sur les <strong>dangers de l&rsquo;alcool</strong>, sur un week-end, en partenariat avec la Caisse Primaire d&rsquo;Assurance Maladie et l&rsquo;Association des Alcooliques Anonymes.</span><br />\r\n<br />\r\n<br />\r\n{tab=Nos Rapport d''Activit&eacute;s}<br />\r\n&nbsp;</p>\r\n<div align="center"><span style="font-size: large"><font size="2"><strong><span style="font-size: medium">\r\n<p><span style="font-size: large"><font size="2"><span><font size="2"><a href="/files/Rapport%20d''Activit%C3%A9s%202010.pdf"><span style="font-size: larger"><strong>-&gt;&gt;&nbsp;&nbsp; Consultez notre &quot;Rapport d''Activit&eacute;s 2010&quot; en PDF.</strong></span></a><br />\r\n<br />\r\n<a href="/files/Rapport%20d''Activit%C3%A9s%202009(1).pdf"><span style="font-size: larger"><strong>-&gt;&gt;&nbsp;&nbsp; Consultez notre &quot;Rapport d''Activit&eacute;s 2009&quot; en PDF.</strong></span></a><br />\r\n<br />\r\n</font></span><a href="/files/Rapport%20d''Activit%C3%A9s%202008.pdf"><span style="font-size: larger"><strong>-&gt;&gt;&nbsp;&nbsp; Consultez notre &quot;Rapport d''Activit&eacute;s 2008&quot; en PDF.</strong></span></a></font></span>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span><font size="2"><br />\r\n<br />\r\n<br />\r\n<br />\r\n</font></span></p>\r\n</span></strong></font></span></div>', '', 1, 5, 0, 34, '2009-01-15 12:37:29', 62, '', '2011-05-03 20:03:26', 62, 62, '2011-05-03 20:03:26', '2009-01-15 12:37:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 48, 0, 11, '', '', 0, 2190, 'robots=\nauthor='),
(33, 'What is an Uncategorised Article?', 'what-is-uncategorised-article', '', 'Most Articles will be assigned to a Section and Category. In many cases, you might not know where you want it to appear so put the Article in the <em>Uncategorized </em>Section/Category. The Articles marked as <em>Uncategorized </em>are handled as static content.', '', -2, 3, 0, 31, '2008-08-11 15:14:11', 62, '', '2008-08-11 15:14:11', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(34, 'Does the PDF icon render pictures and special characters?', 'does-the-pdf-icon-render-pictures-and-special-characters', '', 'Yes! Prior to Joomla! 1.5, only the text values of an Article and only for ISO-8859-1 encoding was allowed in the PDF rendition. With the new PDF library in place, the complete Article including images is rendered and applied to the PDF. The PDF generator also handles the UTF-8 texts and can handle any character sets from any language. The appropriate fonts must be installed but this is done automatically during a language pack installation.', '', -2, 3, 0, 32, '2008-08-11 17:14:57', 62, '', '2008-08-11 17:14:57', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(35, 'Is it possible to change A Menu Item''s Type?', 'is-it-possible-to-change-the-types-of-menu-entries', '', '<p>You indeed can change the Menu Item''s Type to whatever you want, even after they have been created. </p><p>If, for instance, you want to change the Blog Section of a Menu link, go to the Control Panel-&gt;Menus Menu-&gt;[menuname]-&gt;Menu Item Manager and edit the Menu Item. Select the <strong>Change Type</strong> button and choose the new style of Menu Item Type from the available list. Thereafter, alter the Details and Parameters to reconfigure the display for the new selection  as you require it.</p>', '', -2, 3, 0, 31, '2008-08-10 23:15:36', 62, '', '2008-08-10 23:15:36', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 18, 'robots=\nauthor='),
(36, 'Where did the Installers go?', 'where-did-the-installer-go', '', 'The improved Installer can be found under the Extensions Menu. With versions prior to Joomla! 1.5 you needed to select a specific Extension type when you wanted to install it and use the Installer associated with it, with Joomla! 1.5 you just select the Extension you want to upload, and click on install. The Installer will do all the hard work for you.', '', -2, 3, 0, 28, '2008-08-10 23:16:20', 62, '', '2008-08-10 23:16:20', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(37, 'Where did the Mambots go?', 'where-did-the-mambots-go', '', '<p>Mambots have been renamed as Plugins. </p><p>Mambots were introduced in Mambo and offered possibilities to add plug-in logic to your site mainly for the purpose of manipulating content. In Joomla! 1.5, Plugins will now have much broader capabilities than Mambots. Plugins are able to extend functionality at the framework layer as well.</p>', '', -2, 3, 0, 28, '2008-08-11 09:17:00', 62, '', '2008-08-11 09:17:00', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(38, 'I installed with my own language, but the Back-end is still in English', 'i-installed-with-my-own-language-but-the-back-end-is-still-in-english', '', '<p>A lot of different languages are available for the Back-end, but by default this language may not be installed. If you want a translated Back-end, get your language pack and install it using the Extension Installer. After this, go to the Extensions Menu, select Language Manager and make your language the default one. Your Back-end will be translated immediately.</p><p>Users who have access rights to the Back-end may choose the language they prefer in their Personal Details parameters. This is of also true for the Front-end language.</p><p> A good place to find where to download your languages and localised versions of Joomla! is <a href="http://extensions.joomla.org/index.php?option=com_mtree&task=listcats&cat_id=1837&Itemid=35" target="_blank" title="Translations for Joomla!">Translations for Joomla!</a> on JED.</p>', '', -2, 3, 0, 32, '2008-08-11 17:18:14', 62, '', '2008-08-11 17:18:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 7, 'robots=\nauthor='),
(39, 'How do I remove an Article?', 'how-do-i-remove-an-article', '', '<p>To completely remove an Article, select the Articles that you want to delete and move them to the Trash. Next, open the Article Trash in the Content Menu and select the Articles you want to delete. After deleting an Article, it is no longer available as it has been deleted from the database and it is not possible to undo this operation.  </p>', '', -2, 3, 0, 27, '2008-08-11 09:19:01', 62, '', '2008-08-11 09:19:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(40, 'What is the difference between Archiving and Trashing an Article?', 'what-is-the-difference-between-archiving-and-trashing-an-article', '', '<p>When you <em>Archive </em>an Article, the content is put into a state which removes it from your site as published content. The Article is still available from within the Control Panel and can be <em>retrieved </em>for editing or republishing purposes. Trashed Articles are just one step from being permanently deleted but are still available until you Remove them from the Trash Manager. You should use Archive if you consider an Article important, but not current. Trash should be used when you want to delete the content entirely from your site and from future search results.  </p>', '', -2, 3, 0, 27, '2008-08-11 05:19:43', 62, '', '2008-08-11 05:19:43', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(41, 'Newsflash 5', 'newsflash-5', '', 'Joomla! 1.5 - ''Experience the Freedom''!. It has never been easier to create your own dynamic Web site. Manage all your content from the best CMS admin interface and in virtually any language you speak.', '', -2, 1, 0, 3, '2008-08-12 00:17:31', 62, '', '2008-08-12 00:17:31', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Newsflash 4', 'newsflash-4', '', 'Yesterday all servers in the U.S. went out on strike in a bid to get more RAM and better CPUs. A spokes person said that the need for better RAM was due to some fool increasing the front-side bus speed. In future, buses will be told to slow down in residential motherboards.', '', -2, 1, 0, 3, '2008-08-12 00:25:50', 62, '', '2008-08-12 00:25:50', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Example Pages and Menu Links', 'example-pages-and-menu-links', '', '<p>This page is an example of content that is <em>Uncategorized</em>; that is, it does not belong to any Section or Category. You will see there is a new Menu in the left column. It shows links to the same content presented in 4 different page layouts.</p><ul><li>Section Blog</li><li>Section Table</li><li> Blog Category</li><li>Category Table</li></ul><p>Follow the links in the <strong>Example Pages</strong> Menu to see some of the options available to you to present all the different types of content included within the default installation of Joomla!.</p><p>This includes Components and individual Articles. These links or Menu Item Types (to give them their proper name) are all controlled from within the <strong><font face="courier new,courier">Menu Manager-&gt;[menuname]-&gt;Menu Items Manager</font></strong>. </p>', '', -2, 0, 0, 0, '2008-08-12 09:26:52', 62, '', '2008-08-12 09:26:52', 62, 0, '0000-00-00 00:00:00', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 1, 'Uncategorized, Uncategorized, Example Pages and Menu Links', '', 0, 43, 'robots=\nauthor='),
(44, 'Joomla! Security Strike Team', 'joomla-security-strike-team', '', '<p>The Joomla! Project has assembled a top-notch team of experts to form the new Joomla! Security Strike Team. This new team will solely focus on investigating and resolving security issues. Instead of working in relative secrecy, the JSST will have a strong public-facing presence at the <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a>.</p>', '<p>The new JSST will call the new <a href="http://developer.joomla.org/security.html" target="_blank" title="Joomla! Security Center">Joomla! Security Center</a> their home base. The Security Center provides a public presence for <a href="http://developer.joomla.org/security/news.html" target="_blank" title="Joomla! Security News">security issues</a> and a platform for the JSST to <a href="http://developer.joomla.org/security/articles-tutorials.html" target="_blank" title="Joomla! Security Articles">help the general public better understand security</a> and how it relates to Joomla!. The Security Center also offers users a clearer understanding of how security issues are handled. There''s also a <a href="http://feeds.joomla.org/JoomlaSecurityNews" target="_blank" title="Joomla! Security News Feed">news feed</a>, which provides subscribers an up-to-the-minute notification of security issues as they arise.</p>', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla! Community Portal', 'joomla-community-portal', '', '<p>The <a href="http://community.joomla.org/" target="_blank" title="Joomla! Community Portal">Joomla! Community Portal</a> is now online. There, you will find a constant source of information about the activities of contributors powering the Joomla! Project. Learn about <a href="http://community.joomla.org/events.html" target="_blank" title="Joomla! Events">Joomla! Events</a> worldwide, and see if there is a <a href="http://community.joomla.org/user-groups.html" target="_blank" title="Joomla! User Groups">Joomla! User Group</a> nearby.</p><p>The <a href="http://community.joomla.org/magazine.html" target="_blank" title="Joomla! Community Magazine">Joomla! Community Magazine</a> promises an interesting overview of feature articles, community accomplishments, learning topics, and project updates each month. Also, check out <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">JoomlaConnect&#0153;</a>. This aggregated RSS feed brings together Joomla! news from all over the world in your language. Get the latest and greatest by clicking <a href="http://community.joomla.org/connect.html" target="_blank" title="JoomlaConnect">here</a>.</p>', '', -2, 1, 0, 1, '2007-07-07 09:54:06', 62, '', '2007-07-07 09:54:06', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(73, 'Accueil CONCERT EVENEMENT', 'accueil-concert-evenement', '', '<div>\r\n<p><img style="width: 108px; height: 153px" alt="" align="left" src="/images/stories/afficheconcert_2009%20-150-.jpg" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style="text-align: center">Concert Ev&egrave;nement avec Gospel Praise Family</h2>\r\n<h3 style="text-align: center">LE 21 NOVEMBRE AU CENTRE CULTUREL BONNEFOY A 20H30\r\n<p>CONCERT DE SOUTIEN A L''ASSOCIATION MAIN TENDUE 31&nbsp;&nbsp;</p>\r\n<p><a href="http://www.maintendue31.org/component/content/article/38-news/49-concert-evenement.html">en savoir plus</a>...</p>\r\n<br />\r\n<br />\r\n&nbsp;</h3>\r\n</div>', '', -2, 0, 0, 0, '2009-01-15 13:36:24', 62, '', '2009-11-26 06:32:43', 62, 0, '0000-00-00 00:00:00', '2009-01-15 13:36:24', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 17, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(74, '-- BONNE ANNEE --', 'editorial', '', '<p style="text-align: center">&nbsp;</p>\r\n<p style="text-align: center"><span style="font-size: large"><span><span style="font-family: Tahoma">&nbsp;</span></span></span><strong><span style="color: #ff0000"><span style="font-size: large"><span><span style="font-size: x-large"><u><span style="font-family: Tahoma">Nouvelle Ann&eacute;e 2010 !!!</span></u></span></span></span></span></strong></p>\r\n<div style="text-align: justify"><span style="font-size: medium"><span><span style="font-family: Tahoma"><span style="color: #555555">Le mois de Janvier marque une nouvelle ann&eacute;e qui commence&hellip;. De nombreux v&oelig;ux sont souhait&eacute;s &agrave; tous ceux et celles qui nous entourent&nbsp;: &laquo;&nbsp;<em>Je vous pr&eacute;sente mes meilleurs v&oelig;ux&nbsp;</em>&raquo; ou &laquo;&nbsp;<em>Recevez tous nos souhaits en ce d&eacute;but d&rsquo;ann&eacute;e&nbsp;</em>&raquo;</span></span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>Quel seraient nos v&oelig;ux &agrave; partager ensemble pour cette Nouvelle Ann&eacute;e 2010&nbsp;?</strong></span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>RIONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><b>&nbsp;</b><span style="color: #555555">Red&eacute;couvrons tous les moments de joie dans toutes nos familles, nos associations, Il y a tant de bonheur &agrave; donner&hellip;</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>PARTAGEONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><b>&nbsp;</b><span style="color: #555555">Retournons &agrave; la source de ce qui fait chacune de nos vies en allant vers l&rsquo;autre, en prenant le temps de dialoguer afin de se conna&icirc;tre davantage, vivre de la proximit&eacute; dans notre quotidien&hellip; Chacun est unique et chacun a de la valeur.</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>INFORMONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><b>&nbsp;</b><span style="color: #555555">N&rsquo;ayons pas peur de faire conna&icirc;tre autour de nous toutes les initiatives concernant la vie associative et les actions de&nbsp;solidarit&eacute;.</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>ECOUTONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;<span style="color: #555555">Soyons des oreilles qui savent entendre tous les cris de notre monde&hellip;</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>ALLONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><b>&nbsp;</b><span style="color: #555555">Levons-nous et r&eacute;pondons aux besoins en acceptant nos propres limites, sans en devenir esclave.</span><span style="color: #555555">Ne restons pas isol&eacute;s, alors que nous avons chacune et chacun des talents &agrave; partager entre nos diff&eacute;rentes g&eacute;n&eacute;rations, des savoirs &agrave; transmettre&hellip;..En retour nous recevrons.</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: justify"><span style="color: #3366ff"><span style="font-size: medium"><span style="font-family: Tahoma"><strong>RASSEMBLONS&nbsp;!</strong></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><b>&nbsp;</b><span style="color: #555555">C&rsquo;est ensemble que nous apporterons l&rsquo;esp&eacute;rance au travers de notre aide durant cette nouvelle ann&eacute;e dans les joies, les peines, les soucis, et que nous pourrons accepter l&rsquo;autre tel qu&rsquo;il est et non comme nous voudrions qu&rsquo;il soit.</span></span></span></div>\r\n<div style="text-align: justify"><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<div style="text-align: center"><span style="color: #ff0000"><span style="font-size: x-large"><span><span style="font-family: Tahoma"><strong>2010&nbsp;:</strong></span></span></span></span><span style="font-size: x-large"><span><span style="font-family: Tahoma"><strong><span style="color: #555555"> </span></strong></span></span></span><span style="font-size: large"><em><span><span style="font-family: Tahoma"><span style="color: #555555">L&rsquo;ann&eacute;e o&ugrave;, ensemble, nous pourrons nous retrouver pour partager tous ces instants et apporter aux bless&eacute;s de la vie&nbsp;&nbsp;</span></span></span></em></span></div>\r\n<div style="text-align: center"><span style="font-size: large"><span style="color: #ff0000"><strong><u><span style="font-family: Tahoma">UNE </span></u></strong><u><span style="font-family: Tahoma"><b>MAIN TENDUE</b></span></u><span style="font-family: Tahoma"><b>,</b></span><u><span style="font-family: Tahoma"><b> UN GESTE</b></span></u><span style="font-family: Tahoma"><b>,</b></span><u><span style="font-family: Tahoma"><b> UN ESPOIR.</b></span></u></span></span></div>\r\n<div><span style="font-size: medium"><span style="font-family: Tahoma">&nbsp;</span></span></div>\r\n<p style="text-align: center"><span style="font-size: large"><span><span style="font-family: Tahoma"><span style="color: #555555">Bonne et heureuse ann&eacute;e &agrave; tous&nbsp;!</span></span></span></span><span style="font-size: medium"><span style="font-family: Tahoma"><span style="color: #555555">&nbsp;</span></span></span></p>\r\n<p style="text-align: center">&nbsp;</p>', '', 0, 5, 0, 38, '2010-01-03 20:11:22', 62, '', '2010-02-17 20:12:14', 62, 0, '0000-00-00 00:00:00', '2010-01-03 20:11:22', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 45, 'robots=\nauthor='),
(76, 'Rapport d''Activités 2009', 'rapport-dactivites-2009', '', '<p><a href="/files/Rapport%20d''Activit%C3%A9s%202009(1).pdf">Rapport d''activit&eacute;e 2009 consultable en&nbsp;PDF</a></p>', '', 0, 5, 0, 34, '2010-03-25 21:07:56', 65, '', '2010-03-25 22:01:50', 65, 62, '2011-05-03 19:55:41', '2010-03-25 21:07:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_content_frontpage'
--

CREATE TABLE IF NOT EXISTS mtd_content_frontpage (
  content_id int(11) NOT NULL DEFAULT '0',
  ordering int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (content_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_content_frontpage'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_content_rating'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table 'mtd_core_acl_aro'
--

INSERT INTO mtd_core_acl_aro (id, section_value, `value`, order_value, `name`, hidden) VALUES
(10, 'users', '62', 0, 'Administrator', 0),
(13, 'users', '65', 0, 'DAVID', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table 'mtd_core_acl_aro_groups'
--

INSERT INTO mtd_core_acl_aro_groups (id, parent_id, `name`, lft, rgt, `value`) VALUES
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
-- Structure de la table 'mtd_core_acl_aro_map'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_aro_map (
  acl_id int(11) NOT NULL DEFAULT '0',
  section_value varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (acl_id,section_value,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_core_acl_aro_map'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table 'mtd_core_acl_aro_sections'
--

INSERT INTO mtd_core_acl_aro_sections (id, `value`, order_value, `name`, hidden) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_acl_groups_aro_map'
--

CREATE TABLE IF NOT EXISTS mtd_core_acl_groups_aro_map (
  group_id int(11) NOT NULL DEFAULT '0',
  section_value varchar(240) NOT NULL DEFAULT '',
  aro_id int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY group_id_aro_id_groups_aro_map (group_id,section_value,aro_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_core_acl_groups_aro_map'
--

INSERT INTO mtd_core_acl_groups_aro_map (group_id, section_value, aro_id) VALUES
(25, '', 10),
(25, '', 13);

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_log_items'
--

CREATE TABLE IF NOT EXISTS mtd_core_log_items (
  time_stamp date NOT NULL DEFAULT '0000-00-00',
  item_table varchar(50) NOT NULL DEFAULT '',
  item_id int(11) unsigned NOT NULL DEFAULT '0',
  hits int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_core_log_items'
--


-- --------------------------------------------------------

--
-- Structure de la table 'mtd_core_log_searches'
--

CREATE TABLE IF NOT EXISTS mtd_core_log_searches (
  search_term varchar(128) NOT NULL DEFAULT '',
  hits int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_core_log_searches'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Contenu de la table 'mtd_donation'
--

INSERT INTO mtd_donation (id, nom, prenom, adresse, codepostal, ville, email, newsletter, recufiscal, montant, datepaiement, methodepaiement) VALUES
(87, 'pecatte', 'elisabeth', '', '', '', 'e.pecatte@free.fr', 0, 0, 0, '0000-00-00', ''),
(86, 'pecatte', 'elisabeth', '', '', '', 'e.pecatte@free.fr', 0, 0, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_groups'
--

CREATE TABLE IF NOT EXISTS mtd_groups (
  id tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_groups'
--

INSERT INTO mtd_groups (id, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_hsconfig'
--

INSERT INTO mtd_hsconfig (id, css, overlayhtml, params, published, modified, publish_tmst) VALUES
(-1, '.highslide-wrapper {\r\n	background: white;\r\n}\r\n\r\n.highslide-caption {\r\n	border: 2px solid white;\r\n	border-top: none;\r\n	font-family: Verdana, Helvetica;\r\n	font-size: 10pt;\r\n	padding: 5px;\r\n	background-color: white;\r\n}\r\n\r\n/* credits */\r\na.highslide-credits, a.highslide-credits i {\r\n	padding: 2px;\r\n	color: silver;\r\n	text-decoration: none;\r\n	font-size: 10px;\r\n}\r\n\r\na.highslide-credits:hover, a.highslide-credits:hover i {\r\n	color: white;\r\n	background-color: gray;\r\n}\r\n\r\n/* loading icon and style*/\r\n.highslide-loading {\r\n	display: block;\r\n	color: black;\r\n	font-size: 8pt;\r\n	font-family: sans-serif;\r\n	font-weight: bold;\r\n	text-decoration: none;\r\n	padding: 2px;\r\n	border: 1px solid black;\r\n	background-color: white;\r\n	padding-left: 22px;\r\n	background-image: url(/plugins/content/highslide/graphics/loader.white.gif);\r\n	background-repeat: no-repeat;\r\n	background-position: 3px 1px;\r\n}\r\n\r\n/* 2-pixel gray border around thumbnail */\r\n.highslide img {\r\n	border: 2px solid gray;\r\n}\r\n\r\n/* 2-pixel silver border around thumbnail when mouse hovers over it */\r\n.highslide:hover img {\r\n	border: 2px solid silver;\r\n}\r\n\r\n/* 5-pixel white border around popup image */\r\n.highslide-image {\r\n	border: 5px solid white;\r\n}\r\n\r\n/* full expand icon size and margins */\r\na.highslide-full-expand {\r\n	background: url(/plugins/content/highslide/graphics/fullexpand.gif) no-repeat;\r\n	display: block;\r\n	margin: 0 10px 10px 0;\r\n	width: 34px;\r\n	height: 34px;\r\n}\r\n\r\n.textwrapper .highslide {\r\n	font-size: 11pt;\r\n	text-decoration: none;\r\n	display: block;\r\n	text-align: center;\r\n}\r\n.control {\r\n	float: right;\r\n    display: block;\r\n    /*position: relative;*/\r\n	margin: 0 5px;\r\n	font-size: 9pt;\r\n    font-weight: bold;\r\n	text-decoration: none;\r\n	text-transform: uppercase;\r\n}\r\n.highslide-move {\r\n    cursor: move;\r\n}\r\n.highslide-resize {\r\n    cursor: nw-resize;\r\n}\r\n.overlay-text{\r\n	text-align: center;\r\n	background: black;\r\n	font-weight: bold;\r\n	font-size: 150%;\r\n	color: white;\r\n	padding: 10px;\r\n}\r\n.highslide-wrapper .highslide-body {\r\n}\r\n.highslide-wrapper .highslide-footer {\r\n	height: 11px;\r\n}\r\n.highslide-wrapper .highslide-footer .highslide-resize {\r\n	float: right;\r\n	height: 11px;\r\n	width: 11px;\r\n	background: url(/plugins/content/highslide/graphics/resize.gif);\r\n	position: relative;\r\n	top: 0.5em;\r\n	left: 0.5em;\r\n}\r\n/* Individual CSS-classes: white */\r\n.highslide-white {\r\n	background-color: white;\r\n}\r\n.highslide-white .highslide-image {\r\n	border: 5px solid white;\r\n\r\n}\r\n.highslide-white .highslide-caption {\r\n	background-color: white;\r\n}\r\n.highslide-white .control, .highslide-white .control * {\r\n	color: #666;\r\n}\r\n.highslide-white .highslide-html {\r\n    border: 2px solid white;\r\n}\r\n\r\n/* Controlbar example */\r\n.controlbar5 {\r\n	background: url(/plugins/content/highslide/graphics/controlbar5.gif);\r\n	width: 83px;\r\n	height: 18px;\r\n	/* float:right; */\r\n}\r\n.controlbar5 a {\r\n	display: block;\r\n	float: left;\r\n	height: 18px;\r\n}\r\n.controlbar5 a:hover {\r\n	background-image: url(/plugins/content/highslide/graphics/controlbar5-hover.gif);\r\n}\r\n.controlbar5 .previous {\r\n	width: 20px;\r\n}\r\n.controlbar5 .next {\r\n	width: 20px;\r\n	background-position: -20px 0;\r\n}\r\n.controlbar5 .highslide-move {\r\n	width: 20px;\r\n	background-position: -40px 0;\r\n}\r\n.controlbar5 .close {\r\n	width: 20px;\r\n	background-position: -60px 0;\r\n}\r\n.html-header {\r\n	background-image: url(/plugins/content/highslide/graphics/header-background.gif);\r\n	cursor: default;\r\n	height: 18px;\r\n	padding: 2px;\r\n}', '', 'backgroundDimmingColor=black\ndimmingOpacity=0\ndimmingDuration=50\nmodalWhenDimmed=no\nshowCredits=fals\nmouseHoverAction=\nthumbNail=hidden\nallowMultipleInstances=fals\nblockRightClick=fals\nenableKeyListener=tru\nnumberOfImagesToPreload=5\nzIndexCounter=1001\ncaptionEval=this.thumb.alt\ncaptionId=\ncaptionSlideSpeed=1\ncaptionText=\npadToMinWidth=fals\nspaceForCaption=30\ncontentId=\nheight=300\nwidth=300\nallowWidthReduction=fals\nallowHeightReduction=fals\ncacheAjax=tru\npreserveContent=tru\nobjectHeight=\nobjectWidth=\nobjectLoadTime=before\nobjectType=\novThumbnailId=\novSlideshowGroup=\novOverlayId=\novFade=1\novPosition=top right\novHideOnMouseOut=tru\novOpacity=0.8\novUseOnHtml=fals\noutlineType=rounded-black\noutlineStartOffset=3\noutlineWhileAnimating=fals\nallowSizeReduction=fals\nalign=auto\nanchor=auto\neasing=easeInQuad\neasingClose=\nexpandDuration=250\nexpandSteps=10\nrestoreDuration=250\nrestoreSteps=10\nfadeInOut=tru\ntransitions=''fade''\ndragSensitivity=5\nmarginTop=10\nmarginBottom=15\nmarginLeft=10\nmarginRight=15\nminHeight=200\nminWidth=200\ntargetX=\ntargetY=\ncreditsHref=http://vikjavev.no/highslide/\ncreditsText=Réalisé par  <i>Highslide JS</i>\ncreditsTitle=Lien sur le site de Highslide JS\nloadingText=Chargement...\nloadingTitle=Cliquer pour annuler\nloadingOpacity=0.75\nrestoreTitle=Cliquer=Fermer - Cliquer-glisser=Déplacer - Clavier: Flèche gauche=Précédent - Flèche droite=Suivant\nfocusTitle=Cliquer pour mettre au 1er plan\nfullExpandOpacity=1.0\nfullExpandPosition=bottom right\nfullExpandTitle=Cliquer pour afficher la taille réélle\ncloseText=Fermer\ncloseTitle=Cliquer pour fermer\nmoveText=Déplacer\nnextText=Suivant\npreviousText=Précédent\nresizeTitle=Redimensionner\nexpandCursor=zoomin.cur\nrestoreCursor=zoomout.cur\n\n', 1, '2009-02-17 08:39:43', '2009-02-17 08:39:43');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Contenu de la table 'mtd_menu'
--

INSERT INTO mtd_menu (id, menutype, `name`, alias, link, `type`, published, parent, componentid, sublevel, ordering, checked_out, checked_out_time, pollid, browserNav, access, utaccess, params, lft, rgt, home) VALUES
(1, 'mainmenu', 'Accueil', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 21, 62, '2010-01-04 21:58:40', 0, 0, 0, 3, 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=\npage_title=Main Tendue 31\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 0, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 0, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(62, 'mainmenu', 'Antenne', 'antennes', 'index.php?option=com_content&view=article&id=57', 'component', -2, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'multimedia', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', -2, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'multimedia', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', -2, 0, 14, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(60, 'mainmenu', 'Evenements', 'evenements-concerts', 'index.php?option=com_content&view=category&layout=blog&id=39', 'component', 1, 0, 20, 0, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(27, 'mainmenu', 'Joomla! Overview', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', -2, 0, 20, 0, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'About Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Features', 'features', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 62, '2010-01-04 21:16:14', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'The Community', 'the-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 0, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(59, 'multimedia', 'Espace privé', 'espace-prive', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_login_title=1\nheader_login=Espace Privé\nlogin=http://maintendue.pecatte.eu\nlogin_message=1\ndescription_login=1\ndescription_login_text=Cette partie du site est réservée aux membres de l''association "Main Tendue".\nimage_login=-1\nimage_login_align=right\nshow_logout_title=1\nheader_logout=\nlogout=\nlogout_message=1\ndescription_logout=1\ndescription_logout_text=\nimage_logout=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 0, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(61, 'mainmenu', 'Newsletter', 'newsletter', 'index.php?option=com_acajoom', 'component', -2, 0, 46, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(53, 'mainmenu', 'Présentation', 'maintendue-restorue', 'index.php?option=com_content&view=article&id=46', 'component', 1, 0, 20, 0, 22, 65, '2010-03-25 21:48:22', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Nos Actions', 'actions-restorue-aidealimentaire', 'index.php?option=com_content&view=article&id=59', 'component', 1, 0, 20, 0, 23, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(55, 'mainmenu', 'Quelques chiffres', 'quelques-chiffres', 'index.php?option=com_content&view=article&id=52', 'component', -2, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Revue de Presse', 'revuepresse-maintendue', 'index.php?option=com_content&view=category&layout=blog&id=37', 'component', 1, 0, 20, 0, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'Partenaires', 'partenaires-maintendue', 'index.php?option=com_content&view=article&id=48', 'component', 1, 0, 20, 0, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Contact', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 0, 7, 0, 28, 62, '2010-01-04 20:32:52', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'News Feeds', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'multimedia', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'multimedia', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', -2, 0, 4, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(63, 'mainmenu', 'Photos', 'photos', 'index.php?option=com_phocagallery&view=categories', 'component', -2, 0, 83, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\ndisplay_cat_name_title=1\nfont_color=#ee7037\nbackground_color=#ffffff\nbackground_color_hover=#ffffff\nimage_background_color=#ffffff\nimage_background_shadow=shadow1\nborder_color=#ffffff\nborder_color_hover=#ffffff\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\ndisplay_icon_random_image=\ndisplay_back_button=\ndisplay_categories_back_button=\ndisplay_subcat_page=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ncategories_columns=\ndisplay_image_categories=\nimage_categories_size=4\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndetail_window=0\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\ndisplay_phoca_info=\ndefault_pagination=\npagination=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\nenable_user_cp=\nmax_create_cat_char=\ndisplay_rating=\ndisplay_comment=\ncomment_width=\nmax_comment_char=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ngoogle_maps_api_key=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\ndisplay_title_upload=\ndisplay_description_upload=\nmax_upload_char=\nupload_maxsize=\ncat_folder_maxsize=\nenable_flash=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\nicon_format=png\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfront_modal_box_width=\nfront_modal_box_height=\nfront_popup_window_width=\nfront_popup_window_height=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(64, 'mainmenu', 'photos2', 'photos2', 'index.php?option=com_phocagallery&view=user', 'component', -2, 0, 83, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'display_cat_name_title=1\ndisplay_cat_name_breadcrumbs=0\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\ndisplay_icon_random_image=\ndisplay_back_button=\ndisplay_categories_back_button=\ndisplay_subcat_page=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ncategories_columns=\ndisplay_image_categories=\nimage_categories_size=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\ndisplay_phoca_info=\ndefault_pagination=\npagination=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\nenable_user_cp=\nmax_create_cat_char=\ndisplay_rating=\ndisplay_comment=\ncomment_width=\nmax_comment_char=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ngoogle_maps_api_key=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\ndisplay_title_upload=\ndisplay_description_upload=\nmax_upload_char=\nupload_maxsize=\ncat_folder_maxsize=\nenable_flash=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfront_modal_box_width=\nfront_modal_box_height=\nfront_popup_window_width=\nfront_popup_window_height=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(66, 'mainmenu', 'Multimédia', 'multimedia', 'index.php?option=com_content&view=article&id=61', 'component', 1, 0, 20, 0, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(65, 'mainmenu', 'video', 'video', 'index.php?option=com_content&view=article&id=58', 'component', -2, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'mainmenu', 'Multimédia', 'multimedia', 'index.php?option=com_content&view=article&id=61', 'component', -2, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'mainmenu', 'photo', 'photo', 'index.php?option=com_content&view=article&id=62', 'component', -2, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'test', 'test', 'index.php?option=com_content&view=article&id=63', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(70, 'multimedia', 'donation', 'donation', 'index.php?option=com_donation&view=donation&layout=form', 'component', -2, 0, 108, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(71, 'mainmenu', 'form', 'form', 'index.php?option=com_artforms', 'component', -2, 0, 113, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(72, 'mainmenu', 'test', 'test', 'index.php?option=com_content&view=article&id=64', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(73, 'mainmenu', 'newsletter', 'newsletter', 'index.php?option=com_acajoom', 'component', -2, 0, 58, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(74, 'multimedia', 'don', 'don', 'index.php?option=com_donation&view=donation&layout=form', 'component', -2, 0, 108, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(75, 'multimedia', 'Plan du site', 'plan-du-site', 'index.php?option=com_xmap&sitemap=4', 'component', 1, 0, 181, 0, 9, 62, '2010-01-04 21:01:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(76, 'mainmenu', 'Audios', 'audios', 'index.php?option=com_content&view=article&id=65', 'component', 1, 66, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(77, 'mainmenu', 'Vidéos', 'videos', 'index.php?option=com_content&view=article&id=63', 'component', 1, 66, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'mainmenu', 'Photos', 'galeriephotos', 'index.php?option=com_phocagallery&view=categories', 'component', 1, 66, 160, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\ndisplay_cat_name_title=1\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\ndisplay_icon_random_image=\ndisplay_back_button=\ndisplay_categories_back_button=\ndisplay_subcat_page=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ncategories_columns=\ndisplay_image_categories=\nimage_categories_size=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\ndisplay_phoca_info=\ndefault_pagination=\npagination=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\nenable_user_cp=\nmax_create_cat_char=\ndisplay_rating=\ndisplay_comment=\ncomment_width=\nmax_comment_char=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ngoogle_maps_api_key=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\ndisplay_title_upload=\ndisplay_description_upload=\nmax_upload_char=\nupload_maxsize=\ncat_folder_maxsize=\nenable_java=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'multimedia', 'Faire un don', 'faireundon', 'index.php?option=com_content&view=article&id=53', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'multimedia', 'Mentions légales', 'mentions-legales', 'index.php?option=com_content&view=article&id=67', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(81, 'multimedia', 'galeriephotos', 'galeriephotos', 'index.php?option=com_phocagallery&view=categories', 'component', -2, 0, 160, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination=1\nshow_pagination_limit=1\nshow_feed_link=1\ndisplay_cat_name_title=1\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\ndisplay_icon_random_image=\ndisplay_back_button=\ndisplay_categories_back_button=\ndisplay_subcat_page=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ncategories_columns=\ndisplay_image_categories=\nimage_categories_size=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\ndisplay_access_category=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\ndisplay_phoca_info=\ndefault_pagination=\npagination=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\nenable_user_cp=\nmax_create_cat_char=\ndisplay_rating=\ndisplay_comment=\ncomment_width=\nmax_comment_char=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ngoogle_maps_api_key=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\ndisplay_title_upload=\ndisplay_description_upload=\nmax_upload_char=\nupload_maxsize=\ncat_folder_maxsize=\nenable_java=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table 'mtd_menu_types'
--

INSERT INTO mtd_menu_types (id, menutype, title, description) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'multimedia', 'multimedia', 'L''asso en son et images'),
(3, 'topmenu', 'Top Menu', 'Top level navigation');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'mtd_messages'
--


-- --------------------------------------------------------

--
-- Structure de la table 'mtd_messages_cfg'
--

CREATE TABLE IF NOT EXISTS mtd_messages_cfg (
  user_id int(10) unsigned NOT NULL DEFAULT '0',
  cfg_name varchar(100) NOT NULL DEFAULT '',
  cfg_value varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY idx_user_var_name (user_id,cfg_name)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_messages_cfg'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_migration_backlinks'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Contenu de la table 'mtd_modules'
--

INSERT INTO mtd_modules (id, title, content, ordering, position, checked_out, checked_out_time, published, module, numnews, access, showtitle, params, iscore, client_id, control) VALUES
(1, 'Main Menu', '', 1, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(27, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(29, 'Top Menu', '', 1, 'user3', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(44, 'Connexion', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=multimedia\nmenu_style=horiz_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(35, 'Breadcrumbs', '', 0, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'showHome=1\nhomeText=Home\nshowLast=1\nseparator=\nmoduleclass_sfx=\ncache=0\n\n', 1, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(45, 'Donate', '', 0, 'left', 62, '2010-01-04 21:38:28', 0, 'mod_donate', 0, 0, 1, 'business=1258421\nsandbox=1\nitemname=\nitemnumber=\nusername=1\nintro=\ntarget=_blank\nusernote=1\namount=\nleast_val=5\ncurrency=EUR\nreturn=\ncancel=\nimageUrl=\nppImg=1\nimageInt=-1\nbuttontext=\nmodclass=\nmoduleclass_sfx=\nalign=left\ncache=1\n\n', 0, 0, ''),
(46, 'Superfish Menu', '', 0, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_superfishmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=horizontal\ncustom_stylesheets=\ncustom_css=\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nhoverClass=sfHover\npathClass=\npathLevels=1\ndelay=800\nanimation={opacity:''show'', height:''show'', width:''show''}\ncustom_animation={opacity:''show'', height:''show'', width:''show''}\nspeed=def\nautoArrows=0\ndropShadows=0\nonInit=\nonBeforeShow=\nonShow=\nonHide=\nuseEventSpecialHover=1\nhover_delay=200\nhover_speed=200\nuseSuperSubs=0\nmin_width=100\nmax_width=150\nextra_width=100\nuseBgIframe=1\nbgi_top=auto\nbgi_left=auto\nbgi_width=auto\nbgi_height=auto\nbgi_opacity=1\nbgi_src=\nshow_whitespace=1\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=1\nactivate_parent=1\nfull_active_id=1\nindent_image=1\nindent_image1=arrow.png\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(68, 'Nos Actions', '', 0, 'user2', 62, '2010-12-08 20:20:17', 1, 'mod_articleinmodule', 0, 0, 0, 'artid=55\n\n', 0, 0, ''),
(70, 'Newsletter', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_acajoom', 0, 0, 1, 'listids=0\nred_url=\nlinear=0\nintrotext=\nshowlistname=0\ndefaultchecked=1\nshownamefield=1\ndropdown=0\nselecteddrop=0\nfieldsize=23\nposttext=\nreceivehtmldefault=1\nshowreceivehtml=0\nbutton_text= M''abonner à la Newsletter\nbutton_img=\nbutton_text_change=\nbutton_img_change=\nmoduleclass_sfx=newsacajoom\nmod_align=center\ncache=0\n\n', 0, 0, ''),
(67, 'Faire un don', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_donation', 0, 0, 0, 'lien=http://www.maintendue31.org/faireundon.html\nlibelle=Faire un don\n\n', 1, 0, ''),
(48, 'Qui sommes-nous?', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_articleinmodule', 0, 0, 1, 'artid=54\n\n', 0, 0, ''),
(50, 'Info News', '', 0, 'user9', 0, '0000-00-00 00:00:00', 1, 'mod_news_show_gk3', 0, 0, 0, 'moduleclass_sfx=\nmodule_unique_id=newsshow1\nwidth=0\ntd_padding=0\nnews_type=0\nsection=5\ncategory=38\nsections=5\ncategories=38\nids=\nnews_amount=2\nnews_sort_value=created\nnews_sort_order=DESC\nnews_frontpage=0\nnews_column=1\nnews_rows=2\nunauthorized=0\nonly_frontpage=0\nshow_list=0\nrounded=0\nlist_style=1\nnews_content_header_pos=1\nnews_content_image_pos=0\nnews_content_text_pos=1\nnews_content_info_pos=1\nnews_content_readmore_pos=2\nnews_readmore_text=Lire la suite\nnews_header_link=1\nnews_image_link=0\nnews_text_link=0\nnews_author=0\nnews_cats=0\nnews_date=0\nnews_more_in=1\nnews_header_order=1\nnews_image_order=2\nnews_text_order=3\nnews_info_order=4\nhead_nofollow=1\nimage_nofollow=0\ntext_nofollow=0\ninfo_nofollow=0\nlist_nofollow=0\nreadmore_nofollow=1\nhead_target=0\nimage_target=0\ntext_target=0\ninfo_target=0\nlist_target=0\nreadmore_target=0\nnews_limit_type=1\nnews_limit=105\ntitle_limit=30\nclean_xhtml=1\nnews_content_timezone=0\nplugin_support=0\nonly_plugin=0\nimg_height=0\nimg_width=0\nimg_margin=3px\ndate_format=D, d M Y\nusername=0\nstartposition=0\npanel=0\nparse_plugins=0\nmootools_version=1_11\nuseMoo=0\nuseScript=0\ncompress_js=1\n\n', 0, 0, ''),
(65, 'Nos Actions Slide', '', 0, 'user5', 65, '2010-03-25 21:37:04', 1, 'mod_rokslideshow', 0, 0, 0, 'moduleclass_sfx=\nwidth=310\nheight=260\njslib=1\nimagePath=images/stories/pageaccueil\nshowCaption=1\nheightCaption=50\ntitleSize=12px\ntitleColor=#fff\ndescSize=10px\ndescColor=#ccc\nsortCriteria=0\nsortOrder=0\nsortOrderManual=\nimageResize=1\nimageDuration=8000\ntransDuration=2000\ntransType=fade\npan=50\nzoom=50\ntransition=linear\n\n', 0, 0, ''),
(71, 'Free PayPal Module', '', 14, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_freepaypal', 0, 0, 1, 'logo=https://www.paypal.com/en_US/i/btn/btn_donateCC_LG.gif\nmoduleclass_sfx=\npaypal_email=elisabeth@pecatte.eu\npaypal_org=pecatte\npaypalcur_on=0\npaypal_len=1\npaypallen_val=4\npaypalval_on=0\npaypalcur_val=EUR\npaypalval_val=5\npaypalvalleast_val=5\npaypalreturn=http://maintendue.pecatte.eu\npaypalcancel=http://maintendue.pecatte.eu\nallow_option1=1\noption1=Abonnement newsletter\noption1_default=oui\nallow_option2=1\noption2=Recu fiscal\noption2_default=\npaypalnotify=http://maintendue.pecatte.eu\n\n', 0, 0, ''),
(74, 'Front-end Font Size Adjuster 3.5', '', 0, 'user4', 0, '0000-00-00 00:00:00', 0, 'mod_fhw-fontadjust', 0, 0, 0, 'moduleclass_sfx=\nLGclass_sfx=\nRsclass_sfx=\nSMclass_sfx=\nsizeStyle=1\noriginalFontem=100\noriginalFontpx=12\noriginalFontpt=8\nPreFixText=\nTextOrImage=1\nfloat=1\nImageOption=5\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_modules_menu'
--

CREATE TABLE IF NOT EXISTS mtd_modules_menu (
  moduleid int(11) NOT NULL DEFAULT '0',
  menuid int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (moduleid,menuid)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_modules_menu'
--

INSERT INTO mtd_modules_menu (moduleid, menuid) VALUES
(1, 0),
(27, 0),
(29, 0),
(31, 1),
(33, 0),
(35, 0),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0),
(44, 0),
(45, 60),
(46, 0),
(48, 0),
(50, 0),
(52, 0),
(65, 1),
(67, 0),
(68, 1),
(70, 0),
(71, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table 'mtd_newsfeeds'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=876 ;

--
-- Contenu de la table 'mtd_phocagallery'
--

INSERT INTO mtd_phocagallery (id, catid, sid, title, alias, filename, description, `date`, hits, published, checked_out, checked_out_time, ordering, params, extlink1, extlink2) VALUES
(316, 6, 0, 'P1060261', 'p1060261', 'RepasNoel/repas2007/P1060261.JPG', '', '2009-09-16 16:56:40', 118, 1, 0, '0000-00-00 00:00:00', 115, '', '', ''),
(306, 6, 0, 'P1060251', 'p1060251', 'RepasNoel/repas2007/P1060251.JPG', '', '2009-09-16 16:56:39', 116, 1, 0, '0000-00-00 00:00:00', 110, '', '', ''),
(759, 6, 0, 'dsc_0068', 'dsc_0068', 'RepasNoel/repas2008/dsc_0068.jpg', '', '2009-09-18 15:05:34', 123, 1, 0, '0000-00-00 00:00:00', 33, '', '', ''),
(276, 9, 0, 'p1060220', 'p1060220', 'RepasNoel/repas2007/p1060220.jpg', '<br type="_moz" />', '2009-09-16 17:02:56', 95, 1, 0, '0000-00-00 00:00:00', 244, 'zoom=2;', '', ''),
(274, 9, 0, 'p1060218', 'p1060218', 'RepasNoel/repas2007/p1060218.jpg', '<br type="_moz" />', '2009-09-16 17:02:23', 96, 1, 0, '0000-00-00 00:00:00', 242, 'zoom=2;', '', ''),
(273, 9, 0, 'p1060217', 'p1060217', 'RepasNoel/repas2007/p1060217.jpg', '<br type="_moz" />', '2009-09-16 17:02:07', 105, 1, 0, '0000-00-00 00:00:00', 241, 'zoom=2;', '', ''),
(272, 9, 0, 'p1060216', 'p1060216', 'RepasNoel/repas2007/p1060216.jpg', '<br type="_moz" />', '2009-09-16 17:00:22', 63, 0, 0, '0000-00-00 00:00:00', 240, 'zoom=2;', '', ''),
(271, 9, 0, 'p1060215', 'p1060215', 'RepasNoel/repas2007/p1060215.jpg', '<br type="_moz" />', '2009-09-16 17:00:04', 105, 1, 0, '0000-00-00 00:00:00', 239, 'zoom=2;', '', ''),
(269, 9, 0, 'p1060213', 'p1060213', 'RepasNoel/repas2007/p1060213.jpg', '<br type="_moz" />', '2009-09-16 16:58:28', 97, 1, 62, '2009-09-16 16:58:35', 237, 'zoom=2;', '', ''),
(295, 6, 0, 'P1060239', 'p1060239', 'RepasNoel/repas2007/P1060239.JPG', '', '2009-09-16 16:56:39', 120, 1, 0, '0000-00-00 00:00:00', 102, '', '', ''),
(758, 6, 0, 'dsc_0067', 'dsc_0067', 'RepasNoel/repas2008/dsc_0067.jpg', '', '2009-09-18 15:05:34', 108, 1, 0, '0000-00-00 00:00:00', 31, '', '', ''),
(252, 6, 0, 'photos main tendue 095', 'photos-main-tendue-095', 'RepasNoel/repas2005/photos main tendue 095.jpg', '', '2009-09-16 16:42:08', 122, 1, 0, '0000-00-00 00:00:00', 87, '', '', ''),
(250, 6, 0, 'photos main tendue 092', 'photos-main-tendue-092', 'RepasNoel/repas2005/photos main tendue 092.jpg', '', '2009-09-16 16:42:08', 126, 1, 0, '0000-00-00 00:00:00', 86, '', '', ''),
(246, 6, 0, 'photos main tendue 088', 'photos-main-tendue-088', 'RepasNoel/repas2005/photos main tendue 088.jpg', '', '2009-09-16 16:42:08', 135, 1, 0, '0000-00-00 00:00:00', 84, '', '', ''),
(245, 6, 0, 'photos main tendue 087', 'photos-main-tendue-087', 'RepasNoel/repas2005/photos main tendue 087.jpg', '', '2009-09-16 16:42:08', 143, 1, 0, '0000-00-00 00:00:00', 83, '', '', ''),
(235, 9, 0, 'photos main tendue 077', 'photos-main-tendue-077', 'RepasNoel/repas2005/photos main tendue 077.jpg', '<br type="_moz" />', '2009-09-16 16:55:29', 106, 1, 0, '0000-00-00 00:00:00', 203, 'zoom=2;', '', ''),
(233, 6, 0, 'photos main tendue 075', 'photos-main-tendue-075', 'RepasNoel/repas2005/photos main tendue 075.jpg', '', '2009-09-16 16:42:08', 120, 1, 0, '0000-00-00 00:00:00', 72, '', '', ''),
(703, 6, 0, 'PC130037', 'pc130037', 'RepasNoel/repas2006/PC130037.JPG', '', '2009-09-18 15:01:00', 121, 1, 0, '0000-00-00 00:00:00', 214, '', '', ''),
(199, 6, 0, '006_0039', '006_0039', 'RepasNoel/Repas2004/006_0039.jpg', '', '2009-09-15 20:50:13', 144, 1, 0, '0000-00-00 00:00:00', 21, '', '', ''),
(201, 6, 0, '008_0041', '008_0041', 'RepasNoel/Repas2004/008_0041.jpg', '', '2009-09-15 20:50:13', 130, 1, 0, '0000-00-00 00:00:00', 25, '', '', ''),
(206, 6, 0, '011_0044-1', '011_0044-1', 'RepasNoel/Repas2004/011_0044-1.jpg', '', '2009-09-15 20:50:13', 115, 1, 0, '0000-00-00 00:00:00', 32, '', '', ''),
(209, 6, 0, '012_0070', '012_0070', 'RepasNoel/Repas2004/012_0070.jpg', '', '2009-09-15 20:50:13', 126, 1, 0, '0000-00-00 00:00:00', 38, '', '', ''),
(212, 9, 0, '014_0072-1', '014_0072-1', 'RepasNoel/Repas2004/014_0072-1.jpg', '<br type="_moz" />', '2009-09-16 16:40:11', 113, 1, 0, '0000-00-00 00:00:00', 180, 'zoom=2;', '', ''),
(221, 6, 0, '018_0076', '018_0076', 'RepasNoel/Repas2004/018_0076.jpg', '', '2009-09-15 20:50:13', 128, 1, 0, '0000-00-00 00:00:00', 54, '', '', ''),
(331, 6, 0, 'P1060279', 'p1060279', 'RepasNoel/repas2007/P1060279.JPG', '', '2009-09-16 16:56:40', 118, 1, 0, '0000-00-00 00:00:00', 126, '', '', ''),
(333, 6, 0, 'P1060281', 'p1060281', 'RepasNoel/repas2007/P1060281.JPG', '', '2009-09-16 16:56:40', 116, 1, 0, '0000-00-00 00:00:00', 128, '', '', ''),
(334, 6, 0, 'P1060282', 'p1060282', 'RepasNoel/repas2007/P1060282.JPG', '', '2009-09-16 16:56:40', 122, 1, 0, '0000-00-00 00:00:00', 129, '', '', ''),
(337, 6, 0, 'P1060285', 'p1060285', 'RepasNoel/repas2007/P1060285.JPG', '', '2009-09-16 16:56:40', 126, 1, 0, '0000-00-00 00:00:00', 132, '', '', ''),
(338, 6, 0, 'P1060286', 'p1060286', 'RepasNoel/repas2007/P1060286.JPG', '', '2009-09-16 16:56:40', 119, 1, 0, '0000-00-00 00:00:00', 133, '', '', ''),
(339, 6, 0, 'P1060287', 'p1060287', 'RepasNoel/repas2007/P1060287.JPG', '', '2009-09-16 16:56:40', 123, 1, 0, '0000-00-00 00:00:00', 134, '', '', ''),
(343, 6, 0, 'P1060291', 'p1060291', 'RepasNoel/repas2007/P1060291.JPG', '', '2009-09-16 16:56:40', 120, 1, 0, '0000-00-00 00:00:00', 135, '', '', ''),
(348, 6, 0, 'P1060297', 'p1060297', 'RepasNoel/repas2007/P1060297.JPG', '', '2009-09-16 16:56:40', 123, 1, 0, '0000-00-00 00:00:00', 139, '', '', ''),
(349, 6, 0, 'P1060298', 'p1060298', 'RepasNoel/repas2007/P1060298.JPG', '', '2009-09-16 16:56:40', 136, 1, 0, '0000-00-00 00:00:00', 140, '', '', ''),
(351, 6, 0, 'P1060300', 'p1060300', 'RepasNoel/repas2007/P1060300.JPG', '', '2009-09-16 16:56:40', 115, 1, 0, '0000-00-00 00:00:00', 141, '', '', ''),
(352, 6, 0, 'P1060301', 'p1060301', 'RepasNoel/repas2007/P1060301.JPG', '', '2009-09-16 16:56:40', 122, 1, 0, '0000-00-00 00:00:00', 142, '', '', ''),
(359, 6, 0, 'P1060309', 'p1060309', 'RepasNoel/repas2007/P1060309.JPG', '', '2009-09-16 16:56:40', 117, 1, 0, '0000-00-00 00:00:00', 146, '', '', ''),
(362, 6, 0, 'P1060312', 'p1060312', 'RepasNoel/repas2007/P1060312.JPG', '', '2009-09-16 16:56:40', 108, 1, 0, '0000-00-00 00:00:00', 148, '', '', ''),
(366, 6, 0, 'P1060316', 'p1060316', 'RepasNoel/repas2007/P1060316.JPG', '', '2009-09-16 16:56:40', 120, 1, 0, '0000-00-00 00:00:00', 151, '', '', ''),
(378, 6, 0, 'P1060331', 'p1060331', 'RepasNoel/repas2007/P1060331.JPG', '', '2009-09-16 16:56:40', 119, 1, 0, '0000-00-00 00:00:00', 161, '', '', ''),
(379, 6, 0, 'P1060332', 'p1060332', 'RepasNoel/repas2007/P1060332.JPG', '', '2009-09-16 16:56:40', 112, 1, 0, '0000-00-00 00:00:00', 162, '', '', ''),
(381, 6, 0, 'P1060334', 'p1060334', 'RepasNoel/repas2007/P1060334.JPG', '', '2009-09-16 16:56:40', 116, 1, 0, '0000-00-00 00:00:00', 164, '', '', ''),
(383, 6, 0, 'P1060336', 'p1060336', 'RepasNoel/repas2007/P1060336.JPG', '', '2009-09-16 16:56:40', 105, 1, 0, '0000-00-00 00:00:00', 166, '', '', ''),
(385, 6, 0, 'P1060338', 'p1060338', 'RepasNoel/repas2007/P1060338.JPG', '', '2009-09-16 16:56:40', 117, 1, 0, '0000-00-00 00:00:00', 168, '', '', ''),
(386, 6, 0, 'P1060339', 'p1060339', 'RepasNoel/repas2007/P1060339.JPG', '', '2009-09-16 16:56:40', 108, 1, 0, '0000-00-00 00:00:00', 169, '', '', ''),
(388, 6, 0, 'P1060341', 'p1060341', 'RepasNoel/repas2007/P1060341.JPG', '', '2009-09-16 16:56:40', 115, 1, 0, '0000-00-00 00:00:00', 171, '', '', ''),
(392, 6, 0, 'P1060346', 'p1060346', 'RepasNoel/repas2007/P1060346.JPG', '', '2009-09-16 16:56:40', 113, 1, 0, '0000-00-00 00:00:00', 175, '', '', ''),
(393, 6, 0, 'P1060347', 'p1060347', 'RepasNoel/repas2007/P1060347.JPG', '', '2009-09-16 16:56:40', 109, 1, 0, '0000-00-00 00:00:00', 176, '', '', ''),
(394, 6, 0, 'P1060348', 'p1060348', 'RepasNoel/repas2007/P1060348.JPG', '', '2009-09-16 16:56:40', 99, 1, 0, '0000-00-00 00:00:00', 177, '', '', ''),
(395, 6, 0, 'P1060350', 'p1060350', 'RepasNoel/repas2007/P1060350.JPG', '', '2009-09-16 16:56:40', 107, 1, 0, '0000-00-00 00:00:00', 178, '', '', ''),
(399, 6, 0, 'P1060355', 'p1060355', 'RepasNoel/repas2007/P1060355.JPG', '', '2009-09-16 16:56:40', 113, 1, 0, '0000-00-00 00:00:00', 182, '', '', ''),
(400, 6, 0, 'P1060356', 'p1060356', 'RepasNoel/repas2007/P1060356.JPG', '', '2009-09-16 16:56:40', 118, 1, 0, '0000-00-00 00:00:00', 183, '', '', ''),
(401, 6, 0, 'P1060360', 'p1060360', 'RepasNoel/repas2007/P1060360.JPG', '', '2009-09-16 16:56:40', 111, 1, 0, '0000-00-00 00:00:00', 184, '', '', ''),
(403, 6, 0, 'P1060362', 'p1060362', 'RepasNoel/repas2007/P1060362.JPG', '', '2009-09-16 16:56:40', 114, 1, 0, '0000-00-00 00:00:00', 186, '', '', ''),
(404, 6, 0, 'P1060363', 'p1060363', 'RepasNoel/repas2007/P1060363.JPG', '', '2009-09-16 16:56:40', 115, 1, 0, '0000-00-00 00:00:00', 187, '', '', ''),
(406, 6, 0, 'P1060365', 'p1060365', 'RepasNoel/repas2007/P1060365.JPG', '', '2009-09-16 16:56:40', 107, 1, 0, '0000-00-00 00:00:00', 189, '', '', ''),
(408, 6, 0, 'P1060367', 'p1060367', 'RepasNoel/repas2007/P1060367.JPG', '', '2009-09-16 16:56:40', 110, 1, 0, '0000-00-00 00:00:00', 191, '', '', ''),
(409, 6, 0, 'P1060368', 'p1060368', 'RepasNoel/repas2007/P1060368.JPG', '', '2009-09-16 16:56:40', 113, 1, 0, '0000-00-00 00:00:00', 192, '', '', ''),
(410, 6, 0, 'P1060369', 'p1060369', 'RepasNoel/repas2007/P1060369.JPG', '', '2009-09-16 16:56:40', 110, 1, 0, '0000-00-00 00:00:00', 193, '', '', ''),
(411, 6, 0, 'P1060370', 'p1060370', 'RepasNoel/repas2007/P1060370.JPG', '', '2009-09-16 16:56:40', 119, 1, 0, '0000-00-00 00:00:00', 194, '', '', ''),
(412, 6, 0, 'P1060371', 'p1060371', 'RepasNoel/repas2007/P1060371.JPG', '', '2009-09-16 16:56:40', 107, 1, 0, '0000-00-00 00:00:00', 195, '', '', ''),
(419, 6, 0, 'P1060379', 'p1060379', 'RepasNoel/repas2007/P1060379.JPG', '', '2009-09-16 16:56:40', 113, 1, 0, '0000-00-00 00:00:00', 202, '', '', ''),
(420, 6, 0, 'P1060380', 'p1060380', 'RepasNoel/repas2007/P1060380.JPG', '', '2009-09-16 16:56:40', 104, 1, 0, '0000-00-00 00:00:00', 203, '', '', ''),
(422, 6, 0, 'P1060384', 'p1060384', 'RepasNoel/repas2007/P1060384.JPG', '', '2009-09-16 16:56:40', 108, 1, 0, '0000-00-00 00:00:00', 205, '', '', ''),
(426, 6, 0, 'P1060388', 'p1060388', 'RepasNoel/repas2007/P1060388.JPG', '', '2009-09-16 16:56:40', 103, 1, 0, '0000-00-00 00:00:00', 209, '', '', ''),
(622, 7, 0, 'DSC_0176', 'dsc_0176', 'AideAlimentaire/DSC_0176.JPG', '', '2009-09-16 17:40:40', 111, 1, 0, '0000-00-00 00:00:00', 13, '', '', ''),
(623, 7, 0, 'DSC_0177', 'dsc_0177', 'AideAlimentaire/DSC_0177.JPG', '', '2009-09-16 17:40:40', 107, 1, 0, '0000-00-00 00:00:00', 14, '', '', ''),
(624, 7, 0, 'DSC_0178', 'dsc_0178', 'AideAlimentaire/DSC_0178.JPG', '', '2009-09-16 17:40:40', 118, 1, 0, '0000-00-00 00:00:00', 15, '', '', ''),
(625, 7, 0, 'DSC_0179', 'dsc_0179', 'AideAlimentaire/DSC_0179.JPG', '', '2009-09-16 17:40:40', 109, 1, 0, '0000-00-00 00:00:00', 16, '', '', ''),
(626, 7, 0, 'DSC_0181', 'dsc_0181', 'AideAlimentaire/DSC_0181.JPG', '', '2009-09-16 17:40:40', 111, 1, 0, '0000-00-00 00:00:00', 17, '', '', ''),
(627, 7, 0, 'DSC_0182', 'dsc_0182', 'AideAlimentaire/DSC_0182.JPG', '', '2009-09-16 17:40:40', 107, 1, 0, '0000-00-00 00:00:00', 18, '', '', ''),
(628, 7, 0, 'DSC_0184', 'dsc_0184', 'AideAlimentaire/DSC_0184.JPG', '', '2009-09-16 17:40:40', 107, 1, 0, '0000-00-00 00:00:00', 19, '', '', ''),
(629, 7, 0, 'DSC_0185', 'dsc_0185', 'AideAlimentaire/DSC_0185.JPG', '', '2009-09-16 17:40:40', 109, 1, 0, '0000-00-00 00:00:00', 20, '', '', ''),
(630, 7, 0, 'DSC_0186', 'dsc_0186', 'AideAlimentaire/DSC_0186.JPG', '', '2009-09-16 17:40:40', 98, 1, 0, '0000-00-00 00:00:00', 21, '', '', ''),
(631, 7, 0, 'DSC_0187', 'dsc_0187', 'AideAlimentaire/DSC_0187.JPG', '', '2009-09-16 17:40:40', 110, 1, 0, '0000-00-00 00:00:00', 22, '', '', ''),
(632, 7, 0, 'DSC_0188', 'dsc_0188', 'AideAlimentaire/DSC_0188.JPG', '', '2009-09-16 17:40:40', 103, 1, 0, '0000-00-00 00:00:00', 23, '', '', ''),
(633, 7, 0, 'DSC_0189', 'dsc_0189', 'AideAlimentaire/DSC_0189.JPG', '', '2009-09-16 17:40:40', 113, 1, 0, '0000-00-00 00:00:00', 24, '', '', ''),
(634, 7, 0, 'DSC_0191', 'dsc_0191', 'AideAlimentaire/DSC_0191.JPG', '', '2009-09-16 17:40:40', 113, 1, 0, '0000-00-00 00:00:00', 25, '', '', ''),
(635, 7, 0, 'DSC_0192', 'dsc_0192', 'AideAlimentaire/DSC_0192.JPG', '', '2009-09-16 17:40:40', 111, 1, 0, '0000-00-00 00:00:00', 26, '', '', ''),
(636, 7, 0, 'DSC_0193', 'dsc_0193', 'AideAlimentaire/DSC_0193.JPG', '', '2009-09-16 17:40:40', 101, 1, 0, '0000-00-00 00:00:00', 27, '', '', ''),
(637, 7, 0, 'DSC_0194', 'dsc_0194', 'AideAlimentaire/DSC_0194.JPG', '', '2009-09-16 17:40:40', 107, 1, 0, '0000-00-00 00:00:00', 28, '', '', ''),
(638, 7, 0, 'DSC_0195', 'dsc_0195', 'AideAlimentaire/DSC_0195.JPG', '', '2009-09-16 17:40:40', 99, 1, 0, '0000-00-00 00:00:00', 29, '', '', ''),
(639, 7, 0, 'DSC_0196', 'dsc_0196', 'AideAlimentaire/DSC_0196.JPG', '', '2009-09-16 17:40:40', 110, 1, 0, '0000-00-00 00:00:00', 30, '', '', ''),
(640, 7, 0, 'DSC_0197', 'dsc_0197', 'AideAlimentaire/DSC_0197.JPG', '', '2009-09-16 17:40:40', 93, 1, 0, '0000-00-00 00:00:00', 31, '', '', ''),
(641, 7, 0, 'DSC_0198', 'dsc_0198', 'AideAlimentaire/DSC_0198.JPG', '', '2009-09-16 17:40:40', 108, 1, 0, '0000-00-00 00:00:00', 32, '', '', ''),
(642, 7, 0, 'DSC_0199', 'dsc_0199', 'AideAlimentaire/DSC_0199.JPG', '', '2009-09-16 17:40:40', 93, 1, 0, '0000-00-00 00:00:00', 33, '', '', ''),
(643, 7, 0, 'DSC_0200', 'dsc_0200', 'AideAlimentaire/DSC_0200.JPG', '', '2009-09-16 17:40:40', 94, 1, 0, '0000-00-00 00:00:00', 34, '', '', ''),
(644, 7, 0, 'DSC_0201', 'dsc_0201', 'AideAlimentaire/DSC_0201.JPG', '', '2009-09-16 17:40:40', 108, 1, 0, '0000-00-00 00:00:00', 35, '', '', ''),
(645, 7, 0, 'DSC_0202', 'dsc_0202', 'AideAlimentaire/DSC_0202.JPG', '', '2009-09-16 17:40:40', 97, 1, 0, '0000-00-00 00:00:00', 36, '', '', ''),
(646, 7, 0, 'DSC_0203', 'dsc_0203', 'AideAlimentaire/DSC_0203.JPG', '', '2009-09-16 17:40:40', 87, 1, 0, '0000-00-00 00:00:00', 37, '', '', ''),
(647, 10, 0, 'DSC_0014', 'dsc_0014', 'Distribution/DSC_0014.JPG', '', '2009-09-18 13:49:47', 142, 1, 0, '0000-00-00 00:00:00', 1, '', '', ''),
(648, 10, 0, 'DSC_0015', 'dsc_0015', 'Distribution/DSC_0015.JPG', '', '2009-09-18 13:49:47', 116, 1, 0, '0000-00-00 00:00:00', 2, '', '', ''),
(742, 6, 0, 'dsc_0042', 'dsc_0042', 'RepasNoel/repas2008/dsc_0042.jpg', '', '2009-09-18 15:05:34', 112, 1, 0, '0000-00-00 00:00:00', 8, '', '', ''),
(738, 6, 0, 'dsc_0038', 'dsc_0038', 'RepasNoel/repas2008/dsc_0038.jpg', '', '2009-09-18 15:05:34', 150, 1, 0, '0000-00-00 00:00:00', 4, '', '', ''),
(735, 6, 0, 'PC130071', 'pc130071', 'RepasNoel/repas2006/PC130071.JPG', '', '2009-09-18 15:01:00', 85, 1, 0, '0000-00-00 00:00:00', 246, '', '', ''),
(733, 6, 0, 'PC130069', 'pc130069', 'RepasNoel/repas2006/PC130069.JPG', '', '2009-09-18 15:01:00', 86, 1, 0, '0000-00-00 00:00:00', 244, '', '', ''),
(732, 6, 0, 'PC130068', 'pc130068', 'RepasNoel/repas2006/PC130068.JPG', '', '2009-09-18 15:01:00', 90, 1, 0, '0000-00-00 00:00:00', 243, '', '', ''),
(731, 6, 0, 'PC130067', 'pc130067', 'RepasNoel/repas2006/PC130067.JPG', '', '2009-09-18 15:01:00', 89, 1, 0, '0000-00-00 00:00:00', 242, '', '', ''),
(730, 6, 0, 'PC130066', 'pc130066', 'RepasNoel/repas2006/PC130066.JPG', '', '2009-09-18 15:01:00', 100, 1, 0, '0000-00-00 00:00:00', 241, '', '', ''),
(729, 6, 0, 'PC130065', 'pc130065', 'RepasNoel/repas2006/PC130065.JPG', '', '2009-09-18 15:01:00', 100, 1, 0, '0000-00-00 00:00:00', 240, '', '', ''),
(727, 6, 0, 'PC130063', 'pc130063', 'RepasNoel/repas2006/PC130063.JPG', '', '2009-09-18 15:01:00', 92, 1, 0, '0000-00-00 00:00:00', 238, '', '', ''),
(725, 6, 0, 'PC130059', 'pc130059', 'RepasNoel/repas2006/PC130059.JPG', '', '2009-09-18 15:01:00', 97, 1, 0, '0000-00-00 00:00:00', 236, '', '', ''),
(724, 6, 0, 'PC130058', 'pc130058', 'RepasNoel/repas2006/PC130058.JPG', '', '2009-09-18 15:01:00', 100, 1, 0, '0000-00-00 00:00:00', 235, '', '', ''),
(722, 6, 0, 'PC130056', 'pc130056', 'RepasNoel/repas2006/PC130056.JPG', '', '2009-09-18 15:01:00', 95, 1, 0, '0000-00-00 00:00:00', 233, '', '', ''),
(721, 6, 0, 'PC130055', 'pc130055', 'RepasNoel/repas2006/PC130055.JPG', '', '2009-09-18 15:01:00', 94, 1, 0, '0000-00-00 00:00:00', 232, '', '', ''),
(719, 6, 0, 'PC130053', 'pc130053', 'RepasNoel/repas2006/PC130053.JPG', '', '2009-09-18 15:01:00', 101, 1, 0, '0000-00-00 00:00:00', 230, '', '', ''),
(718, 6, 0, 'PC130052', 'pc130052', 'RepasNoel/repas2006/PC130052.JPG', '', '2009-09-18 15:01:00', 96, 1, 0, '0000-00-00 00:00:00', 229, '', '', ''),
(716, 6, 0, 'PC130050', 'pc130050', 'RepasNoel/repas2006/PC130050.JPG', '', '2009-09-18 15:01:00', 104, 1, 0, '0000-00-00 00:00:00', 227, '', '', ''),
(715, 6, 0, 'PC130049', 'pc130049', 'RepasNoel/repas2006/PC130049.JPG', '', '2009-09-18 15:01:00', 109, 1, 0, '0000-00-00 00:00:00', 226, '', '', ''),
(713, 6, 0, 'PC130047', 'pc130047', 'RepasNoel/repas2006/PC130047.JPG', '', '2009-09-18 15:01:00', 110, 1, 0, '0000-00-00 00:00:00', 224, '', '', ''),
(712, 6, 0, 'PC130046', 'pc130046', 'RepasNoel/repas2006/PC130046.JPG', '', '2009-09-18 15:01:00', 111, 1, 0, '0000-00-00 00:00:00', 223, '', '', ''),
(711, 6, 0, 'PC130045', 'pc130045', 'RepasNoel/repas2006/PC130045.JPG', '', '2009-09-18 15:01:00', 98, 1, 0, '0000-00-00 00:00:00', 222, '', '', ''),
(710, 6, 0, 'PC130044', 'pc130044', 'RepasNoel/repas2006/PC130044.JPG', '', '2009-09-18 15:01:00', 101, 1, 0, '0000-00-00 00:00:00', 221, '', '', ''),
(709, 6, 0, 'PC130043', 'pc130043', 'RepasNoel/repas2006/PC130043.JPG', '', '2009-09-18 15:01:00', 106, 1, 0, '0000-00-00 00:00:00', 220, '', '', ''),
(708, 6, 0, 'PC130042', 'pc130042', 'RepasNoel/repas2006/PC130042.JPG', '', '2009-09-18 15:01:00', 114, 1, 0, '0000-00-00 00:00:00', 219, '', '', ''),
(707, 6, 0, 'PC130041', 'pc130041', 'RepasNoel/repas2006/PC130041.JPG', '', '2009-09-18 15:01:00', 104, 1, 0, '0000-00-00 00:00:00', 218, '', '', ''),
(706, 6, 0, 'PC130040', 'pc130040', 'RepasNoel/repas2006/PC130040.JPG', '', '2009-09-18 15:01:00', 103, 1, 0, '0000-00-00 00:00:00', 217, '', '', ''),
(698, 10, 0, 'P6150020', 'p6150020', 'Distribution/P6150020.JPG', '', '2009-09-18 13:49:47', 101, 1, 0, '0000-00-00 00:00:00', 52, '', '', ''),
(697, 10, 0, 'P6150019', 'p6150019', 'Distribution/P6150019.JPG', '', '2009-09-18 13:49:47', 108, 1, 0, '0000-00-00 00:00:00', 51, '', '', ''),
(696, 10, 0, 'P6150018', 'p6150018', 'Distribution/P6150018.JPG', '', '2009-09-18 13:49:47', 111, 1, 0, '0000-00-00 00:00:00', 50, '', '', ''),
(695, 10, 0, 'P6150017', 'p6150017', 'Distribution/P6150017.JPG', '', '2009-09-18 13:49:47', 109, 1, 0, '0000-00-00 00:00:00', 49, '', '', ''),
(694, 10, 0, 'P6150015', 'p6150015', 'Distribution/P6150015.JPG', '', '2009-09-18 13:49:47', 108, 1, 0, '0000-00-00 00:00:00', 48, '', '', ''),
(693, 10, 0, 'P6150013', 'p6150013', 'Distribution/P6150013.JPG', '', '2009-09-18 13:49:47', 128, 1, 0, '0000-00-00 00:00:00', 47, '', '', ''),
(692, 10, 0, 'P6150012', 'p6150012', 'Distribution/P6150012.JPG', '', '2009-09-18 13:49:47', 102, 1, 0, '0000-00-00 00:00:00', 46, '', '', ''),
(691, 10, 0, 'P6150011', 'p6150011', 'Distribution/P6150011.JPG', '', '2009-09-18 13:49:47', 106, 1, 0, '0000-00-00 00:00:00', 45, '', '', ''),
(690, 10, 0, 'P6150010', 'p6150010', 'Distribution/P6150010.JPG', '', '2009-09-18 13:49:47', 118, 1, 0, '0000-00-00 00:00:00', 44, '', '', ''),
(689, 10, 0, 'P6150009', 'p6150009', 'Distribution/P6150009.JPG', '', '2009-09-18 13:49:47', 107, 1, 0, '0000-00-00 00:00:00', 43, '', '', ''),
(688, 10, 0, 'P6150008', 'p6150008', 'Distribution/P6150008.JPG', '', '2009-09-18 13:49:47', 104, 1, 0, '0000-00-00 00:00:00', 42, '', '', ''),
(687, 10, 0, 'P6150007', 'p6150007', 'Distribution/P6150007.JPG', '', '2009-09-18 13:49:47', 113, 1, 0, '0000-00-00 00:00:00', 41, '', '', ''),
(686, 10, 0, 'P6150006', 'p6150006', 'Distribution/P6150006.JPG', '', '2009-09-18 13:49:47', 123, 1, 0, '0000-00-00 00:00:00', 40, '', '', ''),
(685, 10, 0, 'P6150005', 'p6150005', 'Distribution/P6150005.JPG', '', '2009-09-18 13:49:47', 114, 1, 0, '0000-00-00 00:00:00', 39, '', '', ''),
(684, 10, 0, 'P6150004', 'p6150004', 'Distribution/P6150004.JPG', '', '2009-09-18 13:49:47', 134, 1, 0, '0000-00-00 00:00:00', 38, '', '', ''),
(683, 10, 0, 'P6150003', 'p6150003', 'Distribution/P6150003.JPG', '', '2009-09-18 13:49:47', 128, 1, 0, '0000-00-00 00:00:00', 37, '', '', ''),
(682, 10, 0, 'P6150002', 'p6150002', 'Distribution/P6150002.JPG', '', '2009-09-18 13:49:47', 127, 1, 0, '0000-00-00 00:00:00', 36, '', '', ''),
(681, 10, 0, 'P6150001', 'p6150001', 'Distribution/P6150001.JPG', '', '2009-09-18 13:49:47', 119, 1, 0, '0000-00-00 00:00:00', 35, '', '', ''),
(680, 10, 0, 'MT12', 'mt12', 'Distribution/MT12.jpg', '', '2009-09-18 13:49:47', 107, 1, 0, '0000-00-00 00:00:00', 34, '', '', ''),
(679, 10, 0, 'DSC_0047', 'dsc_0047', 'Distribution/DSC_0047.JPG', '', '2009-09-18 13:49:47', 124, 1, 0, '0000-00-00 00:00:00', 33, '', '', ''),
(678, 10, 0, 'DSC_0046', 'dsc_0046', 'Distribution/DSC_0046.JPG', '', '2009-09-18 13:49:47', 115, 1, 0, '0000-00-00 00:00:00', 32, '', '', ''),
(677, 10, 0, 'DSC_0045', 'dsc_0045', 'Distribution/DSC_0045.JPG', '', '2009-09-18 13:49:47', 124, 1, 0, '0000-00-00 00:00:00', 31, '', '', ''),
(676, 10, 0, 'DSC_0044', 'dsc_0044', 'Distribution/DSC_0044.JPG', '', '2009-09-18 13:49:47', 117, 1, 0, '0000-00-00 00:00:00', 30, '', '', ''),
(675, 10, 0, 'DSC_0043', 'dsc_0043', 'Distribution/DSC_0043.JPG', '', '2009-09-18 13:49:47', 122, 1, 0, '0000-00-00 00:00:00', 29, '', '', ''),
(673, 10, 0, 'DSC_0041', 'dsc_0041', 'Distribution/DSC_0041.JPG', '', '2009-09-18 13:49:47', 118, 1, 0, '0000-00-00 00:00:00', 27, '', '', ''),
(672, 10, 0, 'DSC_0039', 'dsc_0039', 'Distribution/DSC_0039.JPG', '', '2009-09-18 13:49:47', 108, 1, 0, '0000-00-00 00:00:00', 26, '', '', ''),
(671, 10, 0, 'DSC_0038', 'dsc_0038', 'Distribution/DSC_0038.JPG', '', '2009-09-18 13:49:47', 67, 0, 0, '0000-00-00 00:00:00', 25, '', '', ''),
(670, 10, 0, 'DSC_0037', 'dsc_0037', 'Distribution/DSC_0037.JPG', '', '2009-09-18 13:49:47', 124, 1, 0, '0000-00-00 00:00:00', 24, '', '', ''),
(669, 10, 0, 'DSC_0036', 'dsc_0036', 'Distribution/DSC_0036.JPG', '', '2009-09-18 13:49:47', 120, 1, 0, '0000-00-00 00:00:00', 23, '', '', ''),
(668, 10, 0, 'DSC_0035', 'dsc_0035', 'Distribution/DSC_0035.JPG', '', '2009-09-18 13:49:47', 119, 1, 0, '0000-00-00 00:00:00', 22, '', '', ''),
(667, 10, 0, 'DSC_0034', 'dsc_0034', 'Distribution/DSC_0034.JPG', '', '2009-09-18 13:49:47', 120, 1, 0, '0000-00-00 00:00:00', 21, '', '', ''),
(666, 10, 0, 'DSC_0033', 'dsc_0033', 'Distribution/DSC_0033.JPG', '', '2009-09-18 13:49:47', 126, 1, 0, '0000-00-00 00:00:00', 20, '', '', ''),
(665, 10, 0, 'DSC_0032', 'dsc_0032', 'Distribution/DSC_0032.JPG', '', '2009-09-18 13:49:47', 121, 1, 0, '0000-00-00 00:00:00', 19, '', '', ''),
(664, 10, 0, 'DSC_0031', 'dsc_0031', 'Distribution/DSC_0031.JPG', '', '2009-09-18 13:49:47', 111, 1, 0, '0000-00-00 00:00:00', 18, '', '', ''),
(663, 10, 0, 'DSC_0030', 'dsc_0030', 'Distribution/DSC_0030.JPG', '', '2009-09-18 13:49:47', 122, 1, 0, '0000-00-00 00:00:00', 17, '', '', ''),
(662, 10, 0, 'DSC_0029', 'dsc_0029', 'Distribution/DSC_0029.JPG', '', '2009-09-18 13:49:47', 117, 1, 0, '0000-00-00 00:00:00', 16, '', '', ''),
(661, 10, 0, 'DSC_0028', 'dsc_0028', 'Distribution/DSC_0028.JPG', '', '2009-09-18 13:49:47', 120, 1, 0, '0000-00-00 00:00:00', 15, '', '', ''),
(660, 10, 0, 'DSC_0027', 'dsc_0027', 'Distribution/DSC_0027.JPG', '', '2009-09-18 13:49:47', 119, 1, 0, '0000-00-00 00:00:00', 14, '', '', ''),
(659, 10, 0, 'DSC_0026', 'dsc_0026', 'Distribution/DSC_0026.JPG', '', '2009-09-18 13:49:47', 111, 1, 0, '0000-00-00 00:00:00', 13, '', '', ''),
(658, 10, 0, 'DSC_0025', 'dsc_0025', 'Distribution/DSC_0025.JPG', '', '2009-09-18 13:49:47', 68, 0, 0, '0000-00-00 00:00:00', 12, '', '', ''),
(657, 10, 0, 'DSC_0024', 'dsc_0024', 'Distribution/DSC_0024.JPG', '', '2009-09-18 13:49:47', 67, 0, 0, '0000-00-00 00:00:00', 11, '', '', ''),
(656, 10, 0, 'DSC_0023', 'dsc_0023', 'Distribution/DSC_0023.JPG', '', '2009-09-18 13:49:47', 132, 1, 0, '0000-00-00 00:00:00', 10, '', '', ''),
(655, 10, 0, 'DSC_0022', 'dsc_0022', 'Distribution/DSC_0022.JPG', '', '2009-09-18 13:49:47', 126, 1, 0, '0000-00-00 00:00:00', 9, '', '', ''),
(654, 10, 0, 'DSC_0021', 'dsc_0021', 'Distribution/DSC_0021.JPG', '', '2009-09-18 13:49:47', 120, 1, 0, '0000-00-00 00:00:00', 8, '', '', ''),
(653, 10, 0, 'DSC_0020', 'dsc_0020', 'Distribution/DSC_0020.JPG', '', '2009-09-18 13:49:47', 57, 0, 0, '0000-00-00 00:00:00', 7, '', '', ''),
(652, 10, 0, 'DSC_0019', 'dsc_0019', 'Distribution/DSC_0019.JPG', '', '2009-09-18 13:49:47', 116, 1, 0, '0000-00-00 00:00:00', 6, '', '', ''),
(651, 10, 0, 'DSC_0018', 'dsc_0018', 'Distribution/DSC_0018.JPG', '', '2009-09-18 13:49:47', 119, 1, 0, '0000-00-00 00:00:00', 5, '', '', ''),
(650, 10, 0, 'DSC_0017', 'dsc_0017', 'Distribution/DSC_0017.JPG', '', '2009-09-18 13:49:47', 119, 1, 0, '0000-00-00 00:00:00', 4, '', '', ''),
(649, 10, 0, 'DSC_0016', 'dsc_0016', 'Distribution/DSC_0016.JPG', '', '2009-09-18 13:49:47', 121, 1, 0, '0000-00-00 00:00:00', 3, '', '', ''),
(621, 7, 0, 'DSC_0175', 'dsc_0175', 'AideAlimentaire/DSC_0175.JPG', '', '2009-09-16 17:40:40', 105, 1, 0, '0000-00-00 00:00:00', 12, '', '', ''),
(620, 7, 0, 'DSC_0174', 'dsc_0174', 'AideAlimentaire/DSC_0174.JPG', '', '2009-09-16 17:40:40', 112, 1, 0, '0000-00-00 00:00:00', 11, '', '', ''),
(612, 7, 0, 'DSC_0166', 'dsc_0166', 'AideAlimentaire/DSC_0166.JPG', '', '2009-09-16 17:40:40', 115, 1, 0, '0000-00-00 00:00:00', 3, '', '', ''),
(613, 7, 0, 'DSC_0167', 'dsc_0167', 'AideAlimentaire/DSC_0167.JPG', '', '2009-09-16 17:40:40', 106, 1, 0, '0000-00-00 00:00:00', 4, '', '', ''),
(614, 7, 0, 'DSC_0168', 'dsc_0168', 'AideAlimentaire/DSC_0168.JPG', '', '2009-09-16 17:40:40', 98, 1, 0, '0000-00-00 00:00:00', 5, '', '', ''),
(615, 7, 0, 'DSC_0169', 'dsc_0169', 'AideAlimentaire/DSC_0169.JPG', '', '2009-09-16 17:40:40', 101, 1, 0, '0000-00-00 00:00:00', 6, '', '', ''),
(616, 7, 0, 'DSC_0170', 'dsc_0170', 'AideAlimentaire/DSC_0170.JPG', '', '2009-09-16 17:40:40', 109, 1, 0, '0000-00-00 00:00:00', 7, '', '', ''),
(617, 7, 0, 'DSC_0171', 'dsc_0171', 'AideAlimentaire/DSC_0171.JPG', '', '2009-09-16 17:40:40', 119, 1, 0, '0000-00-00 00:00:00', 8, '', '', ''),
(618, 7, 0, 'DSC_0172', 'dsc_0172', 'AideAlimentaire/DSC_0172.JPG', '', '2009-09-16 17:40:40', 108, 1, 0, '0000-00-00 00:00:00', 9, '', '', ''),
(619, 7, 0, 'DSC_0173', 'dsc_0173', 'AideAlimentaire/DSC_0173.JPG', '', '2009-09-16 17:40:40', 107, 1, 0, '0000-00-00 00:00:00', 10, '', '', ''),
(765, 6, 0, 'dsc_0077', 'dsc_0077', 'RepasNoel/repas2008/dsc_0077.jpg', '', '2009-09-18 15:05:34', 114, 1, 0, '0000-00-00 00:00:00', 58, '', '', ''),
(768, 6, 0, 'dsc_0080', 'dsc_0080', 'RepasNoel/repas2008/dsc_0080.jpg', '', '2009-09-18 15:05:34', 118, 1, 0, '0000-00-00 00:00:00', 76, '', '', ''),
(792, 6, 0, 'dsc_0109', 'dsc_0109', 'RepasNoel/repas2008/dsc_0109.jpg', '', '2009-09-18 15:05:34', 114, 1, 0, '0000-00-00 00:00:00', 60, '', '', ''),
(846, 9, 0, 'DSC_0136', 'dsc_0136', 'cuisine/DSC_0136.JPG', '', '2009-09-18 17:25:34', 106, 1, 0, '0000-00-00 00:00:00', 259, '', '', ''),
(836, 9, 0, 'DSC_0126', 'dsc_0126', 'cuisine/DSC_0126.JPG', '', '2009-09-18 17:25:34', 105, 1, 0, '0000-00-00 00:00:00', 249, '', '', ''),
(837, 9, 0, 'DSC_0127', 'dsc_0127', 'cuisine/DSC_0127.JPG', '', '2009-09-18 17:25:34', 106, 1, 0, '0000-00-00 00:00:00', 250, '', '', ''),
(838, 9, 0, 'DSC_0128', 'dsc_0128', 'cuisine/DSC_0128.JPG', '', '2009-09-18 17:25:34', 104, 1, 0, '0000-00-00 00:00:00', 251, '', '', ''),
(839, 9, 0, 'DSC_0129', 'dsc_0129', 'cuisine/DSC_0129.JPG', '', '2009-09-18 17:25:34', 105, 1, 0, '0000-00-00 00:00:00', 252, '', '', ''),
(840, 9, 0, 'DSC_0130', 'dsc_0130', 'cuisine/DSC_0130.JPG', '', '2009-09-18 17:25:34', 108, 1, 0, '0000-00-00 00:00:00', 253, '', '', ''),
(841, 9, 0, 'DSC_0131', 'dsc_0131', 'cuisine/DSC_0131.JPG', '', '2009-09-18 17:25:34', 108, 1, 0, '0000-00-00 00:00:00', 254, '', '', ''),
(842, 9, 0, 'DSC_0132', 'dsc_0132', 'cuisine/DSC_0132.JPG', '', '2009-09-18 17:25:34', 110, 1, 0, '0000-00-00 00:00:00', 255, '', '', ''),
(843, 9, 0, 'DSC_0133', 'dsc_0133', 'cuisine/DSC_0133.JPG', '', '2009-09-18 17:25:34', 113, 1, 0, '0000-00-00 00:00:00', 256, '', '', ''),
(865, 9, 0, 'DSC_0155', 'dsc_0155', 'cuisine/DSC_0155.JPG', '', '2009-09-18 17:25:34', 102, 1, 0, '0000-00-00 00:00:00', 278, '', '', ''),
(864, 9, 0, 'DSC_0154', 'dsc_0154', 'cuisine/DSC_0154.JPG', '', '2009-09-18 17:25:34', 108, 1, 0, '0000-00-00 00:00:00', 277, '', '', ''),
(863, 9, 0, 'DSC_0153', 'dsc_0153', 'cuisine/DSC_0153.JPG', '', '2009-09-18 17:25:34', 119, 1, 0, '0000-00-00 00:00:00', 276, '', '', ''),
(862, 9, 0, 'DSC_0152', 'dsc_0152', 'cuisine/DSC_0152.JPG', '', '2009-09-18 17:25:34', 103, 1, 0, '0000-00-00 00:00:00', 275, '', '', ''),
(861, 9, 0, 'DSC_0151', 'dsc_0151', 'cuisine/DSC_0151.JPG', '', '2009-09-18 17:25:34', 118, 1, 0, '0000-00-00 00:00:00', 274, '', '', ''),
(860, 9, 0, 'DSC_0150', 'dsc_0150', 'cuisine/DSC_0150.JPG', '', '2009-09-18 17:25:34', 116, 1, 0, '0000-00-00 00:00:00', 273, '', '', ''),
(859, 9, 0, 'DSC_0149', 'dsc_0149', 'cuisine/DSC_0149.JPG', '', '2009-09-18 17:25:34', 105, 1, 0, '0000-00-00 00:00:00', 272, '', '', ''),
(848, 9, 0, 'DSC_0138', 'dsc_0138', 'cuisine/DSC_0138.JPG', '', '2009-09-18 17:25:34', 104, 1, 0, '0000-00-00 00:00:00', 261, '', '', ''),
(849, 9, 0, 'DSC_0139', 'dsc_0139', 'cuisine/DSC_0139.JPG', '', '2009-09-18 17:25:34', 98, 1, 0, '0000-00-00 00:00:00', 262, '', '', ''),
(850, 9, 0, 'DSC_0140', 'dsc_0140', 'cuisine/DSC_0140.JPG', '', '2009-09-18 17:25:34', 109, 1, 0, '0000-00-00 00:00:00', 263, '', '', ''),
(851, 9, 0, 'DSC_0141', 'dsc_0141', 'cuisine/DSC_0141.JPG', '', '2009-09-18 17:25:34', 114, 1, 0, '0000-00-00 00:00:00', 264, '', '', ''),
(852, 9, 0, 'DSC_0142', 'dsc_0142', 'cuisine/DSC_0142.JPG', '', '2009-09-18 17:25:34', 118, 1, 0, '0000-00-00 00:00:00', 265, '', '', ''),
(853, 9, 0, 'DSC_0143', 'dsc_0143', 'cuisine/DSC_0143.JPG', '', '2009-09-18 17:25:34', 106, 1, 0, '0000-00-00 00:00:00', 266, '', '', ''),
(854, 9, 0, 'DSC_0144', 'dsc_0144', 'cuisine/DSC_0144.JPG', '', '2009-09-18 17:25:34', 101, 1, 0, '0000-00-00 00:00:00', 267, '', '', ''),
(855, 9, 0, 'DSC_0145', 'dsc_0145', 'cuisine/DSC_0145.JPG', '', '2009-09-18 17:25:34', 110, 1, 0, '0000-00-00 00:00:00', 268, '', '', ''),
(856, 9, 0, 'DSC_0146', 'dsc_0146', 'cuisine/DSC_0146.JPG', '', '2009-09-18 17:25:34', 114, 1, 0, '0000-00-00 00:00:00', 269, '', '', ''),
(857, 9, 0, 'DSC_0147', 'dsc_0147', 'cuisine/DSC_0147.JPG', '', '2009-09-18 17:25:34', 112, 1, 0, '0000-00-00 00:00:00', 270, '', '', ''),
(858, 9, 0, 'DSC_0148', 'dsc_0148', 'cuisine/DSC_0148.JPG', '', '2009-09-18 17:25:34', 112, 1, 0, '0000-00-00 00:00:00', 271, '', '', ''),
(866, 9, 0, 'DSC_0156', 'dsc_0156', 'cuisine/DSC_0156.JPG', '', '2009-09-18 17:25:34', 100, 1, 0, '0000-00-00 00:00:00', 279, '', '', ''),
(867, 9, 0, 'DSC_0157', 'dsc_0157', 'cuisine/DSC_0157.JPG', '', '2009-09-18 17:25:34', 112, 1, 0, '0000-00-00 00:00:00', 280, '', '', ''),
(868, 9, 0, 'DSC_0158', 'dsc_0158', 'cuisine/DSC_0158.JPG', '', '2009-09-18 17:25:34', 95, 1, 0, '0000-00-00 00:00:00', 281, '', '', ''),
(869, 9, 0, 'DSC_0159', 'dsc_0159', 'cuisine/DSC_0159.JPG', '', '2009-09-18 17:25:34', 97, 1, 0, '0000-00-00 00:00:00', 282, '', '', ''),
(870, 9, 0, 'DSC_0160', 'dsc_0160', 'cuisine/DSC_0160.JPG', '', '2009-09-18 17:25:34', 104, 1, 0, '0000-00-00 00:00:00', 283, '', '', ''),
(871, 9, 0, 'DSC_0161', 'dsc_0161', 'cuisine/DSC_0161.JPG', '', '2009-09-18 17:25:34', 108, 1, 0, '0000-00-00 00:00:00', 284, '', '', ''),
(872, 9, 0, 'DSC_0162', 'dsc_0162', 'cuisine/DSC_0162.JPG', '', '2009-09-18 17:25:34', 113, 1, 0, '0000-00-00 00:00:00', 285, '', '', ''),
(873, 9, 0, 'DSC_0163', 'dsc_0163', 'cuisine/DSC_0163.JPG', '', '2009-09-18 17:25:34', 91, 1, 0, '0000-00-00 00:00:00', 286, '', '', ''),
(874, 9, 0, 'DSC_0164', 'dsc_0164', 'cuisine/DSC_0164.JPG', '', '2009-09-18 17:25:34', 94, 1, 0, '0000-00-00 00:00:00', 287, '', '', ''),
(875, 9, 0, 'DSC_0165', 'dsc_0165', 'cuisine/DSC_0165.JPG', '', '2009-09-18 17:25:34', 95, 1, 0, '0000-00-00 00:00:00', 288, '', '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table 'mtd_phocagallery_categories'
--

INSERT INTO mtd_phocagallery_categories (id, parent_id, title, `name`, alias, image, section, image_position, description, published, checked_out, checked_out_time, editor, ordering, access, count, hits, params) VALUES
(9, 0, 'Photos Cuisine', '', 'cuisine', '', '', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 610, 'accessuserid=-1,;uploaduserid=62,;deleteuserid=62,;zoom=2;'),
(8, 0, 'Cuisine et Distribution', '', 'cuisine-et-distribution', '', '', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, 83, 'accessuserid=-1,;uploaduserid=62,;deleteuserid=62,;zoom=2;'),
(6, 0, 'Repas Noël', '', 'repas-nol', '', '', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, 1249, 'accessuserid=-1,;uploaduserid=62,;deleteuserid=-1,;zoom=2;'),
(10, 0, 'Photos distribution des repas', '', 'distribution', '', '', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 834, 'accessuserid=-1,;uploaduserid=62,;deleteuserid=62,;zoom=2;'),
(7, 0, 'Aide alimentaire', '', 'aide-alimentaire', '', '', 'left', '<br type="_moz" />', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, 556, 'accessuserid=-1,;uploaduserid=62,;deleteuserid=62,;zoom=2;');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'mtd_phocagallery_comments'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_phocagallery_user_category'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'mtd_phocagallery_votes'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'mtd_phocagallery_votes_statistics'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table 'mtd_plugins'
--

INSERT INTO mtd_plugins (id, `name`, element, folder, access, ordering, published, iscore, client_id, checked_out, checked_out_time, params) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 62, '2010-01-04 22:14:29', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'Tabs & Slides (in content items)', 'jwts', 'content', 0, 0, 1, 0, 0, 62, '2010-02-17 20:45:50', '@spacer==== Slides Configuration ===\nslides_slidespeed=30\nslides_timer=10\n'),
(35, 'Editor - JCK', 'jck', 'editors', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'wwidth=100%\nhheight=600\nskin=silver\ntoolbar=Default\ncustom_line_1=[''Source'',''Templates'',''Preview''], [''Cut'',''Copy'',''Paste'',''PasteText'',''PasteWord'',''-'',''Print'',''SpellCheck''], [''Undo'',''Redo'',''-'',''Find'',''Replace'',''-'',''SelectAll'',''RemoveFormat'']\ncustom_line_2=	[''Bold'',''Italic'',''Underline'',''StrikeThrough'',''-'',''Subscript'',''Superscript''],\\n\\n	[''OrderedList'',''UnorderedList'',''-'',''Outdent'',''Indent'',''Blockquote''],\\n\\n	[''JustifyLeft'',''JustifyCenter'',''JustifyRight'',''JustifyFull''],\\n\\n	[''JoomlaContent'',''Link'',''Unlink'',''Anchor''],\\n\\n	[''ImageManager'',''Video'',''Effet'',''easyFile'',''Flash'',''Table'',''Rule'',''Smiley'',''SpecialChar'',''PageBreak''],\\n\\n	[''TextColor'',''BGColor''],[''FitWindow'',''ShowBlocks'',''-'',''About''],''/'',\\n\\n	[''Style'',''FontFormat'',''FontName'',''FontSize'']\ncustom_line_3=[''Style'',''FontFormat'',''FontName'',''FontSize''], [''TextColor'',''BGColor''], [''FitWindow'',''ShowBlocks'',''-'',''About'']\nenter=br\nshift_enter=div\ncontent_css=0\ncontent_css_custom=\ntext_direction=ltr\nfile_path=files/\nimage_path=images/stories/\nflash_path=flash/\nauto_lang=1\ndef_lang=fr\nprocess_html_entities=1\ninclude_latin_entities=1\ninclude_greek_entities=1\nforce_simple_ampersand=0\nuse_custom_templates=0\ntemp1_title=\ntemp1_desc=\ntemp1_image=-1\ntemp1_html=\ntemp2_title=\ntemp2_desc=\ntemp2_image=-1\ntemp2_html=\ntemp3_title=\ntemp3_desc=\ntemp3_image=-1\ntemp3_html=\n\n'),
(54, 'JosDewPlayer', 'josdewplayer', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoplay=0\nbgcolor=#FFFFFF\nautoreplay=0\n\n'),
(53, 'Content - MorfeoShow', 'morfeoshow', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(55, 'Acajoom Content Bot', 'acajoombot', 'acajoom', 0, 0, 1, 0, 0, 62, '2010-02-17 20:47:27', ''),
(47, 'Phoca Gallery Plugin', 'phocagallery', 'content', 0, 0, 1, 0, 0, 62, '2010-12-08 20:18:07', ''),
(41, 'Content Highslide', 'Highslide', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'compressed=1\nincludehsconfig=1\n\n'),
(43, 'Media Object', 'mediaobject', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'flash=9,0,124,0\nwindowsmedia=5,1,52,701\nquicktime=6,0,2,0\nrealmedia=7,0,0,0\nshockwave=8,5,1,0\n'),
(48, 'Phoca Gallery Slideshow Plugin', 'phocagalleryslideshow', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(49, 'YOOeffects', 'yoo_effects', 'system', 0, 0, 1, 0, 0, 62, '2009-04-21 09:53:46', 'lightbox=1\nreflection=1\nspotlight=1\ngzip=1\n\n');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table 'mtd_polls'
--

INSERT INTO mtd_polls (id, title, alias, voters, checked_out, checked_out_time, published, access, lag) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table 'mtd_poll_data'
--

INSERT INTO mtd_poll_data (id, pollid, `text`, hits) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table 'mtd_poll_date'
--

INSERT INTO mtd_poll_date (id, `date`, vote_id, poll_id) VALUES
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
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_poll_menu'
--

CREATE TABLE IF NOT EXISTS mtd_poll_menu (
  pollid int(11) NOT NULL DEFAULT '0',
  menuid int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (pollid,menuid)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_poll_menu'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table 'mtd_sc_config'
--

INSERT INTO mtd_sc_config (id, keyword, description, setting, cfgset, `type`, indopts, sh, sv, pagename) VALUES
(1, 'currency', 'Currency symbol', 'EUR', 0, 'text', '', 0, 0, 'Finance'),
(2, 'show_emptycart', 'Show Empty Cart button', '0', 0, 'yesno', '', 0, 0, 'Frontend Display'),
(3, 'thousand_sep', 'Thousands separator', ',', 0, 'text', '', 0, 0, 'Frontend Display'),
(4, 'decimal_sep', 'Decimal separator', '.', 0, 'text', '', 0, 0, 'Frontend Display'),
(5, 'decimals', 'Number of decimals', '2', 0, 'text', '', 0, 0, 'Frontend Display'),
(6, 'remove_button', 'Show remove button', '1', 0, 'yesno', '', 0, 0, 'Frontend Display'),
(7, 'email_customer', 'Send confirmation email to customer', '1', 0, 'yesno', '', 0, 0, 'Communication'),
(8, 'email_copies', 'Send confirmation email COPIES to', 'admin@thissite.com\r\nsupport@thissite.com\r\naccounting@othersite.ca', 0, 'textarea', '', 40, 10, 'Communication'),
(9, 'curralign', 'Currency symbol after amount', '0', 0, 'yesno', '', 0, 0, 'Frontend Display'),
(10, 'ostatus', 'Order statuses<br />One per line', 'New\r\nReviewed\r\nReview\r\nCancelled\r\nTreated\r\nArchive', 0, 'textarea', '', 20, 10, 'Order statuses'),
(11, 'taxrate', 'Tax rate to apply (VAT/PDV/BTW etc)', '0', 0, 'text', '', 0, 0, 'Finance'),
(12, 'checkusername', 'Validate user name', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(13, 'checkuseremail', 'Validate user email', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(14, 'checkuseraddress', 'Validate user address', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(15, 'checkuserpostalcode', 'Validate user postal code', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(16, 'checkusercity', 'Validate user city', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(17, 'checkuserphone', 'Validate user telephone', '1', 0, 'yesno', '', 0, 0, 'Validation'),
(18, 'emailhtml', 'Email is in HTML format', '1', 0, 'yesno', '', 0, 0, 'Communication'),
(19, 'dateformat', 'Date format', 'd-m-y', 0, 'text', '', 0, 0, 'Frontend Display'),
(20, 'timeformat', 'Time format', 'h:i:s', 0, 'text', '', 0, 0, 'Frontend Display'),
(21, 'reselleremail', 'Reseller email for PayPal', 'change@me.com', 0, 'text', '', 40, 0, 'PayPal'),
(22, 'usepaypal', 'Use PayPal for checkout', '0', 0, 'yesno', '', 0, 0, 'PayPal'),
(23, 'paypalcurrency', 'PayPal currency', 'EUR', 0, 'list', 'Australian Dollars (AUD):AUD \r\nCanadian Dollars (CAD):CAD \r\nEuros (EUR):EUR \r\nPounds Sterling (GBP):GBP \r\nYen (YEN):JPY \r\nU.S. Dollars (USD):USD \r\nNew Zealand Dollar (NZD):NZD \r\nSwiss Franc:CHF \r\nHong Kong Dollar (HKD):HKD \r\nSingapore Dollar (SGD):SGD \r\nSwedish Krona:SEK \r\nDanish Krone:DKK \r\nPolish Zloty:PLN \r\nNorwegian Krone:NOK \r\nHungarian Forint:HUF \r\nCzech Koruna:CZK', 0, 0, 'PayPal'),
(24, 'usecidasemail', 'Use content as email', '0', 0, 'yesno', '', 0, 0, 'Communication'),
(25, 'usestdproduct', 'Use the Systematic Product', '1', 0, 'yesno', '', 10, 0, 'Finance'),
(26, 'emailcid', 'Confirmation content ID', '44', 0, 'text', '', 3, 0, 'Communication'),
(27, 'cart_fee_product', 'Systematic Product (code) to add to cart', 'extracost', 0, 'text', '', 10, 0, 'Finance'),
(28, 'pgclassname', 'Payment gateway classname', 'scpaypal', 0, 'text', '', 0, 0, 'Payment gateway');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table 'mtd_sc_odetails'
--

INSERT INTO mtd_sc_odetails (id, orderid, prodcode, qty, unitprice, total, shorttext, `option`) VALUES
(1, 1, '1', 1, 1, 1, 'Don', ''),
(2, 1, 'extracost', 1, 0, 0, '', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_sc_orders'
--

INSERT INTO mtd_sc_orders (id, `name`, email, address, codepostal, city, telephone, ordercode, orderdt, total, `status`, tax) VALUES
(1, 'doumenc', 'elisabeth.pecatte@free.fr', 'lalalalal', '81100', 'castres', '0606060606', '', 1235925565, 1, 'New', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_sc_products'
--

INSERT INTO mtd_sc_products (id, prodcode, shorttext, av_qty, unitprice, published, optionstitle, options, showas) VALUES
(1, '1', 'Don', 0, 1, 1, '', '', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table 'mtd_sections'
--

INSERT INTO mtd_sections (id, title, `name`, alias, image, scope, image_position, description, published, checked_out, checked_out_time, ordering, access, count, params) VALUES
(6, 'Evénements', '', 'evenements', '', 'content', 'left', '<br type="_moz" />', 1, 65, '2010-04-12 22:02:41', 2, 0, 1, ''),
(5, 'La Main Tendue', '', 'la-main-tendue', '', 'content', 'left', '', 1, 65, '2010-03-25 21:34:56', 1, 0, 5, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_session'
--

INSERT INTO mtd_session (username, `time`, session_id, guest, userid, usertype, gid, client_id, `data`) VALUES
('', '1326640958', '386a0744a3327bdf7f72160a1bf5eb81', 1, 0, '', 0, 0, '7DmHj0Q-FLwBoOL_TmRlAyr_O87CklUIF8ZOVW93XNJvpRgpZ3eSJM01httOSILMLK8jsYU9U_WYaY3CSzL1aHVuCDm-Sd47CdhHskpL_x-v814VRErx_9S9rrhkqCEWbV9FwFQr9IJvHxizRi9pNoeOdby2aUxKT5Qkt9roApZrk7ctvcjDGlx-8O22hse3cr5MI8cpFLbf2NNyzimUyE_qHLWg29zZodI-0SQs8nz4HFdorTZg1ZroA5p11h49_Joq1JXz0PozTl_PV3OAQyDqNEqqF1eX9-2TjJK6lOtc2XwXmrSZLWw4EGO8PNvH8MNLm-tJpwyYrwGBLdU6Kh-_vPhI-Lg_j5U7Tkw8bd5ihlLHctzH0poKHyUCfvdUUu3W6VCGj3SPLlh5iM7tZaV-pB-28HrbrhjTvpjQ81tmkC-Um-tGL7OTPteZH-3ySWsO6fOolVfy8Ts0Ziq0Xv-xs2A0yHJt14bQ4MwrDZ9-ZneLu5wexvkIk9MpyJIV4QKE72uwfEGfoCKy_5U8RkuSg9mBz1MdXTBv8CoNE2ooujQU04a2qiVwHb8U7piEERp2rM15MQrPdifyYcAAtVR1Yp1ljeAL07bea88DOJsY1du5MoFkW7qjo6tOjlR8g2rt3ZWRFi9A7Olp_zSpqFXco03dtt-9ABUL0S_0ZjfllTOHC-kbO-EP5m4PmV4WbnrUdNw-Kx3HRwmrgqmHOHhV-l4tZX8OZOLosQRJNmdCnTo2GASoXca8geSvPsLfNdoTBhWsr2Uu0K5hyGt-WPP9k0_PbaluRythMqzLhB9HA277_cjv6T8lE-2YQOdchQ-tQvDiZYrEjlR7bJX50LfWA2pz29BgdqYlmiuStFaWV0FM4e_QEWi1tD-9Z6npU4T8tNa07FBCJxFSjZBW3Wb1KK5hKAVBp_wNQnsvzscp_J1S-xG8dOsYojQqzvDOjhA5pqPUD30HkxgsV9sshsT7NXvRrLYDtyWqbImDnOXpt212vKRsMIZ6PillLvezODumTdbiSkqd1RywxFUQ9yT2IwsHqhmBXBl6VO9OUCfMVCNqpoaeqxuVAgQRFKTh_R5PX3ad_49ExzvUVwBLG6yvFxrJ-6gluN9FZzgYCyWNa3H4TVI8IAqkwRjsrFazR2pKQ2xPCNNzVSxoWHQrHgjmuzrvxxCO0HA-fJcg1HV1uLl_7waNZSYFquOY2yiC72hp1bJ7LGrHNL_DX5yCU2hhbPuu-j6w42k-tk2_MWNJNNYc8GsyD-SOC7Reqn7ufN6-6kRL7XoPE2gc5kBs3SnX7HYIP8YzPcgFhmNkY_q-_jz5NkvmpcnQTeGK9_H2uhzvn-FveQ8bHHgo9xzE9Nv5PpXLtfnnJM6yUGKxsXuTMM_U33dhs_5XwEkPeUbXdJcwPaimVum5A1bQsaLdU_1OJcH_euMjW7EXdVXEhGd83ZO3uv8nWd8xQBSdeQifwDST--eEh-L2Q14Sf79FSWLlmuqlhrvLfqlVJ4PPt9hm1Ew4ymIiPi0KIwiwhdnM');

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_stats_agents'
--

CREATE TABLE IF NOT EXISTS mtd_stats_agents (
  agent varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  hits int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_stats_agents'
--


-- --------------------------------------------------------

--
-- Structure de la table 'mtd_templates_menu'
--

CREATE TABLE IF NOT EXISTS mtd_templates_menu (
  template varchar(255) NOT NULL DEFAULT '',
  menuid int(11) NOT NULL DEFAULT '0',
  client_id tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (menuid,client_id,template)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_templates_menu'
--

INSERT INTO mtd_templates_menu (template, menuid, client_id) VALUES
('maintendue2', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table 'mtd_test'
--

CREATE TABLE IF NOT EXISTS mtd_test (
  id int(11) NOT NULL AUTO_INCREMENT,
  greeting varchar(25) NOT NULL DEFAULT '',
  content text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table 'mtd_test'
--

INSERT INTO mtd_test (id, greeting, content) VALUES
(1, 'Hello, World!', '<p>The A "hello world" program is a computer program that prints out "Hello, world!" on a display device. It is used in many introductory tutorials for teaching a programming language. Such a program is typically one of the simplest programs possible in a computer language. Some are surprisingly complex, especially in some graphical user interface (GUI) contexts, but most are very simple, especially those which rely heavily on a particular command line interpreter ("shell") to perform the actual output. In many embedded systems, the text may be sent to a one or two-line liquid crystal display (LCD), or some other appropriate signal, such as a LED being turned on, may substitute for the message.<p>'),
(2, 'Bonjour, Monde!', ''),
(3, 'Ciao, Mondo!', ''),
(4, 'Hallo, Welt ;)', '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Contenu de la table 'mtd_users'
--

INSERT INTO mtd_users (id, `name`, username, email, `password`, usertype, block, sendEmail, gid, registerDate, lastvisitDate, activation, params) VALUES
(62, 'Administrator', 'admin', 'maintendue31@hotmail.com', 'eb97f0939dcfa5a5dbfbee0f51ae9805:lODjq0ceZL11KalpXLRvWmMStbwzT0n4', 'Super Administrator', 0, 1, 25, '2009-01-15 12:47:32', '2011-10-05 08:23:07', '551d220d4fe72d446571d577b06af089', 'admin_language=fr-FR\nlanguage=fr-FR\neditor=\nhelpsite=\ntimezone=0\n\n'),
(65, 'DAVID', 'DAVID', 'davidkarineboot@orange.fr', '41360caec9f7aaa9e06a82d9769581aa:NQPxt2IompE2ghBEbacRimkVjeBhLYjx', 'Super Administrator', 0, 1, 25, '2010-03-16 21:17:15', '2010-04-12 21:45:21', '', 'admin_language=fr-FR\nlanguage=fr-FR\neditor=\nhelpsite=\ntimezone=0\n\n');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table 'mtd_weblinks'
--


-- --------------------------------------------------------

--
-- Structure de la table 'mtd_xmap'
--

CREATE TABLE IF NOT EXISTS mtd_xmap (
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'mtd_xmap'
--

INSERT INTO mtd_xmap (`name`, `value`) VALUES
('version', '1.1'),
('classname', 'sitemap'),
('expand_category', '1'),
('expand_section', '1'),
('show_menutitle', '1'),
('columns', '1'),
('exlinks', '1'),
('ext_image', 'img_grey.gif'),
('exclmenus', ''),
('includelink', '1'),
('sitemap_default', '4'),
('exclude_css', '0'),
('exclude_xsl', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'mtd_xmap_ext'
--

INSERT INTO mtd_xmap_ext (id, extension, published, params) VALUES
(1, 'com_content', 1, '-1{max_art=0\nmax_art_age=0\nexpand_categories=1\nexpand_sections=1\nshow_unauth=0\ncat_priority=-1\ncat_changefreq=-1\nart_priority=-1\nart_changefreq=-1}');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table 'mtd_xmap_sitemap'
--

INSERT INTO mtd_xmap_sitemap (id, `name`, expand_category, expand_section, show_menutitle, `columns`, exlinks, ext_image, menus, exclmenus, includelink, usecache, cachelifetime, classname, count_xml, count_html, views_xml, views_html, lastvisit_xml, lastvisit_html, excluded_items, compress_xml) VALUES
(4, 'sitemap', 0, 0, 1, 2, 1, 'img_grey.gif', 'mainmenu,0,1,1,0.5,daily\nmultimedia,1,1,1,0.5,daily', '', 1, 0, 15, 'xmap', 17, 17, 12872, 1072, 1326602137, 1326634079, '', 0),
(6, 'Nouveau plan de site', 1, 1, 1, 1, 1, 'img_grey.gif', 'mainmenu,0,1,1,0.5,daily\nmultimedia,1,1,1,0.5,daily', '', 1, 0, 15, 'xmap', 0, 0, 0, 0, 0, 0, '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table 'spip_articles'
--

INSERT INTO spip_articles (id_article, surtitre, titre, soustitre, id_rubrique, descriptif, chapo, texte, ps, `date`, statut, id_secteur, maj, export, date_redac, visites, referers, popularite, accepter_forum, date_modif, lang, langue_choisie, id_trad, extra, idx, id_version, nom_site, url_site, url_propre) VALUES
(1, '', 'Notre Association', '', 1, '', '', 0x3c703e3c666f6e7420666163653d22417269616c223e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4c26727371756f3b4173736f63696174696f6e20266c6171756f3b266e6273703b3c656d3e4d61696e2054656e647565203331266e6273703b26726171756f3b3c2f656d3e2c206c6f6920313930312c20657374206e266561637574653b65206465206c61206d69736520656e20636f6d6d756e20646520766f6c6f6e74266561637574653b7320696e646976696475656c6c6573206166696e206426727371756f3b6169646572206c657320706572736f6e6e657320656e20736974756174696f6e206465207072266561637574653b6361726974266561637574653b2065742f6f75206426727371756f3b6578636c7573696f6e20736f6369616c652e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4326727371756f3b65737420706f75722072266561637574653b706f6e64726520266167726176653b20636573206265736f696e7320717526727371756f3b656c6c65207326727371756f3b65737420666978266561637574653b6520706f7572206d697373696f6e73266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d206465206c6575722076656e697220656e206169646520706f7572206c65757273206265736f696e7320696e64697370656e7361626c65732c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d206465206c65757220666f75726e6972206465732072657061732067726174756974732c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d20646520636f6e7472696275657220266167726176653b206661766f7269736572206c657572206c6f67656d656e742c206c65757220696e73657274696f6e2c206c6575722070726f6d6f74696f6e20736f6369616c652c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d206465206c6573206163636f6d7061676e65722064616e73206c657572732064266561637574653b6d6172636865732061646d696e697374726174697665732c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d206465206c65757220636f6e7361637265722064752074656d707320706f7572206c657320266561637574653b636f757465722e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4c65207075626c696320717565206e6f75732063266f636972633b746f796f6e73206573742076617269266561637574653b266e6273703b3a206a65756e657320656e20657272616e63652c2066616d696c6c65732061766563206465206a65756e657320656e66616e74732c20706572736f6e6e6573202661636972633b67266561637574653b65732c206368266f636972633b6d657572732c20524d49737465732c206574632668656c6c69703b2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e41637469766974266561637574653b20266c6171756f3b266e6273703b3c656d3e526573746f26727371756f3b205275653c2f656d3e266e6273703b26726171756f3b3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e266e6273703b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e417520636f757273206465206c26727371756f3b616e6e266561637574653b6520323030382c206c26727371756f3b4173736f63696174696f6e203c656d3e266c6171756f3b266e6273703b4d61696e2054656e6475652033313c2f656d3e266e6273703b26726171756f3b2061206469737472696275266561637574653b203c7374726f6e673e34203738382072657061733c2f7374726f6e673e2c2064616e73206c6520636164726520646520736f6e2061637469766974266561637574653b2c20617070656c266561637574653b6520266c6171756f3b266e6273703b3c656d3e526573746f26727371756f3b205275653c2f656d3e266e6273703b26726171756f3b2e2043657320726570617320736f6e74206469737472696275266561637574653b732c20746f7573206c65732064696d616e6368657320736f69722c20266167726176653b206c26727371756f3b266561637574653b636c75736520737572206c6520626f756c657661726420426f6e7265706f732c20656e2066616365206465206c612067617265204d617461626961752e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4c65206e6f6d62726520646520726570617320706172206d6f69732073652072266561637574653b706172746974206465206c612066612663636564696c3b6f6e2073756976616e7465266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c30206c6576656c31206c666f323b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4a616e76696572266e6273703b3a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3337303c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d68616e73692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313370743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b3c2f7370616e3e4a75696c6c6574266e6273703b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3234323c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e46266561637574653b7672696572266e6273703b3a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3336363c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b203c2f7370616e3e416f2675636972633b743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e303c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4d617273266e6273703b3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e203c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3438353c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b203c2f7370616e3e53657074656d627265266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3432343c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e417672696c3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b203c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3430373c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b3c2f7370616e3e4f63746f627265266e6273703b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3438363c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4d6169203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b3c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3433343c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b3c2f7370616e3e4e6f76656d627265266e6273703b203a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3530393c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4a75696e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b203c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3535393c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e26233337363b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b3c2f7370616e3e44266561637574653b63656d627265266e6273703b203a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3430313c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e536f69742034203638332072657061732064616e73206c6120727565206175787175656c733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e696c206661757420616a6f757465722031303520726570617320717569206f6e7420266561637574653b74266561637574653b20736572766973206c65206a6f7572206465206c6120662665636972633b746520266c6171756f3b266e6273703b3c656d3e4e6f2665756d6c3b6c20706f757220746f75733c2f656d3e266e6273703b26726171756f3b2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c6833207374796c653d226d617267696e3a2030636d2030636d20307074223e3c666f6e742073697a653d2235223e3c666f6e7420666163653d2247656f72676961223e3c753e3c7370616e207374796c653d226261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b206d736f2d686967686c696768743a2079656c6c6f77223e534f495420554e452050524f4752455353494f4e20444520333220252050415220524150504f5254204120323030373c2f7370616e3e3c2f753e3c753e3c7370616e207374796c653d22636f6c6f723a20726564223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f666f6e743e3c2f666f6e743e3c2f68333e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e5265706173206465204e6f2665756d6c3b6c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e4c652032302064266561637574653b63656d62726520323030382c206c26727371756f3b4173736f63696174696f6e20266c6171756f3b266e6273703b3c656d3e4d61696e2054656e6475652033313c2f656d3e266e6273703b26726171756f3b2061206f7267616e6973266561637574653b20756e20726570617320646520662665636972633b74652c20617070656c266561637574653b20266c6171756f3b266e6273703b3c656d3e4e6f2665756d6c3b6c20706f757220746f75733c2f656d3e266e6273703b26726171756f3b2c20266167726176653b206c26727371756f3b696e74656e74696f6e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e6465732067656e73206465206c61207275652c2064616e73206c6573206c6f63617578206d697320266167726176653b206e6f74726520646973706f736974696f6e20706172206c26727371756f3b266561637574653b676c69736520266561637574653b76616e67266561637574653b6c6971756520646573204d696e696d65732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2d2031303520706572736f6e6e6573206f6e742072266561637574653b706f6e647520266167726176653b206e6f74726520696e7669746174696f6e2e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2d2035302062266561637574653b6e266561637574653b766f6c657320736520736f6e7420696e7665737469732064616e7320636574746520616374696f6e2c20646f6e7420333020657874266561637574653b72696575727320266167726176653b206c26727371756f3b4173736f63696174696f6e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4c6120706172746965206d75736963616c65206120266561637574653b74266561637574653b206173737572266561637574653b6520706172206c652067726f7570652053454e5320554e495155453c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4365747465206a6f75726e266561637574653b6520612064656d616e64266561637574653b2036303020686575726573206465207472617661696c20656e7669726f6e20286163686174732c2064266561637574653b636f726174696f6e2c207072266561637574653b7061726174696f6e206465206c612073616c6c652c20266561637574653b6c61626f726174696f6e206465732072657061732c20706c6f6e67652c2072656d69736520656e20266561637574653b746174206574206e6574746f7961676520646573206c6f63617578292e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e436f6e63657274204c697a204d6320436f6d623c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4c65203232206e6f76656d6272652c206c26727371756f3b6173736f63696174696f6e2061206f7267616e6973266561637574653b20756e20636f6e6365727420646520736f757469656e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e266167726176653b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e73612063617573652061766563206c6520636f6e636f757273206465206c61206368616e746575736520696e7465726e6174696f6e616c6520646520676f7370656c203c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4c697a204d6320436f6d623c2f7370616e3e3c2f7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2e20456c6c6520266561637574653b74616974206163636f6d7061676e266561637574653b652c20706f7572206365747465206f63636173696f6e2c206426727371756f3b756e652063686f72616c65206465203c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3330302063686f7269737465733c2f7370616e3e3c2f7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e20697373757320646520706c757369657572732063686f72616c6573206465206c612072266561637574653b67696f6e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4365732063686f72616c65206f6e742070752062266561637574653b6e266561637574653b6669636965722064652033206d6173746572636c61737365732067726174756974657320717569206f6e742073657276692064652072266561637574653b70266561637574653b74696f6e7320706f7572206c6520636f6e636572742e203220736520736f6e742064266561637574653b726f756c266561637574653b6573206175207468266561637574653b6174726520646573204d617a61646573206d697320266167726176653b20646973706f736974696f6e20706172206c61204d616972696520646520546f756c6f7573652c20657420756e652061752074656d706c652064752053616c696e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4c61206d616972696520646520546f756c6f7573652c2070617274656e616972652064652063657420266561637574653b76266567726176653b6e656d656e742c206e6f75732061207072266561637574653b74266561637574653b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e6c612048616c6c652061757820477261696e732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e506c75736965757273206175747265732070617274656e6169726573206f6e7420736f7574656e7520636574746520616374696f6e266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c612064266561637574653b702665636972633b636865206475204d6964693c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c6120464e41433c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a2041756368616e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c65204372266561637574653b6469742041677269636f6c65206475204d69646920507972266561637574653b6e266561637574653b65733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c6120736f6369266561637574653b74266561637574653b20424545493c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c6120736f6369266561637574653b74266561637574653b204e6672616e636520436f6e7365696c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a20506861726520464d3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204c65205065746974204a6f75726e616c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a20415250413c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a204345204169726275733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e556e20706c616e206d266561637574653b64696120696d706f7274616e74206120266561637574653b74266561637574653b206d697320656e20266f656c69673b7576726520706f757220666169726520636f6e6e612669636972633b7472652063657420266561637574653b76266567726176653b6e656d656e74266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b203c2f7370616e3e322063616d7061676e65732064652034302061666669636865733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e347833206d3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b203c2f7370616e3e3520303030206166666963686573206d61676173696e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a2035322030303020666c796572733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a20313720737563657474657320616272696275733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a205075626c69636974266561637574653b2064616e73204c612044266561637574653b702665636972633b636865206475204d6964693c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e65742064616e73206c65205065746974204a6f75726e616c3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a205075626c69636974266561637574653b206574206d696e6920636f6e636572743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e266167726176653b206c6120464e41433c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a2050726f6d6f74696f6e20737572206c6573206f6e64657320646520506861726520464d3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a203220696e74657276656e74696f6e7320656e206469726563742073757220546f756c6f75736520464d20646f6e7420756e6520696e74657276696577206c65204c697a204d6320436f6d6220656e2073747564696f3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2a2031205265706f72746167652073757220544c543c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e524553554c544154266e6273703b3a20436520636f6e6365727420646520332068657572657320612072266561637574653b756e692031203830302073706563746174657572732c2061206661697420636f6e6e612669636972633b747265206c657320616374696f6e73206465206e6f747265206173736f63696174696f6e206574206e6f75732061207065726d697320646520636f6e736f6c69646572206e6f747265207472266561637574653b736f72657269652e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e56616c6f7269736174696f6e2064752062266561637574653b6e266561637574653b766f6c61743c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c656d3e3c753e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e43616c63756c20737572206c61206261736520647520534d49433c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e686f72616972653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f656d3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e416374696f6e20526573746f26727371756f3b527565266e6273703b3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b203c2f7370616e3e32203434342068206465207472617661696c206f6666657274657320736f69743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e4169646520616c696d656e7461697265266e6273703b3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b203c2f7370616e3e31203033342068206465207472617661696c206f6666657274657320736f69743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3132203535312c303820266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e536f697420756e20746f74616c206465203432203231372c323820266575726f3b203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c6832207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c753e3c666f6e7420666163653d2247656f726769612220636f6c6f723d2223303066663030223e4169646520616c696d656e74616972653c2f666f6e743e3c2f753e3c2f68323e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e546f75746573206c65732073656d61696e65732c206e6f75732070726f706f736f6e7320756e65206169646520616c696d656e746169726520736f757320666f726d6520646520636f6c697320266167726176653b20706c757369657572732066616d696c6c65732064616e73206c65206265736f696e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c32206c6576656c31206c666f333b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d666172656173742d666f6e742d66616d696c793a2047656f726769613b206d736f2d626964692d666f6e742d66616d696c793a2047656f72676961223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e312e3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e31372066616d696c6c657320736f7574656e75657320746f75746573206c65732073656d61696e657320706c7573207175656c7175657320266561637574653b74756469616e7473266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d20736f697420353020706572736f6e6e657320657420313020656e66616e7473206465206d6f696e73206465203320616e73266e6273703b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742033352e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d2064657320636f6c6973206426727371756f3b756e652076616c657572206d6f79656e6e6520646520323820266575726f3b207061722073656d61696e652e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742033352e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d20736f697420756e652076616c657572206d61726368616e6465206469737472696275266561637574653b65206465203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e32322033373220266575726f3b203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e7375722034372073656d61696e65732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c32206c6576656c31206c666f333b207461622d73746f70733a206c6973742037312e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d666172656173742d666f6e742d66616d696c793a2047656f726769613b206d736f2d626964692d666f6e742d66616d696c793a2047656f72676961223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e322e3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e382062266561637574653b6e266561637574653b766f6c6573206d6f62696c6973266561637574653b7320746f75746573206c65732073656d61696e657320706f757220616c6c6572206368657263686572206c6573206d61726368616e64697365732065742061737375726572206c6120646973747269627574696f6e202e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c753e416374696f6e20526573746f26727371756f3b527565266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f753e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070742037302e387074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2d20546f74616c20616e6e75656c206465203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e32203434343c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e206865757265732063756d756c266561637574653b6573207375722028353220686575726573202f34372073656d61696e6573293c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037302e3870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d20496c206120266561637574653b74266561637574653b206469737472696275266561637574653b203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e34203638333c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2072657061732064652064696d616e63686520736f6972206426727371756f3b756e652076616c657572206d6f79656e6e653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742038392e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e6465203220266575726f3b2035302063686163756e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037302e3870743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e2d20536f697420756e652076616c65757220676c6f62616c65206469737472696275266561637574653b653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e64653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3131203730372c353020266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e207375722034372073656d61696e65733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e4e6f2665756d6c3b6c20706f757220746f7573266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b207461622d73746f70733a2037322e307074223e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e2d203630303c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e206865757265733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e646520736572766963652072657072266561637574653b73656e74616e743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e37203330382c343020266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d202d352e347074203070742030636d3b207461622d73746f70733a2037322e307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e2d2031303520726570617320617373697320266167726176653b203820266575726f3b2038302063686163756e20736f697420756e652076616c657572206469737472696275266561637574653b652064653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e393234266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b207461622d73746f70733a2037322e307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070742033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e456e20666f726d652064652053796e7468266567726176653b73653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c703e3c7461626c6520636c6173733d224d736f4e6f726d616c5461626c6522207374796c653d22626f726465722d72696768743a206d656469756d206e6f6e653b20626f726465722d746f703a206d656469756d206e6f6e653b20626f726465722d6c6566743a206d656469756d206e6f6e653b20626f726465722d626f74746f6d3a206d656469756d206e6f6e653b20626f726465722d636f6c6c617073653a20636f6c6c617073653b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d70616464696e672d616c743a2030636d20332e3570742030636d20332e3570743b206d736f2d626f726465722d696e73696465683a202e35707420736f6c69642077696e646f77746578743b206d736f2d626f726465722d696e73696465763a202e35707420736f6c69642077696e646f7774657874222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2231223e3c74626f64793e3c74723e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e41637469766974266561637574653b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4865757265733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e56616c65757220536572766963653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e566f6c756d653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e56616c657572204469737472696275266561637574653b653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2032302e367074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4169646520416c696d656e74616972653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e312030333420483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e31323c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3535312c303820266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e37393920636f6c69733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e323220333732266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2031372e367074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e526573746f26727371756f3b5275653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e322034343420483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e34203638332072657061733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2032322e357074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4e6f2665756d6c3b6c20706f757220546f75733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e36303020483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e37203336342c363020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e3130352072657061733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e393234266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2031382e3170743b206d736f2d796674692d6c617374726f773a20796573223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e546f74616c2043756d756c266561637574653b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e342030373820483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3439203538312c383820266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a20236630663066303b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a20236630663066303b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3236203233322c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c2f74626f64793e3c2f7461626c653e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e554e452056414c45555220544f54414c4520444520534552564943452044453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d686967686c696768743a2079656c6c6f77223e3735203831342c3038266575726f3b3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a207265643b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f64795465787422207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e673e3c753e3c666f6e7420666163653d2247656f72676961223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f77223e3c666f6e7420636f6c6f723d2223666630303030223e534f495420554e45204155474d454e544154494f4e204445203c2f666f6e743e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f77223e32302c333520253c2f7370616e3e3c666f6e7420636f6c6f723d2223666630303030223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f77223e205041523c7370616e207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a2030636d3b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a2030636d3b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e357074223e203c2f7370616e3e524150504f52542041204c26727371756f3b414e4e454520323030373c2f7370616e3e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e653b20746578742d756e6465726c696e653a206e6f6e65223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f666f6e743e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c7374726f6e673e3c753e266e6273703b3c2f753e3c2f7374726f6e673e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4e4f532050415254454e41495245533c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e266e6273703b3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e42414e51554520414c494d454e54414952453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e434f4e5345494c2047454e4552414c204445204c412048415554452d4741524f4e4e453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e4d414952494520444520544f554c4f5553453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e434149535345204426727371756f3b45504152474e453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e43414d494620534f4c494441524954453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e50415449535345524945204341564541553c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202671756f743b47656f726769612671756f743b2c2671756f743b73657269662671756f743b223e41554348414e3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e56334a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b203c2f7370616e3e50524f4d4f54494f4e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e434f4d495445204426727371756f3b454e5452455052495345205448414c4553204156494f4e4943533c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202671756f743b54696d6573204e657720526f6d616e2671756f743b223e266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b266e6273703b203c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e434f4d495445204426727371756f3b454e5452455052495345204149524255533c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c703e266e6273703b3c2f703e3c2f666f6e743e3c2f703e3c703e266e6273703b3c2f703e, '', '2008-03-10 12:23:27', 'publie', 1, '2009-06-04 20:12:02', 'oui', '0000-00-00 00:00:00', 812, 0, 0.571399473711428, 'pos', '2009-06-04 20:12:02', 'fr', 'non', 0, NULL, '1', 0, '', '', '');
INSERT INTO spip_articles (id_article, surtitre, titre, soustitre, id_rubrique, descriptif, chapo, texte, ps, `date`, statut, id_secteur, maj, export, date_redac, visites, referers, popularite, accepter_forum, date_modif, lang, langue_choisie, id_trad, extra, idx, id_version, nom_site, url_site, url_propre) VALUES
(2, '', 'Reportage', '', 6, '', '', 0x3c646f6336347c706c617965727c63656e7465723e0d0a3c646f6332327c706c617965727c63656e7465723e0d0a3c646f6336337c706c617965727c63656e7465723e, '', '2008-03-10 13:07:52', 'publie', 6, '2008-06-22 09:10:30', 'oui', '0000-00-00 00:00:00', 428, 0, 0.215456766199061, 'pos', '2008-06-22 09:10:30', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(8, '', 'contact', '', 9, '', '', 0x3c64697620636c6173733d2276657264616e613120737069705f6d656469756d223e3c7020636c6173733d22737069702220616c69676e3d226a757374696679223e3c666f6e7420666163653d22417269616c223e41647265737365203a203431302c206368656d696e20646573205669676e6573204c69657520646974202671756f743b5361797261632671756f743b2033313334302056696c6c656d757220737572205461726e3c2f666f6e743e3c2f703e3c7020636c6173733d22737069702220616c69676e3d226a757374696679223e3c666f6e7420666163653d22417269616c223e4164726573736520652d6d61696c203a203c2f666f6e743e3c6120687265663d226d61696c746f3a6d61696e74656e647565333140686f746d61696c2e636f6d3f7375626a6563743d636f6e74616374253230736974652532306d61696e74656e647565223e3c666f6e7420666163653d22417269616c223e6d61696e74656e647565333140686f746d61696c2e636f6d3c2f666f6e743e3c2f613e3c2f703e3c7020636c6173733d22737069702220616c69676e3d226a757374696679223e3c666f6e7420666163653d22417269616c223e54266561637574653b6c266561637574653b70686f6e65203a2030362e36362e32372e39362e37343c2f666f6e743e3c2f703e3c2f6469763e, '', '2008-06-11 19:52:59', 'publie', 9, '2008-09-12 13:33:01', 'oui', '0000-00-00 00:00:00', 392, 0, 0.0764145550817818, 'pos', '2008-09-12 13:33:01', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(4, '', 'L''action RESTO''RUE', '', 4, '', '', '', '', '2008-03-18 13:39:00', 'publie', 4, '2008-06-18 22:39:56', 'oui', '0000-00-00 00:00:00', 517, 0, 1.25241108238195, 'pos', '2008-06-18 22:39:56', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(5, '', 'Nos partenaires', '', 7, '', '', 0x3c7020616c69676e3d2263656e746572223e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e746f756c6f7573652e6672223e3c696d67206865696768743d223930222077696474683d2238352220636c6173733d222220616c743d2222207372633d222f494d472f6a70672f6c6f676f5f6d61697269655f746f756c6f7573652e6a706722202f3e3c2f613e20202020202020203c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e636733312e6672223e3c696d67206865696768743d223537222077696474683d223135302220636c6173733d222220616c743d2222207372633d222f494d472f496d6167652f636f6e7365696c2e6a706722202f3e3c2f613e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e6361697373652d65706172676e652e66722f63686f697369725f726567696f6e2e617370783f7265673d313331333526616d703b73633d30223e3c696d67206865696768743d22313038222077696474683d2239362220616c743d2222207372633d222f494d472f496d6167652f6361697373656465706172676e652d37633266342e706e6722202f3e3c2f613e3c2f703e3c7020616c69676e3d2263656e746572223e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e61756368616e2e6672223e3c696d67206865696768743d223533222077696474683d2239362220636c6173733d222220616c743d2222207372633d222f494d472f496d6167652f61756368616e2e6a706722202f3e3c2f613e2020202020203c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e62616e717565616c696d656e74616972652e6f72672f61727469636c652e706870333f69645f61727469636c653d3532223e3c696d67206865696768743d223636222077696474683d2236342220616c743d2242616e71756520616c696d656e746169726520646520546f756c6f75736522207372633d222f494d472f496d6167652f6c6f676f2d62616e71616c696d2d36323132332e706e6722202f3e3c2f613e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e63616d69662e636f6f702f43535f6173736f632e68746d223e3c696d67206865696768743d223736222077696474683d223134302220616c743d2222207372633d222f494d472f496d6167652f6c6f676f2d63616d69662e67696622202f3e3c2f613e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f7777772e74762d736f6c2e6f72672f223e3c696d67206865696768743d223733222077696474683d22393422207372633d222f494d472f496d6167652f5456534f4c312e6a70672220616c743d2222202f3e3c2f613e3c2f703e, '', '2008-06-02 12:26:10', 'publie', 7, '2008-07-20 19:26:17', 'oui', '0000-00-00 00:00:00', 404, 0, 2.14828664176799, 'pos', '2008-07-20 19:26:17', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(6, '', 'Edito', '', 2, '', '', 0x3c7020616c69676e3d226c656674223e3c666f6e7420666163653d22417269616c223e4269656e76656e756520737572206c652073697465206465206c26727371756f3b6173736f63696174696f6e204d61696e2054656e647565203331202120436520706f727461696c2073652076657574202665636972633b747265206c65207265666c6574206465206e6f74726520616374696f6e2061757072266567726176653b732064657320706572736f6e6e65732064266561637574653b6661766f726973266561637574653b65732e204e6f74726520627574206573742c20656e2065666665742c206426727371756f3b6170706f7274657220756e652061696465206d6174266561637574653b7269656c6c65206d61697320737572746f7574206d6f72616c6520266167726176653b20636575782071756920766976656e742064657320736974756174696f6e73206426727371756f3b6578636c7573696f6e2e204e6f74726520266561637574653b71756970652064652062266561637574653b6e266561637574653b766f6c6573206d6f746976266561637574653b732c20657374206163746976652073656d61696e6520617072266567726176653b732073656d61696e6520706f75722074656e647265206c61206d61696e20266167726176653b206365757820717565206c61207669652061206d616c6d656e266561637574653b732c2073616e73206a7567656d656e742064652076616c6575722c2073616e732064697374696e6374696f6e20646520726163652c206426727371756f3b6f726967696e65206f752064652072656c6967696f6e2e20566f75732074726f75766572657a20737572206c65732064696666266561637574653b72656e7465732070616765732c2064657320696e666f726d6174696f6e732c20646573206c69656e732c2064657320636f6e7461637473206d61697320766f7573206176657a206175737369206c6120706f73736962696c6974266561637574653b206465206e6f757320736f7574656e6972207369206e6f74726520636175736520766f757320696e74657270656c6c652e20426f6e6e652076697369746520213c2f666f6e743e3c2f703e, '', '2008-06-02 12:24:33', 'publie', 2, '2008-09-12 13:33:28', 'oui', '0000-00-00 00:00:00', 392, 0, 0.120904596094211, 'pos', '2008-09-12 13:33:28', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(7, '', 'Infos', '', 8, '', '', 0x3c7020616c69676e3d226a757374696679223e3c666f6e742073697a653d2232223e3c666f6e7420666163653d22417269616c223e4269656e74266f636972633b7420656e206c69676e652c206c652072656c6f6f6b61676520636f6d706c6574206465206e6f747265207369746520212121213c2f666f6e743e3c2f666f6e743e3c2f703e, '', '2008-04-14 10:03:47', 'publie', 8, '2009-06-04 20:24:35', 'oui', '0000-00-00 00:00:00', 432, 0, 1.04461121715367, 'pos', '2009-06-04 20:24:35', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(11, '', 'aide alimentaire', '', 11, '', '', 0x3c7020616c69676e3d226c656674223e3c666f6e7420666163653d22417269616c223e446570756973206c65206d6f6973206465206a75696e2032303038206c276173736f63696174696f6e204d61696e2054656e6475652033312061206372266561637574653b266561637574653b20756e206e6f7576656175207365727669636520617070656c266561637574653b202671756f743b4169646520616c696d656e74616972652671756f743b20617520747261766572732064757175656c20736f6e74206469737472696275266561637574653b732064657320636f6c697320616c696d656e74616972657320266167726176653b2064657374696e6174696f6e206465732066616d696c6c65732064616e73206c65206265736f696e203a203c6272202f3e2d31352066616d696c6c657320736f7574656e75657320746f75746573206c65732073656d61696e6573202d20736f697420343220706572736f6e6e65732065742064697820656e66616e7473206465206d6f696e73206465203320616e73202d20736f697420313520636f6c6973206427756e652076616c657572206d6f79656e6e6520646520323520266575726f3b2e3c6272202f3e2d342062266561637574653b6e266561637574653b766f6c657320646f6e6e656e74203620686575726573206465206c6575722074656d7073207061722073656d61696e6520706f757220636574746520616374696f6e2e3c2f666f6e743e3c2f703e, '', '2008-06-22 00:20:26', 'publie', 11, '2008-09-12 13:31:45', 'oui', '0000-00-00 00:00:00', 288, 0, 0.0400175494248067, 'pos', '2008-09-12 13:31:45', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(16, '', 'Des repas pour rechauffer les coeurs', '', 12, '', '', 0x3c703e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f31355f30365f323030342e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:20:05', 'publie', 12, '2008-07-12 13:20:05', 'oui', '0000-00-00 00:00:00', 64, 0, 0.11614712856638, 'pos', '2008-07-12 13:19:58', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(12, '', 'Le Mercredi, un repas est servi aux dÃ©munis', '', 12, '', '', 0x3c7020616c69676e3d2263656e746572223e3c6120687265663d222f494d472f496d6167652f30335f30355f323030352e6a706722207461726765743d225f626c616e6b223e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f30335f30355f323030352e6a70672220616c743d2222202f3e3c2f613e3c6120687265663d222f494d472f496d6167652f707265737365342e6a7067223e3c6272202f3e203c2f613e3c2f703e, '', '2008-07-03 18:10:32', 'publie', 12, '2008-07-13 01:04:36', 'oui', '0000-00-00 00:00:00', 60, 0, 0.0040080840279995, 'pos', '2008-07-13 01:04:36', 'fr', 'non', 0, NULL, '1', 0, '', '', '');
INSERT INTO spip_articles (id_article, surtitre, titre, soustitre, id_rubrique, descriptif, chapo, texte, ps, `date`, statut, id_secteur, maj, export, date_redac, visites, referers, popularite, accepter_forum, date_modif, lang, langue_choisie, id_trad, extra, idx, id_version, nom_site, url_site, url_propre) VALUES
(13, '', 'Quelques chiffres', '', 13, '', '', 0x3c683220616c69676e3d226c656674223e3c753e3c7374726f6e673e3c666f6e7420666163653d22417269616c223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c6120736f6369266561637574653b74266561637574653b204e6672616e636520436f6e7365696c3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a20506861726520464d3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c65205065746974204a6f75726e616c3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a20415250413c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204345204169726275733c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e556e20706c616e206d266561637574653b64696120696d706f7274616e74206120266561637574653b74266561637574653b206d697320656e20266f656c69673b7576726520706f757220666169726520636f6e6e612669636972633b7472652063657420266561637574653b76266567726176653b6e656d656e74266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e322063616d70613c666f6e7420666163653d22417269616c223e203c2f666f6e743e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c666f6e742073697a653d2232223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e41637469766974266561637574653b20266c6171756f3b266e6273703b3c656d3e526573746f26727371756f3b205275653c2f656d3e266e6273703b26726171756f3b3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e266e6273703b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e417520636f757273206465206c26727371756f3b616e6e266561637574653b6520323030382c206c26727371756f3b4173736f63696174696f6e203c656d3e266c6171756f3b266e6273703b4d61696e2054656e6475652033313c2f656d3e266e6273703b26726171756f3b2061206469737472696275266561637574653b203c7374726f6e673e34203738382072657061733c2f7374726f6e673e2c2064616e73206c6520636164726520646520736f6e2061637469766974266561637574653b2c20617070656c266561637574653b6520266c6171756f3b266e6273703b3c656d3e526573746f26727371756f3b205275653c2f656d3e266e6273703b26726171756f3b2e2043657320726570617320736f6e74206469737472696275266561637574653b732c20746f7573206c65732064696d616e6368657320736f69722c20266167726176653b206c26727371756f3b266561637574653b636c75736520737572206c6520626f756c657661726420426f6e7265706f732c20656e2066616365206465206c612067617265204d617461626961752e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e4c65206e6f6d62726520646520726570617320706172206d6f69732073652072266561637574653b706172746974206465206c612066612663636564696c3b6f6e2073756976616e7465266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c30206c6576656c31206c666f323b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4a616e76696572266e6273703b3a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3337303c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d68616e73692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313370743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e4a75696c6c6574266e6273703b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3234323c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e46266561637574653b7672696572266e6273703b3a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3336363c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e416f2675636972633b743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e303c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4d617273266e6273703b3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e203c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3438353c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e53657074656d627265266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3432343c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e417672696c3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3430373c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e4f63746f627265266e6273703b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3438363c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4d6169203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3433343c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e4e6f76656d627265266e6273703b266e6273703b3a203c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3530393c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c33206c6576656c31206c666f313b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4a75696e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3535393c7370616e207374796c653d226d736f2d7461622d636f756e743a2032223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a2057696e6764696e67733b206d736f2d61736369692d666f6e742d66616d696c793a2047656f726769613b206d736f2d68616e73692d666f6e742d66616d696c793a2047656f726769613b206d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e3c7370616e207374796c653d226d736f2d636861722d747970653a2073796d626f6c3b206d736f2d73796d626f6c2d666f6e742d66616d696c793a2057696e6764696e6773223e2659756d6c3b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e44266561637574653b63656d627265266e6273703b266e6273703b3a3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3430313c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e536f69742034203638332072657061732064616e73206c6120727565206175787175656c733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e696c206661757420616a6f757465722031303520726570617320717569206f6e7420266561637574653b74266561637574653b20736572766973206c65206a6f7572206465206c6120662665636972633b746520266c6171756f3b266e6273703b3c656d3e4e6f2665756d6c3b6c20706f757220746f75733c2f656d3e266e6273703b26726171756f3b2e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c6833207374796c653d226d617267696e3a2030636d2030636d20307074223e3c666f6e7420666163653d2247656f72676961223e3c666f6e742073697a653d2232223e3c753e3c7370616e207374796c653d226261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b206d736f2d686967686c696768743a2079656c6c6f77223e534f495420554e452050524f4752455353494f4e204445203332266e6273703b252050415220524150504f5254204120323030373c2f7370616e3e3c2f753e3c753e3c7370616e207374796c653d22636f6c6f723a20726564223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f666f6e743e3c2f666f6e743e3c2f68333e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e5265706173206465204e6f2665756d6c3b6c3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e4c652032302064266561637574653b63656d62726520323030382c206c26727371756f3b4173736f63696174696f6e20266c6171756f3b266e6273703b3c656d3e4d61696e2054656e6475652033313c2f656d3e266e6273703b26726171756f3b2061206f7267616e6973266561637574653b20756e20726570617320646520662665636972633b74652c20617070656c266561637574653b20266c6171756f3b266e6273703b3c656d3e4e6f2665756d6c3b6c20706f757220746f75733c2f656d3e266e6273703b26726171756f3b2c20266167726176653b206c26727371756f3b696e74656e74696f6e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e6465732067656e73206465206c61207275652c2064616e73206c6573206c6f63617578206d697320266167726176653b206e6f74726520646973706f736974696f6e20706172206c26727371756f3b266561637574653b676c69736520266561637574653b76616e67266561637574653b6c6971756520646573204d696e696d65732e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2d2031303520706572736f6e6e6573206f6e742072266561637574653b706f6e647520266167726176653b206e6f74726520696e7669746174696f6e2e203c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2d2035302062266561637574653b6e266561637574653b766f6c657320736520736f6e7420696e7665737469732064616e7320636574746520616374696f6e2c20646f6e7420333020657874266561637574653b72696575727320266167726176653b206c26727371756f3b4173736f63696174696f6e2e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e4c6120706172746965206d75736963616c65206120266561637574653b74266561637574653b206173737572266561637574653b6520706172206c652067726f7570652053454e5320554e495155453c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e4365747465206a6f75726e266561637574653b6520612064656d616e64266561637574653b2036303020686575726573206465207472617661696c20656e7669726f6e20286163686174732c2064266561637574653b636f726174696f6e2c207072266561637574653b7061726174696f6e206465206c612073616c6c652c20266561637574653b6c61626f726174696f6e206465732072657061732c20706c6f6e67652c2072656d69736520656e20266561637574653b746174206574206e6574746f7961676520646573206c6f63617578292e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e742073697a653d2232223e436f6e63657274204c697a204d6320436f6d623c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e4c65203232206e6f76656d6272652c206c26727371756f3b6173736f63696174696f6e2061206f7267616e6973266561637574653b20756e20636f6e6365727420646520736f757469656e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266167726176653b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e73612063617573652061766563206c6520636f6e636f757273206465206c61206368616e746575736520696e7465726e6174696f6e616c6520646520676f7370656c203c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4c697a204d6320436f6d623c2f7370616e3e3c2f7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2e20456c6c6520266561637574653b74616974206163636f6d7061676e266561637574653b652c20706f7572206365747465206f63636173696f6e2c206426727371756f3b756e652063686f72616c65206465203c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3330302063686f7269737465733c2f7370616e3e3c2f7374726f6e673e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e20697373757320646520706c757369657572732063686f72616c6573206465206c612072266561637574653b67696f6e2e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e4365732063686f72616c65206f6e742070752062266561637574653b6e266561637574653b6669636965722064652033206d6173746572636c61737365732067726174756974657320717569206f6e742073657276692064652072266561637574653b70266561637574653b74696f6e7320706f7572206c6520636f6e636572742e203220736520736f6e742064266561637574653b726f756c266561637574653b6573206175207468266561637574653b6174726520646573204d617a61646573206d697320266167726176653b20646973706f736974696f6e20706172206c61204d616972696520646520546f756c6f7573652c20657420756e652061752074656d706c652064752053616c696e2e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e4c61206d616972696520646520546f756c6f7573652c2070617274656e616972652064652063657420266561637574653b76266567726176653b6e656d656e742c206e6f75732061207072266561637574653b74266561637574653b3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e6c612048616c6c652061757820477261696e732e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e506c75736965757273206175747265732070617274656e6169726573206f6e7420736f7574656e7520636574746520616374696f6e266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c612064266561637574653b702665636972633b636865206475204d6964693c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c6120464e41433c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a2041756368616e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c65204372266561637574653b6469742041677269636f6c65206475204d69646920507972266561637574653b6e266561637574653b65733c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a204c6120736f6369266561637574653b74266561637574653b20424545493c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c666f6e742073697a653d2232223e676e65732064652034302061666669636865733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e347833206d3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3520303030206166666963686573206d61676173696e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a2035322030303020666c796572733c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a20313720737563657474657320616272696275733c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a205075626c69636974266561637574653b2064616e73204c612044266561637574653b702665636972633b636865206475204d6964693c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e65742064616e73206c65205065746974204a6f75726e616c3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a205075626c69636974266561637574653b206574206d696e6920636f6e636572743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e266167726176653b206c6120464e41433c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a2050726f6d6f74696f6e20737572206c6573206f6e64657320646520506861726520464d3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a203220696e74657276656e74696f6e7320656e206469726563742073757220546f756c6f75736520464d20646f6e7420756e6520696e74657276696577206c65204c697a204d6320436f6d6220656e2073747564696f3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c666f6e742073697a653d2232223e2a2031205265706f72746167652073757220544c543c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e524553554c544154266e6273703b3a20436520636f6e6365727420646520332068657572657320612072266561637574653b756e692031203830302073706563746174657572732c2061206661697420636f6e6e612669636972633b747265206c657320616374696f6e73206465206e6f747265206173736f63696174696f6e206574206e6f75732061207065726d697320646520636f6e736f6c69646572206e6f747265207472266561637574653b736f72657269652e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e56616c6f7269736174696f6e2064752062266561637574653b6e266561637574653b766f6c61743c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c656d3e3c753e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c666f6e742073697a653d2232223e43616c63756c20737572206c61206261736520647520534d49433c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e686f72616972653c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f656d3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e416374696f6e20526573746f26727371756f3b527565266e6273703b3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e32203434342068206465207472617661696c206f6666657274657320736f69743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e4169646520616c696d656e7461697265266e6273703b3a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e31203033342068206465207472617661696c206f6666657274657320736f69743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3132203535312c303820266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e536f697420756e20746f74616c206465203432203231372c323820266575726f3b203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c6832207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c753e3c666f6e7420666163653d2247656f726769612220636f6c6f723d2223303066663030222073697a653d2232223e4169646520616c696d656e74616972653c2f666f6e743e3c2f753e3c2f68323e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e546f75746573206c65732073656d61696e65732c206e6f75732070726f706f736f6e7320756e65206169646520616c696d656e746169726520736f757320666f726d6520646520636f6c697320266167726176653b20706c757369657572732066616d696c6c65732064616e73206c65206265736f696e2e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c32206c6576656c31206c666f333b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d666172656173742d666f6e742d66616d696c793a2047656f726769613b206d736f2d626964692d666f6e742d66616d696c793a2047656f72676961223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e312e3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e31372066616d696c6c657320736f7574656e75657320746f75746573206c65732073656d61696e657320706c7573207175656c7175657320266561637574653b74756469616e7473266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e2d20736f697420353020706572736f6e6e657320657420313020656e66616e7473206465206d6f696e73206465203320616e73266e6273703b3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742033352e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e2d2064657320636f6c6973206426727371756f3b756e652076616c657572206d6f79656e6e6520646520323820266575726f3b207061722073656d61696e652e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742033352e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e2d20736f697420756e652076616c657572206d61726368616e6465206469737472696275266561637574653b65206465203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e32322033373220266575726f3b203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e7375722034372073656d61696e65732e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037312e3470743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c32206c6576656c31206c666f333b207461622d73746f70733a206c6973742037312e347074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d666172656173742d666f6e742d66616d696c793a2047656f726769613b206d736f2d626964692d666f6e742d66616d696c793a2047656f72676961223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e322e3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e382062266561637574653b6e266561637574653b766f6c6573206d6f62696c6973266561637574653b7320746f75746573206c65732073656d61696e657320706f757220616c6c6572206368657263686572206c6573206d61726368616e64697365732065742061737375726572206c6120646973747269627574696f6e202e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e3c753e416374696f6e20526573746f26727371756f3b527565266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f753e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070742037302e387074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e2d20546f74616c20616e6e75656c206465203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e32203434343c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e206865757265732063756d756c266561637574653b6573207375722028353220686575726573202f34372073656d61696e6573293c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037302e3870743b20746578742d616c69676e3a206a757374696679223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e2d20496c206120266561637574653b74266561637574653b206469737472696275266561637574653b203c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e34203638333c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e2072657061732064652064696d616e63686520736f6972206426727371756f3b756e652076616c657572206d6f79656e6e653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742038392e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e6465203220266575726f3b2035302063686163756e2e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742037302e3870743b20746578742d616c69676e3a206a757374696679223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e2d20536f697420756e652076616c65757220676c6f62616c65206469737472696275266561637574653b653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e64653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3131203730372c353020266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e207375722034372073656d61696e65733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070742035332e3470743b20746578742d696e64656e743a2033352e3470743b20746578742d616c69676e3a206a757374696679223e3c7370616e207374796c653d22636f6c6f723a20626c61636b3b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d696e64656e743a2033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031362e307074223e3c666f6e742073697a653d2232223e4e6f2665756d6c3b6c20706f757220746f7573266e6273703b3a3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b207461622d73746f70733a2037322e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e2d203630303c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e206865757265733c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e646520736572766963652072657072266561637574653b73656e74616e743c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e37203330382c343020266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d202d352e347074203070742030636d3b207461622d73746f70733a2037322e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c7370616e207374796c653d226d736f2d7461622d636f756e743a2031223e266e6273703b3c2f7370616e3e2d2031303520726570617320617373697320266167726176653b203820266575726f3b2038302063686163756e20736f697420756e652076616c657572206469737472696275266561637574653b652064653c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e393234266575726f3b3c2f7370616e3e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b207461622d73746f70733a2037322e307074223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070742033352e347074223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313470743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e742073697a653d2232223e456e20666f726d652064652053796e7468266567726176653b73653c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c64223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7461626c6520636c6173733d224d736f4e6f726d616c5461626c6522207374796c653d22626f726465722d72696768743a206d656469756d206e6f6e653b20626f726465722d746f703a206d656469756d206e6f6e653b20626f726465722d6c6566743a206d656469756d206e6f6e653b20626f726465722d626f74746f6d3a206d656469756d206e6f6e653b20626f726465722d636f6c6c617073653a20636f6c6c617073653b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d70616464696e672d616c743a2030636d20332e3570742030636d20332e3570743b206d736f2d626f726465722d696e73696465683a202e35707420736f6c69642077696e646f77746578743b206d736f2d626f726465722d696e73696465763a202e35707420736f6c69642077696e646f7774657874222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2231223e3c74626f64793e3c74723e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e41637469766974266561637574653b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2036352e3270743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4865757265733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2039302e3670743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e56616c65757220536572766963653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a20383370743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e566f6c756d653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a203130312e3470743b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e56616c657572204469737472696275266561637574653b653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2032302e367074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4169646520416c696d656e74616972653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2036352e3270743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e312030333420483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2039302e3670743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e31323c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3535312c303820266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a20383370743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e37393920636f6c69733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a203130312e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032302e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e323220333732266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2031372e367074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e526573746f26727371756f3b5275653c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2036352e3270743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e206c616e673d22454e2d474222207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e3070743b206d736f2d616e73692d6c616e67756167653a20454e2d4742223e322034343420483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2039302e3670743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a20383370743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e34203638332072657061733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a203130312e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031372e3670743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3239203636362c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2032322e357074223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e4e6f2665756d6c3b6c20706f757220546f75733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2036352e3270743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e36303020483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2039302e3670743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e37203336342c363020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a20383370743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3130352072657061733c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a203130312e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2032322e3570743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e393234266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c7472207374796c653d226865696768743a2031382e3170743b206d736f2d796674692d6c617374726f773a20796573223e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2077696474683a203132302e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313631223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e546f74616c2043756d756c266561637574653b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2036352e3270743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d223837223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e342030373820483c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a2039302e3670743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313231223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3439203538312c383820266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a20383370743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313131223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e266e6273703b3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c7464207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a20332e3570743b2070616464696e672d6c6566743a20332e3570743b20626f726465722d6c6566742d636f6c6f723a20236630663066303b2070616464696e672d626f74746f6d3a2030636d3b2077696474683a203130312e3470743b20626f726465722d746f702d636f6c6f723a20236630663066303b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206865696768743a2031382e3170743b206261636b67726f756e642d636f6c6f723a207472616e73706172656e743b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d6c6566742d616c743a20736f6c69642077696e646f7774657874202e3570743b206d736f2d626f726465722d746f702d616c743a20736f6c69642077696e646f7774657874202e357074222076616c69676e3d22746f70222077696474683d22313335223e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313070743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3236203233322c323020266575726f3b3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f703e3c2f74643e3c2f74723e3c2f74626f64793e3c2f7461626c653e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c666f6e742073697a653d2232223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e554e452056414c45555220544f54414c4520444520534552564943452044453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e203c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c666f6e742073697a653d2232223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3735203831342c3038266575726f3b3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a207265643b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f6479546578743322207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b20636f6c6f723a2077696e646f77746578743b20666f6e742d66616d696c793a202747656f72676961272c277365726966273b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f426f64795465787422207374796c653d226d617267696e3a2030636d2030636d20307074223e3c7374726f6e673e3c753e3c666f6e7420666163653d2247656f72676961223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e65223e3c666f6e7420636f6c6f723d2223666630303030223e534f495420554e45204155474d454e544154494f4e204445203c2f666f6e743e3c2f7370616e3e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20636f6c6f723a20626c75653b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e65223e32302c3335266e6273703b253c2f7370616e3e3c666f6e7420636f6c6f723d2223666630303030223e3c7370616e207374796c653d22666f6e742d73697a653a20313870743b206261636b67726f756e643a2079656c6c6f773b20746578742d6465636f726174696f6e3a206e6f6e653b206d736f2d686967686c696768743a2079656c6c6f773b206d736f2d626964692d666f6e742d73697a653a2031362e3070743b20746578742d756e6465726c696e653a206e6f6e65223e205041523c7370616e207374796c653d22626f726465722d72696768743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d72696768743a2030636d3b20626f726465722d746f703a2077696e646f77746578742031707420736f6c69643b2070616464696e672d6c6566743a2030636d3b2070616464696e672d626f74746f6d3a2030636d3b20626f726465722d6c6566743a2077696e646f77746578742031707420736f6c69643b2070616464696e672d746f703a2030636d3b20626f726465722d626f74746f6d3a2077696e646f77746578742031707420736f6c69643b206d736f2d626f726465722d616c743a20736f6c69642077696e646f7774657874202e357074223e203c2f7370616e3e524150504f52542041204c26727371756f3b414e4e454520323030373c2f7370616e3e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e653b20746578742d756e6465726c696e653a206e6f6e65223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f666f6e743e3c2f666f6e743e3c2f666f6e743e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c7374726f6e673e3c753e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f753e3c2f7374726f6e673e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c666f6e742073697a653d2232223e4e4f532050415254454e41495245533c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a2063656e7465722220616c69676e3d2263656e746572223e3c7374726f6e67207374796c653d226d736f2d626964692d666f6e742d7765696768743a206e6f726d616c223e3c753e3c7370616e207374796c653d22666f6e742d73697a653a20313670743b20636f6c6f723a206c696d653b20666f6e742d66616d696c793a202747656f72676961272c27736572696627223e3c6f3a703e3c7370616e207374796c653d22746578742d6465636f726174696f6e3a206e6f6e65223e3c666f6e742073697a653d2232223e266e6273703b3c2f666f6e743e3c2f7370616e3e3c2f6f3a703e3c2f7370616e3e3c2f753e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e42414e51554520414c494d454e54414952453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e434f4e5345494c2047454e4552414c204445204c412048415554452d4741524f4e4e453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e4d414952494520444520544f554c4f5553453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e434149535345204426727371756f3b45504152474e453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e43414d494620534f4c494441524954453c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420313870743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e50415449535345524945204341564541553c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d66616d696c793a202747656f72676961272c27736572696627223e41554348414e3c2f7370616e3e3c2f7374726f6e673e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e56334a3c7370616e207374796c653d226d736f2d737061636572756e3a20796573223e266e6273703b3c2f7370616e3e50524f4d4f54494f4e3c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d203070743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e434f4d495445204426727371756f3b454e5452455052495345205448414c4553204156494f4e4943533c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420323770743b20746578742d616c69676e3a206a757374696679223e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c6f3a703e3c666f6e7420666163653d2254696d6573204e657720526f6d616e222073697a653d2232223e266e6273703b3c2f666f6e743e3c2f6f3a703e3c2f7370616e3e3c2f7374726f6e673e3c2f703e3c7020636c6173733d224d736f4e6f726d616c22207374796c653d226d617267696e3a2030636d2030636d2030707420343570743b20746578742d696e64656e743a202d313870743b20746578742d616c69676e3a206a7573746966793b206d736f2d6c6973743a206c31206c6576656c31206c666f343b207461622d73746f70733a206c6973742034352e307074223e3c666f6e742073697a653d2232223e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b20666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d7765696768743a20626f6c643b206d736f2d666172656173742d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d66616d696c793a2053796d626f6c3b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c7370616e207374796c653d226d736f2d6c6973743a2049676e6f7265223e266d6964646f743b3c7370616e207374796c653d22666f6e743a20377074202754696d6573204e657720526f6d616e27223e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f7370616e3e3c7374726f6e673e3c7370616e207374796c653d22666f6e742d73697a653a20313170743b206d736f2d626964692d666f6e742d73697a653a2031322e307074223e3c666f6e7420666163653d2254696d6573204e657720526f6d616e223e434f4d495445204426727371756f3b454e5452455052495345204149524255533c6f3a703e3c2f6f3a703e3c2f666f6e743e3c2f7370616e3e3c2f7374726f6e673e3c2f666f6e743e3c2f703e3c2f666f6e743e3c2f7374726f6e673e3c2f753e3c2f68323e, '', '2008-07-03 19:04:22', 'prepa', 13, '2009-06-15 10:50:44', 'oui', '0000-00-00 00:00:00', 237, 0, 1.20731155674681e-40, 'pos', '2009-06-15 10:47:43', 'fr', 'non', 0, NULL, '1', 0, '', '', '');
INSERT INTO spip_articles (id_article, surtitre, titre, soustitre, id_rubrique, descriptif, chapo, texte, ps, `date`, statut, id_secteur, maj, export, date_redac, visites, referers, popularite, accepter_forum, date_modif, lang, langue_choisie, id_trad, extra, idx, id_version, nom_site, url_site, url_propre) VALUES
(25, '', 'Concert de Liz Mc Comb', '', 12, '', '', 0x3c703e3c6120687265663d22687474703a2f2f7777772e6d61696e74656e64756533312e6f72672f494d472f7064662f70726f6a65745f70726573735f746f756c6f7573655f2d322e7064662220747970653d226170706c69636174696f6e2f706466223e3c696d67207374796c653d2277696474683a2034383070783b206865696768743a20343135707822206865696768743d2235322220616c743d222022207372633d22687474703a2f2f7777772e6d61696e74656e64756533312e6f72672f646973742f7669676e65747465732f7064662e706e67222077696474683d22353222202f3e3c2f613e3c2f703e, '', '2008-09-13 18:28:07', 'prepa', 12, '2008-09-14 15:26:34', 'oui', '0000-00-00 00:00:00', 2, 0, 4.03911433111098e-123, 'pos', '2008-09-13 18:29:40', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(15, '', 'JournÃ©e contre L''alcoolisme', '', 12, '', '', 0x3c703e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f31345f30365f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:14:45', 'publie', 12, '2008-07-12 13:14:45', 'oui', '0000-00-00 00:00:00', 44, 0, 0.0040158234239348, 'pos', '2008-07-12 13:14:18', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(14, '', 'Un repas devant la gare', '', 12, '', '', 0x3c703e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f30355f30325f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 12:59:33', 'publie', 12, '2008-07-13 16:11:12', 'oui', '0000-00-00 00:00:00', 42, 0, 0.0040160273590271, 'pos', '2008-07-13 16:11:12', 'fr', 'non', 0, NULL, '1', 0, '', '', ''),
(17, '', 'Un repas de fÃªte pour les SDF', '', 12, '', '', 0x3c703e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f31365f31325f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:24:06', 'publie', 12, '2008-07-12 13:24:06', 'oui', '0000-00-00 00:00:00', 54, 0, 0.103327362633401, 'pos', '2008-07-12 13:23:59', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(18, '', 'RetraitÃ©s et condamnÃ©s Ã  vivre dans la rue ', '', 12, '', '', 0x3c703e3c696d67206865696768743d22373030222077696474683d2235353022207372633d222f494d472f496d6167652f31375f30395f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:27:47', 'publie', 12, '2008-07-12 13:27:47', 'oui', '0000-00-00 00:00:00', 38, 0, 0.00400808402810901, 'pos', '2008-07-12 13:27:40', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(19, '', 'Une main tendue vers les exclus', '', 12, '', '', 0x3c703e3c696d67206865696768743d22393731222077696474683d2235353022207372633d222f494d472f496d6167652f31385f31325f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:33:56', 'publie', 12, '2008-07-12 13:33:56', 'oui', '0000-00-00 00:00:00', 43, 0, 0.103327364073698, 'pos', '2008-07-12 13:30:46', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(20, '', 'Repas de fÃªte pour les sans-abris', '', 12, '', '', 0x3c703e3c696d67206865696768743d22383638222077696474683d2235353022207372633d222f494d472f496d6167652f32325f31325f323030342e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:37:11', 'publie', 12, '2008-07-12 13:37:11', 'oui', '0000-00-00 00:00:00', 46, 0, 0.103327362945495, 'pos', '2008-07-12 13:37:04', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(21, '', 'Dimanche soir, une main tendue dans la rue', '', 12, '', '', 0x3c703e3c696d67206865696768743d22393031222077696474683d2235353022207372633d222f494d472f496d6167652f32335f30365f323030342e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:41:05', 'publie', 12, '2008-07-12 13:41:05', 'oui', '0000-00-00 00:00:00', 30, 0, 0.00400953057202871, 'pos', '2008-07-12 13:40:54', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(22, '', 'Tous les dimanches, repas chauds servis dans la rue', '', 12, '', '', 0x3c703e3c696d67206865696768743d22383232222077696474683d2235353022207372633d222f494d472f496d6167652f32375f31305f323030342e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-12 13:46:20', 'publie', 12, '2008-07-12 13:46:20', 'oui', '0000-00-00 00:00:00', 36, 0, 0.00400808405211207, 'pos', '2008-07-12 13:46:06', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(23, '', 'Ils ont du coeur', '', 12, '', '', 0x3c703e3c696d67206865696768743d22393038222077696474683d2235353022207372633d222f494d472f496d6167652f30335f30315f323030352e6a70672220616c743d2222202f3e3c2f703e, '', '2008-07-13 01:47:53', 'publie', 12, '2008-07-13 01:47:53', 'oui', '0000-00-00 00:00:00', 59, 0, 0.103675438598962, 'pos', '2008-07-13 01:47:46', 'fr', 'non', 0, NULL, '', 0, '', '', ''),
(24, '', 'Plus de solidaritÃ© encore pour la nouvelle annÃ©e', '', 12, '', '', 0x3c703e3c696d67206865696768743d223834302220616c743d22222077696474683d2235353022207372633d222f494d472f496d6167652f30315f30315f323030352e6a706722202f3e3c2f703e, '', '2008-07-13 01:50:13', 'publie', 12, '2008-07-13 16:19:39', 'oui', '0000-00-00 00:00:00', 52, 0, 0.116146924253198, 'pos', '2008-07-13 16:19:39', 'fr', 'non', 0, NULL, '1', 0, '', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table 'spip_auteurs'
--

INSERT INTO spip_auteurs (id_auteur, nom, bio, email, nom_site, url_site, login, pass, low_sec, statut, maj, pgp, htpass, en_ligne, imessage, messagerie, alea_actuel, alea_futur, prefs, cookie_oubli, source, lang, idx, url_propre, extra) VALUES
(1, 'titan', '', 'eddy_zam@hotmail.com', '', '', 'zameddy', '0f9db1e8d33eb56d69388ebab455a776', '', '0minirezo', '2008-12-10 13:52:19', '', 0x2431244e564334764b5a612453334c384977516d576461577a2f69576d434371672f, '2008-12-10 13:52:19', '', '', '124318427492d4f7fb29292.01942205', '1211399960493fbaf52b0a46.10817009', 'a:2:{s:3:"cnx";s:0:"";s:7:"options";s:8:"avancees";}', '', 'spip', '', '1', '', NULL),
(2, 'franÃ§ois', '', 'sportiello.francois@neuf.fr', '', '', 'franÃ§ois', 'b8eb484b03f10417ba1b7ccfb9e5d01f', '', '0minirezo', '2009-06-15 10:57:40', '', 0x243124526232336a484372244455545369465032702e44684c4b66317a536f714e2e, '2009-06-15 10:57:40', '', '', '7806477264a3607f7e5dc44.00121572', '13506270834a360c78aa9739.73353377', 'a:3:{s:3:"cnx";s:0:"";s:7:"display";d:1;s:7:"options";s:8:"avancees";}', '', 'spip', '', '1', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs_articles'
--

CREATE TABLE IF NOT EXISTS spip_auteurs_articles (
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_auteur,id_article),
  KEY id_article (id_article)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_auteurs_articles'
--

INSERT INTO spip_auteurs_articles (id_auteur, id_article) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(2, 25);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_auteurs_messages'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_auteurs_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_auteurs_rubriques (
  id_auteur bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_auteur,id_rubrique),
  KEY id_rubrique (id_rubrique)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_auteurs_rubriques'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_breves'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_caches'
--

INSERT INTO spip_caches (fichier, id, `type`, taille) VALUES
('0/-inc-squ-som-fr.e27d1879', '1256592240', 't', 1229),
('7/index.dad3a564', '1256592240', 't', 3232),
('a/spip%3Farticle7.1a2dadeb', '1256592353', 't', 2655),
('e/spi-ecr--oc_va.f891d920', '1256597119', 't', 2736),
('4/spip%3Farticle4.3d318fa1', '1256592367', 't', 5446),
('1/ech-log-log-log-ecr-fr.4d477c55', '1256592334', 't', 1433),
('f/%3B-%2325991%3B-opt-fr.a091f98e', '1256592334', 't', 6816),
('c/spi-ecrire%252F.6878d4ec', '1256675134', 't', 2750),
('c/log-log-log-ecr--ar-ar.086befb6', '1256597424', 't', 1713),
('4/%3B-%2325991%3B-opt-ar.ae775891', '1256597424', 't', 6863),
('2/-inc-squ-art-fr.8b4d86c3', '1256592359', 't', 1227),
('2/spi-ecr--ar.cbc079f1', '1256680224', 't', 3118),
('6/spip%3Farticle1.25f221d2.gz', '1256592394', 't', 6545),
('d/spi-ecr--cpf.59b0709b', '1256600373', 't', 2762),
('0/spip%3Farticle6.d247929b', '1256592383', 't', 3614),
('7/spip%3Farticle2.cff02b1c', '1256592359', 't', 5070);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Contenu de la table 'spip_documents'
--

INSERT INTO spip_documents (id_document, id_vignette, id_type, titre, `date`, descriptif, fichier, taille, largeur, hauteur, `mode`, distant, idx, maj) VALUES
(31, 0, 1, '', '2008-04-14 22:31:20', '', 'IMG/jpg/DSC_0015.jpg', 23014, 265, 400, 'document', 'non', '1', '2008-04-14 22:31:20'),
(32, 0, 1, '', '2008-04-14 22:31:35', '', 'IMG/jpg/DSC_0022.jpg', 32740, 400, 265, 'document', 'non', '1', '2008-04-14 22:31:35'),
(33, 0, 1, '', '2008-04-14 22:31:45', '', 'IMG/jpg/DSC_0023.jpg', 39371, 400, 265, 'document', 'non', '1', '2008-04-14 22:31:45'),
(34, 0, 1, '', '2008-04-14 22:31:57', '', 'IMG/jpg/DSC_0025.jpg', 34537, 400, 265, 'document', 'non', '1', '2008-04-14 22:31:57'),
(35, 0, 1, '', '2008-04-14 22:32:10', '', 'IMG/jpg/DSC_0027.jpg', 23413, 265, 400, 'document', 'non', '1', '2008-06-02 19:17:50'),
(36, 0, 1, '', '2008-04-14 22:32:18', '', 'IMG/jpg/DSC_0029.jpg', 26748, 265, 400, 'document', 'non', '1', '2008-04-14 22:32:18'),
(37, 0, 1, '', '2008-04-14 22:32:27', '', 'IMG/jpg/DSC_0041.jpg', 17791, 265, 400, 'document', 'non', '1', '2008-04-14 22:32:27'),
(38, 0, 1, '', '2008-04-14 22:32:38', '', 'IMG/jpg/DSC_0044.jpg', 42651, 400, 265, 'document', 'non', '1', '2008-04-14 22:32:38'),
(39, 0, 1, '', '2008-04-14 22:32:47', '', 'IMG/jpg/DSC_0045.jpg', 37670, 400, 265, 'document', 'non', '1', '2008-04-14 22:32:47'),
(30, 0, 1, '', '2008-04-14 22:31:03', '', 'IMG/jpg/DSC_0014.jpg', 19994, 265, 400, 'document', 'non', '1', '2008-04-14 22:31:03'),
(22, 0, 9, 'Resto Rue', '2008-04-02 22:37:00', '', 'IMG/flv/ReportageTVSOL3.flv', 10942897, 0, 0, 'document', 'non', '1', '2008-06-20 09:56:50'),
(40, 0, 1, '', '2008-04-14 22:32:55', '', 'IMG/jpg/DSC_0047.jpg', 26681, 265, 400, 'document', 'non', '1', '2008-04-14 22:32:55'),
(46, 0, 1, '', '2008-06-02 12:11:52', '', 'IMG/jpg/logo_mairie_toulouse.jpg', 19985, 85, 90, 'vignette', 'non', '1', '2008-06-02 12:11:52'),
(63, 0, 9, 'Noel 2007', '2008-06-21 17:25:00', '', 'IMG/flv/noel.flv', 30218397, 0, 0, 'document', 'non', '1', '2008-06-21 17:30:27'),
(64, 0, 9, 'Journal tÃ©lÃ©visÃ© ', '2008-06-22 09:03:00', '', 'IMG/flv/jt1.flv', 19821926, 0, 0, 'document', 'non', '1', '2008-07-03 18:15:28'),
(58, 0, 1, '', '2008-06-02 19:29:05', '', 'IMG/jpg/refuge.jpg', 22206, 370, 258, 'vignette', 'non', '1', '2008-06-02 19:29:05'),
(59, 0, 1, '', '2008-06-02 19:30:11', '', 'IMG/jpg/refuge-2.jpg', 22206, 370, 258, 'document', 'non', '1', '2008-06-02 19:30:11'),
(66, 0, 46, 'Concert LizMcomb', '2008-09-13 18:17:00', '', 'IMG/pdf/projet_press_toulouse_-2.pdf', 158098, 0, 0, 'document', 'non', '1', '2008-09-13 18:18:02');

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_articles'
--

CREATE TABLE IF NOT EXISTS spip_documents_articles (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_article,id_document),
  KEY id_document (id_document)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_documents_articles'
--

INSERT INTO spip_documents_articles (id_document, id_article) VALUES
(22, 2),
(63, 2),
(64, 2),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(46, 5),
(58, 6),
(59, 6),
(66, 25);

-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_breves'
--

CREATE TABLE IF NOT EXISTS spip_documents_breves (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_breve bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_breve,id_document),
  KEY id_document (id_document)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_documents_breves'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_documents_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_documents_rubriques (
  id_document bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_rubrique,id_document),
  KEY id_document (id_document)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_documents_rubriques'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_forum'
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table 'spip_groupes_mots'
--

INSERT INTO spip_groupes_mots (id_groupe, titre, descriptif, texte, unseul, obligatoire, articles, breves, rubriques, syndic, minirezo, comite, forum, maj) VALUES
(1, 'affichage', '', '', 'non', 'non', 'oui', 'oui', '', 'oui', 'oui', 'oui', 'non', '2008-04-14 22:49:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_index'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_index_dico'
--

CREATE TABLE IF NOT EXISTS spip_index_dico (
  `hash` bigint(20) unsigned NOT NULL DEFAULT '0',
  dico varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (dico)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_index_dico'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_messages'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_meta'
--

INSERT INTO spip_meta (nom, valeur, impt, maj) VALUES
('version_installee', '1.927', 'oui', '2008-03-07 18:15:44'),
('langues_utilisees', 'fr', 'oui', '2008-03-07 18:16:19'),
('charset', 'utf-8', 'oui', '2008-03-07 18:16:19'),
('email_webmaster', 'eddy_zam@hotmail.com', 'oui', '2008-03-07 18:16:19'),
('nom_site', 'MAIN TENDUE 31', 'oui', '2008-03-07 18:27:12'),
('descriptif_site', '', 'oui', '2008-03-07 18:16:19'),
('activer_breves', 'oui', 'oui', '2008-03-07 18:16:19'),
('config_precise_groupes', 'non', 'oui', '2008-03-07 18:16:19'),
('mots_cles_forums', 'non', 'oui', '2008-03-07 18:16:19'),
('articles_surtitre', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_soustitre', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_descriptif', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_chapeau', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_ps', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_redac', 'non', 'oui', '2008-03-07 18:16:19'),
('articles_mots', 'oui', 'oui', '2008-03-07 18:16:19'),
('post_dates', 'oui', 'oui', '2008-03-07 18:16:19'),
('articles_urlref', 'non', 'oui', '2008-03-07 18:16:19'),
('creer_preview', 'oui', 'oui', '2008-03-13 10:59:30'),
('taille_preview', '150', 'oui', '2008-03-07 18:16:19'),
('articles_modif', 'non', 'oui', '2008-03-07 18:16:19'),
('activer_sites', 'oui', 'oui', '2008-03-07 18:16:19'),
('proposer_sites', '0', 'oui', '2008-03-07 18:16:19'),
('activer_syndic', 'oui', 'oui', '2008-03-07 18:16:19'),
('visiter_sites', 'non', 'oui', '2008-03-07 18:16:19'),
('moderation_sites', 'non', 'oui', '2008-03-07 18:16:19'),
('forums_publics', 'posteriori', 'oui', '2008-03-07 18:16:19'),
('accepter_inscriptions', 'non', 'oui', '2008-03-07 18:16:19'),
('accepter_visiteurs', 'non', 'oui', '2008-03-07 18:16:19'),
('prevenir_auteurs', 'non', 'oui', '2008-03-07 18:16:19'),
('suivi_edito', 'non', 'oui', '2008-03-07 18:16:19'),
('quoi_de_neuf', 'non', 'oui', '2008-03-07 18:16:19'),
('forum_prive_admin', 'non', 'oui', '2008-03-07 18:16:19'),
('activer_moteur', 'non', 'oui', '2008-03-07 18:58:23'),
('articles_versions', 'non', 'oui', '2008-03-07 18:16:19'),
('articles_ortho', 'non', 'oui', '2008-03-07 18:16:19'),
('preview', 'non', 'oui', '2008-03-07 18:16:19'),
('activer_statistiques', 'oui', 'oui', '2008-03-07 18:16:19'),
('documents_article', 'oui', 'oui', '2008-03-07 18:16:19'),
('documents_rubrique', 'non', 'oui', '2008-03-07 18:16:19'),
('syndication_integrale', 'oui', 'oui', '2008-03-07 18:16:19'),
('creer_htpasswd', 'non', 'oui', '2008-03-07 18:16:19'),
('creer_htaccess', 'non', 'oui', '2008-03-07 18:16:19'),
('langue_site', 'fr', 'oui', '2008-03-07 18:16:19'),
('multi_articles', 'non', 'oui', '2008-03-07 18:16:19'),
('multi_rubriques', 'non', 'oui', '2008-03-07 18:16:19'),
('multi_secteurs', 'non', 'oui', '2008-03-07 18:16:19'),
('gerer_trad', 'non', 'oui', '2008-03-07 18:16:19'),
('langues_multilingue', 'ar,bg,br,bs,ca,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,gl,hu,id,it,it_fem,ja,lb,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_prv,oc_va,pl,pt,pt_br,ro,ru,tr,vi,zh', 'oui', '2008-03-07 18:16:19'),
('alea_ephemere_ancien', 'd13a4a4e1670c16f1bd705f10514c26c', 'non', '2009-10-26 20:25:33'),
('alea_ephemere', 'e631414aa621119abd9e27d40d74f790', 'non', '2009-10-26 20:25:33'),
('alea_ephemere_date', '1256585133', 'non', '2009-10-26 20:25:33'),
('langues_proposees', 'ar,bg,br,bs,ca,cpf,cpf_hat,cs,da,de,en,eo,es,eu,fa,fon,fr,gl,hu,id,it,it_fem,ja,lb,nl,oc_auv,oc_gsc,oc_lms,oc_lnc,oc_ni,oc_ni_la,oc_prv,oc_va,pl,pt,pt_br,ro,ru,tr,vi,zh', 'oui', '2008-03-07 18:16:22'),
('INDEX_elements_objet', 'a:10:{s:13:"spip_articles";a:9:{s:5:"titre";i:8;s:9:"soustitre";i:5;s:8:"surtitre";i:5;s:10:"descriptif";i:4;s:5:"chapo";i:3;s:5:"texte";i:1;s:2:"ps";i:1;s:8:"nom_site";i:1;s:22:"extra|unserialize_join";i:1;}s:11:"spip_breves";a:3:{s:5:"titre";i:8;s:5:"texte";i:2;s:22:"extra|unserialize_join";i:1;}s:14:"spip_rubriques";a:4:{s:5:"titre";i:8;s:10:"descriptif";i:5;s:5:"texte";i:1;s:22:"extra|unserialize_join";i:1;}s:12:"spip_auteurs";a:3:{s:3:"nom";a:2:{i:0;i:5;i:1;i:2;}s:3:"bio";i:1;s:22:"extra|unserialize_join";i:1;}s:9:"spip_mots";a:4:{s:5:"titre";i:8;s:10:"descriptif";i:5;s:5:"texte";i:1;s:22:"extra|unserialize_join";i:1;}s:15:"spip_signatures";a:5:{s:9:"nom_email";a:2:{i:0;i:2;i:1;i:2;}s:8:"ad_email";i:2;s:8:"nom_site";i:2;s:8:"url_site";i:1;s:7:"message";i:1;}s:11:"spip_syndic";a:3:{s:8:"nom_site";i:50;s:10:"descriptif";i:30;s:29:"url_site|contenu_page_accueil";i:1;}s:20:"spip_syndic_articles";a:1:{s:5:"titre";i:5;}s:10:"spip_forum";a:6:{s:5:"titre";i:3;s:5:"texte";i:2;s:6:"auteur";a:2:{i:0;i:2;i:1;i:2;}s:12:"email_auteur";i:2;s:8:"nom_site";i:2;s:8:"url_site";i:1;}s:14:"spip_documents";a:3:{s:5:"titre";i:20;s:10:"descriptif";i:10;s:27:"fichier|nettoie_nom_fichier";i:1;}}', 'oui', '2008-03-07 18:16:23'),
('INDEX_objet_associes', 'a:4:{s:13:"spip_articles";a:3:{s:14:"spip_documents";i:1;s:12:"spip_auteurs";i:10;s:9:"spip_mots";i:3;}s:11:"spip_breves";a:2:{s:14:"spip_documents";i:1;s:9:"spip_mots";i:3;}s:14:"spip_rubriques";a:2:{s:14:"spip_documents";i:1;s:9:"spip_mots";i:3;}s:14:"spip_documents";a:1:{s:9:"spip_mots";i:3;}}', 'oui', '2008-03-07 18:16:23'),
('INDEX_elements_associes', 'a:3:{s:14:"spip_documents";a:2:{s:5:"titre";i:2;s:10:"descriptif";i:1;}s:12:"spip_auteurs";a:1:{s:3:"nom";i:1;}s:9:"spip_mots";a:2:{s:5:"titre";i:4;s:10:"descriptif";i:1;}}', 'oui', '2008-03-07 18:16:23'),
('INDEX_critere_indexation', 'a:6:{s:13:"spip_articles";s:15:"statut=''publie''";s:11:"spip_breves";s:15:"statut=''publie''";s:14:"spip_rubriques";s:15:"statut=''publie''";s:11:"spip_syndic";s:15:"statut=''publie''";s:10:"spip_forum";s:15:"statut=''publie''";s:15:"spip_signatures";s:15:"statut=''publie''";}', 'oui', '2008-03-07 18:16:23'),
('INDEX_critere_optimisation', 'a:6:{s:13:"spip_articles";s:16:"statut<>''publie''";s:11:"spip_breves";s:16:"statut<>''publie''";s:14:"spip_rubriques";s:16:"statut<>''publie''";s:11:"spip_syndic";s:16:"statut<>''publie''";s:10:"spip_forum";s:16:"statut<>''publie''";s:15:"spip_signatures";s:16:"statut<>''publie''";}', 'oui', '2008-03-07 18:16:23'),
('INDEX_iteration_nb_maxi', 'a:2:{s:14:"spip_documents";i:10;s:11:"spip_syndic";i:1;}', 'oui', '2008-03-07 18:16:23'),
('index_table', 'a:9:{i:1;s:13:"spip_articles";i:2;s:12:"spip_auteurs";i:3;s:11:"spip_breves";i:4;s:14:"spip_documents";i:5;s:10:"spip_forum";i:6;s:9:"spip_mots";i:7;s:14:"spip_rubriques";i:8;s:15:"spip_signatures";i:9;s:11:"spip_syndic";}', 'oui', '2008-03-07 18:16:23'),
('adresse_site', 'http://www.maintendue31.org/index.php', 'non', '2008-06-12 00:57:15'),
('date_calcul_rubriques', '1256585148', 'oui', '2009-10-26 20:25:48'),
('derniere_modif', '1256585153', 'oui', '2009-10-26 20:25:53'),
('date_popularites', '1256581335', 'oui', '2009-10-26 19:22:15'),
('optimiser_table', '19', 'oui', '2009-10-26 20:24:01'),
('gd_formats_read', 'gif,jpg,png', 'oui', '2008-03-07 18:58:09'),
('gd_formats', 'gif,jpg,png', 'oui', '2008-03-07 18:58:09'),
('netpbm_formats', '', 'oui', '2008-03-07 18:58:10'),
('plugin', 'a:3:{s:6:"PLAYER";a:2:{s:3:"dir";s:18:"Lecteur_multimedia";s:7:"version";s:3:"0.6";}s:5:"DIAPO";a:2:{s:3:"dir";s:9:"diapo_1_9";s:7:"version";s:3:"0.6";}s:9:"FCKEDITOR";a:2:{s:3:"dir";s:9:"fckeditor";s:7:"version";s:5:"1.703";}}', 'oui', '2008-06-05 18:32:27'),
('popularite_max', '0.57139947371143', 'oui', '2009-10-26 19:22:15'),
('popularite_total', '2.1395190963492', 'oui', '2009-10-26 19:22:15'),
('date_statistiques', '2009-10-26', 'oui', '2009-10-26 19:22:15'),
('plugin_header', 'player(0.6),diapo(0.6),fckeditor(1.703)', 'oui', '2008-06-05 18:32:27'),
('plugin_installes', 'a:0:{}', 'non', '2008-07-12 14:11:52'),
('http_proxy', '', 'oui', '2008-03-10 15:33:43'),
('player', 'neoplayer', 'oui', '2008-03-10 15:33:43'),
('formats_graphiques', 'gif,jpg,png', 'non', '2008-03-13 10:57:41'),
('image_process', 'gd2', 'non', '2008-03-13 10:57:41'),
('max_taille_vignettes', '3027600', 'non', '2008-03-31 18:41:13'),
('jpg_rotator', 'a:6:{s:5:"idart";s:1:"4";s:6:"rotate";s:1:"2";s:10:"transition";s:6:"fluids";s:6:"random";s:2:"on";s:10:"navigation";N;s:5:"wmode";s:11:"transparent";}', 'oui', '2008-04-14 22:01:45');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_mots'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_articles'
--

CREATE TABLE IF NOT EXISTS spip_mots_articles (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_article bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_article,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_articles'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_breves'
--

CREATE TABLE IF NOT EXISTS spip_mots_breves (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_breve bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_breve,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_breves'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_documents'
--

CREATE TABLE IF NOT EXISTS spip_mots_documents (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_document bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_document,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_documents'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_forum'
--

CREATE TABLE IF NOT EXISTS spip_mots_forum (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_forum bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_forum,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_forum'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_rubriques'
--

CREATE TABLE IF NOT EXISTS spip_mots_rubriques (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_rubrique bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_rubrique,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_rubriques'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_mots_syndic'
--

CREATE TABLE IF NOT EXISTS spip_mots_syndic (
  id_mot bigint(21) NOT NULL DEFAULT '0',
  id_syndic bigint(21) NOT NULL DEFAULT '0',
  PRIMARY KEY (id_syndic,id_mot),
  KEY id_mot (id_mot)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_mots_syndic'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_ortho_cache'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_ortho_dico'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_petitions'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_referers'
--

INSERT INTO spip_referers (referer_md5, `date`, referer, visites, visites_jour, visites_veille, maj) VALUES
(854149843101269021, '2008-03-12', 'http://by117w.bay117.mail.live.com/mail/ApplicationMain_12.1.0069.1213.aspx?culture=fr-FR&hash=483639285', 2, 0, 0, '2008-03-15 09:21:18'),
(205136157065319998, '2008-03-12', 'http://by126w.bay126.mail.live.com/mail/ApplicationMain_12.1.0069.1213.aspx?culture=fr-FR&hash=1645004198', 1, 0, 0, '2008-03-14 15:07:27'),
(1065368516391699667, '2008-03-24', 'http://by117w.bay117.mail.live.com/mail/ApplicationMain_12.4.0078.0228.aspx?culture=fr-FR&hash=483639285', 2, 0, 0, '2008-03-31 15:56:52'),
(345803233526169140, '2008-04-14', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=DVXA,DVXA:2005-50,DVXA:fr&q=main+tendue+31', 1, 0, 0, '2008-04-15 19:01:28'),
(126214650409394090, '2008-04-14', 'http://www.google.fr/search?hl=fr&rls=DVXA,DVXA:2005-50,DVXA:fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2008-04-15 19:01:28'),
(819872879203689242, '2008-04-15', 'http://mail.google.com/mail/?ui=1&ik=c52d8ecf59&view=cv&search=inbox&th=1195181500a9bf83&ww=1130&cvap=0&qt=&zx=sxxtquqstnvo', 1, 0, 0, '2008-04-17 08:35:19'),
(782922158812676076, '2008-04-16', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=DVXA,DVXA:2005-50,DVXA:fr&q=maintendue31', 1, 0, 0, '2008-04-18 11:25:04'),
(1010432928966914681, '2008-05-10', 'http://www.google.com/search?hl=fr&rls=com.microsoft%3Aen-US&q=Association+La+main+tendue+31&lr=', 1, 0, 0, '2008-05-22 22:20:02'),
(137768098523124238, '2008-05-22', 'http://www.google.com/search?q=main+tendue+31&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGLR', 1, 0, 0, '2008-05-27 03:02:15'),
(489577151797576053, '2008-05-23', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&btnG=Recherche+Google&meta=', 1, 0, 0, '2008-05-27 03:02:15'),
(732860218270991858, '2008-05-27', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2008-06-01 12:39:31'),
(1064990686081474897, '2008-05-28', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=', 2, 0, 0, '2008-06-08 18:25:45'),
(879582908904336228, '2008-06-10', 'http://www.google.fr/search?hl=fr&q=main+tendue+toulouse&meta=', 1, 0, 0, '2008-06-12 08:21:21'),
(419368811547367372, '2008-06-11', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-06-13 12:20:14'),
(970038538235095645, '2008-06-23', 'http://www.google.fr/search?hl=fr&q=%22association+main+tendue+31%22&meta=', 1, 0, 0, '2008-06-25 15:18:59'),
(352783183197133200, '2008-08-13', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendu+31&btnG=Rechercher&meta=', 1, 0, 0, '2008-08-15 16:50:19'),
(963325652684326172, '2008-09-22', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+31&btnG=Rechercher&meta=', 2, 0, 0, '2008-11-21 12:31:05'),
(420021342526981362, '2008-09-24', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR281&q=MAIN+TENDUE+31+&meta=', 1, 0, 0, '2008-09-26 09:50:03'),
(1112240750191467599, '2008-09-24', 'http://www.google.fr/search?hl=fr&newwindow=1&rlz=1T4GGLR_frFR234FR234&lr=lang_fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 2, 0, 0, '2008-10-07 11:16:54'),
(785341877862412423, '2008-09-25', 'http://www.google.com/search?hl=fr&client=safari&rls=fr&q=%22main+tendue+31%22&btnG=Rechercher&lr=', 1, 0, 0, '2008-09-29 10:13:03'),
(1071685338770770632, '2008-09-26', 'http://www.google.com/search?client=safari&rls=fr&q=MainTendue+31&ie=UTF-8&oe=UTF-8', 1, 0, 0, '2008-10-01 07:11:28'),
(896491503600973453, '2008-10-02', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&aq=f&oq=', 1, 0, 0, '2008-10-03 11:27:48'),
(1098385741076330237, '2008-10-03', 'http://www.google.fr/search?hl=fr&q=MAINTENDUE31&meta=&aq=f&oq=', 2, 0, 0, '2008-10-07 11:16:54'),
(298212217315036025, '2008-10-09', 'http://www.google.fr/search?q=maintendue31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2008-10-11 12:17:21'),
(954901116026296724, '2008-10-10', 'http://www.google.fr/search?q=Main+tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2008-10-13 09:57:45'),
(875143984693314413, '2008-10-10', 'http://www.google.com/search?hl=fr&rls=com.microsoft%3Afr%3AIE-SearchBox&rlz=1I7SUNA&q=LIZ+MC+COMB+FAIT+CHANTER+TOULOUSE+%2B+la+main+tendue&lr=', 1, 0, 0, '2008-10-13 09:57:45'),
(1036566768760803866, '2008-10-11', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR296&q=association+main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2008-10-13 09:57:45'),
(149244751749210581, '2008-10-13', 'http://www.google.fr/search?hl=fr&lr=lang_fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=Concert+Liz+Mac+Comb+Toulouse+main+tendue&spell=1', 1, 0, 0, '2008-10-14 11:04:25'),
(909722421323759128, '2008-10-13', 'http://www.google.fr/search?hl=fr&rlz=1T4GFRG_frFR220FR222&q=asso+mains+tendues+31&meta=', 1, 0, 0, '2008-10-15 01:31:23'),
(286723163707402564, '2008-10-13', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=', 2, 0, 0, '2008-10-25 09:15:18'),
(646767836338057479, '2008-10-15', 'http://www.google.fr/search?hl=fr&newwindow=1&rlz=1T4GGLR_frFR234FR234&q=main+tendue+31+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, 0, 0, '2008-10-18 18:37:27'),
(250800878241050347, '2008-10-16', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+%C3%A0+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, 0, 0, '2008-10-19 11:54:17'),
(445030667206809060, '2008-10-19', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=oT&q=association+main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2008-10-22 11:36:22'),
(290119111799925606, '2008-10-19', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+31&meta=', 2, 0, 0, '2008-11-26 09:07:54'),
(1107702043886385923, '2008-10-23', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=gTH&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-10-25 09:15:18'),
(451689873407583457, '2008-10-24', 'http://www.google.fr/search?hl=fr&q=La+main+tendue+association+Toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-10-25 09:15:18'),
(78630077292805969, '2008-10-24', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&hs=SMN&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2008-10-25 09:15:18'),
(978531400307285664, '2008-10-24', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Rechercher&meta=', 2, 0, 0, '2008-11-21 12:31:05'),
(758972813668134308, '2008-10-27', 'http://www.google.fr/search?hl=fr&q=repas+associatif+noel+toulouse+demunis&meta=cr%3DcountryFR', 1, 0, 0, '2008-10-29 12:31:36'),
(598971467045343210, '2008-10-30', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 4, 0, 0, '2009-02-24 15:22:08'),
(249448892941172112, '2008-11-01', 'http://www.google.fr/search?sourceid=navclient&aq=t&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR245FR259&q=la+main+tendue+31', 2, 0, 0, '2008-11-18 00:51:07'),
(581457398035926172, '2008-11-02', 'http://www.google.com/search?q=main+tendue+toulouse&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGIC_fr', 1, 0, 0, '2008-11-04 21:32:32'),
(861955451671000412, '2008-11-04', 'http://www.google.fr/search?hl=fr&q=distribution+de+repas&start=90&sa=N', 1, 0, 0, '2008-11-05 13:41:06'),
(875781798371219604, '2008-11-06', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+du+sud&btnG=Rechercher&meta=', 1, 0, 0, '2008-11-08 10:27:15'),
(885811542661153899, '2008-11-08', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GFRC_frFR205FR206&q=association+main+tendue+31', 1, 0, 0, '2008-11-09 10:45:40'),
(5688772941232065, '2008-11-08', 'http://www.google.fr/search?hl=fr&q=sayrac+31340&btnG=Rechercher&meta=', 1, 0, 0, '2008-11-09 10:45:40'),
(19925998291855326, '2008-11-08', 'http://www.google.fr/search?hl=fr&q=telephone+main+tendue+31&meta=&aq=f&oq=', 1, 0, 0, '2008-11-09 10:45:40'),
(1032972850422997244, '2008-11-12', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=HPND,HPND:2006-44,HPND:fr&q=la+main+tendue+31', 1, 0, 0, '2008-11-13 08:03:09'),
(210411822355442613, '2008-11-12', 'http://www.google.fr/search?hl=fr&rlz=1T4GGLR_frFR286FR288&q=epicerie+sociale+toulouse&start=20&sa=N', 1, 0, 0, '2008-11-14 08:25:06'),
(543211731726764598, '2008-11-12', 'http://www.google.fr/search?q=la+main+tendue+Toulouse&sourceid=navclient-ff&ie=UTF-8&rls=GGGL,GGGL:2006-35,GGGL:fr', 1, 0, 0, '2008-11-14 08:25:06'),
(274780779242569273, '2008-11-12', 'http://www.google.com/search?hl=fr&q=distribution+repas+noel+toulouse+&lr=', 1, 0, 0, '2008-11-14 08:25:06'),
(358134648364985274, '2008-11-12', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2005-25,GGLD:fr&q=maintendue31&meta=cr%3DcountryFR', 1, 0, 0, '2008-11-14 08:25:06'),
(534588509795479880, '2008-11-12', 'http://www.google.fr/search?q=La+Main+Tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 2, 0, 0, '2008-11-20 08:53:04'),
(790265929827172233, '2008-11-13', 'http://www.google.fr/search?sourceid=navclient&aq=t&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-19,GGLD:fr&q=ASSOCIATION+MAIN+TENDUE+31', 2, 0, 0, '2008-11-15 10:36:45'),
(565426784483788987, '2008-11-14', 'http://www.google.fr/search?hl=fr&q=epicerie+sociale+toulouse&start=20&sa=N', 1, 0, 0, '2008-11-16 14:51:31'),
(34499234515827894, '2008-11-14', 'http://www.google.com/search?client=safari&rls=fr&q=la+main+tendue+toulouse&ie=UTF-8&oe=UTF-8', 1, 0, 0, '2008-11-16 14:51:31'),
(568439541276111464, '2008-11-15', 'http://www.google.fr/search?hl=fr&q=La+Main+Tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2008-11-16 14:51:31'),
(1015330527616879331, '2008-11-17', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=&aq=f&oq=', 1, 0, 0, '2008-11-18 00:51:07'),
(929288391120201360, '2008-11-21', 'http://www.google.fr/search?hl=fr&q=ASSOCIATION+MAIN+TENDUE++TOULOUSE&meta=', 1, 0, 0, '2008-11-23 09:01:09'),
(385073167374691851, '2008-11-22', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=la+main+tendue+31&spell=1', 1, 0, 0, '2008-11-24 08:29:23'),
(42680402399142213, '2008-11-22', 'http://www.google.fr/search?hl=fr&q=association+Main+Tendue+31&btnG=Rechercher&meta=cr%3DcountryFR', 1, 0, 0, '2008-11-24 08:29:23'),
(521600277857084758, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendu+31+&meta=', 1, 0, 0, '2008-11-24 08:29:23'),
(691836642843702688, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&meta=&aq=f&oq=', 1, 0, 0, '2008-11-25 08:14:57'),
(81181021126364376, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+toulouse&meta=&aq=f&oq=', 2, 0, 0, '2009-07-29 17:50:20'),
(418120935132384714, '2008-11-23', 'http://www.google.fr/search?q=association+toulouse+main+tendue&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2008-11-25 08:14:57'),
(644224866644817862, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=lr%3Dlang_fr&aq=4&oq=main+ten', 1, 0, 0, '2008-11-25 08:14:57'),
(615480822071949528, '2008-11-24', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=ACTION+LA+MAIN+TENDUE&meta=&btnG=Recherche+Google', 1, 0, 0, '2008-11-25 08:14:57'),
(499351600461931282, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=main+tendue+liz+mc+comb&meta=', 1, 0, 0, '2008-11-26 09:07:54'),
(376267004083500399, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=main+tendu+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2008-11-26 09:07:54'),
(602416130485016245, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=www.maintendue+&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2008-11-26 09:07:54'),
(712829042942794170, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=plan+sayrac+villemur+sur+tarn+31340&start=10&sa=N', 1, 0, 0, '2008-11-26 09:07:54'),
(638839430600137147, '2008-11-24', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&q=association+Main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2008-11-26 09:07:54'),
(1126434148595287058, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+association+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-11-26 09:07:54'),
(88179531343435618, '2008-11-25', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&meta=&btnG=Recherche+Google', 1, 0, 0, '2008-11-28 06:55:30'),
(709744728210965039, '2008-11-26', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=9&oq=ASSOCIATION+MAIN', 1, 0, 0, '2008-11-29 07:59:17'),
(291806867810022045, '2008-11-26', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GZFA_frFR265FR265&q=distribution+repas+d%c3%a9munis+toulouse', 1, 0, 0, '2008-11-29 07:59:17'),
(423620231363106431, '2008-11-29', 'http://www.google.fr/search?hl=fr&q=%C3%A9picerie+sociale+TOULOUSE&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2008-12-01 09:18:54'),
(176607304803694372, '2008-11-30', 'http://search.free.fr/google.pl?next=/search?q=photo+liz+mc+comb+toulouse&hl=fr&lr=lang_fr&output=xml_no_dtd&client=freefr2&ad=w10&ie=UTF-8&oe=ISO-8859-1&start=40&sa=N', 1, 0, 0, '2008-12-01 09:18:54'),
(786045252683301606, '2008-11-30', 'http://www.google.com/cse?cx=partner-pub-4030853813797933%3An2g1bnan8gd&cof=FORID%3A11&ie=ISO-8859-1&q=la+main+tendue+toulouse&sa=Rechercher&ad=w9&num=10&rurl=http%3A%2F%2Fwww.toulouse-annuaire.com%2Fsearch.htm%3Fcx%3Dpartner-pub-4030853813797933%253An2g1', 1, 0, 0, '2008-12-02 14:57:44'),
(593001923390423505, '2008-12-01', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=la+main+tendue+toulouse&meta=&btnG=Recherche+Google', 2, 0, 0, '2009-01-02 14:32:15'),
(801319757695209054, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=association+main+tendue', 1, 0, 0, '2008-12-03 20:58:53'),
(769359030091210255, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=lr%3Dlang_fr&aq=4&oq=la+main+ten', 2, 0, 0, '2008-12-03 20:58:53'),
(1018248065513713578, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=ASSOCIATION+MAIN+TENDUE', 1, 0, 0, '2008-12-03 20:58:53'),
(604154637361619777, '2008-12-02', 'http://www.google.fr/cse?cx=partner-pub-5410304876792431%3Ao0gz3i20c5m&ie=ISO-8859-1&q=main+tendue+31', 1, 0, 0, '2008-12-03 20:58:53'),
(360635426748316269, '2008-12-05', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=association+Main+Tendue', 1, 0, 0, '2008-12-06 09:07:11'),
(521962288336783762, '2008-12-05', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, 0, 0, '2008-12-07 00:44:48'),
(1142664137650585610, '2008-12-06', 'http://www.google.de/search?sourceid=navclient&hl=fr&ie=UTF-8&q=main+tendue+31', 1, 0, 0, '2008-12-08 08:09:39'),
(771238875591280633, '2008-12-09', 'http://www.google.fr/search?q=+la+main+tendue+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2008-12-11 10:31:26'),
(202671230343197284, '2008-12-11', 'http://www.google.fr/search?hl=fr&rlz=1W1GGLL_fr&q=association+la+main+tendue+toulouse&meta=', 1, 0, 0, '2008-12-13 09:42:13'),
(1072432926806215908, '2008-12-12', 'http://www.google.fr/search?hl=fr&q=31+main+tendues+toulouse&meta=', 1, 0, 0, '2008-12-13 09:42:13'),
(238317583119103847, '2008-12-12', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=La+main+tendue+Toulouse&spell=1', 1, 0, 0, '2008-12-15 09:15:35'),
(68740570202224687, '2008-12-12', 'http://www.google.de/search?sourceid=navclient&aq=h0&oq=&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR304FR304&q=maintendue31', 1, 0, 0, '2008-12-15 09:15:35'),
(863581046018910249, '2008-12-20', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=c5y&q=association+main+tendu+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-12-23 13:57:07'),
(30514084635978400, '2008-12-22', 'http://www.google.fr/search?hl=fr&q=asso+distributrice+de+repas&start=10&sa=N', 1, 0, 0, '2008-12-26 18:00:53'),
(1048029842852519560, '2008-12-22', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=main+tendue+31&meta=&btnG=Recherche+Google', 4, 0, 0, '2009-04-25 07:26:26'),
(1663020694211574, '2008-12-22', 'http://www.google.fr/search?hl=fr&q=MAIN+TENDUE+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2008-12-26 18:00:53'),
(209053537320173040, '2008-12-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-11,GGLD:fr&q=la+main+tendue+toulouse', 1, 0, 0, '2008-12-27 00:29:59'),
(974694022050645187, '2008-12-23', 'http://www.google.fr/search?hl=fr&rlz=1C1GGLS_frFR291FR303&q=L%27association+La+Main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-12-27 00:29:59'),
(8125983171464433, '2008-12-23', 'http://www.google.fr/search?hl=fr&rlz=1C1GGLS_frFR291FR303&q=distribution+repas+noel+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2008-12-27 00:29:59'),
(1060503267557142564, '2008-12-28', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=&rlz=1W1GGLL_fr&aq=1&oq=maintendue', 1, 0, 0, '2008-12-29 08:37:47'),
(1056645131632306602, '2008-12-30', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=la+main+tendue+31&meta=&btnG=Recherche+Google', 20, 0, 0, '2009-08-24 12:26:13'),
(1001236294242357297, '2008-12-30', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendu+a+toulouse&meta=&aq=f&oq=', 1, 0, 0, '2009-01-02 14:32:15'),
(507255112711467508, '2009-01-04', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-01-06 13:29:59'),
(250775793810695982, '2009-01-05', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=lr%3Dlang_fr&aq=7&oq=la+main+tendue+', 1, 0, 0, '2009-01-07 14:57:47'),
(291728715591685798, '2009-01-06', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-01-09 10:42:56'),
(983238916191981787, '2009-01-06', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-01-09 10:42:56'),
(1004650792253650705, '2009-01-14', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=cr%3DcountryFR&aq=1&oq=main+ten', 1, 0, 0, '2009-01-16 16:06:51'),
(1099986184728698844, '2009-01-17', 'http://www.google.fr/search?hl=fr&q=Association+Main+Tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 2, 0, 0, '2009-01-19 16:01:38'),
(336371326609985145, '2009-01-17', 'http://www.google.fr/search?hl=fr&q=association+Main+Tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-01-19 16:01:38'),
(1078548790096916659, '2009-01-19', 'http://www.google.fr/search?hl=fr&cr=countryFR&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=association+la+main+tendue+31&spell=1', 1, 0, 0, '2009-01-20 09:49:58'),
(91297699863536483, '2009-01-20', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+31&meta=&aq=1&oq=association+la+main+tendue', 1, 0, 0, '2009-01-21 08:49:46'),
(843003503868750330, '2009-01-20', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=&aq=f&oq=', 2, 0, 0, '2009-04-27 00:21:59'),
(1043572554034563031, '2009-01-20', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=1&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-01-22 08:20:25'),
(822937416595104225, '2009-01-21', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=association+main+tendue+31&spell=1', 1, 0, 0, '2009-01-22 08:20:25'),
(307852450589784754, '2009-01-27', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR306&q=association+main+tendue+31&meta=lr%3D&aq=0&oq=association+main+tendue', 1, 0, 0, '2009-01-29 09:17:39'),
(658124473273759470, '2009-01-29', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&q=P%C3%B4le+d%E2%80%99accueil+d%E2%80%99information+et+d%E2%80%99orientation+ccas+toulouse&start=10&sa=N', 1, 0, 0, '2009-01-31 12:22:46'),
(936834445269074344, '2009-01-29', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=&aq=9&oq=LA+MAIN+TEND', 1, 0, 0, '2009-02-01 15:39:25'),
(772899346412791154, '2009-01-29', 'http://www.google.fr/', 2, 0, 0, '2009-08-11 13:01:10'),
(74571437045560401, '2009-02-02', 'http://www.google.fr/search?hl=fr&q=La+main+tendue+toulouse&meta=&aq=f&oq=', 1, 0, 0, '2009-02-03 13:37:51'),
(532358912717812172, '2009-02-03', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=association+mains+tendues+toulouse&meta=&btnG=Recherche+Google', 1, 0, 0, '2009-02-06 10:36:16'),
(1081633929549839927, '2009-02-06', 'http://www.google.com/search?q=main+tendue+toulouse&rls=com.microsoft:*:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7TSEA_fr', 1, 0, 0, '2009-02-09 11:27:34'),
(636987799932311940, '2009-02-08', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=', 1, 0, 0, '2009-02-09 11:27:34'),
(801451162679791259, '2009-02-09', 'http://www.google.fr/search?hl=fr&rlz=1B2GGGL_frFR177&q=main+tendue+association&start=10&sa=N', 1, 0, 0, '2009-02-10 09:01:30'),
(52901411487854802, '2009-02-10', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR308&q=la+main+tendue+31&meta=lr%3D&aq=7&oq=la+main+t', 1, 0, 0, '2009-02-13 09:25:10'),
(312450071175881438, '2009-02-09', 'http://www.google.co.ma/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&q=squelettes+spip+pour+association&start=420&sa=N', 1, 0, 0, '2009-02-11 12:13:52'),
(7155043539438455, '2009-02-10', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&hs=4jF&ei=xWqQSY-pDoOB_gaZ9finDA&sa=X&oi=spell&resnum=1&ct=result&cd=1&q=la+main+tendue+toulouse&spell=1', 1, 0, 0, '2009-02-11 12:13:52'),
(1057855973110492643, '2009-02-11', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue%2Btoulouse&meta=', 1, 0, 0, '2009-02-16 13:51:53'),
(554937312072968422, '2009-02-16', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&hs=OMz&q=epicerie+sociale+Toulouse&start=30&sa=N', 1, 0, 0, '2009-02-20 16:06:44'),
(181407997809711410, '2009-02-11', 'http://www.google.de/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR292FR292&q=main+tendue+a+toulouse', 1, 0, 0, '2009-02-16 13:51:53'),
(490114422873589689, '2009-02-11', 'http://www.google.fr/search?hl=fr&ei=r_2SSYz3OpW60gX9uJGPCw&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-02-16 13:51:53'),
(1023255782637633930, '2009-02-16', 'http://www.google.fr/search?hl=fr&q=sayrac+villemur+sur+tarn+31340&start=30&sa=N', 1, 0, 0, '2009-02-18 19:13:57'),
(581652838895827765, '2009-02-20', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=lr%3Dlang_fr&aq=0&oq=main+tendue', 1, 0, 0, '2009-02-23 22:04:47'),
(702113499079300916, '2009-02-23', 'http://www.google.fr/search?hl=fr&q=distribution+repas+gratuits+a+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-02-27 11:21:32'),
(509999216867069128, '2009-02-20', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=cr%3DcountryFR&aq=0&oq=main+tendue', 2, 0, 0, '2009-05-26 18:38:54'),
(862545286121884828, '2009-02-21', 'http://www.google.fr/search?hl=fr&q=Main+tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-02-24 15:22:08'),
(101451507278986051, '2009-02-25', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=0kd&q=main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2009-03-01 11:51:37'),
(219376404374642991, '2009-02-25', 'http://www.google.fr/search?hl=fr&q=association+Main+tendue*&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-03-01 11:51:37'),
(1068475308038080371, '2009-02-27', 'http://www.google.fr/search?q=la+main+tendue+toulouse&sourceid=navclient-ff&ie=UTF-8&rlz=1B3GGGL_frFR255FR256&aq=t', 1, 0, 0, '2009-03-04 22:10:32'),
(260110238078576160, '2009-02-28', 'http://www.google.fr/search?hl=fr&q=association+loi+1901+Main+Tendu&btnG=Rechercher&meta=', 1, 0, 0, '2009-03-04 22:10:32'),
(344720037091939434, '2009-03-03', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR274&q=ASSOCIATION+LA+MAIN+TENDUE&start=20&sa=N', 1, 0, 0, '2009-03-05 09:03:49'),
(1083651578134707392, '2009-03-04', 'http://www.google.fr/search?hl=fr&rlz=1T4SKPB_frFR310FR310&q=epicerie+solidaire+toulouse&start=10&sa=N', 1, 0, 0, '2009-03-06 10:27:40'),
(378197577301609276, '2009-03-05', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&q=toulouse+epicerie+solidaire&start=10&sa=N', 1, 0, 0, '2009-03-06 10:27:40'),
(796537724176910515, '2009-03-06', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=0&oq=association+main+tendue', 1, 0, 0, '2009-03-07 10:03:18'),
(914181010715376785, '2009-03-06', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=&aq=9&oq=la+main+tendue+', 2, 0, 0, '2009-03-08 17:09:31'),
(707268254799067040, '2009-03-07', 'http://www.google.fr/custom?phpsessid=b63e2ae1c33f25d68f6506bfa99f1d5f&q=main+tendue+31&id_assoc=1206&client=pub-6344865701185718&forid=1&ie=ISO-8859-1&oe=ISO-8859-1&safe=&cof=GALT%3A%23008000%3BGL%3A1%3BDIV%3A%23fffff0%3BVLC%3Apurple%3BAH%3Acenter%3BBGC%', 1, 0, 0, '2009-03-08 17:09:31'),
(775046993473041809, '2009-03-15', 'http://www.google.fr/search?hl=fr&q=serviettes+hygi%C3%A9niques+%3A+utilit%C3%A9+sociale&meta=', 1, 0, 0, '2009-03-16 09:07:59'),
(722384640880806871, '2009-03-12', 'http://www.google.fr/search?q=la+main+tendue+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2009-03-15 22:35:57'),
(770990124626668589, '2009-03-17', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGIH_frFR210FR210&q=main+tendue+31', 1, 0, 0, '2009-03-18 10:44:03'),
(391919377503137608, '2009-03-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLJ_frFR301FR301&q=www.maintendue', 1, 0, 0, '2009-03-24 11:11:29'),
(505871807065203072, '2009-03-23', 'http://www.google.fr/search?hl=fr&q=statut+association+main+tendue&meta=', 1, 0, 0, '2009-03-24 11:11:29'),
(888630086697908312, '2009-03-24', 'http://www.google.fr/search?sourceid=navclient&aq=h6&oq=&hl=fr&ie=UTF-8&rlz=1T4GGLL_frFR318FR318&q=main+tendue+31', 1, 0, 0, '2009-03-30 10:40:41'),
(461065564509235513, '2009-03-26', 'http://www.google.fr/search?hl=fr&q=association+organise+un+repas+au+plus+d%C3%A9munis&btnG=Rechercher&meta=', 1, 0, 0, '2009-04-01 15:02:11'),
(81330258997007804, '2009-03-30', 'http://www.google.fr/search?q=la+main+tendue+toulouse&sourceid=navclient-ff&ie=UTF-8&rlz=1B2GGGL_frFR209FR209', 1, 0, 0, '2009-04-05 00:13:52'),
(308401848743789426, '2009-03-30', 'http://www.google.fr/search?hl=fr&ie=ISO-8859-1&q=LA+MAIN+TENDUE+TOULOUSE&meta=', 1, 0, 0, '2009-04-05 00:13:52'),
(127610271594992845, '2009-03-30', 'http://co106w.col106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&n=330739634', 1, 0, 0, '2009-04-05 00:13:52'),
(930855045014833582, '2009-04-09', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=fQE&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-04-15 13:12:50'),
(728825648825749370, '2009-04-09', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=', 1, 0, 0, '2009-04-15 13:12:50'),
(250159383159270008, '2009-04-14', 'http://www.google.fr/search?q=association+la+main+tendue&hl=fr&rlz=1T4ADBS_frFR319FR320&start=10&sa=N', 1, 0, 0, '2009-04-16 22:39:06'),
(358997015345017852, '2009-04-14', 'http://www.google.fr/search?hl=fr&q=mains+tendues+sur+le+31&btnG=Recherche+Google&meta=&rlz=1R2GGLL_fr&aq=f&oq=', 1, 0, 0, '2009-04-16 22:39:06'),
(891174505064153137, '2009-04-19', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&q=la+main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2009-04-20 17:58:29'),
(619330778955359120, '2009-04-16', 'http://www.google.fr/m/search?eosr=on&sa=X&oi=spell&ct=res&cd=1&q=main+tendue+31', 1, 0, 0, '2009-04-19 10:27:31'),
(806357619442394992, '2009-04-17', 'http://search.live.com/results.aspx?q=notre', 2, 0, 0, '2009-04-27 00:21:59'),
(1066227885514720756, '2009-04-20', 'http://search.incredimail.com/?q=www.maintendue&lang=french&source=001039052011', 1, 0, 0, '2009-04-21 12:05:14'),
(748436826472620237, '2009-04-25', 'http://search.live.com/results.aspx?q=association', 1, 0, 0, '2009-04-27 00:21:59'),
(298954111907358001, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=0&oq=association+main+tend', 1, 0, 0, '2009-04-26 20:10:42'),
(360376841384710815, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=&aq=2&oq=la+main+tendue', 1, 0, 0, '2009-04-26 20:10:42'),
(330930732268175934, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=association+toulouse+main+tendue&meta=', 1, 0, 0, '2009-04-26 20:10:42'),
(875762535075130094, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=&aq=0&oq=main+tendue+', 1, 0, 0, '2009-04-26 20:10:42'),
(330998004651324725, '2009-04-22', 'http://www.google.de/search?hl=fr&q=maintendue31&aq=2&oq=MAINTENDUE', 1, 0, 0, '2009-04-26 20:10:42'),
(944081946304378531, '2009-04-25', 'http://www.google.com/search?q=repas+association+plus+de+100+personnes&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7ADBS_fr', 1, 0, 0, '2009-04-27 00:21:59'),
(39155267590043520, '2009-04-25', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&btnG=Rechercher&meta=', 2, 0, 0, '2009-09-09 19:11:33'),
(224859000413187363, '2009-04-27', 'http://www.google.fr/search?q=association+La+Main+tendue&hl=fr&rlz=1T4ADBR_enFR300FR301&start=10&sa=N', 1, 0, 0, '2009-05-04 15:19:01'),
(155652273040266755, '2009-04-26', 'http://search.live.com/results.aspx?q=reportage', 1, 0, 0, '2009-04-27 00:21:59'),
(428798239436163516, '2009-04-26', 'http://www.google.fr/search?hl=fr&q=main+tendie+31&meta=lr%3Dlang_fr&aq=f&oq=', 1, 0, 0, '2009-04-29 16:29:44'),
(922045562253519868, '2009-04-29', 'http://www.google.fr/search?hl=fr&q=association+distribution+de+repas&btnG=Rechercher&meta=', 1, 0, 0, '2009-05-06 11:03:37'),
(124264767665411416, '2009-05-06', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&aq=0&oq=main+tendue', 1, 0, 0, '2009-05-09 13:08:26'),
(274299137104976061, '2009-05-09', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=FX1&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-05-14 14:46:00'),
(1001616259993130629, '2009-05-14', 'http://www.google.fr/search?hl=fr&q=la+main+tendu+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, 0, 0, '2009-05-15 14:31:38'),
(363167238031173831, '2009-05-15', 'http://search.live.com/results.aspx?q=tendue', 1, 0, 0, '2009-05-19 14:22:56'),
(308077132675937979, '2009-05-15', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4SHCN_frFR258FR258&q=main+tendu+toulouse', 1, 0, 0, '2009-05-19 14:22:56'),
(723136759713114943, '2009-05-15', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-40,GGLD:fr&q=main+tendue+31', 1, 0, 0, '2009-05-19 14:22:56'),
(594691022211814432, '2009-05-18', 'http://search.live.com/results.aspx?q=savoir', 2, 0, 0, '2009-05-21 15:03:07'),
(218137992997586947, '2009-05-18', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Recherche+Google&meta=cr%3DcountryFR&aq=f&oq=', 1, 0, 0, '2009-05-21 15:03:07'),
(345229221863536048, '2009-05-18', 'http://search.live.com/results.aspx?q=articles', 1, 0, 0, '2009-05-21 15:03:07'),
(739265524675826388, '2009-05-18', 'http://search.live.com/results.aspx?q=infos', 1, 0, 0, '2009-05-21 15:03:07'),
(531824198297809567, '2009-05-23', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&hs=PL8&ei=ZogWSrmrG4fSjAeTsP3xDA&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-05-25 10:41:02'),
(300139927728359051, '2009-05-24', 'http://www.google.fr/search?sourceid=navclient&aq=1&oq=MAIN+TENDU&hl=fr&ie=UTF-8&rlz=1T4ADBS_frFR309FR309&q=main+tendue+31', 2, 0, 0, '2009-05-26 18:38:54'),
(795122488347748760, '2009-05-25', 'http://www.google.fr/search?gbv=2&hl=fr&num=100&newwindow=1&q=association+main+tendu&btnG=Rechercher&meta=', 1, 0, 0, '2009-05-29 10:22:15'),
(835961547129035918, '2009-05-25', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLR_frFR327FR244&q=association+main+tendue+31', 1, 0, 0, '2009-05-29 10:22:15'),
(1139890130840649681, '2009-05-26', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4ADBS_frFR309FR309&q=main+tendue+31', 1, 0, 0, '2009-05-29 10:22:15'),
(357443893629667311, '2009-05-27', 'http://www.google.fr/search?hl=fr&rlz=1T4ACPW_frFR307FR307&q=main+tendue+31&meta=', 1, 0, 0, '2009-06-01 13:12:32'),
(1069457509544312685, '2009-05-29', 'http://www.google.com/search?hl=fr&client=firefox-a&rls=org.mozilla%3Aes-AR%3Aofficial&hs=ePf&q=La+main+tendue+toulouse&btnG=Rechercher&lr=', 1, 0, 0, '2009-06-03 10:38:19'),
(333096035756859658, '2009-05-29', 'http://www.google.fr/search?hl=fr&q=LA+MAIN+TENDUE+TOULOUSE&meta=&aq=f&oq=', 1, 0, 0, '2009-06-03 10:38:19'),
(1106039767242522422, '2009-06-01', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=', 1, 0, 0, '2009-06-03 10:38:19'),
(918588867913338238, '2009-06-04', 'http://www.google.fr/search?hl=fr&rlz=1T4FUJE_frFR313FR313&q=main+tendue+31&btnG=Rechercher&meta=', 1, 0, 0, '2009-06-08 08:28:03'),
(243548745356375854, '2009-06-04', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&rlz=1W1ADBF_fr&aq=3&oq=main+ten', 1, 0, 0, '2009-06-07 16:09:11'),
(1081593540796716907, '2009-06-08', 'http://www.google.com/search?sourceid=gmail&q=Association%20la%20%22Main-Tendue%22%20Toulouse', 1, 0, 0, '2009-06-11 07:44:28'),
(926303435108989275, '2009-06-10', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&rlz=1R2ADBF_fr&aq=1&oq=main+tendu', 1, 0, 0, '2009-06-12 07:31:20'),
(227691527622211559, '2009-06-10', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLR_frFR296FR299&q=main+tendue+31', 1, 0, 0, '2009-06-12 07:31:20'),
(140633284199313092, '2009-06-11', 'http://www.google.fr/search?hl=fr&rlz=1W1GGLL_fr&ei=spkwSsadDczRjAeoqejbBw&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-06-13 14:26:58'),
(643844055910503542, '2009-06-11', 'http://www.google.com/search?q=main+tendue31&rls=com.microsoft:fr:&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGLL_fr', 1, 0, 0, '2009-06-13 14:26:58'),
(670647293019151572, '2009-06-16', 'http://www.google.fr/search?hl=fr&ei=5Qc2StT_NdrOjAeSp7WhCg&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-06-19 16:49:29'),
(1117862617918707237, '2009-06-17', 'http://www.google.fr/search?hl=fr&rlz=1T4ACAW_frFR326FR326&q=association+main+tendue+colis+alimentaire+49140&meta=', 1, 0, 0, '2009-06-22 20:16:57'),
(623071325926031980, '2009-06-17', 'http://www.google.fr/search?hl=fr&rlz=1T4ACAW_frFR326FR326&q=association+main+tendue+colis+alimentaire+dans+le+49140&meta=', 1, 0, 0, '2009-06-22 20:16:57'),
(1122002831365130710, '2009-06-17', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=&rlz=1W1GPTB_fr&aq=f&oq=', 1, 0, 0, '2009-06-22 20:16:57'),
(553474553548870479, '2009-06-19', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Rechercher&meta=', 2, 0, 0, '2009-08-29 15:12:07'),
(230576652168682988, '2009-06-19', 'http://www.google.com/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=main+tendu+31&lr=&btnG=Recherche+Google', 1, 0, 0, '2009-06-27 08:45:11'),
(87606224103532823, '2009-06-22', 'http://www.google.fr/search?hl=fr&rlz=1W1GGLL_fr&ei=Xt07SsPFKeG7jAerqIn5Dw&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, 0, 0, '2009-06-27 08:45:11'),
(740539319761415237, '2009-06-25', 'http://www.google.fr/search?sourceid=navclient&ie=UTF-8&rlz=1T4ADBR_enFR234FR234&q=association+la+main+tendue+toulouse', 1, 0, 0, '2009-06-30 15:42:28'),
(628955148372994206, '2009-06-29', 'http://www.google.fr/search?q=THALES+AVIONICS+%22COMITE+d%27entreprise%22+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2009-07-01 20:59:01'),
(625619485086389338, '2009-06-30', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31240&meta=&aq=f&oq=', 1, 0, 0, '2009-07-12 13:23:50'),
(525179746115533867, '2009-07-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+toulouse&meta=', 1, 0, 0, '2009-07-12 13:23:50'),
(733494339475589905, '2009-07-01', 'http://www.google.fr/search?hl=fr&q=main+tendu+toulouse&btnG=Rechercher&meta=&aq=f&oq=', 1, 0, 0, '2009-07-15 10:37:27'),
(448713619961291620, '2009-07-18', 'http://www.google.fr/search?rlz=1T4GPTB_frFR296FR307&hl=fr&q=aider+association+repas+de+noel&btnG=Recherche+Google&meta=lr%3Dlang_fr&aq=f&oq=', 1, 0, 0, '2009-07-29 17:50:20'),
(943862999091042196, '2009-07-17', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR327&q=la+main+tendue+toulouse&meta=', 1, 0, 0, '2009-07-28 13:32:47'),
(867703969480481230, '2009-07-31', 'http://www.google.fr/search?q=main+tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 2, 0, 0, '2009-10-22 01:38:59'),
(481911038770260099, '2009-08-15', 'http://www.bing.com/search?q=bientot', 9, 0, 0, '2009-08-29 15:12:07'),
(584954401259869996, '2009-08-10', 'http://www.bing.com/search?q=infos', 1, 0, 0, '2009-08-11 13:01:10'),
(1010619911333329403, '2009-08-11', 'http://www.bing.com/search?q=repas', 1, 0, 0, '2009-08-13 12:33:56'),
(1033775531087958267, '2009-08-11', 'http://www.bing.com/search?q=articles', 1, 0, 0, '2009-08-13 12:33:56'),
(538338148797542326, '2009-08-11', 'http://www.bing.com/search?q=contact', 1, 0, 0, '2009-08-13 12:33:56'),
(368468864003328149, '2009-08-14', 'http://www.bing.com/search?q=partenaires', 1, 0, 0, '2009-08-16 11:19:40'),
(308842789761314814, '2009-08-25', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+haute+garonne&meta=', 1, 0, 0, '2009-09-02 17:54:10'),
(768848785273514212, '2009-08-24', 'http://www.google.com/search?q=main+tendue+31&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGLR_fr', 1, 0, 0, '2009-08-29 15:12:07'),
(982970927590533647, '2009-08-29', 'http://www.bing.com/search?q=notre', 1, 0, 0, '2009-09-07 03:32:41'),
(765906657113945527, '2009-08-29', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR342&q=main+tendue+31&meta=lr%3D&aq=3&oq=main+ten', 1, 0, 0, '2009-09-07 03:32:41'),
(155168477029215265, '2009-09-02', 'http://www.google.be/search?hl=fr&rlz=1G1GGLQ_FRXX258&q=main+tendue+31&meta=', 1, 0, 0, '2009-09-07 03:32:41'),
(675132922367042831, '2009-09-04', 'http://www.google.com/search?q=main+tendu+toulouse&rls=com.microsoft:*:IE-Address&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGIT_fr', 1, 0, 0, '2009-09-09 19:11:33'),
(810038929115875274, '2009-09-11', 'http://www.google.fr/search?hl=fr&rlz=1C1CHNG_frFR334FR334&q=association+main+tendu+toulouse+&btnG=Rechercher&meta=', 1, 0, 0, '2009-09-15 23:40:11'),
(1130788846076295587, '2009-09-11', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLJ_frFR298FR298&q=main+tendue+toulouse', 1, 0, 0, '2009-09-15 23:40:11'),
(235148802669060476, '2009-09-13', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=0&oq=main+tendue+', 1, 0, 0, '2009-09-15 23:40:11'),
(816927141458964144, '2009-09-15', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+toulouse&meta=', 1, 0, 0, '2009-09-16 18:47:58'),
(785980151327787295, '2009-09-15', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=0&oq=main+tendue', 1, 0, 0, '2009-09-17 11:51:38'),
(270858675342601854, '2009-09-17', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=2s&oq=maintend', 5, 0, 0, '2009-10-21 20:35:50'),
(723388627322786091, '2009-09-18', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&source=hp&q=la+main+tendue+31&meta=&btnG=Recherche+Google', 2, 0, 1, '2009-10-26 19:22:15'),
(876819482360852226, '2009-09-20', 'http://fr.search.yahoo.com/search?p=Sayrac+31340&fr=yfp-t-501&ei=UTF-8&rd=r1', 1, 0, 0, '2009-09-23 11:56:45'),
(401095099948106979, '2009-09-21', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=kVH&q=la+main+tendue&as_q=31&btnG=Rechercher%C2%A0dans%C2%A0ces+r%C3%A9sultats', 1, 0, 0, '2009-09-25 08:56:45'),
(304610450629730864, '2009-09-21', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=kqw&q=la+main+tendue&as_q=haute+garonne&btnG=Rechercher%C2%A0dans%C2%A0ces+r%C3%A9sultats', 1, 0, 0, '2009-09-25 08:56:45'),
(368208118592092968, '2009-09-22', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLR_frFR296FR299&q=main+tendue31+soulier', 1, 0, 0, '2009-09-25 08:56:45'),
(655264850691448776, '2009-09-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GZAZ_frFR225FR225&q=la+main+tendue+toulouse', 1, 0, 0, '2009-09-27 11:59:16'),
(1008549265138739299, '2009-09-27', 'http://www.google.fr/search?q=main+tendue+toulouse+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2009-09-30 10:05:32'),
(100497690493633153, '2009-09-30', 'http://www.google.fr/search?hl=fr&rlz=1W1ADRA_fr&q=association+la+main+tendue+sur+toulouse&meta=', 1, 0, 0, '2009-10-04 14:57:55'),
(211114698325112308, '2009-10-01', 'http://www.google.fr/m/search?oe=UTF-8&client=safari&hl=fr&q=main+tendue+31&ct=result&oi=spell&sa=X&ei=WnrDSvCSM-nLgAe7yKRC&cd=1&resnum=0', 2, 0, 0, '2009-10-07 10:47:45'),
(183170007348967939, '2009-10-01', 'http://www.google.fr/search?q=la+main+tendue+Toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2009-10-07 10:47:45'),
(1031623217219033135, '2009-10-01', 'http://www.google.fr/search?q=Lamain+tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, 0, 0, '2009-10-07 10:47:45'),
(525041097376501684, '2009-10-01', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&hs=70G&ei=SmHESovwJJP54Ab9n9hP&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=La+Main+tendue+31&spell=1', 1, 0, 0, '2009-10-07 10:47:45'),
(886069568044089974, '2009-10-01', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=1n0&q=la+main+tendue+Toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-10-07 10:47:45'),
(887706652519548784, '2009-10-01', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=BUL&q=main+tendue+Toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-10-07 10:47:45'),
(1104923371183345006, '2009-10-04', 'http://www.google.de/search?hl=fr&source=hp&fkt=2631&fsdt=11419&q=main+tendue+31&aq=1&oq=main+tendue&aqi=g7', 2, 0, 0, '2009-10-07 10:47:45'),
(643593293056357111, '2009-10-04', 'http://www.google.fr/search?hl=fr&ei=j5vISqWhNJWx4Qan_7zHAQ&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=www+main+tendue+31&spell=1', 1, 0, 0, '2009-10-09 20:51:59'),
(394647225815542261, '2009-10-04', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=1&oq=main+tendu', 1, 0, 0, '2009-10-09 20:51:59'),
(278356114476255722, '2009-10-06', 'http://www.google.fr/search?sourceid=navclient&ie=UTF-8&rlz=1T4GSPA_enFR314FR325&q=main+tendue+31', 1, 0, 0, '2009-10-09 20:51:59'),
(483466839633554700, '2009-10-06', 'http://www.google.fr/search?hl=fr&q=mairie+de+toulouse+colis+de+noel&meta=', 1, 0, 0, '2009-10-09 20:51:59'),
(395324581787773443, '2009-10-09', 'http://www.bing.com/search?q=www.maintendue.31.org&FORM=MIZWH9&CP=65001&mkt=fr-fr', 1, 0, 0, '2009-10-14 12:37:43'),
(419773941297934602, '2009-10-10', 'http://www.google.de/search?hl=fr&source=hp&fkt=2969&fsdt=18395&q=main+tendue+31&aq=2s&oq=maintend&aqi=g1g-s2', 2, 0, 0, '2009-10-15 08:39:05'),
(344345840497463004, '2009-10-15', 'http://www.google.fr/search?q=colis+de+noel+maireie+de+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=com.mandriva:en-US:official&client=firefox-a', 1, 0, 0, '2009-10-18 21:15:42'),
(345192633341011885, '2009-10-15', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&q=personnes+ag%C3%A9es+affiche+pub+main+tendue&btnG=Rechercher&meta=', 1, 0, 0, '2009-10-18 21:15:42'),
(335677823729205656, '2009-10-17', 'http://www.google.fr/search?hl=fr&source=hp&q=la+main+tendue+toulouse&meta=&aq=0&oq=la+main+tendue+toulous', 1, 0, 0, '2009-10-20 13:31:07'),
(113792734748569694, '2009-10-20', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4DVXA_frFR316&q=LA+MAIN+TENDUE+MINIMES+TOULOUSE', 1, 0, 0, '2009-10-21 20:35:50'),
(706224317984830394, '2009-10-20', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=PVq&q=mains+tendues+toulouse&btnG=Rechercher&meta=', 1, 0, 0, '2009-10-22 01:38:59'),
(1015522503358227403, '2009-10-22', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=lr%3Dlang_fr&aq=0&oq=main+tendue', 1, 0, 0, '2009-10-23 12:24:29'),
(886947743912299451, '2009-10-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&sourceid=navclient-ff&rlz=1B3RNGZ_frFR348FR349&ie=UTF-8&aq=2&oq=main+tendue', 1, 0, 1, '2009-10-26 19:22:15'),
(468984586383876089, '2009-10-24', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=0s&oq=maintendue31', 1, 0, 1, '2009-10-26 19:22:15');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_referers_articles'
--

INSERT INTO spip_referers_articles (id_article, referer_md5, `date`, referer, visites, maj) VALUES
(1, 1010432928966914681, '2008-05-10', 'http://www.google.com/search?hl=fr&rls=com.microsoft%3Aen-US&q=Association+La+main+tendue+31&lr=', 1, '2008-05-10 17:19:23'),
(1, 489577151797576053, '2008-05-23', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&btnG=Recherche+Google&meta=', 1, '2008-05-23 21:50:28'),
(1, 879582908904336228, '2008-06-10', 'http://www.google.fr/search?hl=fr&q=main+tendue+toulouse&meta=', 1, '2008-06-10 17:57:06'),
(1, 419368811547367372, '2008-06-11', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2008-06-11 19:23:37'),
(23, 298212217315036025, '2008-10-09', 'http://www.google.fr/search?q=maintendue31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2008-10-09 15:30:44'),
(1, 954901116026296724, '2008-10-10', 'http://www.google.fr/search?q=Main+tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2008-10-10 08:33:23'),
(1, 875143984693314413, '2008-10-10', 'http://www.google.com/search?hl=fr&rls=com.microsoft%3Afr%3AIE-SearchBox&rlz=1I7SUNA&q=LIZ+MC+COMB+FAIT+CHANTER+TOULOUSE+%2B+la+main+tendue&lr=', 1, '2008-10-10 17:32:45'),
(1, 1036566768760803866, '2008-10-11', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR296&q=association+main+tendue+31&btnG=Rechercher&meta=', 1, '2008-10-11 12:16:12'),
(1, 149244751749210581, '2008-10-13', 'http://www.google.fr/search?hl=fr&lr=lang_fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=Concert+Liz+Mac+Comb+Toulouse+main+tendue&spell=1', 1, '2008-10-13 09:57:38'),
(1, 909722421323759128, '2008-10-13', 'http://www.google.fr/search?hl=fr&rlz=1T4GFRG_frFR220FR222&q=asso+mains+tendues+31&meta=', 1, '2008-10-13 13:25:08'),
(1, 286723163707402564, '2008-10-13', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=', 2, '2008-10-23 14:11:21'),
(1, 646767836338057479, '2008-10-15', 'http://www.google.fr/search?hl=fr&newwindow=1&rlz=1T4GGLR_frFR234FR234&q=main+tendue+31+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, '2008-10-15 12:13:38'),
(1, 250800878241050347, '2008-10-16', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+%C3%A0+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, '2008-10-17 00:09:47'),
(1, 445030667206809060, '2008-10-19', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=oT&q=association+main+tendue+31&btnG=Rechercher&meta=', 1, '2008-10-19 16:03:27'),
(1, 290119111799925606, '2008-10-19', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+31&meta=', 2, '2008-11-24 16:36:02'),
(1, 1107702043886385923, '2008-10-23', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=gTH&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2008-10-23 12:48:01'),
(1, 451689873407583457, '2008-10-24', 'http://www.google.fr/search?hl=fr&q=La+main+tendue+association+Toulouse&btnG=Rechercher&meta=', 1, '2008-10-24 09:35:28'),
(1, 78630077292805969, '2008-10-24', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&hs=SMN&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=main+tendue+31&spell=1', 1, '2008-10-24 09:35:28'),
(1, 978531400307285664, '2008-10-24', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Rechercher&meta=', 2, '2008-11-19 19:52:33'),
(1, 758972813668134308, '2008-10-27', 'http://www.google.fr/search?hl=fr&q=repas+associatif+noel+toulouse+demunis&meta=cr%3DcountryFR', 1, '2008-10-27 22:19:49'),
(1, 598971467045343210, '2008-10-30', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 4, '2009-02-21 14:54:25'),
(1, 581457398035926172, '2008-11-02', 'http://www.google.com/search?q=main+tendue+toulouse&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGIC_fr', 1, '2008-11-02 12:18:33'),
(1, 861955451671000412, '2008-11-04', 'http://www.google.fr/search?hl=fr&q=distribution+de+repas&start=90&sa=N', 1, '2008-11-04 21:31:47'),
(1, 875781798371219604, '2008-11-06', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+du+sud&btnG=Rechercher&meta=', 1, '2008-11-06 14:25:17'),
(8, 5688772941232065, '2008-11-08', 'http://www.google.fr/search?hl=fr&q=sayrac+31340&btnG=Rechercher&meta=', 1, '2008-11-08 03:05:26'),
(8, 19925998291855326, '2008-11-08', 'http://www.google.fr/search?hl=fr&q=telephone+main+tendue+31&meta=&aq=f&oq=', 1, '2008-11-08 03:05:26'),
(1, 1032972850422997244, '2008-11-12', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=HPND,HPND:2006-44,HPND:fr&q=la+main+tendue+31', 1, '2008-11-12 13:03:50'),
(1, 210411822355442613, '2008-11-12', 'http://www.google.fr/search?hl=fr&rlz=1T4GGLR_frFR286FR288&q=epicerie+sociale+toulouse&start=20&sa=N', 1, '2008-11-12 14:10:03'),
(1, 543211731726764598, '2008-11-12', 'http://www.google.fr/search?q=la+main+tendue+Toulouse&sourceid=navclient-ff&ie=UTF-8&rls=GGGL,GGGL:2006-35,GGGL:fr', 1, '2008-11-12 14:10:03'),
(1, 274780779242569273, '2008-11-12', 'http://www.google.com/search?hl=fr&q=distribution+repas+noel+toulouse+&lr=', 1, '2008-11-12 15:12:46'),
(8, 358134648364985274, '2008-11-12', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2005-25,GGLD:fr&q=maintendue31&meta=cr%3DcountryFR', 1, '2008-11-12 19:23:02'),
(1, 790265929827172233, '2008-11-13', 'http://www.google.fr/search?sourceid=navclient&aq=t&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-19,GGLD:fr&q=ASSOCIATION+MAIN+TENDUE+31', 1, '2008-11-13 20:30:00'),
(1, 565426784483788987, '2008-11-14', 'http://www.google.fr/search?hl=fr&q=epicerie+sociale+toulouse&start=20&sa=N', 1, '2008-11-14 16:49:56'),
(1, 34499234515827894, '2008-11-14', 'http://www.google.com/search?client=safari&rls=fr&q=la+main+tendue+toulouse&ie=UTF-8&oe=UTF-8', 1, '2008-11-14 16:49:56'),
(1, 249448892941172112, '2008-11-17', 'http://www.google.fr/search?sourceid=navclient&aq=t&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR245FR259&q=la+main+tendue+31', 1, '2008-11-17 13:06:26'),
(1, 1015330527616879331, '2008-11-17', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=&aq=f&oq=', 1, '2008-11-17 13:06:26'),
(1, 963325652684326172, '2008-11-19', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+31&btnG=Rechercher&meta=', 1, '2008-11-19 17:02:20'),
(1, 929288391120201360, '2008-11-21', 'http://www.google.fr/search?hl=fr&q=ASSOCIATION+MAIN+TENDUE++TOULOUSE&meta=', 1, '2008-11-21 18:49:45'),
(1, 42680402399142213, '2008-11-22', 'http://www.google.fr/search?hl=fr&q=association+Main+Tendue+31&btnG=Rechercher&meta=cr%3DcountryFR', 1, '2008-11-22 12:25:28'),
(1, 521600277857084758, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendu+31+&meta=', 1, '2008-11-23 09:00:19'),
(1, 691836642843702688, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&meta=&aq=f&oq=', 1, '2008-11-23 14:03:17'),
(1, 81181021126364376, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+toulouse&meta=&aq=f&oq=', 2, '2009-07-27 18:39:06'),
(1, 418120935132384714, '2008-11-23', 'http://www.google.fr/search?q=association+toulouse+main+tendue&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2008-11-23 16:17:51'),
(1, 644224866644817862, '2008-11-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=lr%3Dlang_fr&aq=4&oq=main+ten', 1, '2008-11-23 21:27:23'),
(1, 615480822071949528, '2008-11-24', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=ACTION+LA+MAIN+TENDUE&meta=&btnG=Recherche+Google', 1, '2008-11-24 08:16:18'),
(1, 499351600461931282, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=main+tendue+liz+mc+comb&meta=', 1, '2008-11-24 08:49:46'),
(1, 376267004083500399, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=main+tendu+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2008-11-24 11:14:04'),
(1, 602416130485016245, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=www.maintendue+&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2008-11-24 15:01:56'),
(8, 712829042942794170, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=plan+sayrac+villemur+sur+tarn+31340&start=10&sa=N', 1, '2008-11-24 15:01:56'),
(1, 638839430600137147, '2008-11-24', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&q=association+Main+tendue+31&btnG=Rechercher&meta=', 1, '2008-11-24 15:55:24'),
(1, 1126434148595287058, '2008-11-24', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+association+toulouse&btnG=Rechercher&meta=', 1, '2008-11-24 21:43:28'),
(1, 88179531343435618, '2008-11-25', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&meta=&btnG=Recherche+Google', 1, '2008-11-25 21:27:26'),
(1, 709744728210965039, '2008-11-26', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=9&oq=ASSOCIATION+MAIN', 1, '2008-11-26 14:30:51'),
(1, 291806867810022045, '2008-11-26', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GZFA_frFR265FR265&q=distribution+repas+d%c3%a9munis+toulouse', 1, '2008-11-26 22:03:42'),
(1, 423620231363106431, '2008-11-29', 'http://www.google.fr/search?hl=fr&q=%C3%A9picerie+sociale+TOULOUSE&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2008-11-29 07:59:28'),
(1, 176607304803694372, '2008-11-30', 'http://search.free.fr/google.pl?next=/search?q=photo+liz+mc+comb+toulouse&hl=fr&lr=lang_fr&output=xml_no_dtd&client=freefr2&ad=w10&ie=UTF-8&oe=ISO-8859-1&start=40&sa=N', 1, '2008-11-30 09:59:58'),
(1, 786045252683301606, '2008-11-30', 'http://www.google.com/cse?cx=partner-pub-4030853813797933%3An2g1bnan8gd&cof=FORID%3A11&ie=ISO-8859-1&q=la+main+tendue+toulouse&sa=Rechercher&ad=w9&num=10&rurl=http%3A%2F%2Fwww.toulouse-annuaire.com%2Fsearch.htm%3Fcx%3Dpartner-pub-4030853813797933%253An2g1', 1, '2008-11-30 16:03:52'),
(1, 593001923390423505, '2008-12-01', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=la+main+tendue+toulouse&meta=&btnG=Recherche+Google', 2, '2008-12-30 16:21:35'),
(1, 801319757695209054, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=association+main+tendue', 1, '2008-12-01 13:48:18'),
(1, 769359030091210255, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=lr%3Dlang_fr&aq=4&oq=la+main+ten', 2, '2008-12-01 20:47:22'),
(1, 1018248065513713578, '2008-12-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=ASSOCIATION+MAIN+TENDUE', 1, '2008-12-01 15:03:17'),
(1, 604154637361619777, '2008-12-02', 'http://www.google.fr/cse?cx=partner-pub-5410304876792431%3Ao0gz3i20c5m&ie=ISO-8859-1&q=main+tendue+31', 1, '2008-12-02 14:55:25'),
(1, 360635426748316269, '2008-12-05', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=1&oq=association+Main+Tendue', 1, '2008-12-05 10:39:11'),
(1, 521962288336783762, '2008-12-05', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Rechercher&meta=lr%3Dlang_fr', 1, '2008-12-05 19:05:37'),
(1, 1142664137650585610, '2008-12-06', 'http://www.google.de/search?sourceid=navclient&hl=fr&ie=UTF-8&q=main+tendue+31', 1, '2008-12-06 20:41:01'),
(1, 771238875591280633, '2008-12-09', 'http://www.google.fr/search?q=+la+main+tendue+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2008-12-09 22:44:52'),
(1, 202671230343197284, '2008-12-11', 'http://www.google.fr/search?hl=fr&rlz=1W1GGLL_fr&q=association+la+main+tendue+toulouse&meta=', 1, '2008-12-11 21:12:44'),
(1, 1072432926806215908, '2008-12-12', 'http://www.google.fr/search?hl=fr&q=31+main+tendues+toulouse&meta=', 1, '2008-12-12 17:54:56'),
(1, 238317583119103847, '2008-12-12', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=La+main+tendue+Toulouse&spell=1', 1, '2008-12-12 20:46:33'),
(8, 68740570202224687, '2008-12-12', 'http://www.google.de/search?sourceid=navclient&aq=h0&oq=&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR304FR304&q=maintendue31', 1, '2008-12-12 21:28:35'),
(1, 863581046018910249, '2008-12-20', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=c5y&q=association+main+tendu+toulouse&btnG=Rechercher&meta=', 1, '2008-12-20 21:15:34'),
(1, 30514084635978400, '2008-12-22', 'http://www.google.fr/search?hl=fr&q=asso+distributrice+de+repas&start=10&sa=N', 1, '2008-12-22 09:50:56'),
(1, 1048029842852519560, '2008-12-22', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=main+tendue+31&meta=&btnG=Recherche+Google', 2, '2009-02-20 11:07:18'),
(1, 1663020694211574, '2008-12-22', 'http://www.google.fr/search?hl=fr&q=MAIN+TENDUE+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2008-12-22 21:50:53'),
(1, 209053537320173040, '2008-12-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-11,GGLD:fr&q=la+main+tendue+toulouse', 1, '2008-12-23 16:41:10'),
(1, 974694022050645187, '2008-12-23', 'http://www.google.fr/search?hl=fr&rlz=1C1GGLS_frFR291FR303&q=L%27association+La+Main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2008-12-23 22:03:23'),
(1, 8125983171464433, '2008-12-23', 'http://www.google.fr/search?hl=fr&rlz=1C1GGLS_frFR291FR303&q=distribution+repas+noel+toulouse&btnG=Rechercher&meta=', 1, '2008-12-23 22:03:23'),
(8, 1060503267557142564, '2008-12-28', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=&rlz=1W1GGLL_fr&aq=1&oq=maintendue', 1, '2008-12-28 21:51:14'),
(1, 1001236294242357297, '2008-12-30', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendu+a+toulouse&meta=&aq=f&oq=', 1, '2008-12-30 20:25:30'),
(1, 507255112711467508, '2009-01-04', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2009-01-04 22:25:52'),
(1, 291728715591685798, '2009-01-06', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2009-01-06 17:11:46'),
(1, 983238916191981787, '2009-01-06', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2009-01-06 22:11:50'),
(1, 1004650792253650705, '2009-01-14', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&btnG=Recherche+Google&meta=cr%3DcountryFR&aq=1&oq=main+ten', 1, '2009-01-14 10:52:57'),
(1, 1099986184728698844, '2009-01-17', 'http://www.google.fr/search?hl=fr&q=Association+Main+Tendue+31&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2009-01-17 00:34:28'),
(1, 1078548790096916659, '2009-01-19', 'http://www.google.fr/search?hl=fr&cr=countryFR&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=association+la+main+tendue+31&spell=1', 1, '2009-01-19 11:41:25'),
(1, 843003503868750330, '2009-01-20', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=&aq=f&oq=', 2, '2009-04-25 08:05:04'),
(1, 1043572554034563031, '2009-01-20', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=1&ct=result&cd=1&q=main+tendue+31&spell=1', 1, '2009-01-20 16:15:23'),
(1, 822937416595104225, '2009-01-21', 'http://www.google.fr/search?hl=fr&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=association+main+tendue+31&spell=1', 1, '2009-01-21 08:48:51'),
(1, 307852450589784754, '2009-01-27', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR306&q=association+main+tendue+31&meta=lr%3D&aq=0&oq=association+main+tendue', 1, '2009-01-27 13:45:04'),
(1, 658124473273759470, '2009-01-29', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&q=P%C3%B4le+d%E2%80%99accueil+d%E2%80%99information+et+d%E2%80%99orientation+ccas+toulouse&start=10&sa=N', 1, '2009-01-29 06:45:32'),
(1, 936834445269074344, '2009-01-29', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=&aq=9&oq=LA+MAIN+TEND', 1, '2009-01-29 09:17:47'),
(1, 772899346412791154, '2009-01-29', 'http://www.google.fr/', 1, '2009-01-29 09:17:47'),
(1, 74571437045560401, '2009-02-02', 'http://www.google.fr/search?hl=fr&q=La+main+tendue+toulouse&meta=&aq=f&oq=', 1, '2009-02-02 11:51:45'),
(1, 532358912717812172, '2009-02-03', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=association+mains+tendues+toulouse&meta=&btnG=Recherche+Google', 1, '2009-02-03 13:33:20'),
(1, 1081633929549839927, '2009-02-06', 'http://www.google.com/search?q=main+tendue+toulouse&rls=com.microsoft:*:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7TSEA_fr', 1, '2009-02-06 10:36:31'),
(1, 636987799932311940, '2009-02-08', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&meta=', 1, '2009-02-08 22:22:12'),
(1, 801451162679791259, '2009-02-09', 'http://www.google.fr/search?hl=fr&rlz=1B2GGGL_frFR177&q=main+tendue+association&start=10&sa=N', 1, '2009-02-09 11:20:36'),
(1, 312450071175881438, '2009-02-09', 'http://www.google.co.ma/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&q=squelettes+spip+pour+association&start=420&sa=N', 1, '2009-02-09 18:14:22'),
(1, 7155043539438455, '2009-02-10', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla:fr:official&hs=4jF&ei=xWqQSY-pDoOB_gaZ9finDA&sa=X&oi=spell&resnum=1&ct=result&cd=1&q=la+main+tendue+toulouse&spell=1', 1, '2009-02-10 08:44:27'),
(1, 1057855973110492643, '2009-02-11', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue%2Btoulouse&meta=', 1, '2009-02-11 12:14:02'),
(1, 181407997809711410, '2009-02-11', 'http://www.google.de/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4PBEA_frFR292FR292&q=main+tendue+a+toulouse', 1, '2009-02-11 17:33:19'),
(8, 1023255782637633930, '2009-02-16', 'http://www.google.fr/search?hl=fr&q=sayrac+villemur+sur+tarn+31340&start=30&sa=N', 1, '2009-02-16 09:49:26'),
(1, 554937312072968422, '2009-02-16', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&hs=OMz&q=epicerie+sociale+Toulouse&start=30&sa=N', 1, '2009-02-16 13:52:11'),
(1, 581652838895827765, '2009-02-20', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=lr%3Dlang_fr&aq=0&oq=main+tendue', 1, '2009-02-20 11:07:18'),
(1, 509999216867069128, '2009-02-20', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=cr%3DcountryFR&aq=0&oq=main+tendue', 2, '2009-05-25 09:30:10'),
(1, 702113499079300916, '2009-02-23', 'http://www.google.fr/search?hl=fr&q=distribution+repas+gratuits+a+toulouse&btnG=Rechercher&meta=', 1, '2009-02-23 22:05:04'),
(1, 219376404374642991, '2009-02-25', 'http://www.google.fr/search?hl=fr&q=association+Main+tendue*&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2009-02-25 22:17:21'),
(1, 1068475308038080371, '2009-02-27', 'http://www.google.fr/search?q=la+main+tendue+toulouse&sourceid=navclient-ff&ie=UTF-8&rlz=1B3GGGL_frFR255FR256&aq=t', 1, '2009-02-27 11:23:42'),
(1, 260110238078576160, '2009-02-28', 'http://www.google.fr/search?hl=fr&q=association+loi+1901+Main+Tendu&btnG=Rechercher&meta=', 1, '2009-02-28 20:36:07'),
(1, 344720037091939434, '2009-03-03', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR274&q=ASSOCIATION+LA+MAIN+TENDUE&start=20&sa=N', 1, '2009-03-03 22:49:40'),
(1, 1083651578134707392, '2009-03-04', 'http://www.google.fr/search?hl=fr&rlz=1T4SKPB_frFR310FR310&q=epicerie+solidaire+toulouse&start=10&sa=N', 1, '2009-03-04 22:10:53'),
(1, 378197577301609276, '2009-03-05', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla:fr:official&q=toulouse+epicerie+solidaire&start=10&sa=N', 1, '2009-03-05 09:02:03'),
(1, 796537724176910515, '2009-03-06', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=0&oq=association+main+tendue', 1, '2009-03-06 10:26:58'),
(1, 914181010715376785, '2009-03-06', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=&aq=9&oq=la+main+tendue+', 1, '2009-03-06 19:07:44'),
(1, 1056645131632306602, '2009-03-11', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&q=la+main+tendue+31&meta=&btnG=Recherche+Google', 9, '2009-08-17 19:00:20'),
(1, 722384640880806871, '2009-03-12', 'http://www.google.fr/search?q=la+main+tendue+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2009-03-12 09:42:41'),
(1, 775046993473041809, '2009-03-15', 'http://www.google.fr/search?hl=fr&q=serviettes+hygi%C3%A9niques+%3A+utilit%C3%A9+sociale&meta=', 1, '2009-03-15 22:35:38'),
(1, 391919377503137608, '2009-03-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLJ_frFR301FR301&q=www.maintendue', 1, '2009-03-23 11:58:03'),
(1, 505871807065203072, '2009-03-23', 'http://www.google.fr/search?hl=fr&q=statut+association+main+tendue&meta=', 1, '2009-03-23 11:58:03'),
(1, 461065564509235513, '2009-03-26', 'http://www.google.fr/search?hl=fr&q=association+organise+un+repas+au+plus+d%C3%A9munis&btnG=Rechercher&meta=', 1, '2009-03-26 21:31:34'),
(1, 81330258997007804, '2009-03-30', 'http://www.google.fr/search?q=la+main+tendue+toulouse&sourceid=navclient-ff&ie=UTF-8&rlz=1B2GGGL_frFR209FR209', 1, '2009-03-30 10:48:58'),
(1, 308401848743789426, '2009-03-30', 'http://www.google.fr/search?hl=fr&ie=ISO-8859-1&q=LA+MAIN+TENDUE+TOULOUSE&meta=', 1, '2009-03-30 10:48:58'),
(2, 127610271594992845, '2009-03-30', 'http://co106w.col106.mail.live.com/mail/InboxLight.aspx?FolderID=00000000-0000-0000-0000-000000000001&n=330739634', 1, '2009-03-30 20:10:01'),
(1, 930855045014833582, '2009-04-09', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=fQE&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2009-04-09 07:59:40'),
(1, 728825648825749370, '2009-04-09', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+31&meta=', 1, '2009-04-09 07:59:40'),
(1, 250159383159270008, '2009-04-14', 'http://www.google.fr/search?q=association+la+main+tendue&hl=fr&rlz=1T4ADBS_frFR319FR320&start=10&sa=N', 1, '2009-04-14 10:02:46'),
(1, 358997015345017852, '2009-04-14', 'http://www.google.fr/search?hl=fr&q=mains+tendues+sur+le+31&btnG=Recherche+Google&meta=&rlz=1R2GGLL_fr&aq=f&oq=', 1, '2009-04-14 10:02:46'),
(1, 298954111907358001, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+31&meta=&aq=0&oq=association+main+tend', 1, '2009-04-21 12:05:40'),
(1, 330930732268175934, '2009-04-21', 'http://www.google.fr/search?hl=fr&q=association+toulouse+main+tendue&meta=', 1, '2009-04-21 16:47:37'),
(8, 330998004651324725, '2009-04-22', 'http://www.google.de/search?hl=fr&q=maintendue31&aq=2&oq=MAINTENDUE', 1, '2009-04-22 16:43:00'),
(1, 748436826472620237, '2009-04-25', 'http://search.live.com/results.aspx?q=association', 1, '2009-04-25 08:05:04'),
(1, 944081946304378531, '2009-04-25', 'http://www.google.com/search?q=repas+association+plus+de+100+personnes&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7ADBS_fr', 1, '2009-04-25 08:05:04'),
(1, 39155267590043520, '2009-04-25', 'http://www.google.fr/search?hl=fr&q=association+la+main+tendue+toulouse&btnG=Rechercher&meta=', 2, '2009-09-04 18:39:22'),
(6, 806357619442394992, '2009-04-26', 'http://search.live.com/results.aspx?q=notre', 1, '2009-04-26 20:10:05'),
(2, 155652273040266755, '2009-04-26', 'http://search.live.com/results.aspx?q=reportage', 1, '2009-04-26 20:10:05'),
(1, 428798239436163516, '2009-04-26', 'http://www.google.fr/search?hl=fr&q=main+tendie+31&meta=lr%3Dlang_fr&aq=f&oq=', 1, '2009-04-26 21:53:53'),
(1, 224859000413187363, '2009-04-27', 'http://www.google.fr/search?q=association+La+Main+tendue&hl=fr&rlz=1T4ADBR_enFR300FR301&start=10&sa=N', 1, '2009-04-27 10:36:05'),
(1, 922045562253519868, '2009-04-29', 'http://www.google.fr/search?hl=fr&q=association+distribution+de+repas&btnG=Rechercher&meta=', 1, '2009-04-29 16:29:50'),
(1, 274299137104976061, '2009-05-09', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=FX1&q=main+tendue+toulouse&btnG=Rechercher&meta=', 1, '2009-05-09 13:08:11'),
(1, 1001616259993130629, '2009-05-14', 'http://www.google.fr/search?hl=fr&q=la+main+tendu+toulouse&btnG=Recherche+Google&meta=&aq=f&oq=', 1, '2009-05-14 14:45:26'),
(1, 308077132675937979, '2009-05-15', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4SHCN_frFR258FR258&q=main+tendu+toulouse', 1, '2009-05-15 16:43:50'),
(1, 723136759713114943, '2009-05-15', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rls=GGLD,GGLD:2004-40,GGLD:fr&q=main+tendue+31', 1, '2009-05-15 16:43:50'),
(24, 594691022211814432, '2009-05-18', 'http://search.live.com/results.aspx?q=savoir', 1, '2009-05-18 18:03:27'),
(1, 218137992997586947, '2009-05-18', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Recherche+Google&meta=cr%3DcountryFR&aq=f&oq=', 1, '2009-05-18 18:03:27'),
(4, 594691022211814432, '2009-05-18', 'http://search.live.com/results.aspx?q=savoir', 1, '2009-05-18 18:03:27'),
(7, 739265524675826388, '2009-05-18', 'http://search.live.com/results.aspx?q=infos', 1, '2009-05-18 18:03:27'),
(1, 300139927728359051, '2009-05-24', 'http://www.google.fr/search?sourceid=navclient&aq=1&oq=MAIN+TENDU&hl=fr&ie=UTF-8&rlz=1T4ADBS_frFR309FR309&q=main+tendue+31', 1, '2009-05-24 12:40:14'),
(1, 795122488347748760, '2009-05-25', 'http://www.google.fr/search?gbv=2&hl=fr&num=100&newwindow=1&q=association+main+tendu&btnG=Rechercher&meta=', 1, '2009-05-25 10:41:10'),
(1, 835961547129035918, '2009-05-25', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLR_frFR327FR244&q=association+main+tendue+31', 1, '2009-05-25 21:43:55'),
(1, 1069457509544312685, '2009-05-29', 'http://www.google.com/search?hl=fr&client=firefox-a&rls=org.mozilla%3Aes-AR%3Aofficial&hs=ePf&q=La+main+tendue+toulouse&btnG=Rechercher&lr=', 1, '2009-05-29 18:41:22'),
(1, 333096035756859658, '2009-05-29', 'http://www.google.fr/search?hl=fr&q=LA+MAIN+TENDUE+TOULOUSE&meta=&aq=f&oq=', 1, '2009-05-29 18:41:22'),
(8, 1106039767242522422, '2009-06-01', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=', 1, '2009-06-01 04:12:03'),
(1, 243548745356375854, '2009-06-04', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&rlz=1W1ADBF_fr&aq=3&oq=main+ten', 1, '2009-06-04 17:54:02'),
(1, 918588867913338238, '2009-06-04', 'http://www.google.fr/search?hl=fr&rlz=1T4FUJE_frFR313FR313&q=main+tendue+31&btnG=Rechercher&meta=', 1, '2009-06-04 20:08:32'),
(1, 1081593540796716907, '2009-06-08', 'http://www.google.com/search?sourceid=gmail&q=Association%20la%20%22Main-Tendue%22%20Toulouse', 1, '2009-06-08 08:25:03'),
(1, 926303435108989275, '2009-06-10', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&meta=&rlz=1R2ADBF_fr&aq=1&oq=main+tendu', 1, '2009-06-10 22:39:52'),
(1, 1117862617918707237, '2009-06-17', 'http://www.google.fr/search?hl=fr&rlz=1T4ACAW_frFR326FR326&q=association+main+tendue+colis+alimentaire+49140&meta=', 1, '2009-06-17 16:28:09'),
(1, 623071325926031980, '2009-06-17', 'http://www.google.fr/search?hl=fr&rlz=1T4ACAW_frFR326FR326&q=association+main+tendue+colis+alimentaire+dans+le+49140&meta=', 1, '2009-06-17 16:28:09'),
(8, 1122002831365130710, '2009-06-17', 'http://www.google.fr/search?hl=fr&q=maintendue31&meta=&rlz=1W1GPTB_fr&aq=f&oq=', 1, '2009-06-17 16:28:09'),
(1, 553474553548870479, '2009-06-19', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+toulouse&btnG=Rechercher&meta=', 2, '2009-08-20 11:20:26'),
(1, 740539319761415237, '2009-06-25', 'http://www.google.fr/search?sourceid=navclient&ie=UTF-8&rlz=1T4ADBR_enFR234FR234&q=association+la+main+tendue+toulouse', 1, '2009-06-25 11:30:07'),
(1, 628955148372994206, '2009-06-29', 'http://www.google.fr/search?q=THALES+AVIONICS+%22COMITE+d%27entreprise%22+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2009-06-29 14:30:28'),
(1, 525179746115533867, '2009-07-01', 'http://www.google.fr/search?hl=fr&q=association+main+tendue+toulouse&meta=', 1, '2009-07-01 11:26:16'),
(1, 733494339475589905, '2009-07-01', 'http://www.google.fr/search?hl=fr&q=main+tendu+toulouse&btnG=Rechercher&meta=&aq=f&oq=', 1, '2009-07-01 20:59:51'),
(1, 943862999091042196, '2009-07-17', 'http://www.google.fr/search?hl=fr&rlz=1G1GGLQ_FRFR327&q=la+main+tendue+toulouse&meta=', 1, '2009-07-17 08:33:33'),
(1, 448713619961291620, '2009-07-18', 'http://www.google.fr/search?rlz=1T4GPTB_frFR296FR307&hl=fr&q=aider+association+repas+de+noel&btnG=Recherche+Google&meta=lr%3Dlang_fr&aq=f&oq=', 1, '2009-07-18 17:47:21'),
(1, 867703969480481230, '2009-07-31', 'http://www.google.fr/search?q=main+tendue+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 2, '2009-10-21 17:31:05'),
(7, 584954401259869996, '2009-08-10', 'http://www.bing.com/search?q=infos', 1, '2009-08-10 18:52:45'),
(8, 538338148797542326, '2009-08-11', 'http://www.bing.com/search?q=contact', 1, '2009-08-11 13:00:15'),
(5, 368468864003328149, '2009-08-14', 'http://www.bing.com/search?q=partenaires', 1, '2009-08-14 17:01:57'),
(15, 481911038770260099, '2009-08-15', 'http://www.bing.com/search?q=bientot', 1, '2009-08-15 16:36:05'),
(18, 481911038770260099, '2009-08-15', 'http://www.bing.com/search?q=bientot', 1, '2009-08-15 16:36:05'),
(16, 481911038770260099, '2009-08-15', 'http://www.bing.com/search?q=bientot', 1, '2009-08-15 16:36:05'),
(17, 481911038770260099, '2009-08-17', 'http://www.bing.com/search?q=bientot', 1, '2009-08-17 19:00:20'),
(4, 481911038770260099, '2009-08-17', 'http://www.bing.com/search?q=bientot', 1, '2009-08-17 19:00:20'),
(12, 481911038770260099, '2009-08-20', 'http://www.bing.com/search?q=bientot', 1, '2009-08-20 11:20:26'),
(1, 768848785273514212, '2009-08-24', 'http://www.google.com/search?q=main+tendue+31&rls=com.microsoft:fr:IE-SearchBox&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGLR_fr', 1, '2009-08-24 12:25:46'),
(1, 308842789761314814, '2009-08-25', 'http://www.google.fr/search?hl=fr&q=la+main+tendue+haute+garonne&meta=', 1, '2009-08-25 19:05:39'),
(1, 765906657113945527, '2009-08-29', 'http://www.google.fr/search?source=ig&hl=fr&rlz=1G1GGLQ_FRFR342&q=main+tendue+31&meta=lr%3D&aq=3&oq=main+ten', 1, '2009-08-29 15:12:20'),
(1, 155168477029215265, '2009-09-02', 'http://www.google.be/search?hl=fr&rlz=1G1GGLQ_FRXX258&q=main+tendue+31&meta=', 1, '2009-09-02 17:53:16'),
(1, 675132922367042831, '2009-09-04', 'http://www.google.com/search?q=main+tendu+toulouse&rls=com.microsoft:*:IE-Address&ie=UTF-8&oe=UTF-8&sourceid=ie7&rlz=1I7GGIT_fr', 1, '2009-09-04 18:39:22'),
(1, 810038929115875274, '2009-09-11', 'http://www.google.fr/search?hl=fr&rlz=1C1CHNG_frFR334FR334&q=association+main+tendu+toulouse+&btnG=Rechercher&meta=', 1, '2009-09-11 14:38:20'),
(1, 1130788846076295587, '2009-09-11', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GGLJ_frFR298FR298&q=main+tendue+toulouse', 1, '2009-09-11 14:38:20'),
(1, 235148802669060476, '2009-09-13', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=0&oq=main+tendue+', 1, '2009-09-13 19:04:16'),
(1, 816927141458964144, '2009-09-15', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+toulouse&meta=', 1, '2009-09-15 15:56:45'),
(1, 785980151327787295, '2009-09-15', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=0&oq=main+tendue', 1, '2009-09-15 23:42:41'),
(1, 270858675342601854, '2009-09-17', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=2s&oq=maintend', 2, '2009-10-18 21:16:12'),
(19, 270858675342601854, '2009-09-17', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=2s&oq=maintend', 1, '2009-09-17 01:06:41'),
(14, 270858675342601854, '2009-09-17', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=2s&oq=maintend', 1, '2009-09-17 01:06:41'),
(8, 876819482360852226, '2009-09-20', 'http://fr.search.yahoo.com/search?p=Sayrac+31340&fr=yfp-t-501&ei=UTF-8&rd=r1', 1, '2009-09-20 09:43:36'),
(1, 655264850691448776, '2009-09-23', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4GZAZ_frFR225FR225&q=la+main+tendue+toulouse', 1, '2009-09-23 12:00:28'),
(1, 1008549265138739299, '2009-09-27', 'http://www.google.fr/search?q=main+tendue+toulouse+31&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2009-09-27 16:37:25'),
(1, 100497690493633153, '2009-09-30', 'http://www.google.fr/search?hl=fr&rlz=1W1ADRA_fr&q=association+la+main+tendue+sur+toulouse&meta=', 1, '2009-09-30 17:34:50'),
(1, 183170007348967939, '2009-10-01', 'http://www.google.fr/search?q=la+main+tendue+Toulouse&ie=utf-8&oe=utf-8&aq=t&rls=org.mozilla:fr:official&client=firefox-a', 1, '2009-10-01 16:38:08'),
(1, 886069568044089974, '2009-10-01', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=1n0&q=la+main+tendue+Toulouse&btnG=Rechercher&meta=', 1, '2009-10-01 16:38:08'),
(1, 887706652519548784, '2009-10-01', 'http://www.google.fr/search?hl=fr&client=firefox-a&channel=s&rls=org.mozilla%3Afr%3Aofficial&hs=BUL&q=main+tendue+Toulouse&btnG=Rechercher&meta=', 1, '2009-10-01 16:38:08'),
(1, 1104923371183345006, '2009-10-04', 'http://www.google.de/search?hl=fr&source=hp&fkt=2631&fsdt=11419&q=main+tendue+31&aq=1&oq=main+tendue&aqi=g7', 1, '2009-10-04 14:57:25'),
(1, 643593293056357111, '2009-10-04', 'http://www.google.fr/search?hl=fr&ei=j5vISqWhNJWx4Qan_7zHAQ&sa=X&oi=spell&resnum=0&ct=result&cd=1&q=www+main+tendue+31&spell=1', 1, '2009-10-04 18:14:30'),
(1, 394647225815542261, '2009-10-04', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=&aq=1&oq=main+tendu', 1, '2009-10-04 23:04:16'),
(1, 278356114476255722, '2009-10-06', 'http://www.google.fr/search?sourceid=navclient&ie=UTF-8&rlz=1T4GSPA_enFR314FR325&q=main+tendue+31', 1, '2009-10-06 14:36:40'),
(1, 483466839633554700, '2009-10-06', 'http://www.google.fr/search?hl=fr&q=mairie+de+toulouse+colis+de+noel&meta=', 1, '2009-10-06 14:36:40'),
(11, 395324581787773443, '2009-10-09', 'http://www.bing.com/search?q=www.maintendue.31.org&FORM=MIZWH9&CP=65001&mkt=fr-fr', 1, '2009-10-09 02:51:56'),
(15, 419773941297934602, '2009-10-10', 'http://www.google.de/search?hl=fr&source=hp&fkt=2969&fsdt=18395&q=main+tendue+31&aq=2s&oq=maintend&aqi=g1g-s2', 1, '2009-10-10 13:29:51'),
(1, 344345840497463004, '2009-10-15', 'http://www.google.fr/search?q=colis+de+noel+maireie+de+toulouse&ie=utf-8&oe=utf-8&aq=t&rls=com.mandriva:en-US:official&client=firefox-a', 1, '2009-10-15 07:16:58'),
(1, 345192633341011885, '2009-10-15', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&q=personnes+ag%C3%A9es+affiche+pub+main+tendue&btnG=Rechercher&meta=', 1, '2009-10-15 07:16:58'),
(1, 335677823729205656, '2009-10-17', 'http://www.google.fr/search?hl=fr&source=hp&q=la+main+tendue+toulouse&meta=&aq=0&oq=la+main+tendue+toulous', 1, '2009-10-17 10:41:58'),
(1, 113792734748569694, '2009-10-20', 'http://www.google.fr/search?sourceid=navclient&hl=fr&ie=UTF-8&rlz=1T4DVXA_frFR316&q=LA+MAIN+TENDUE+MINIMES+TOULOUSE', 1, '2009-10-20 11:21:40'),
(1, 706224317984830394, '2009-10-20', 'http://www.google.fr/search?hl=fr&client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&hs=PVq&q=mains+tendues+toulouse&btnG=Rechercher&meta=', 1, '2009-10-20 13:46:59'),
(1, 1015522503358227403, '2009-10-22', 'http://www.google.fr/search?hl=fr&source=hp&q=main+tendue+31&meta=lr%3Dlang_fr&aq=0&oq=main+tendue', 1, '2009-10-22 01:38:41'),
(1, 886947743912299451, '2009-10-23', 'http://www.google.fr/search?hl=fr&q=main+tendue+31&sourceid=navclient-ff&rlz=1B3RNGZ_frFR348FR349&ie=UTF-8&aq=2&oq=main+tendue', 1, '2009-10-23 12:24:53'),
(1, 468984586383876089, '2009-10-24', 'http://www.google.de/search?hl=fr&source=hp&q=main+tendue+31&aq=0s&oq=maintendue31', 1, '2009-10-24 11:50:56'),
(1, 723388627322786091, '2009-10-24', 'http://www.google.fr/search?client=firefox-a&rls=org.mozilla%3Afr%3Aofficial&channel=s&hl=fr&source=hp&q=la+main+tendue+31&meta=&btnG=Recherche+Google', 1, '2009-10-24 11:50:56');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table 'spip_rubriques'
--

INSERT INTO spip_rubriques (id_rubrique, id_parent, titre, descriptif, texte, id_secteur, maj, export, id_import, statut, `date`, lang, langue_choisie, idx, extra, url_propre, statut_tmp, date_tmp) VALUES
(1, 0, 'PRESENTATION et CHIFFRES', '', 0x3c703e6e756c6c3c2f703e, 1, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-03-10 12:23:27', 'fr', 'non', '1', NULL, '', 'publie', '2008-03-10 12:23:27'),
(2, 0, 'EDITORIAL', '', 0x3c703e6e756c6c3c2f703e, 2, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-06-02 12:24:33', 'fr', 'non', '1', NULL, '', 'publie', '2008-06-02 12:24:33'),
(4, 0, 'PHOTOS', '', 0x3c703e6e756c6c3c2f703e, 4, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-03-18 13:39:00', 'fr', 'non', '1', NULL, '', 'publie', '2008-03-18 13:39:00'),
(6, 0, 'VIDEOS', '', 0x3c703e6e756c6c3c2f703e, 6, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-03-10 13:07:52', 'fr', 'non', '1', NULL, '', 'publie', '2008-03-10 13:07:52'),
(5, 0, 'LIENS', '', 0x3c703e6e756c6c3c2f703e, 5, '2008-07-05 19:25:50', 'oui', 0, 'prive', '0000-00-00 00:00:00', 'fr', 'non', '1', NULL, '', 'prive', '0000-00-00 00:00:00'),
(7, 0, 'PARTENAIRES', '', 0x3c703e6e756c6c3c2f703e, 7, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-06-02 12:26:10', 'fr', 'non', '1', NULL, '', 'publie', '2008-06-02 12:26:10'),
(8, 0, 'INFOS', '', 0x3c703e6e756c6c3c2f703e, 8, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-04-14 10:03:47', 'fr', 'non', '', NULL, '', 'publie', '2008-04-14 10:03:47'),
(9, 0, 'CONTACT', '', 0x3c703e6e756c6c3c2f703e, 9, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-06-11 19:52:59', 'fr', 'non', '', NULL, '', 'publie', '2008-06-11 19:52:59'),
(11, 0, 'AIDE', '', 0x3c703e6e756c6c3c2f703e, 11, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-06-22 00:20:26', 'fr', 'non', '', NULL, '', 'publie', '2008-06-22 00:20:26'),
(12, 0, 'PRESSE', '', 0x3c703e6e756c6c3c2f703e, 12, '2009-10-26 20:25:48', 'oui', 0, 'publie', '2008-07-13 01:50:13', 'fr', 'non', '', NULL, '', 'publie', '2008-07-13 01:50:13'),
(13, 0, 'CHIFFRES', '', 0x3c703e6e756c6c3c2f703e, 13, '2009-06-15 10:50:44', 'oui', 0, 'prive', '0000-00-00 00:00:00', 'fr', 'non', '', NULL, '', 'prive', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_signatures'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_syndic'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table 'spip_syndic_articles'
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Contenu de la table 'spip_types_documents'
--

INSERT INTO spip_types_documents (id_type, titre, descriptif, extension, mime_type, inclus, upload, maj) VALUES
(1, 'JPG', '', 'jpg', 'image/jpeg', 'image', 'oui', '2008-03-07 18:15:44'),
(2, 'PNG', '', 'png', 'image/png', 'image', 'oui', '2008-03-07 18:15:44'),
(3, 'GIF', '', 'gif', 'image/gif', 'image', 'oui', '2008-03-07 18:15:44'),
(4, 'BMP', '', 'bmp', 'image/x-ms-bmp', 'image', 'oui', '2008-03-07 18:15:44'),
(5, 'TIFF', '', 'tif', 'image/tiff', 'image', 'oui', '2008-03-07 18:15:44'),
(6, 'AIFF', '', 'aiff', 'audio/x-aiff', 'embed', 'oui', '2008-03-07 18:15:44'),
(7, 'Windows Media', '', 'asf', 'video/x-ms-asf', 'embed', 'oui', '2008-03-07 18:15:44'),
(8, 'AVI', '', 'avi', 'video/x-msvideo', 'embed', 'oui', '2008-03-07 18:15:44'),
(9, 'Flash Video', '', 'flv', 'video/x-flv', 'embed', 'oui', '2008-03-07 18:15:44'),
(10, 'Midi', '', 'mid', 'audio/midi', 'embed', 'oui', '2008-03-07 18:15:44'),
(11, 'MNG', '', 'mng', 'video/x-mng', 'embed', 'oui', '2008-03-07 18:15:44'),
(12, 'Matroska Audio', '', 'mka', 'audio/mka', 'embed', 'oui', '2008-03-07 18:15:44'),
(13, 'Matroska Video', '', 'mkv', 'video/mkv', 'embed', 'oui', '2008-03-07 18:15:44'),
(14, 'QuickTime', '', 'mov', 'video/quicktime', 'embed', 'oui', '2008-03-07 18:15:44'),
(15, 'MP3', '', 'mp3', 'audio/mpeg', 'embed', 'oui', '2008-03-07 18:15:44'),
(16, 'MPEG4', '', 'mp4', 'application/mp4', 'embed', 'oui', '2008-03-07 18:15:44'),
(17, 'MPEG', '', 'mpg', 'video/mpeg', 'embed', 'oui', '2008-03-07 18:15:44'),
(18, 'Ogg', '', 'ogg', 'application/ogg', 'embed', 'oui', '2008-03-07 18:15:44'),
(19, 'QuickTime', '', 'qt', 'video/quicktime', 'embed', 'oui', '2008-03-07 18:15:44'),
(20, 'RealAudio', '', 'ra', 'audio/x-pn-realaudio', 'embed', 'oui', '2008-03-07 18:15:44'),
(21, 'RealAudio', '', 'ram', 'audio/x-pn-realaudio', 'embed', 'oui', '2008-03-07 18:15:44'),
(22, 'RealAudio', '', 'rm', 'audio/x-pn-realaudio', 'embed', 'oui', '2008-03-07 18:15:44'),
(23, 'Scalable Vector Graphics', '', 'svg', 'image/svg+xml', 'embed', 'oui', '2008-03-07 18:15:44'),
(24, 'Flash', '', 'swf', 'application/x-shockwave-flash', 'embed', 'oui', '2008-03-07 18:15:44'),
(25, 'WAV', '', 'wav', 'audio/x-wav', 'embed', 'oui', '2008-03-07 18:15:44'),
(26, 'Windows Media', '', 'wmv', 'video/x-ms-wmv', 'embed', 'oui', '2008-03-07 18:15:44'),
(27, 'Abiword', '', 'abw', 'application/abiword', 'non', 'oui', '2008-03-07 18:15:44'),
(28, 'Adobe Illustrator', '', 'ai', 'application/illustrator', 'non', 'oui', '2008-03-07 18:15:44'),
(29, 'BZip', '', 'bz2', 'application/x-bzip2', 'non', 'oui', '2008-03-07 18:15:44'),
(30, 'Binary Data', '', 'bin', 'application/octet-stream', 'non', 'oui', '2008-03-07 18:15:44'),
(31, 'Blender', '', 'blend', 'application/x-blender', 'non', 'oui', '2008-03-07 18:15:44'),
(32, 'C source', '', 'c', 'text/x-csrc', 'non', 'oui', '2008-03-07 18:15:44'),
(33, 'Cascading Style Sheet', '', 'css', 'text/css', 'non', 'oui', '2008-03-07 18:15:44'),
(34, 'Comma Separated Values', '', 'csv', 'text/csv', 'non', 'oui', '2008-03-07 18:15:44'),
(35, 'Debian', '', 'deb', 'application/x-debian-package', 'non', 'oui', '2008-03-07 18:15:44'),
(36, 'Word', '', 'doc', 'application/msword', 'non', 'oui', '2008-03-07 18:15:44'),
(37, 'DjVu', '', 'djvu', 'image/vnd.djvu', 'non', 'oui', '2008-03-07 18:15:44'),
(38, 'LaTeX DVI', '', 'dvi', 'application/x-dvi', 'non', 'oui', '2008-03-07 18:15:44'),
(39, 'PostScript', '', 'eps', 'application/postscript', 'non', 'oui', '2008-03-07 18:15:44'),
(40, 'GZ', '', 'gz', 'application/x-gzip', 'non', 'oui', '2008-03-07 18:15:44'),
(41, 'C header', '', 'h', 'text/x-chdr', 'non', 'oui', '2008-03-07 18:15:44'),
(42, 'HTML', '', 'html', 'text/html', 'non', 'oui', '2008-03-07 18:15:44'),
(43, 'Keyhole Markup Language', '', 'kml', 'application/vnd.google-earth.kml+xml', 'non', 'oui', '2008-03-07 18:15:44'),
(44, 'Google Earth Placemark File', '', 'kmz', 'application/vnd.google-earth.kmz', 'non', 'oui', '2008-03-07 18:15:44'),
(45, 'Pascal', '', 'pas', 'text/x-pascal', 'non', 'oui', '2008-03-07 18:15:44'),
(46, 'PDF', '', 'pdf', 'application/pdf', 'non', 'oui', '2008-03-07 18:15:44'),
(47, 'Portable Game Notation', '', 'pgn', 'application/x-chess-pgn', 'non', 'oui', '2008-03-07 18:15:44'),
(48, 'PowerPoint', '', 'ppt', 'application/vnd.ms-powerpoint', 'non', 'oui', '2008-03-07 18:15:44'),
(49, 'PostScript', '', 'ps', 'application/postscript', 'non', 'oui', '2008-03-07 18:15:44'),
(50, 'Photoshop', '', 'psd', 'image/x-photoshop', 'non', 'oui', '2008-03-07 18:15:44'),
(51, 'RedHat/Mandrake/SuSE', '', 'rpm', 'application/x-redhat-package-manager', 'non', 'oui', '2008-03-07 18:15:44'),
(52, 'RTF', '', 'rtf', 'application/rtf', 'non', 'oui', '2008-03-07 18:15:44'),
(53, 'StarOffice', '', 'sdd', 'application/vnd.stardivision.impress', 'non', 'oui', '2008-03-07 18:15:44'),
(54, 'StarOffice', '', 'sdw', 'application/vnd.stardivision.writer', 'non', 'oui', '2008-03-07 18:15:44'),
(55, 'Stuffit', '', 'sit', 'application/x-stuffit', 'non', 'oui', '2008-03-07 18:15:44'),
(56, 'OpenOffice Calc', '', 'sxc', 'application/vnd.sun.xml.calc', 'non', 'oui', '2008-03-07 18:15:44'),
(57, 'OpenOffice Impress', '', 'sxi', 'application/vnd.sun.xml.impress', 'non', 'oui', '2008-03-07 18:15:44'),
(58, 'OpenOffice', '', 'sxw', 'application/vnd.sun.xml.writer', 'non', 'oui', '2008-03-07 18:15:44'),
(59, 'LaTeX', '', 'tex', 'text/x-tex', 'non', 'oui', '2008-03-07 18:15:44'),
(60, 'TGZ', '', 'tgz', 'application/x-gtar', 'non', 'oui', '2008-03-07 18:15:44'),
(61, 'BitTorrent', '', 'torrent', 'application/x-bittorrent', 'non', 'oui', '2008-03-07 18:15:44'),
(62, 'TTF Font', '', 'ttf', 'application/x-font-ttf', 'non', 'oui', '2008-03-07 18:15:44'),
(63, 'texte', '', 'txt', 'text/plain', 'non', 'oui', '2008-03-07 18:15:44'),
(64, 'GIMP multi-layer', '', 'xcf', 'application/x-xcf', 'non', 'oui', '2008-03-07 18:15:44'),
(65, 'Excel', '', 'xls', 'application/vnd.ms-excel', 'non', 'oui', '2008-03-07 18:15:44'),
(66, 'XML', '', 'xml', 'application/xml', 'non', 'oui', '2008-03-07 18:15:44'),
(67, 'Zip', '', 'zip', 'application/zip', 'non', 'oui', '2008-03-07 18:15:44'),
(68, 'opendocument text', '', 'odt', 'application/vnd.oasis.opendocument.text', 'non', 'oui', '2008-03-07 18:15:44'),
(69, 'opendocument spreadsheet', '', 'ods', 'application/vnd.oasis.opendocument.spreadsheet', 'non', 'oui', '2008-03-07 18:15:44'),
(70, 'opendocument presentation', '', 'odp', 'application/vnd.oasis.opendocument.presentation', 'non', 'oui', '2008-03-07 18:15:44'),
(71, 'opendocument graphics', '', 'odg', 'application/vnd.oasis.opendocument.graphics', 'non', 'oui', '2008-03-07 18:15:44'),
(72, 'opendocument chart', '', 'odc', 'application/vnd.oasis.opendocument.chart', 'non', 'oui', '2008-03-07 18:15:44'),
(73, 'opendocument formula', '', 'odf', 'application/vnd.oasis.opendocument.formula', 'non', 'oui', '2008-03-07 18:15:44'),
(74, 'opendocument database', '', 'odb', 'application/vnd.oasis.opendocument.database', 'non', 'oui', '2008-03-07 18:15:44'),
(75, 'opendocument image', '', 'odi', 'application/vnd.oasis.opendocument.image', 'non', 'oui', '2008-03-07 18:15:44'),
(76, 'opendocument text-master', '', 'odm', 'application/vnd.oasis.opendocument.text-master', 'non', 'oui', '2008-03-07 18:15:44'),
(77, 'opendocument text-template', '', 'ott', 'application/vnd.oasis.opendocument.text-template', 'non', 'oui', '2008-03-07 18:15:44'),
(78, 'opendocument spreadsheet-template', '', 'ots', 'application/vnd.oasis.opendocument.spreadsheet-template', 'non', 'oui', '2008-03-07 18:15:44'),
(79, 'opendocument presentation-template', '', 'otp', 'application/vnd.oasis.opendocument.presentation-template', 'non', 'oui', '2008-03-07 18:15:44'),
(80, 'opendocument graphics-template', '', 'otg', 'application/vnd.oasis.opendocument.graphics-template', 'non', 'oui', '2008-03-07 18:15:44');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_versions'
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_versions_fragments'
--


-- --------------------------------------------------------

--
-- Structure de la table 'spip_visites'
--

CREATE TABLE IF NOT EXISTS spip_visites (
  `date` date NOT NULL DEFAULT '0000-00-00',
  visites int(10) unsigned NOT NULL DEFAULT '0',
  maj timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_visites'
--

INSERT INTO spip_visites (`date`, visites, maj) VALUES
('2008-03-09', 3, '2008-03-09 21:22:09'),
('2008-03-10', 6, '2008-03-10 21:17:07'),
('2008-03-12', 3, '2008-03-12 18:48:41'),
('2008-03-13', 7, '2008-03-13 21:38:01'),
('2008-03-14', 2, '2008-03-14 15:06:49'),
('2008-03-15', 1, '2008-03-15 09:21:26'),
('2008-03-18', 2, '2008-03-18 13:18:28'),
('2008-03-19', 2, '2008-03-19 13:32:13'),
('2008-03-20', 1, '2008-03-20 19:06:45'),
('2008-03-24', 4, '2008-03-24 16:14:43'),
('2008-03-25', 2, '2008-03-25 20:13:38'),
('2008-03-26', 1, '2008-03-26 08:30:18'),
('2008-03-27', 1, '2008-03-27 10:54:34'),
('2008-03-28', 2, '2008-03-28 23:01:17'),
('2008-03-30', 4, '2008-03-30 22:02:05'),
('2008-03-31', 3, '2008-03-31 18:35:19'),
('2008-04-01', 1, '2008-04-01 13:24:30'),
('2008-04-02', 1, '2008-04-02 22:22:25'),
('2008-04-03', 1, '2008-04-03 15:15:38'),
('2008-04-11', 5, '2008-04-11 22:49:29'),
('2008-04-12', 1, '2008-04-12 19:11:56'),
('2008-04-14', 12, '2008-04-14 22:25:01'),
('2008-04-15', 3, '2008-04-15 22:07:01'),
('2008-04-16', 2, '2008-04-16 22:57:26'),
('2008-04-17', 2, '2008-04-17 19:28:21'),
('2008-04-18', 4, '2008-04-18 15:13:10'),
('2008-04-23', 3, '2008-04-23 21:24:30'),
('2008-04-25', 1, '2008-04-25 17:33:02'),
('2008-04-28', 2, '2008-04-28 13:30:08'),
('2008-05-02', 3, '2008-05-02 17:28:12'),
('2008-05-10', 3, '2008-05-10 17:19:23'),
('2008-05-13', 1, '2008-05-13 03:05:35'),
('2008-05-22', 4, '2008-05-22 22:20:12'),
('2008-05-23', 1, '2008-05-23 21:50:28'),
('2008-05-27', 1, '2008-05-27 02:58:40'),
('2008-05-28', 1, '2008-05-28 22:06:21'),
('2008-06-01', 3, '2008-06-01 12:39:50'),
('2008-06-02', 3, '2008-06-02 22:04:35'),
('2008-06-03', 1, '2008-06-03 20:25:07'),
('2008-06-04', 1, '2008-06-04 21:06:35'),
('2008-06-05', 5, '2008-06-05 21:59:58'),
('2008-06-06', 3, '2008-06-06 20:17:16'),
('2008-06-07', 3, '2008-06-07 13:15:23'),
('2008-06-09', 1, '2008-06-09 22:14:38'),
('2008-06-10', 1, '2008-06-10 17:57:06'),
('2008-06-11', 8, '2008-06-12 00:03:50'),
('2008-06-12', 6, '2008-06-12 22:59:38'),
('2008-06-13', 4, '2008-06-13 22:33:45'),
('2008-06-14', 1, '2008-06-14 07:58:39'),
('2008-06-15', 2, '2008-06-15 21:40:08'),
('2008-06-16', 2, '2008-06-16 19:22:17'),
('2008-06-17', 1, '2008-06-18 00:23:50'),
('2008-06-18', 4, '2008-06-18 22:20:29'),
('2008-06-19', 10, '2008-06-19 22:20:05'),
('2008-06-20', 4, '2008-06-20 18:46:34'),
('2008-06-21', 4, '2008-06-22 00:15:29'),
('2008-06-22', 1, '2008-06-22 22:29:03'),
('2008-06-23', 6, '2008-06-23 19:33:59'),
('2008-06-24', 1, '2008-06-24 08:04:29'),
('2008-06-25', 2, '2008-06-25 21:35:37'),
('2008-06-26', 1, '2008-06-26 19:14:18'),
('2008-06-27', 2, '2008-06-27 19:18:12'),
('2008-06-28', 1, '2008-06-28 11:22:07'),
('2008-06-29', 2, '2008-06-29 19:59:04'),
('2008-07-01', 1, '2008-07-01 19:24:47'),
('2008-07-02', 4, '2008-07-02 21:43:32'),
('2008-07-03', 2, '2008-07-03 20:18:21'),
('2008-07-05', 3, '2008-07-05 20:16:43'),
('2008-07-06', 5, '2008-07-06 21:36:22'),
('2008-07-07', 5, '2008-07-07 22:44:24'),
('2008-07-08', 4, '2008-07-08 22:43:37'),
('2008-07-09', 3, '2008-07-09 18:26:35'),
('2008-07-10', 2, '2008-07-10 22:53:22'),
('2008-07-12', 6, '2008-07-12 16:44:02'),
('2008-07-13', 9, '2008-07-13 21:45:13'),
('2008-07-14', 10, '2008-07-14 21:00:17'),
('2008-07-15', 16, '2008-07-15 22:36:04'),
('2008-07-16', 9, '2008-07-16 19:19:30'),
('2008-07-17', 3, '2008-07-17 08:51:53'),
('2008-07-18', 4, '2008-07-18 22:08:41'),
('2008-07-19', 3, '2008-07-19 21:18:28'),
('2008-07-20', 7, '2008-07-20 22:31:23'),
('2008-07-21', 4, '2008-07-21 15:57:12'),
('2008-07-22', 4, '2008-07-22 20:02:20'),
('2008-07-23', 1, '2008-07-23 19:17:36'),
('2008-07-24', 1, '2008-07-24 15:50:19'),
('2008-07-26', 2, '2008-07-26 23:50:17'),
('2008-07-27', 1, '2008-07-27 22:56:46'),
('2008-07-28', 1, '2008-07-28 12:24:00'),
('2008-08-03', 2, '2008-08-03 20:52:27'),
('2008-08-07', 2, '2008-08-07 13:29:01'),
('2008-08-10', 1, '2008-08-10 18:41:33'),
('2008-08-12', 1, '2008-08-12 10:09:24'),
('2008-08-13', 3, '2008-08-13 20:05:07'),
('2008-08-15', 2, '2008-08-15 16:53:43'),
('2008-08-21', 2, '2008-08-21 22:10:32'),
('2008-08-25', 2, '2008-08-25 14:47:17'),
('2008-08-26', 2, '2008-08-26 15:59:48'),
('2008-08-27', 2, '2008-08-27 15:39:31'),
('2008-08-28', 1, '2008-08-28 09:12:59'),
('2008-08-30', 1, '2008-08-30 18:00:37'),
('2008-09-01', 2, '2008-09-01 09:46:44'),
('2008-09-03', 1, '2008-09-03 21:13:33'),
('2008-09-04', 1, '2008-09-04 21:41:11'),
('2008-09-05', 1, '2008-09-05 07:54:10'),
('2008-09-07', 2, '2008-09-07 18:08:43'),
('2008-09-09', 2, '2008-09-09 21:20:18'),
('2008-09-10', 3, '2008-09-10 23:13:56'),
('2008-09-12', 4, '2008-09-12 13:28:21'),
('2008-09-13', 1, '2008-09-13 18:13:12'),
('2008-09-14', 3, '2008-09-14 18:39:00'),
('2008-09-15', 6, '2008-09-15 20:18:06'),
('2008-09-16', 8, '2008-09-16 20:26:10'),
('2008-09-17', 4, '2008-09-17 20:57:34'),
('2008-09-18', 6, '2008-09-18 23:42:00'),
('2008-09-19', 2, '2008-09-19 14:28:44'),
('2008-09-20', 4, '2008-09-20 22:33:17'),
('2008-09-21', 1, '2008-09-21 17:04:14'),
('2008-09-22', 5, '2008-09-22 23:34:27'),
('2008-09-23', 3, '2008-09-23 18:07:46'),
('2008-09-24', 14, '2008-09-24 23:09:01'),
('2008-09-25', 2, '2008-09-25 23:47:46'),
('2008-09-26', 3, '2008-09-26 12:30:49'),
('2008-09-27', 3, '2008-09-27 18:04:14'),
('2008-09-29', 4, '2008-09-29 22:57:52'),
('2008-09-30', 2, '2008-09-30 10:57:15'),
('2008-10-01', 2, '2008-10-01 10:20:44'),
('2008-10-02', 4, '2008-10-02 11:53:34'),
('2008-10-03', 5, '2008-10-03 16:50:02'),
('2008-10-04', 2, '2008-10-04 18:17:53'),
('2008-10-06', 2, '2008-10-06 16:32:48'),
('2008-10-07', 8, '2008-10-07 16:56:32'),
('2008-10-08', 1, '2008-10-08 14:01:03'),
('2008-10-09', 4, '2008-10-10 00:03:39'),
('2008-10-10', 5, '2008-10-10 17:32:45'),
('2008-10-11', 2, '2008-10-11 13:37:39'),
('2008-10-13', 4, '2008-10-13 15:42:45'),
('2008-10-14', 6, '2008-10-14 14:37:37'),
('2008-10-15', 3, '2008-10-15 17:51:47'),
('2008-10-16', 4, '2008-10-17 00:09:47'),
('2008-10-18', 1, '2008-10-18 18:37:58'),
('2008-10-19', 2, '2008-10-19 16:03:27'),
('2008-10-22', 3, '2008-10-22 13:55:02'),
('2008-10-23', 5, '2008-10-23 14:11:21'),
('2008-10-24', 6, '2008-10-25 00:29:11'),
('2008-10-25', 2, '2008-10-25 09:45:57'),
('2008-10-26', 2, '2008-10-26 02:28:12'),
('2008-10-27', 2, '2008-10-27 22:19:49'),
('2008-10-29', 3, '2008-10-29 11:46:09'),
('2008-10-30', 5, '2008-10-30 14:21:53'),
('2008-10-31', 1, '2008-10-31 04:01:35'),
('2008-11-01', 2, '2008-11-01 23:38:00'),
('2008-11-02', 3, '2008-11-02 20:07:13'),
('2008-11-03', 3, '2008-11-03 21:30:48'),
('2008-11-04', 2, '2008-11-04 21:31:47'),
('2008-11-05', 4, '2008-11-05 21:57:40'),
('2008-11-06', 3, '2008-11-06 14:25:17'),
('2008-11-07', 2, '2008-11-07 08:38:55'),
('2008-11-08', 8, '2008-11-08 21:20:39'),
('2008-11-09', 4, '2008-11-09 17:18:10'),
('2008-11-10', 2, '2008-11-10 09:07:08'),
('2008-11-11', 7, '2008-11-11 15:01:19'),
('2008-11-12', 14, '2008-11-12 22:24:59'),
('2008-11-13', 6, '2008-11-13 21:26:01'),
('2008-11-14', 6, '2008-11-14 16:49:56'),
('2008-11-15', 7, '2008-11-15 18:29:11'),
('2008-11-16', 2, '2008-11-16 19:52:29'),
('2008-11-17', 4, '2008-11-17 15:08:53'),
('2008-11-18', 7, '2008-11-18 23:29:16'),
('2008-11-19', 7, '2008-11-19 19:52:33'),
('2008-11-20', 5, '2008-11-20 21:01:18'),
('2008-11-21', 6, '2008-11-21 18:49:45'),
('2008-11-22', 4, '2008-11-22 15:45:29'),
('2008-11-23', 15, '2008-11-23 21:27:23'),
('2008-11-24', 12, '2008-11-24 21:43:28'),
('2008-11-25', 6, '2008-11-25 22:52:51'),
('2008-11-26', 10, '2008-11-26 22:03:42'),
('2008-11-28', 2, '2008-11-28 21:34:32'),
('2008-11-29', 1, '2008-11-29 07:59:28'),
('2008-11-30', 2, '2008-11-30 16:03:52'),
('2008-12-01', 9, '2008-12-01 20:47:22'),
('2008-12-02', 2, '2008-12-02 14:55:25'),
('2008-12-03', 1, '2008-12-03 20:58:26'),
('2008-12-05', 7, '2008-12-05 21:09:07'),
('2008-12-06', 10, '2008-12-06 22:37:09'),
('2008-12-07', 6, '2008-12-07 23:27:09'),
('2008-12-08', 5, '2008-12-08 18:31:49'),
('2008-12-09', 9, '2008-12-09 22:44:52'),
('2008-12-10', 1, '2008-12-10 13:48:28'),
('2008-12-11', 5, '2008-12-11 22:56:35'),
('2008-12-12', 6, '2008-12-12 23:07:14'),
('2008-12-13', 5, '2008-12-13 18:00:06'),
('2008-12-15', 8, '2008-12-15 14:44:39'),
('2008-12-19', 3, '2008-12-19 10:39:09'),
('2008-12-20', 2, '2008-12-20 21:15:34'),
('2008-12-22', 7, '2008-12-22 23:28:52'),
('2008-12-23', 5, '2008-12-23 22:03:23'),
('2008-12-24', 1, '2008-12-24 08:44:10'),
('2008-12-26', 6, '2008-12-27 00:29:50'),
('2008-12-27', 2, '2008-12-27 16:42:37'),
('2008-12-28', 1, '2008-12-28 21:51:14'),
('2008-12-29', 5, '2008-12-29 22:23:02'),
('2008-12-30', 3, '2008-12-30 20:25:30'),
('2008-12-31', 2, '2008-12-31 13:21:06'),
('2009-01-02', 2, '2009-01-02 01:24:15'),
('2009-01-04', 4, '2009-01-04 22:25:52'),
('2009-01-05', 2, '2009-01-05 11:05:57'),
('2009-01-06', 4, '2009-01-06 22:11:50'),
('2009-01-07', 2, '2009-01-07 21:29:35'),
('2009-01-10', 2, '2009-01-10 12:10:25'),
('2009-01-12', 2, '2009-01-12 17:11:32'),
('2009-01-13', 1, '2009-01-13 16:58:19'),
('2009-01-14', 3, '2009-01-14 10:52:57'),
('2009-01-15', 2, '2009-01-15 17:45:04'),
('2009-01-17', 1, '2009-01-17 00:34:28'),
('2009-01-19', 2, '2009-01-19 11:41:25'),
('2009-01-20', 4, '2009-01-20 16:15:23'),
('2009-01-21', 1, '2009-01-21 08:48:51'),
('2009-01-22', 1, '2009-01-22 08:19:29'),
('2009-01-24', 1, '2009-01-24 17:04:06'),
('2009-01-27', 4, '2009-01-27 13:45:04'),
('2009-01-29', 6, '2009-01-29 18:15:17'),
('2009-01-31', 1, '2009-01-31 12:20:55'),
('2009-02-01', 1, '2009-02-01 11:41:37'),
('2009-02-02', 4, '2009-02-02 15:22:24'),
('2009-02-03', 1, '2009-02-03 13:33:20'),
('2009-02-04', 1, '2009-02-04 20:38:14'),
('2009-02-06', 2, '2009-02-06 18:03:15'),
('2009-02-08', 4, '2009-02-08 22:22:12'),
('2009-02-09', 5, '2009-02-09 18:47:49'),
('2009-02-10', 3, '2009-02-10 16:57:10'),
('2009-02-11', 5, '2009-02-11 18:42:55'),
('2009-02-13', 4, '2009-02-13 19:20:27'),
('2009-02-16', 4, '2009-02-16 15:25:53'),
('2009-02-18', 1, '2009-02-18 19:13:41'),
('2009-02-20', 3, '2009-02-20 16:07:16'),
('2009-02-21', 1, '2009-02-21 14:54:25'),
('2009-02-23', 2, '2009-02-23 22:05:04'),
('2009-02-24', 1, '2009-02-24 15:21:29'),
('2009-02-25', 2, '2009-02-25 22:17:21'),
('2009-02-27', 1, '2009-02-27 11:23:42'),
('2009-02-28', 1, '2009-02-28 20:36:07'),
('2009-03-03', 2, '2009-03-03 22:49:40'),
('2009-03-04', 3, '2009-03-04 22:10:53'),
('2009-03-05', 1, '2009-03-05 09:02:03'),
('2009-03-06', 3, '2009-03-06 19:07:44'),
('2009-03-07', 3, '2009-03-07 10:02:39'),
('2009-03-08', 1, '2009-03-08 17:08:43'),
('2009-03-09', 2, '2009-03-09 21:59:35'),
('2009-03-10', 2, '2009-03-10 16:23:15'),
('2009-03-11', 1, '2009-03-11 08:53:30'),
('2009-03-12', 3, '2009-03-12 09:42:41'),
('2009-03-15', 3, '2009-03-15 22:35:38'),
('2009-03-16', 1, '2009-03-16 09:07:06'),
('2009-03-17', 3, '2009-03-17 15:27:53'),
('2009-03-18', 3, '2009-03-18 10:45:04'),
('2009-03-20', 2, '2009-03-20 14:43:52'),
('2009-03-23', 4, '2009-03-23 11:58:03'),
('2009-03-24', 3, '2009-03-24 15:58:41'),
('2009-03-26', 2, '2009-03-26 21:31:34'),
('2009-03-30', 6, '2009-03-30 20:10:01'),
('2009-04-01', 1, '2009-04-01 15:01:55'),
('2009-04-04', 3, '2009-04-05 00:13:34'),
('2009-04-09', 4, '2009-04-09 07:59:40'),
('2009-04-14', 10, '2009-04-14 10:02:46'),
('2009-04-15', 1, '2009-04-15 13:13:07'),
('2009-04-16', 2, '2009-04-16 22:39:45'),
('2009-04-17', 2, '2009-04-17 09:10:24'),
('2009-04-18', 1, '2009-04-18 12:14:01'),
('2009-04-19', 1, '2009-04-19 10:26:25'),
('2009-04-20', 1, '2009-04-20 17:56:59'),
('2009-04-21', 10, '2009-04-21 22:28:21'),
('2009-04-22', 3, '2009-04-22 16:42:59'),
('2009-04-25', 4, '2009-04-25 08:05:04'),
('2009-04-26', 4, '2009-04-26 21:53:53'),
('2009-04-27', 1, '2009-04-27 10:36:05'),
('2009-04-29', 3, '2009-04-29 16:29:50'),
('2009-05-02', 1, '2009-05-02 02:35:28'),
('2009-05-04', 2, '2009-05-04 15:19:38'),
('2009-05-06', 1, '2009-05-06 11:03:15'),
('2009-05-09', 2, '2009-05-09 13:08:11'),
('2009-05-14', 3, '2009-05-14 14:45:26'),
('2009-05-15', 6, '2009-05-15 16:43:50'),
('2009-05-18', 6, '2009-05-18 18:03:27'),
('2009-05-19', 4, '2009-05-19 20:54:26'),
('2009-05-20', 1, '2009-05-20 12:30:44'),
('2009-05-21', 3, '2009-05-21 19:23:28'),
('2009-05-22', 1, '2009-05-22 13:11:47'),
('2009-05-23', 3, '2009-05-23 19:16:06'),
('2009-05-24', 3, '2009-05-24 12:40:14'),
('2009-05-25', 6, '2009-05-25 21:43:55'),
('2009-05-26', 1, '2009-05-26 18:23:36'),
('2009-05-27', 2, '2009-05-27 14:11:04'),
('2009-05-29', 3, '2009-05-29 18:41:22'),
('2009-06-01', 3, '2009-06-01 19:21:41'),
('2009-06-03', 1, '2009-06-03 10:34:39'),
('2009-06-04', 3, '2009-06-04 20:08:32'),
('2009-06-05', 1, '2009-06-05 22:26:52'),
('2009-06-07', 2, '2009-06-07 16:11:14'),
('2009-06-08', 1, '2009-06-08 08:25:03'),
('2009-06-10', 2, '2009-06-10 22:39:52'),
('2009-06-11', 2, '2009-06-11 18:16:42'),
('2009-06-12', 1, '2009-06-12 07:31:30'),
('2009-06-13', 2, '2009-06-13 14:26:29'),
('2009-06-15', 2, '2009-06-15 10:35:55'),
('2009-06-16', 3, '2009-06-16 23:56:26'),
('2009-06-17', 2, '2009-06-17 16:28:09'),
('2009-06-19', 2, '2009-06-19 20:43:30'),
('2009-06-22', 4, '2009-06-22 20:21:55'),
('2009-06-25', 4, '2009-06-25 11:30:07'),
('2009-06-29', 4, '2009-06-29 14:30:28'),
('2009-06-30', 2, '2009-06-30 15:42:53'),
('2009-07-01', 2, '2009-07-01 20:59:51'),
('2009-07-07', 3, '2009-07-07 11:25:05'),
('2009-07-15', 9, '2009-07-15 14:34:50'),
('2009-07-17', 18, '2009-07-17 08:33:33'),
('2009-07-18', 2, '2009-07-18 17:47:21'),
('2009-07-27', 6, '2009-07-27 18:39:06'),
('2009-07-28', 1, '2009-07-28 13:34:21'),
('2009-07-29', 1, '2009-07-29 17:49:42'),
('2009-07-31', 2, '2009-07-31 10:47:33'),
('2009-08-09', 3, '2009-08-09 19:24:06'),
('2009-08-10', 2, '2009-08-10 18:52:45'),
('2009-08-11', 3, '2009-08-11 13:00:15'),
('2009-08-13', 4, '2009-08-13 12:33:36'),
('2009-08-14', 2, '2009-08-14 17:01:57'),
('2009-08-15', 5, '2009-08-15 16:36:05'),
('2009-08-17', 5, '2009-08-17 19:00:20'),
('2009-08-20', 6, '2009-08-20 22:40:23'),
('2009-08-24', 1, '2009-08-24 12:25:46'),
('2009-08-25', 2, '2009-08-25 19:05:39'),
('2009-08-29', 4, '2009-08-29 15:12:20'),
('2009-09-02', 2, '2009-09-02 17:53:15'),
('2009-09-04', 3, '2009-09-04 18:39:22'),
('2009-09-08', 5, '2009-09-08 13:56:50'),
('2009-09-10', 3, '2009-09-10 10:40:06'),
('2009-09-11', 3, '2009-09-11 14:38:20'),
('2009-09-13', 2, '2009-09-13 19:04:16'),
('2009-09-15', 3, '2009-09-15 23:42:41'),
('2009-09-16', 2, '2009-09-16 18:48:13'),
('2009-09-17', 3, '2009-09-17 11:51:51'),
('2009-09-18', 1, '2009-09-18 20:42:42'),
('2009-09-20', 1, '2009-09-20 09:43:36'),
('2009-09-21', 2, '2009-09-21 11:43:22'),
('2009-09-22', 2, '2009-09-22 13:22:06'),
('2009-09-23', 2, '2009-09-23 12:00:28'),
('2009-09-26', 4, '2009-09-26 09:34:10'),
('2009-09-27', 6, '2009-09-28 00:04:36'),
('2009-09-30', 7, '2009-09-30 17:34:50'),
('2009-10-01', 7, '2009-10-01 16:38:08'),
('2009-10-04', 5, '2009-10-04 23:04:16'),
('2009-10-06', 2, '2009-10-06 14:36:40'),
('2009-10-07', 2, '2009-10-07 10:48:33'),
('2009-10-09', 3, '2009-10-09 02:51:56'),
('2009-10-10', 4, '2009-10-10 13:29:51'),
('2009-10-14', 4, '2009-10-14 12:37:46'),
('2009-10-15', 3, '2009-10-15 08:39:10'),
('2009-10-17', 2, '2009-10-17 10:41:58'),
('2009-10-18', 1, '2009-10-18 21:16:12'),
('2009-10-20', 4, '2009-10-20 13:46:59'),
('2009-10-21', 1, '2009-10-21 17:31:05'),
('2009-10-22', 4, '2009-10-22 13:04:20'),
('2009-10-23', 1, '2009-10-23 12:24:53'),
('2009-10-24', 3, '2009-10-24 11:50:56'),
('2009-10-26', 3, '2009-10-26 20:25:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table 'spip_visites_articles'
--

INSERT INTO spip_visites_articles (`date`, id_article, visites, maj) VALUES
('2008-03-10', 1, 2, '2008-03-10 21:17:07'),
('2008-03-10', 2, 1, '2008-03-10 15:33:11'),
('2008-03-12', 2, 1, '2008-03-12 13:25:14'),
('2008-03-12', 1, 1, '2008-03-12 18:48:42'),
('2008-03-13', 1, 2, '2008-03-13 16:14:22'),
('2008-03-13', 3, 2, '2008-03-13 18:58:09'),
('2008-03-14', 2, 1, '2008-03-14 15:06:49'),
('2008-03-14', 1, 1, '2008-03-14 15:06:49'),
('2008-03-15', 2, 1, '2008-03-15 09:21:26'),
('2008-03-15', 3, 1, '2008-03-15 09:21:26'),
('2008-03-15', 1, 1, '2008-03-15 09:21:26'),
('2008-03-18', 3, 1, '2008-03-18 13:18:29'),
('2008-03-18', 2, 1, '2008-03-18 13:18:29'),
('2008-03-19', 4, 2, '2008-03-19 13:32:13'),
('2008-03-19', 3, 1, '2008-03-19 07:53:03'),
('2008-03-19', 1, 1, '2008-03-19 13:32:13'),
('2008-03-20', 2, 1, '2008-03-20 19:06:45'),
('2008-03-20', 3, 1, '2008-03-20 19:06:45'),
('2008-03-20', 4, 1, '2008-03-20 19:06:45'),
('2008-03-24', 4, 3, '2008-03-24 16:14:43'),
('2008-03-24', 3, 1, '2008-03-24 14:11:56'),
('2008-03-24', 2, 3, '2008-03-24 16:14:43'),
('2008-03-24', 1, 3, '2008-03-24 16:14:43'),
('2008-03-25', 1, 2, '2008-03-25 20:13:38'),
('2008-03-25', 5, 2, '2008-03-25 20:13:38'),
('2008-03-25', 4, 1, '2008-03-25 13:36:15'),
('2008-03-25', 3, 1, '2008-03-25 13:36:15'),
('2008-03-25', 2, 1, '2008-03-25 13:36:15'),
('2008-03-27', 6, 1, '2008-03-27 10:54:34'),
('2008-03-27', 5, 1, '2008-03-27 10:54:34'),
('2008-03-27', 1, 1, '2008-03-27 10:54:34'),
('2008-03-28', 6, 1, '2008-03-28 18:03:04'),
('2008-03-28', 4, 1, '2008-03-28 23:01:17'),
('2008-03-28', 1, 1, '2008-03-28 23:01:17'),
('2008-03-28', 2, 1, '2008-03-28 23:01:17'),
('2008-03-30', 4, 2, '2008-03-30 22:02:06'),
('2008-03-30', 2, 2, '2008-03-30 22:02:06'),
('2008-03-30', 5, 1, '2008-03-30 22:02:06'),
('2008-03-30', 6, 1, '2008-03-30 22:02:06'),
('2008-03-30', 1, 1, '2008-03-30 22:02:06'),
('2008-03-31', 6, 1, '2008-03-31 18:35:19'),
('2008-04-02', 6, 1, '2008-04-02 22:22:25'),
('2008-04-02', 2, 1, '2008-04-02 22:22:25'),
('2008-04-02', 3, 1, '2008-04-02 22:22:25'),
('2008-04-02', 4, 1, '2008-04-02 22:22:25'),
('2008-04-03', 2, 1, '2008-04-03 15:15:38'),
('2008-04-11', 2, 3, '2008-04-11 22:49:29'),
('2008-04-11', 6, 1, '2008-04-11 22:49:29'),
('2008-04-11', 5, 1, '2008-04-11 22:49:29'),
('2008-04-11', 4, 1, '2008-04-11 22:49:29'),
('2008-04-11', 3, 1, '2008-04-11 22:49:29'),
('2008-04-11', 1, 1, '2008-04-11 22:49:29'),
('2008-04-12', 2, 1, '2008-04-12 19:11:56'),
('2008-04-14', 5, 2, '2008-04-14 15:22:19'),
('2008-04-14', 3, 2, '2008-04-14 16:19:42'),
('2008-04-14', 1, 2, '2008-04-14 16:19:42'),
('2008-04-14', 4, 7, '2008-04-14 20:47:19'),
('2008-04-14', 6, 2, '2008-04-14 16:19:42'),
('2008-04-14', 7, 2, '2008-04-14 16:19:42'),
('2008-04-14', 2, 1, '2008-04-14 16:19:42'),
('2008-04-15', 4, 2, '2008-04-15 22:07:01'),
('2008-04-15', 1, 2, '2008-04-15 22:07:01'),
('2008-04-15', 5, 2, '2008-04-15 22:07:01'),
('2008-04-15', 2, 2, '2008-04-15 22:07:01'),
('2008-04-15', 6, 2, '2008-04-15 22:07:01'),
('2008-04-15', 3, 2, '2008-04-15 22:07:01'),
('2008-04-15', 7, 1, '2008-04-15 22:07:01'),
('2008-04-16', 2, 2, '2008-04-16 22:57:27'),
('2008-04-16', 4, 2, '2008-04-16 22:57:27'),
('2008-04-16', 5, 1, '2008-04-16 21:46:01'),
('2008-04-16', 6, 1, '2008-04-16 21:46:01'),
('2008-04-16', 7, 1, '2008-04-16 21:46:01'),
('2008-04-16', 1, 1, '2008-04-16 22:57:27'),
('2008-04-17', 6, 1, '2008-04-17 08:35:05'),
('2008-04-17', 5, 1, '2008-04-17 08:35:05'),
('2008-04-18', 1, 2, '2008-04-18 15:13:10'),
('2008-04-18', 2, 2, '2008-04-18 15:13:10'),
('2008-04-18', 4, 3, '2008-04-18 15:13:10'),
('2008-04-18', 7, 2, '2008-04-18 15:13:10'),
('2008-04-18', 6, 2, '2008-04-18 15:13:10'),
('2008-04-18', 5, 2, '2008-04-18 15:13:10'),
('2008-04-18', 3, 1, '2008-04-18 15:13:10'),
('2008-04-23', 4, 1, '2008-04-23 21:24:30'),
('2008-04-25', 2, 1, '2008-04-25 17:33:02'),
('2008-04-28', 4, 1, '2008-04-28 13:30:08'),
('2008-05-02', 4, 1, '2008-05-02 17:28:12'),
('2008-05-10', 6, 1, '2008-05-10 17:19:23'),
('2008-05-10', 1, 2, '2008-05-10 17:19:23'),
('2008-05-10', 2, 1, '2008-05-10 17:19:23'),
('2008-05-10', 3, 1, '2008-05-10 17:19:23'),
('2008-05-10', 4, 1, '2008-05-10 17:19:23'),
('2008-05-10', 5, 1, '2008-05-10 17:19:23'),
('2008-05-10', 7, 1, '2008-05-10 17:19:23'),
('2008-05-13', 4, 1, '2008-05-13 03:05:35'),
('2008-05-13', 2, 1, '2008-05-13 03:05:35'),
('2008-05-13', 1, 1, '2008-05-13 03:05:35'),
('2008-05-22', 1, 1, '2008-05-22 22:20:12'),
('2008-05-23', 3, 1, '2008-05-23 21:50:28'),
('2008-05-23', 4, 1, '2008-05-23 21:50:28'),
('2008-05-23', 2, 1, '2008-05-23 21:50:28'),
('2008-05-23', 5, 1, '2008-05-23 21:50:28'),
('2008-05-23', 6, 1, '2008-05-23 21:50:28'),
('2008-05-23', 7, 1, '2008-05-23 21:50:28'),
('2008-05-23', 1, 2, '2008-05-23 21:50:28'),
('2008-05-27', 2, 1, '2008-05-27 02:58:40'),
('2008-05-27', 3, 1, '2008-05-27 02:58:40'),
('2008-05-27', 4, 1, '2008-05-27 02:58:40'),
('2008-05-28', 2, 1, '2008-05-28 22:06:21'),
('2008-05-28', 3, 1, '2008-05-28 22:06:21'),
('2008-06-01', 2, 1, '2008-06-01 12:39:50'),
('2008-06-02', 5, 3, '2008-06-02 22:04:35'),
('2008-06-02', 6, 2, '2008-06-02 21:11:05'),
('2008-06-02', 7, 2, '2008-06-02 21:11:05'),
('2008-06-02', 2, 2, '2008-06-02 21:11:05'),
('2008-06-02', 1, 2, '2008-06-02 21:11:05'),
('2008-06-02', 4, 1, '2008-06-02 21:11:05'),
('2008-06-02', 3, 1, '2008-06-02 21:11:05'),
('2008-06-03', 5, 1, '2008-06-03 20:25:07'),
('2008-06-03', 1, 1, '2008-06-03 20:25:07'),
('2008-06-03', 2, 1, '2008-06-03 20:25:07'),
('2008-06-03', 3, 1, '2008-06-03 20:25:07'),
('2008-06-03', 4, 1, '2008-06-03 20:25:07'),
('2008-06-03', 7, 1, '2008-06-03 20:25:07'),
('2008-06-03', 6, 1, '2008-06-03 20:25:07'),
('2008-06-04', 5, 1, '2008-06-04 21:06:35'),
('2008-06-05', 5, 4, '2008-06-05 21:59:58'),
('2008-06-05', 1, 1, '2008-06-05 18:31:58'),
('2008-06-05', 2, 1, '2008-06-05 18:31:58'),
('2008-06-06', 5, 3, '2008-06-06 20:17:16'),
('2008-06-06', 7, 1, '2008-06-06 20:17:16'),
('2008-06-06', 2, 1, '2008-06-06 20:17:16'),
('2008-06-06', 6, 1, '2008-06-06 20:17:16'),
('2008-06-07', 1, 2, '2008-06-07 13:15:23'),
('2008-06-07', 2, 1, '2008-06-07 13:15:23'),
('2008-06-09', 2, 1, '2008-06-09 22:14:38'),
('2008-06-09', 5, 1, '2008-06-09 22:14:38'),
('2008-06-10', 1, 1, '2008-06-10 17:57:06'),
('2008-06-10', 2, 1, '2008-06-10 17:57:06'),
('2008-06-10', 7, 1, '2008-06-10 17:57:06'),
('2008-06-10', 6, 1, '2008-06-10 17:57:06'),
('2008-06-10', 5, 1, '2008-06-10 17:57:06'),
('2008-06-10', 4, 1, '2008-06-10 17:57:06'),
('2008-06-11', 1, 2, '2008-06-11 22:38:00'),
('2008-06-11', 6, 3, '2008-06-12 00:03:50'),
('2008-06-11', 4, 2, '2008-06-11 22:38:00'),
('2008-06-11', 3, 1, '2008-06-11 22:38:00'),
('2008-06-11', 7, 2, '2008-06-12 00:03:50'),
('2008-06-11', 5, 3, '2008-06-12 00:03:50'),
('2008-06-11', 8, 3, '2008-06-12 00:03:50'),
('2008-06-11', 2, 2, '2008-06-12 00:03:50'),
('2008-06-12', 1, 6, '2008-06-12 22:59:38'),
('2008-06-12', 2, 6, '2008-06-12 22:59:38'),
('2008-06-12', 5, 6, '2008-06-12 22:59:38'),
('2008-06-12', 7, 6, '2008-06-12 22:59:38'),
('2008-06-12', 8, 6, '2008-06-12 22:59:38'),
('2008-06-12', 6, 6, '2008-06-12 22:59:38'),
('2008-06-12', 3, 2, '2008-06-12 22:59:38'),
('2008-06-12', 4, 4, '2008-06-12 22:59:38'),
('2008-06-13', 1, 4, '2008-06-13 22:33:45'),
('2008-06-13', 2, 4, '2008-06-13 22:33:45'),
('2008-06-13', 5, 4, '2008-06-13 22:33:45'),
('2008-06-13', 7, 3, '2008-06-13 15:11:08'),
('2008-06-13', 8, 3, '2008-06-13 15:11:08'),
('2008-06-13', 6, 4, '2008-06-13 22:33:45'),
('2008-06-13', 4, 2, '2008-06-13 22:33:45'),
('2008-06-13', 3, 1, '2008-06-13 22:33:45'),
('2008-06-15', 1, 1, '2008-06-15 00:33:45'),
('2008-06-15', 6, 2, '2008-06-15 21:40:08'),
('2008-06-15', 8, 2, '2008-06-15 21:40:08'),
('2008-06-15', 7, 2, '2008-06-15 21:40:08'),
('2008-06-15', 5, 2, '2008-06-15 21:40:08'),
('2008-06-15', 2, 2, '2008-06-15 21:40:08'),
('2008-06-15', 4, 2, '2008-06-15 21:40:08'),
('2008-06-15', 3, 1, '2008-06-15 21:40:08'),
('2008-06-16', 6, 2, '2008-06-16 19:22:17'),
('2008-06-16', 2, 2, '2008-06-16 19:22:17'),
('2008-06-16', 5, 2, '2008-06-16 19:22:17'),
('2008-06-16', 7, 2, '2008-06-16 19:22:17'),
('2008-06-16', 8, 2, '2008-06-16 19:22:17'),
('2008-06-16', 4, 1, '2008-06-16 19:22:17'),
('2008-06-16', 1, 1, '2008-06-16 19:22:17'),
('2008-06-16', 3, 1, '2008-06-16 19:22:17'),
('2008-06-17', 6, 1, '2008-06-18 00:23:50'),
('2008-06-17', 1, 1, '2008-06-18 00:23:50'),
('2008-06-17', 4, 1, '2008-06-18 00:23:50'),
('2008-06-17', 2, 1, '2008-06-18 00:23:50'),
('2008-06-17', 5, 1, '2008-06-18 00:23:50'),
('2008-06-17', 7, 1, '2008-06-18 00:23:50'),
('2008-06-17', 8, 1, '2008-06-18 00:23:50'),
('2008-06-18', 1, 3, '2008-06-18 22:20:29'),
('2008-06-18', 6, 2, '2008-06-18 22:20:29'),
('2008-06-18', 2, 3, '2008-06-18 22:20:29'),
('2008-06-18', 5, 3, '2008-06-18 22:20:29'),
('2008-06-18', 7, 3, '2008-06-18 22:20:29'),
('2008-06-18', 8, 3, '2008-06-18 22:20:29'),
('2008-06-18', 4, 2, '2008-06-18 22:20:29'),
('2008-06-19', 6, 7, '2008-06-19 21:29:28'),
('2008-06-19', 1, 6, '2008-06-19 21:29:28'),
('2008-06-19', 4, 8, '2008-06-19 21:29:28'),
('2008-06-19', 2, 8, '2008-06-19 21:29:28'),
('2008-06-19', 5, 7, '2008-06-19 20:27:39'),
('2008-06-19', 7, 6, '2008-06-19 20:27:39'),
('2008-06-19', 8, 6, '2008-06-19 20:27:39'),
('2008-06-20', 5, 4, '2008-06-20 18:46:34'),
('2008-06-20', 2, 4, '2008-06-20 18:46:34'),
('2008-06-20', 8, 4, '2008-06-20 18:46:34'),
('2008-06-20', 4, 4, '2008-06-20 18:46:34'),
('2008-06-20', 6, 3, '2008-06-20 18:46:34'),
('2008-06-20', 1, 4, '2008-06-20 18:46:34'),
('2008-06-20', 7, 3, '2008-06-20 16:05:06'),
('2008-06-21', 1, 2, '2008-06-22 00:15:29'),
('2008-06-21', 6, 2, '2008-06-22 00:15:29'),
('2008-06-21', 4, 2, '2008-06-22 00:15:29'),
('2008-06-21', 2, 3, '2008-06-22 00:15:29'),
('2008-06-21', 5, 2, '2008-06-22 00:15:29'),
('2008-06-21', 7, 2, '2008-06-22 00:15:29'),
('2008-06-21', 8, 2, '2008-06-22 00:15:29'),
('2008-06-22', 2, 1, '2008-06-22 22:29:03'),
('2008-06-22', 11, 1, '2008-06-22 22:29:03'),
('2008-06-23', 11, 3, '2008-06-23 19:33:59'),
('2008-06-23', 5, 3, '2008-06-23 19:33:59'),
('2008-06-23', 2, 4, '2008-06-23 19:33:59'),
('2008-06-23', 4, 4, '2008-06-23 19:33:59'),
('2008-06-23', 6, 3, '2008-06-23 16:10:38'),
('2008-06-23', 1, 2, '2008-06-23 19:33:59'),
('2008-06-23', 7, 2, '2008-06-23 19:33:59'),
('2008-06-23', 8, 2, '2008-06-23 19:33:59'),
('2008-06-24', 2, 1, '2008-06-24 08:04:29'),
('2008-06-25', 1, 2, '2008-06-25 21:35:37'),
('2008-06-25', 4, 2, '2008-06-25 21:35:37'),
('2008-06-25', 2, 2, '2008-06-25 21:35:37'),
('2008-06-25', 5, 2, '2008-06-25 21:35:37'),
('2008-06-25', 7, 2, '2008-06-25 21:35:37'),
('2008-06-25', 8, 2, '2008-06-25 21:35:37'),
('2008-06-25', 11, 2, '2008-06-25 21:35:37'),
('2008-06-25', 6, 2, '2008-06-25 21:35:37'),
('2008-06-26', 11, 1, '2008-06-26 19:14:18'),
('2008-06-26', 8, 1, '2008-06-26 19:14:18'),
('2008-06-26', 5, 1, '2008-06-26 19:14:18'),
('2008-06-26', 2, 1, '2008-06-26 19:14:18'),
('2008-06-26', 4, 1, '2008-06-26 19:14:18'),
('2008-06-26', 6, 1, '2008-06-26 19:14:18'),
('2008-06-26', 1, 1, '2008-06-26 19:14:18'),
('2008-06-27', 5, 1, '2008-06-27 19:18:12'),
('2008-06-27', 2, 1, '2008-06-27 19:18:12'),
('2008-06-27', 4, 1, '2008-06-27 19:18:12'),
('2008-06-29', 2, 2, '2008-06-29 19:59:04'),
('2008-06-29', 5, 2, '2008-06-29 19:59:04'),
('2008-06-29', 4, 2, '2008-06-29 19:59:04'),
('2008-06-29', 11, 1, '2008-06-29 19:59:04'),
('2008-06-29', 8, 1, '2008-06-29 19:59:04'),
('2008-06-29', 7, 1, '2008-06-29 19:59:04'),
('2008-06-29', 6, 1, '2008-06-29 19:59:04'),
('2008-06-29', 1, 1, '2008-06-29 19:59:04'),
('2008-07-01', 11, 1, '2008-07-01 19:24:47'),
('2008-07-02', 4, 1, '2008-07-02 13:57:32'),
('2008-07-02', 5, 2, '2008-07-02 21:43:32'),
('2008-07-02', 7, 1, '2008-07-02 13:57:32'),
('2008-07-02', 8, 2, '2008-07-02 21:43:32'),
('2008-07-02', 11, 2, '2008-07-02 21:43:32'),
('2008-07-02', 2, 1, '2008-07-02 21:43:32'),
('2008-07-03', 2, 2, '2008-07-03 20:18:21'),
('2008-07-03', 5, 2, '2008-07-03 20:18:21'),
('2008-07-03', 6, 2, '2008-07-03 20:18:21'),
('2008-07-03', 1, 2, '2008-07-03 20:18:21'),
('2008-07-03', 12, 1, '2008-07-03 20:18:21'),
('2008-07-03', 11, 1, '2008-07-03 20:18:21'),
('2008-07-03', 8, 1, '2008-07-03 20:18:21'),
('2008-07-03', 7, 1, '2008-07-03 20:18:21'),
('2008-07-03', 4, 1, '2008-07-03 20:18:21'),
('2008-07-03', 13, 1, '2008-07-03 20:18:21'),
('2008-07-05', 1, 3, '2008-07-05 20:16:43'),
('2008-07-05', 11, 3, '2008-07-05 20:16:43'),
('2008-07-05', 8, 3, '2008-07-05 20:16:43'),
('2008-07-05', 5, 2, '2008-07-05 19:19:49'),
('2008-07-05', 7, 3, '2008-07-05 20:16:43'),
('2008-07-05', 12, 3, '2008-07-05 20:16:43'),
('2008-07-05', 13, 3, '2008-07-05 20:16:43'),
('2008-07-05', 6, 2, '2008-07-05 20:16:43'),
('2008-07-05', 4, 3, '2008-07-05 20:16:43'),
('2008-07-05', 2, 3, '2008-07-05 20:16:43'),
('2008-07-06', 4, 5, '2008-07-06 21:36:22'),
('2008-07-06', 13, 3, '2008-07-06 21:36:22'),
('2008-07-06', 1, 5, '2008-07-06 21:36:22'),
('2008-07-06', 6, 4, '2008-07-06 21:36:22'),
('2008-07-06', 12, 4, '2008-07-06 21:36:22'),
('2008-07-06', 7, 3, '2008-07-06 21:36:22'),
('2008-07-06', 8, 3, '2008-07-06 21:36:22'),
('2008-07-06', 11, 4, '2008-07-06 21:36:22'),
('2008-07-06', 5, 3, '2008-07-06 21:36:22'),
('2008-07-06', 2, 2, '2008-07-06 21:36:22'),
('2008-07-07', 12, 4, '2008-07-07 21:45:01'),
('2008-07-07', 13, 5, '2008-07-07 22:44:24'),
('2008-07-07', 6, 3, '2008-07-07 22:44:24'),
('2008-07-07', 4, 4, '2008-07-07 22:44:24'),
('2008-07-07', 2, 2, '2008-07-07 22:44:24'),
('2008-07-07', 5, 2, '2008-07-07 18:57:30'),
('2008-07-07', 7, 2, '2008-07-07 18:57:30'),
('2008-07-07', 8, 2, '2008-07-07 18:57:30'),
('2008-07-07', 11, 4, '2008-07-07 21:45:01'),
('2008-07-07', 1, 2, '2008-07-07 22:44:24'),
('2008-07-08', 11, 2, '2008-07-08 07:59:44'),
('2008-07-08', 1, 2, '2008-07-08 07:59:44'),
('2008-07-08', 5, 1, '2008-07-08 07:59:44'),
('2008-07-08', 6, 1, '2008-07-08 07:59:44'),
('2008-07-08', 7, 1, '2008-07-08 07:59:44'),
('2008-07-08', 8, 1, '2008-07-08 07:59:44'),
('2008-07-08', 13, 2, '2008-07-08 22:43:37'),
('2008-07-08', 2, 1, '2008-07-08 07:59:44'),
('2008-07-08', 12, 2, '2008-07-08 22:43:37'),
('2008-07-09', 12, 2, '2008-07-09 18:26:35'),
('2008-07-09', 1, 1, '2008-07-09 18:26:35'),
('2008-07-09', 6, 1, '2008-07-09 18:26:35'),
('2008-07-09', 4, 1, '2008-07-09 18:26:35'),
('2008-07-09', 2, 1, '2008-07-09 18:26:35'),
('2008-07-09', 5, 1, '2008-07-09 18:26:35'),
('2008-07-09', 7, 1, '2008-07-09 18:26:35'),
('2008-07-09', 8, 1, '2008-07-09 18:26:35'),
('2008-07-09', 11, 1, '2008-07-09 18:26:35'),
('2008-07-09', 13, 1, '2008-07-09 18:26:35'),
('2008-07-10', 12, 2, '2008-07-10 22:53:22'),
('2008-07-10', 7, 2, '2008-07-10 22:53:22'),
('2008-07-10', 8, 2, '2008-07-10 22:53:22'),
('2008-07-10', 11, 2, '2008-07-10 22:53:22'),
('2008-07-10', 1, 1, '2008-07-10 08:05:11'),
('2008-07-10', 13, 1, '2008-07-10 22:53:22'),
('2008-07-10', 5, 1, '2008-07-10 22:53:22'),
('2008-07-12', 12, 5, '2008-07-12 16:44:02'),
('2008-07-12', 5, 4, '2008-07-12 16:44:02'),
('2008-07-12', 2, 4, '2008-07-12 16:44:02'),
('2008-07-12', 4, 4, '2008-07-12 16:44:02'),
('2008-07-12', 13, 2, '2008-07-12 16:44:02'),
('2008-07-12', 11, 2, '2008-07-12 16:44:02'),
('2008-07-12', 8, 3, '2008-07-12 16:44:02'),
('2008-07-12', 7, 3, '2008-07-12 16:44:02'),
('2008-07-12', 6, 3, '2008-07-12 16:44:02'),
('2008-07-12', 1, 3, '2008-07-12 16:44:02'),
('2008-07-12', 14, 1, '2008-07-12 16:44:02'),
('2008-07-12', 15, 1, '2008-07-12 16:44:02'),
('2008-07-12', 16, 2, '2008-07-12 16:44:02'),
('2008-07-12', 17, 2, '2008-07-12 16:44:02'),
('2008-07-12', 18, 1, '2008-07-12 16:44:02'),
('2008-07-12', 19, 1, '2008-07-12 16:44:02'),
('2008-07-12', 20, 1, '2008-07-12 16:44:02'),
('2008-07-12', 21, 1, '2008-07-12 16:44:02'),
('2008-07-12', 22, 1, '2008-07-12 16:44:02'),
('2008-07-13', 15, 3, '2008-07-13 18:55:32'),
('2008-07-13', 16, 4, '2008-07-13 21:45:13'),
('2008-07-13', 20, 2, '2008-07-13 18:55:32'),
('2008-07-13', 19, 2, '2008-07-13 18:55:32'),
('2008-07-13', 17, 2, '2008-07-13 18:55:32'),
('2008-07-13', 18, 3, '2008-07-13 18:55:32'),
('2008-07-13', 14, 2, '2008-07-13 18:55:32'),
('2008-07-13', 21, 2, '2008-07-13 18:55:32'),
('2008-07-13', 22, 3, '2008-07-13 18:55:32'),
('2008-07-13', 12, 3, '2008-07-13 18:55:32'),
('2008-07-13', 5, 4, '2008-07-13 20:29:49'),
('2008-07-13', 23, 2, '2008-07-13 18:55:32'),
('2008-07-13', 24, 2, '2008-07-13 18:55:32'),
('2008-07-13', 1, 3, '2008-07-13 21:45:13'),
('2008-07-13', 6, 5, '2008-07-13 21:45:13'),
('2008-07-13', 4, 5, '2008-07-13 21:45:13'),
('2008-07-13', 2, 6, '2008-07-13 21:45:13'),
('2008-07-13', 7, 4, '2008-07-13 21:45:13'),
('2008-07-13', 8, 3, '2008-07-13 21:45:13'),
('2008-07-13', 11, 4, '2008-07-13 21:45:13'),
('2008-07-13', 13, 2, '2008-07-13 21:45:13'),
('2008-07-14', 6, 6, '2008-07-14 21:00:17'),
('2008-07-14', 1, 7, '2008-07-14 21:00:17'),
('2008-07-14', 4, 8, '2008-07-14 21:00:17'),
('2008-07-14', 2, 8, '2008-07-14 21:00:17'),
('2008-07-14', 5, 6, '2008-07-14 17:59:25'),
('2008-07-14', 7, 6, '2008-07-14 17:59:25'),
('2008-07-14', 13, 6, '2008-07-14 21:00:17'),
('2008-07-14', 16, 1, '2008-07-14 11:08:18'),
('2008-07-14', 11, 6, '2008-07-14 21:00:17'),
('2008-07-14', 8, 5, '2008-07-14 17:59:25'),
('2008-07-14', 14, 1, '2008-07-14 12:02:46'),
('2008-07-14', 19, 1, '2008-07-14 13:01:48'),
('2008-07-14', 23, 2, '2008-07-14 21:00:17'),
('2008-07-14', 24, 1, '2008-07-14 17:59:25'),
('2008-07-15', 4, 12, '2008-07-15 22:36:04'),
('2008-07-15', 2, 5, '2008-07-15 17:29:25'),
('2008-07-15', 1, 9, '2008-07-15 22:36:04'),
('2008-07-15', 6, 5, '2008-07-15 22:36:04'),
('2008-07-15', 7, 6, '2008-07-15 22:36:04'),
('2008-07-15', 8, 6, '2008-07-15 22:36:04'),
('2008-07-15', 5, 8, '2008-07-15 22:36:04'),
('2008-07-15', 11, 5, '2008-07-15 22:36:04'),
('2008-07-15', 13, 2, '2008-07-15 14:41:28'),
('2008-07-15', 16, 1, '2008-07-15 09:07:19'),
('2008-07-15', 23, 1, '2008-07-15 22:36:04'),
('2008-07-16', 1, 5, '2008-07-16 19:19:30'),
('2008-07-16', 6, 6, '2008-07-16 19:19:30'),
('2008-07-16', 4, 6, '2008-07-16 19:19:30'),
('2008-07-16', 2, 6, '2008-07-16 19:19:30'),
('2008-07-16', 5, 3, '2008-07-16 11:40:21'),
('2008-07-16', 7, 3, '2008-07-16 11:40:21'),
('2008-07-16', 16, 1, '2008-07-16 01:53:44'),
('2008-07-16', 21, 1, '2008-07-16 01:53:44'),
('2008-07-16', 23, 1, '2008-07-16 01:53:44'),
('2008-07-16', 11, 4, '2008-07-16 19:19:30'),
('2008-07-16', 8, 3, '2008-07-16 19:19:30'),
('2008-07-16', 13, 3, '2008-07-16 19:19:30'),
('2008-07-16', 15, 1, '2008-07-16 11:40:21'),
('2008-07-17', 13, 2, '2008-07-17 08:51:53'),
('2008-07-17', 1, 1, '2008-07-17 07:57:05'),
('2008-07-17', 6, 1, '2008-07-17 08:51:53'),
('2008-07-17', 4, 1, '2008-07-17 08:51:53'),
('2008-07-17', 2, 1, '2008-07-17 08:51:53'),
('2008-07-17', 5, 1, '2008-07-17 08:51:53'),
('2008-07-17', 7, 1, '2008-07-17 08:51:53'),
('2008-07-17', 8, 1, '2008-07-17 08:51:53'),
('2008-07-17', 11, 1, '2008-07-17 08:51:53'),
('2008-07-18', 5, 3, '2008-07-18 22:08:41'),
('2008-07-18', 7, 3, '2008-07-18 22:08:41'),
('2008-07-18', 4, 2, '2008-07-18 22:08:41'),
('2008-07-18', 6, 2, '2008-07-18 22:08:41'),
('2008-07-18', 1, 1, '2008-07-18 08:06:14'),
('2008-07-18', 8, 2, '2008-07-18 22:08:41'),
('2008-07-18', 11, 2, '2008-07-18 22:08:41'),
('2008-07-18', 24, 1, '2008-07-18 21:02:40'),
('2008-07-18', 23, 1, '2008-07-18 21:02:40'),
('2008-07-18', 2, 1, '2008-07-18 22:08:41'),
('2008-07-18', 13, 1, '2008-07-18 22:08:41'),
('2008-07-19', 1, 1, '2008-07-19 15:36:49'),
('2008-07-19', 4, 1, '2008-07-19 15:36:49'),
('2008-07-19', 2, 1, '2008-07-19 15:36:49'),
('2008-07-19', 5, 1, '2008-07-19 15:36:49'),
('2008-07-19', 7, 1, '2008-07-19 15:36:49'),
('2008-07-19', 8, 1, '2008-07-19 15:36:49'),
('2008-07-19', 11, 1, '2008-07-19 15:36:49'),
('2008-07-19', 14, 1, '2008-07-19 15:36:49'),
('2008-07-19', 17, 1, '2008-07-19 15:36:49'),
('2008-07-19', 18, 1, '2008-07-19 15:36:49'),
('2008-07-19', 15, 1, '2008-07-19 15:36:49'),
('2008-07-19', 12, 1, '2008-07-19 15:36:49'),
('2008-07-19', 16, 1, '2008-07-19 15:36:49'),
('2008-07-19', 19, 1, '2008-07-19 15:36:49'),
('2008-07-19', 20, 1, '2008-07-19 15:36:49'),
('2008-07-19', 21, 1, '2008-07-19 15:36:49'),
('2008-07-19', 22, 1, '2008-07-19 15:36:49'),
('2008-07-19', 23, 1, '2008-07-19 15:36:49'),
('2008-07-19', 24, 1, '2008-07-19 15:36:49'),
('2008-07-20', 5, 6, '2008-07-20 22:31:23'),
('2008-07-20', 7, 2, '2008-07-20 22:31:23'),
('2008-07-20', 8, 2, '2008-07-20 22:31:23'),
('2008-07-20', 11, 2, '2008-07-20 22:31:23'),
('2008-07-20', 22, 1, '2008-07-20 15:50:51'),
('2008-07-20', 23, 2, '2008-07-20 19:13:17'),
('2008-07-20', 15, 1, '2008-07-20 15:50:51'),
('2008-07-20', 1, 4, '2008-07-20 22:31:23'),
('2008-07-20', 4, 3, '2008-07-20 22:31:23'),
('2008-07-20', 2, 3, '2008-07-20 22:31:23'),
('2008-07-20', 6, 1, '2008-07-20 22:31:23'),
('2008-07-20', 13, 1, '2008-07-20 22:31:23'),
('2008-07-20', 20, 1, '2008-07-20 22:31:23'),
('2008-07-21', 5, 1, '2008-07-21 10:59:35'),
('2008-07-21', 13, 1, '2008-07-21 10:59:35'),
('2008-07-21', 1, 2, '2008-07-21 15:57:12'),
('2008-07-21', 6, 2, '2008-07-21 15:57:12'),
('2008-07-21', 4, 2, '2008-07-21 15:57:12'),
('2008-07-21', 2, 1, '2008-07-21 10:59:35'),
('2008-07-21', 7, 1, '2008-07-21 15:57:12'),
('2008-07-22', 1, 1, '2008-07-22 08:00:13'),
('2008-07-22', 4, 2, '2008-07-22 20:02:20'),
('2008-07-22', 5, 2, '2008-07-22 20:02:20'),
('2008-07-22', 7, 2, '2008-07-22 20:02:20'),
('2008-07-22', 8, 2, '2008-07-22 20:02:20'),
('2008-07-22', 11, 2, '2008-07-22 20:02:20'),
('2008-07-22', 6, 1, '2008-07-22 08:00:13'),
('2008-07-22', 2, 1, '2008-07-22 20:02:20'),
('2008-07-23', 13, 1, '2008-07-23 19:17:36'),
('2008-07-23', 11, 1, '2008-07-23 19:17:36'),
('2008-07-23', 8, 1, '2008-07-23 19:17:36'),
('2008-07-23', 7, 1, '2008-07-23 19:17:36'),
('2008-07-23', 5, 1, '2008-07-23 19:17:36'),
('2008-07-23', 4, 1, '2008-07-23 19:17:36'),
('2008-07-23', 6, 1, '2008-07-23 19:17:36'),
('2008-07-23', 1, 1, '2008-07-23 19:17:36'),
('2008-07-23', 17, 1, '2008-07-23 19:17:36'),
('2008-07-23', 2, 1, '2008-07-23 19:17:36'),
('2008-07-24', 6, 1, '2008-07-24 15:50:19'),
('2008-07-24', 1, 1, '2008-07-24 15:50:19'),
('2008-07-24', 5, 1, '2008-07-24 15:50:19'),
('2008-07-24', 7, 1, '2008-07-24 15:50:19'),
('2008-07-24', 8, 1, '2008-07-24 15:50:19'),
('2008-07-26', 1, 1, '2008-07-26 23:50:17'),
('2008-07-26', 4, 2, '2008-07-26 23:50:17'),
('2008-07-26', 13, 1, '2008-07-26 23:50:17'),
('2008-07-26', 2, 1, '2008-07-26 23:50:17'),
('2008-07-26', 6, 1, '2008-07-26 23:50:17'),
('2008-07-26', 5, 1, '2008-07-26 23:50:17'),
('2008-07-27', 2, 1, '2008-07-27 22:56:46'),
('2008-07-27', 6, 1, '2008-07-27 22:56:46'),
('2008-07-28', 1, 1, '2008-07-28 12:24:00'),
('2008-07-28', 6, 1, '2008-07-28 12:24:00'),
('2008-07-28', 4, 1, '2008-07-28 12:24:00'),
('2008-07-28', 5, 1, '2008-07-28 12:24:00'),
('2008-07-28', 7, 1, '2008-07-28 12:24:00'),
('2008-07-28', 8, 1, '2008-07-28 12:24:00'),
('2008-07-28', 14, 1, '2008-07-28 12:24:00'),
('2008-07-28', 2, 1, '2008-07-28 12:24:00'),
('2008-07-28', 11, 1, '2008-07-28 12:24:00'),
('2008-07-28', 13, 1, '2008-07-28 12:24:00'),
('2008-08-03', 2, 2, '2008-08-03 20:52:27'),
('2008-08-03', 6, 1, '2008-08-03 20:52:27'),
('2008-08-03', 4, 1, '2008-08-03 20:52:27'),
('2008-08-03', 5, 1, '2008-08-03 20:52:27'),
('2008-08-03', 7, 1, '2008-08-03 20:52:27'),
('2008-08-07', 19, 1, '2008-08-07 13:29:01'),
('2008-08-07', 13, 1, '2008-08-07 13:29:01'),
('2008-08-10', 4, 1, '2008-08-10 18:41:33'),
('2008-08-10', 11, 1, '2008-08-10 18:41:33'),
('2008-08-10', 8, 1, '2008-08-10 18:41:33'),
('2008-08-10', 5, 1, '2008-08-10 18:41:33'),
('2008-08-12', 4, 1, '2008-08-12 10:09:24'),
('2008-08-12', 13, 1, '2008-08-12 10:09:24'),
('2008-08-12', 11, 1, '2008-08-12 10:09:24'),
('2008-08-12', 8, 1, '2008-08-12 10:09:24'),
('2008-08-12', 7, 1, '2008-08-12 10:09:24'),
('2008-08-12', 5, 1, '2008-08-12 10:09:24'),
('2008-08-12', 2, 1, '2008-08-12 10:09:24'),
('2008-08-12', 6, 1, '2008-08-12 10:09:24'),
('2008-08-12', 1, 1, '2008-08-12 10:09:24'),
('2008-08-13', 1, 1, '2008-08-13 12:38:42'),
('2008-08-13', 4, 2, '2008-08-13 20:05:07'),
('2008-08-13', 5, 1, '2008-08-13 12:38:42'),
('2008-08-13', 7, 1, '2008-08-13 12:38:42'),
('2008-08-13', 8, 1, '2008-08-13 12:38:42'),
('2008-08-13', 11, 1, '2008-08-13 12:38:42'),
('2008-08-13', 13, 1, '2008-08-13 12:38:42'),
('2008-08-13', 2, 1, '2008-08-13 20:05:07'),
('2008-08-15', 6, 2, '2008-08-15 16:53:43'),
('2008-08-15', 4, 1, '2008-08-15 12:20:36'),
('2008-08-15', 2, 1, '2008-08-15 12:20:36'),
('2008-08-15', 5, 1, '2008-08-15 12:20:36'),
('2008-08-15', 8, 2, '2008-08-15 16:53:43'),
('2008-08-15', 11, 1, '2008-08-15 12:20:36'),
('2008-08-15', 13, 1, '2008-08-15 12:20:36'),
('2008-08-15', 24, 1, '2008-08-15 12:20:36'),
('2008-08-15', 17, 1, '2008-08-15 12:20:36'),
('2008-08-15', 19, 1, '2008-08-15 12:20:36'),
('2008-08-15', 20, 1, '2008-08-15 12:20:36'),
('2008-08-15', 7, 1, '2008-08-15 16:53:43'),
('2008-08-21', 1, 2, '2008-08-21 22:10:32'),
('2008-08-21', 2, 1, '2008-08-21 22:10:32'),
('2008-08-21', 5, 1, '2008-08-21 22:10:32'),
('2008-08-21', 7, 1, '2008-08-21 22:10:32'),
('2008-08-21', 11, 1, '2008-08-21 22:10:32'),
('2008-08-21', 8, 1, '2008-08-21 22:10:32'),
('2008-08-21', 20, 1, '2008-08-21 22:10:32'),
('2008-08-21', 14, 1, '2008-08-21 22:10:32'),
('2008-08-21', 4, 1, '2008-08-21 22:10:32'),
('2008-08-21', 6, 1, '2008-08-21 22:10:32'),
('2008-08-21', 13, 1, '2008-08-21 22:10:32'),
('2008-08-25', 11, 1, '2008-08-25 14:47:17'),
('2008-08-25', 4, 1, '2008-08-25 14:47:17'),
('2008-08-25', 6, 1, '2008-08-25 14:47:17'),
('2008-08-25', 13, 1, '2008-08-25 14:47:17'),
('2008-08-25', 5, 1, '2008-08-25 14:47:17'),
('2008-08-26', 1, 1, '2008-08-26 15:59:48'),
('2008-08-26', 4, 1, '2008-08-26 15:59:48'),
('2008-08-26', 5, 1, '2008-08-26 15:59:48'),
('2008-08-26', 7, 1, '2008-08-26 15:59:48'),
('2008-08-27', 1, 1, '2008-08-27 15:39:31'),
('2008-08-27', 7, 1, '2008-08-27 15:39:31'),
('2008-08-27', 2, 1, '2008-08-27 15:39:31'),
('2008-08-27', 4, 1, '2008-08-27 15:39:31'),
('2008-08-27', 11, 1, '2008-08-27 15:39:31'),
('2008-08-27', 23, 1, '2008-08-27 15:39:31'),
('2008-08-28', 7, 1, '2008-08-28 09:12:59'),
('2008-08-28', 4, 1, '2008-08-28 09:12:59'),
('2008-08-30', 4, 1, '2008-08-30 18:00:37'),
('2008-08-30', 2, 1, '2008-08-30 18:00:37'),
('2008-09-01', 5, 1, '2008-09-01 08:58:23'),
('2008-09-01', 2, 2, '2008-09-01 09:46:44'),
('2008-09-01', 11, 1, '2008-09-01 08:58:23'),
('2008-09-01', 22, 1, '2008-09-01 08:58:23'),
('2008-09-01', 1, 1, '2008-09-01 09:46:44'),
('2008-09-01', 6, 1, '2008-09-01 09:46:44'),
('2008-09-01', 4, 1, '2008-09-01 09:46:44'),
('2008-09-03', 11, 1, '2008-09-03 21:13:33'),
('2008-09-03', 13, 1, '2008-09-03 21:13:33'),
('2008-09-03', 5, 1, '2008-09-03 21:13:33'),
('2008-09-03', 8, 1, '2008-09-03 21:13:33'),
('2008-09-03', 4, 1, '2008-09-03 21:13:33'),
('2008-09-03', 1, 1, '2008-09-03 21:13:33'),
('2008-09-04', 7, 1, '2008-09-04 21:41:11'),
('2008-09-04', 1, 1, '2008-09-04 21:41:11'),
('2008-09-04', 6, 1, '2008-09-04 21:41:11'),
('2008-09-04', 4, 1, '2008-09-04 21:41:11'),
('2008-09-04', 2, 1, '2008-09-04 21:41:11'),
('2008-09-04', 5, 1, '2008-09-04 21:41:11'),
('2008-09-05', 11, 1, '2008-09-05 07:54:10'),
('2008-09-05', 13, 1, '2008-09-05 07:54:10'),
('2008-09-07', 11, 1, '2008-09-07 18:08:43'),
('2008-09-07', 13, 1, '2008-09-07 18:08:43'),
('2008-09-07', 4, 1, '2008-09-07 18:08:43'),
('2008-09-07', 6, 1, '2008-09-07 18:08:43'),
('2008-09-07', 1, 1, '2008-09-07 18:08:43'),
('2008-09-07', 8, 1, '2008-09-07 18:08:43'),
('2008-09-07', 5, 1, '2008-09-07 18:08:43'),
('2008-09-07', 17, 1, '2008-09-07 18:08:43'),
('2008-09-07', 21, 1, '2008-09-07 18:08:43'),
('2008-09-09', 1, 2, '2008-09-09 21:20:18'),
('2008-09-09', 6, 2, '2008-09-09 21:20:18'),
('2008-09-09', 4, 2, '2008-09-09 21:20:18'),
('2008-09-09', 2, 2, '2008-09-09 21:20:18'),
('2008-09-09', 5, 2, '2008-09-09 21:20:18'),
('2008-09-09', 7, 1, '2008-09-09 21:20:18'),
('2008-09-09', 8, 1, '2008-09-09 21:20:18'),
('2008-09-09', 11, 1, '2008-09-09 21:20:18'),
('2008-09-10', 2, 2, '2008-09-10 23:13:56'),
('2008-09-10', 4, 1, '2008-09-10 23:13:56'),
('2008-09-10', 11, 1, '2008-09-10 23:13:56'),
('2008-09-10', 23, 1, '2008-09-10 23:13:56'),
('2008-09-10', 24, 1, '2008-09-10 23:13:56'),
('2008-09-10', 20, 1, '2008-09-10 23:13:56'),
('2008-09-10', 18, 1, '2008-09-10 23:13:56'),
('2008-09-12', 7, 1, '2008-09-12 12:15:07'),
('2008-09-12', 1, 1, '2008-09-12 13:28:21'),
('2008-09-12', 4, 1, '2008-09-12 13:28:21'),
('2008-09-12', 2, 1, '2008-09-12 13:28:21'),
('2008-09-12', 23, 1, '2008-09-12 13:28:21'),
('2008-09-14', 11, 1, '2008-09-14 15:15:46'),
('2008-09-14', 6, 1, '2008-09-14 15:15:46'),
('2008-09-14', 1, 2, '2008-09-14 15:15:46'),
('2008-09-14', 5, 1, '2008-09-14 15:15:46'),
('2008-09-14', 7, 2, '2008-09-14 18:39:00'),
('2008-09-14', 8, 1, '2008-09-14 15:15:46'),
('2008-09-14', 13, 1, '2008-09-14 15:15:46'),
('2008-09-14', 22, 1, '2008-09-14 15:15:46'),
('2008-09-14', 25, 2, '2008-09-14 18:39:00'),
('2008-09-15', 6, 3, '2008-09-15 19:23:35'),
('2008-09-15', 4, 3, '2008-09-15 20:18:06'),
('2008-09-15', 2, 3, '2008-09-15 20:18:06'),
('2008-09-15', 7, 2, '2008-09-15 20:18:06'),
('2008-09-15', 8, 2, '2008-09-15 20:18:06'),
('2008-09-15', 11, 2, '2008-09-15 20:18:06'),
('2008-09-15', 13, 2, '2008-09-15 20:18:06'),
('2008-09-15', 1, 2, '2008-09-15 20:18:06'),
('2008-09-15', 5, 2, '2008-09-15 20:18:06'),
('2008-09-15', 24, 1, '2008-09-15 20:18:06'),
('2008-09-16', 7, 5, '2008-09-16 20:26:10'),
('2008-09-16', 5, 4, '2008-09-16 20:26:10'),
('2008-09-16', 4, 3, '2008-09-16 20:26:10'),
('2008-09-16', 1, 1, '2008-09-16 19:04:35'),
('2008-09-16', 6, 2, '2008-09-16 20:26:10'),
('2008-09-16', 2, 2, '2008-09-16 20:26:10'),
('2008-09-16', 8, 1, '2008-09-16 19:04:35'),
('2008-09-16', 11, 1, '2008-09-16 19:04:35'),
('2008-09-16', 12, 1, '2008-09-16 19:04:35'),
('2008-09-16', 21, 1, '2008-09-16 19:04:35'),
('2008-09-16', 23, 1, '2008-09-16 19:04:35'),
('2008-09-16', 24, 1, '2008-09-16 19:04:35'),
('2008-09-16', 19, 1, '2008-09-16 19:04:35'),
('2008-09-16', 15, 1, '2008-09-16 19:04:35'),
('2008-09-16', 14, 1, '2008-09-16 19:04:35'),
('2008-09-16', 17, 1, '2008-09-16 19:04:35'),
('2008-09-16', 18, 1, '2008-09-16 19:04:35'),
('2008-09-16', 13, 2, '2008-09-16 20:26:10'),
('2008-09-17', 7, 4, '2008-09-17 20:57:34'),
('2008-09-17', 6, 3, '2008-09-17 20:57:34'),
('2008-09-17', 4, 2, '2008-09-17 20:57:34'),
('2008-09-17', 13, 2, '2008-09-17 20:57:34'),
('2008-09-17', 1, 1, '2008-09-17 16:38:59'),
('2008-09-17', 5, 1, '2008-09-17 20:57:34'),
('2008-09-17', 11, 1, '2008-09-17 20:57:34'),
('2008-09-18', 1, 2, '2008-09-18 20:05:16'),
('2008-09-18', 6, 3, '2008-09-18 23:42:00'),
('2008-09-18', 4, 2, '2008-09-18 23:42:00'),
('2008-09-18', 5, 3, '2008-09-18 23:42:00'),
('2008-09-18', 7, 3, '2008-09-18 23:42:00'),
('2008-09-18', 8, 3, '2008-09-18 23:42:00'),
('2008-09-18', 11, 2, '2008-09-18 23:42:00'),
('2008-09-18', 13, 3, '2008-09-18 23:42:00'),
('2008-09-19', 1, 1, '2008-09-19 14:28:44'),
('2008-09-19', 4, 1, '2008-09-19 14:28:44'),
('2008-09-19', 2, 1, '2008-09-19 14:28:44'),
('2008-09-19', 5, 1, '2008-09-19 14:28:44'),
('2008-09-19', 7, 1, '2008-09-19 14:28:44'),
('2008-09-19', 11, 1, '2008-09-19 14:28:44'),
('2008-09-19', 6, 1, '2008-09-19 14:28:44'),
('2008-09-20', 4, 1, '2008-09-20 15:15:37'),
('2008-09-20', 5, 2, '2008-09-20 22:33:17'),
('2008-09-20', 7, 2, '2008-09-20 22:33:17'),
('2008-09-20', 2, 2, '2008-09-20 22:33:17'),
('2008-09-21', 1, 1, '2008-09-21 17:04:14'),
('2008-09-21', 4, 1, '2008-09-21 17:04:14'),
('2008-09-21', 2, 1, '2008-09-21 17:04:14'),
('2008-09-21', 5, 1, '2008-09-21 17:04:14'),
('2008-09-21', 7, 1, '2008-09-21 17:04:14'),
('2008-09-21', 8, 1, '2008-09-21 17:04:14'),
('2008-09-21', 11, 1, '2008-09-21 17:04:14'),
('2008-09-21', 13, 1, '2008-09-21 17:04:14'),
('2008-09-22', 6, 2, '2008-09-22 14:22:59'),
('2008-09-22', 1, 2, '2008-09-22 23:34:27'),
('2008-09-22', 7, 3, '2008-09-22 23:34:27'),
('2008-09-22', 8, 2, '2008-09-22 23:34:27'),
('2008-09-22', 5, 1, '2008-09-22 23:34:27'),
('2008-09-23', 5, 1, '2008-09-23 16:31:20'),
('2008-09-23', 7, 1, '2008-09-23 16:31:20'),
('2008-09-23', 1, 2, '2008-09-23 18:07:46'),
('2008-09-23', 6, 1, '2008-09-23 16:31:20'),
('2008-09-23', 4, 1, '2008-09-23 16:31:20'),
('2008-09-23', 2, 1, '2008-09-23 16:31:20'),
('2008-09-23', 8, 2, '2008-09-23 18:07:46'),
('2008-09-23', 11, 1, '2008-09-23 16:31:20'),
('2008-09-23', 13, 1, '2008-09-23 16:31:20'),
('2008-09-24', 23, 1, '2008-09-24 09:54:19'),
('2008-09-24', 11, 2, '2008-09-24 16:42:16'),
('2008-09-24', 7, 3, '2008-09-24 21:22:50'),
('2008-09-24', 5, 2, '2008-09-24 16:42:16'),
('2008-09-24', 8, 3, '2008-09-24 21:22:50'),
('2008-09-24', 12, 1, '2008-09-24 09:54:19'),
('2008-09-24', 15, 1, '2008-09-24 09:54:19'),
('2008-09-24', 17, 2, '2008-09-24 16:42:16'),
('2008-09-24', 6, 4, '2008-09-24 23:09:01'),
('2008-09-24', 4, 4, '2008-09-24 23:09:01'),
('2008-09-24', 1, 3, '2008-09-24 21:22:50'),
('2008-09-24', 22, 1, '2008-09-24 09:54:19'),
('2008-09-24', 13, 2, '2008-09-24 23:09:01'),
('2008-09-24', 2, 1, '2008-09-24 23:09:01'),
('2008-09-25', 4, 1, '2008-09-25 15:31:04'),
('2008-09-25', 2, 1, '2008-09-25 15:31:04'),
('2008-09-25', 5, 1, '2008-09-25 15:31:04'),
('2008-09-25', 7, 1, '2008-09-25 15:31:04'),
('2008-09-25', 8, 1, '2008-09-25 15:31:04'),
('2008-09-25', 1, 2, '2008-09-25 23:47:46'),
('2008-09-25', 11, 1, '2008-09-25 15:31:04'),
('2008-09-25', 13, 1, '2008-09-25 15:31:04'),
('2008-09-25', 6, 2, '2008-09-25 23:47:46'),
('2008-09-26', 4, 3, '2008-09-26 12:30:49'),
('2008-09-26', 2, 2, '2008-09-26 10:20:26'),
('2008-09-26', 5, 1, '2008-09-26 09:49:32'),
('2008-09-26', 7, 1, '2008-09-26 09:49:32'),
('2008-09-26', 13, 1, '2008-09-26 10:20:26'),
('2008-09-26', 8, 1, '2008-09-26 12:30:49'),
('2008-09-26', 11, 1, '2008-09-26 12:30:49'),
('2008-09-27', 1, 2, '2008-09-27 18:04:14'),
('2008-09-27', 6, 1, '2008-09-27 18:04:14'),
('2008-09-27', 4, 1, '2008-09-27 18:04:14'),
('2008-09-29', 4, 2, '2008-09-29 22:57:52'),
('2008-09-29', 7, 3, '2008-09-29 22:57:52'),
('2008-09-29', 8, 2, '2008-09-29 22:57:52'),
('2008-09-29', 1, 2, '2008-09-29 22:57:52'),
('2008-09-29', 6, 2, '2008-09-29 22:57:52'),
('2008-09-29', 5, 2, '2008-09-29 22:57:52'),
('2008-09-29', 2, 2, '2008-09-29 22:57:52'),
('2008-09-29', 16, 1, '2008-09-29 22:57:52'),
('2008-09-29', 14, 1, '2008-09-29 22:57:52'),
('2008-09-29', 13, 1, '2008-09-29 22:57:52'),
('2008-09-29', 11, 1, '2008-09-29 22:57:52'),
('2008-09-30', 7, 1, '2008-09-30 10:57:15'),
('2008-09-30', 2, 1, '2008-09-30 10:57:15'),
('2008-10-01', 7, 2, '2008-10-01 10:20:44'),
('2008-10-02', 4, 1, '2008-10-02 10:23:42'),
('2008-10-02', 5, 1, '2008-10-02 10:23:42'),
('2008-10-02', 6, 1, '2008-10-02 10:23:42'),
('2008-10-02', 11, 1, '2008-10-02 10:23:42'),
('2008-10-02', 7, 2, '2008-10-02 11:53:34'),
('2008-10-02', 1, 1, '2008-10-02 11:53:34'),
('2008-10-03', 5, 2, '2008-10-03 13:37:33'),
('2008-10-03', 6, 2, '2008-10-03 12:51:34'),
('2008-10-03', 13, 2, '2008-10-03 13:37:33'),
('2008-10-03', 4, 3, '2008-10-03 16:50:02'),
('2008-10-03', 2, 3, '2008-10-03 16:50:02'),
('2008-10-03', 1, 2, '2008-10-03 13:37:33'),
('2008-10-03', 8, 2, '2008-10-03 16:50:02'),
('2008-10-03', 11, 2, '2008-10-03 16:50:02'),
('2008-10-03', 16, 1, '2008-10-03 13:37:33'),
('2008-10-03', 7, 1, '2008-10-03 16:50:02'),
('2008-10-04', 7, 1, '2008-10-04 18:17:53'),
('2008-10-04', 1, 1, '2008-10-04 18:17:53'),
('2008-10-04', 6, 1, '2008-10-04 18:17:53'),
('2008-10-04', 4, 1, '2008-10-04 18:17:53'),
('2008-10-04', 5, 1, '2008-10-04 18:17:53'),
('2008-10-04', 13, 1, '2008-10-04 18:17:53'),
('2008-10-04', 8, 1, '2008-10-04 18:17:53'),
('2008-10-06', 8, 2, '2008-10-06 16:32:48'),
('2008-10-06', 1, 1, '2008-10-06 16:32:48'),
('2008-10-06', 6, 2, '2008-10-06 16:32:48'),
('2008-10-06', 4, 1, '2008-10-06 16:32:48'),
('2008-10-06', 2, 2, '2008-10-06 16:32:48'),
('2008-10-06', 5, 2, '2008-10-06 16:32:48'),
('2008-10-06', 7, 1, '2008-10-06 16:32:48'),
('2008-10-06', 11, 2, '2008-10-06 16:32:48'),
('2008-10-06', 13, 1, '2008-10-06 16:32:48'),
('2008-10-07', 8, 3, '2008-10-07 16:56:32'),
('2008-10-07', 4, 3, '2008-10-07 16:56:32'),
('2008-10-07', 7, 2, '2008-10-07 16:56:32'),
('2008-10-07', 1, 1, '2008-10-07 16:56:32'),
('2008-10-07', 6, 1, '2008-10-07 16:56:32'),
('2008-10-07', 2, 1, '2008-10-07 16:56:32'),
('2008-10-07', 11, 1, '2008-10-07 16:56:32'),
('2008-10-07', 5, 1, '2008-10-07 16:56:32'),
('2008-10-08', 13, 1, '2008-10-08 14:01:03'),
('2008-10-09', 23, 1, '2008-10-09 15:30:44'),
('2008-10-09', 1, 1, '2008-10-09 15:30:44'),
('2008-10-09', 6, 1, '2008-10-09 15:30:44'),
('2008-10-09', 4, 1, '2008-10-09 15:30:44'),
('2008-10-09', 5, 1, '2008-10-09 15:30:44'),
('2008-10-09', 7, 3, '2008-10-10 00:03:39'),
('2008-10-09', 8, 2, '2008-10-09 15:30:44'),
('2008-10-09', 11, 1, '2008-10-09 15:30:44'),
('2008-10-09', 13, 1, '2008-10-09 15:30:44'),
('2008-10-10', 1, 3, '2008-10-10 17:32:45'),
('2008-10-10', 5, 1, '2008-10-10 08:33:23'),
('2008-10-10', 6, 1, '2008-10-10 08:33:23'),
('2008-10-10', 7, 1, '2008-10-10 08:33:23'),
('2008-10-10', 4, 1, '2008-10-10 08:33:23'),
('2008-10-10', 13, 1, '2008-10-10 08:33:23'),
('2008-10-10', 8, 2, '2008-10-10 15:20:53'),
('2008-10-10', 2, 2, '2008-10-10 15:20:53'),
('2008-10-11', 1, 3, '2008-10-11 13:37:39'),
('2008-10-11', 6, 1, '2008-10-11 12:16:12'),
('2008-10-11', 4, 2, '2008-10-11 13:37:39'),
('2008-10-11', 2, 2, '2008-10-11 13:37:39'),
('2008-10-11', 5, 2, '2008-10-11 13:37:39'),
('2008-10-11', 7, 2, '2008-10-11 13:37:39'),
('2008-10-11', 11, 2, '2008-10-11 13:37:39'),
('2008-10-11', 21, 2, '2008-10-11 13:37:39'),
('2008-10-11', 16, 2, '2008-10-11 13:37:39'),
('2008-10-11', 13, 1, '2008-10-11 12:16:12'),
('2008-10-11', 8, 1, '2008-10-11 13:37:39'),
('2008-10-11', 22, 1, '2008-10-11 13:37:39'),
('2008-10-11', 12, 1, '2008-10-11 13:37:39'),
('2008-10-11', 15, 1, '2008-10-11 13:37:39'),
('2008-10-11', 14, 1, '2008-10-11 13:37:39'),
('2008-10-11', 17, 1, '2008-10-11 13:37:39'),
('2008-10-11', 18, 1, '2008-10-11 13:37:39'),
('2008-10-11', 19, 1, '2008-10-11 13:37:39'),
('2008-10-11', 20, 1, '2008-10-11 13:37:39'),
('2008-10-11', 23, 1, '2008-10-11 13:37:39'),
('2008-10-11', 24, 1, '2008-10-11 13:37:39'),
('2008-10-13', 1, 3, '2008-10-13 15:42:45'),
('2008-10-13', 7, 3, '2008-10-13 15:42:45'),
('2008-10-13', 8, 3, '2008-10-13 15:42:45'),
('2008-10-13', 6, 2, '2008-10-13 15:42:45'),
('2008-10-13', 13, 2, '2008-10-13 15:42:45'),
('2008-10-13', 11, 2, '2008-10-13 15:42:45'),
('2008-10-13', 5, 2, '2008-10-13 15:42:45'),
('2008-10-13', 2, 1, '2008-10-13 13:25:08'),
('2008-10-13', 4, 1, '2008-10-13 15:42:45'),
('2008-10-14', 4, 3, '2008-10-14 12:03:08'),
('2008-10-14', 2, 3, '2008-10-14 12:03:08'),
('2008-10-14', 8, 1, '2008-10-14 10:47:19'),
('2008-10-14', 5, 1, '2008-10-14 14:37:38'),
('2008-10-14', 7, 1, '2008-10-14 14:37:38'),
('2008-10-15', 1, 2, '2008-10-15 12:13:37'),
('2008-10-15', 5, 1, '2008-10-15 12:13:37'),
('2008-10-15', 16, 2, '2008-10-15 17:51:47'),
('2008-10-15', 7, 1, '2008-10-15 12:13:37'),
('2008-10-15', 4, 1, '2008-10-15 17:51:47'),
('2008-10-15', 17, 1, '2008-10-15 17:51:47'),
('2008-10-16', 4, 1, '2008-10-17 00:09:47'),
('2008-10-16', 2, 1, '2008-10-17 00:09:47'),
('2008-10-16', 7, 1, '2008-10-17 00:09:47'),
('2008-10-16', 1, 1, '2008-10-17 00:09:47'),
('2008-10-18', 8, 1, '2008-10-18 18:37:58'),
('2008-10-19', 1, 2, '2008-10-19 16:03:27'),
('2008-10-19', 4, 2, '2008-10-19 16:03:27'),
('2008-10-19', 5, 1, '2008-10-19 16:03:27'),
('2008-10-19', 13, 1, '2008-10-19 16:03:27'),
('2008-10-22', 7, 3, '2008-10-22 13:55:02'),
('2008-10-22', 5, 2, '2008-10-22 13:55:02'),
('2008-10-22', 6, 1, '2008-10-22 11:32:00'),
('2008-10-22', 1, 1, '2008-10-22 13:55:02'),
('2008-10-22', 4, 1, '2008-10-22 13:55:02'),
('2008-10-22', 2, 1, '2008-10-22 13:55:02'),
('2008-10-23', 6, 3, '2008-10-23 14:11:21'),
('2008-10-23', 5, 4, '2008-10-23 14:11:21'),
('2008-10-23', 1, 5, '2008-10-23 14:11:21'),
('2008-10-23', 8, 4, '2008-10-23 14:11:21'),
('2008-10-23', 4, 3, '2008-10-23 14:11:21'),
('2008-10-23', 2, 3, '2008-10-23 14:11:21'),
('2008-10-23', 7, 3, '2008-10-23 14:11:21'),
('2008-10-23', 11, 3, '2008-10-23 14:11:21'),
('2008-10-23', 13, 3, '2008-10-23 14:11:21'),
('2008-10-23', 23, 1, '2008-10-23 14:11:21'),
('2008-10-23', 24, 1, '2008-10-23 14:11:21'),
('2008-10-24', 4, 4, '2008-10-25 00:29:11'),
('2008-10-24', 1, 4, '2008-10-25 00:29:11'),
('2008-10-24', 8, 3, '2008-10-25 00:29:11'),
('2008-10-24', 6, 2, '2008-10-25 00:29:11'),
('2008-10-24', 2, 2, '2008-10-25 00:29:11'),
('2008-10-24', 5, 2, '2008-10-25 00:29:11'),
('2008-10-24', 7, 2, '2008-10-25 00:29:11'),
('2008-10-24', 11, 2, '2008-10-25 00:29:11'),
('2008-10-24', 13, 2, '2008-10-25 00:29:11'),
('2008-10-25', 1, 1, '2008-10-25 09:45:57'),
('2008-10-25', 6, 1, '2008-10-25 09:45:57'),
('2008-10-25', 4, 1, '2008-10-25 09:45:57'),
('2008-10-25', 2, 1, '2008-10-25 09:45:57'),
('2008-10-25', 13, 1, '2008-10-25 09:45:57'),
('2008-10-26', 4, 1, '2008-10-26 02:28:12'),
('2008-10-26', 13, 1, '2008-10-26 02:28:12'),
('2008-10-26', 5, 1, '2008-10-26 02:28:12'),
('2008-10-26', 7, 1, '2008-10-26 02:28:12'),
('2008-10-27', 1, 1, '2008-10-27 22:19:49'),
('2008-10-27', 7, 1, '2008-10-27 22:19:49'),
('2008-10-27', 8, 1, '2008-10-27 22:19:49'),
('2008-10-27', 11, 1, '2008-10-27 22:19:49'),
('2008-10-27', 17, 1, '2008-10-27 22:19:49'),
('2008-10-29', 7, 1, '2008-10-29 11:46:09'),
('2008-10-29', 8, 1, '2008-10-29 11:46:09'),
('2008-10-29', 1, 1, '2008-10-29 11:46:09'),
('2008-10-29', 4, 1, '2008-10-29 11:46:09'),
('2008-10-30', 1, 2, '2008-10-30 11:19:13'),
('2008-10-30', 5, 3, '2008-10-30 11:19:13'),
('2008-10-30', 7, 3, '2008-10-30 11:19:13'),
('2008-10-30', 4, 1, '2008-10-30 11:19:13'),
('2008-10-30', 8, 2, '2008-10-30 14:21:53'),
('2008-10-30', 11, 1, '2008-10-30 11:19:13'),
('2008-10-30', 16, 1, '2008-10-30 11:19:13'),
('2008-10-30', 12, 1, '2008-10-30 11:19:13'),
('2008-10-30', 17, 1, '2008-10-30 11:19:13'),
('2008-10-30', 24, 1, '2008-10-30 11:19:13'),
('2008-10-31', 1, 1, '2008-10-31 04:01:35'),
('2008-10-31', 4, 1, '2008-10-31 04:01:35'),
('2008-10-31', 8, 1, '2008-10-31 04:01:35'),
('2008-10-31', 13, 1, '2008-10-31 04:01:35'),
('2008-10-31', 2, 1, '2008-10-31 04:01:35'),
('2008-10-31', 6, 1, '2008-10-31 04:01:35'),
('2008-10-31', 7, 1, '2008-10-31 04:01:35'),
('2008-10-31', 11, 1, '2008-10-31 04:01:35'),
('2008-11-01', 1, 1, '2008-11-01 23:38:00'),
('2008-11-01', 6, 1, '2008-11-01 23:38:00'),
('2008-11-01', 4, 1, '2008-11-01 23:38:00'),
('2008-11-01', 2, 1, '2008-11-01 23:38:00'),
('2008-11-01', 5, 1, '2008-11-01 23:38:00'),
('2008-11-01', 7, 1, '2008-11-01 23:38:00'),
('2008-11-01', 8, 1, '2008-11-01 23:38:00'),
('2008-11-01', 11, 1, '2008-11-01 23:38:00'),
('2008-11-01', 13, 1, '2008-11-01 23:38:00'),
('2008-11-02', 1, 2, '2008-11-02 12:18:33'),
('2008-11-02', 5, 1, '2008-11-02 12:18:33'),
('2008-11-02', 7, 1, '2008-11-02 12:18:33'),
('2008-11-02', 4, 1, '2008-11-02 12:18:33'),
('2008-11-02', 2, 1, '2008-11-02 12:18:33'),
('2008-11-02', 8, 1, '2008-11-02 20:07:13'),
('2008-11-03', 7, 2, '2008-11-03 21:30:48'),
('2008-11-03', 1, 2, '2008-11-03 21:30:48'),
('2008-11-03', 6, 3, '2008-11-03 21:30:48'),
('2008-11-03', 4, 3, '2008-11-03 21:30:48'),
('2008-11-03', 8, 1, '2008-11-03 09:55:46'),
('2008-11-03', 11, 1, '2008-11-03 09:55:46'),
('2008-11-03', 2, 1, '2008-11-03 09:55:46'),
('2008-11-03', 5, 2, '2008-11-03 21:30:48'),
('2008-11-03', 13, 1, '2008-11-03 09:55:46'),
('2008-11-04', 1, 2, '2008-11-04 21:31:47'),
('2008-11-04', 6, 1, '2008-11-04 21:31:47'),
('2008-11-04', 4, 1, '2008-11-04 21:31:47'),
('2008-11-04', 2, 1, '2008-11-04 21:31:47'),
('2008-11-04', 8, 1, '2008-11-04 21:31:47'),
('2008-11-04', 11, 1, '2008-11-04 21:31:47'),
('2008-11-04', 16, 1, '2008-11-04 21:31:47'),
('2008-11-04', 18, 1, '2008-11-04 21:31:47'),
('2008-11-04', 17, 1, '2008-11-04 21:31:47'),
('2008-11-04', 20, 1, '2008-11-04 21:31:47'),
('2008-11-04', 21, 1, '2008-11-04 21:31:47'),
('2008-11-04', 22, 1, '2008-11-04 21:31:47'),
('2008-11-04', 23, 1, '2008-11-04 21:31:47'),
('2008-11-04', 24, 1, '2008-11-04 21:31:47'),
('2008-11-04', 19, 1, '2008-11-04 21:31:47'),
('2008-11-04', 14, 1, '2008-11-04 21:31:47'),
('2008-11-04', 15, 1, '2008-11-04 21:31:47'),
('2008-11-04', 12, 1, '2008-11-04 21:31:47'),
('2008-11-04', 13, 1, '2008-11-04 21:31:47'),
('2008-11-05', 1, 2, '2008-11-05 21:57:40'),
('2008-11-05', 4, 2, '2008-11-05 21:57:40'),
('2008-11-05', 7, 3, '2008-11-05 14:41:41'),
('2008-11-05', 8, 2, '2008-11-05 14:41:41'),
('2008-11-05', 11, 2, '2008-11-05 14:41:41'),
('2008-11-05', 18, 1, '2008-11-05 13:03:05'),
('2008-11-05', 6, 1, '2008-11-05 13:03:05'),
('2008-11-05', 13, 2, '2008-11-05 14:41:41'),
('2008-11-05', 2, 1, '2008-11-05 13:03:05'),
('2008-11-06', 2, 1, '2008-11-06 10:34:18'),
('2008-11-06', 1, 1, '2008-11-06 14:25:17'),
('2008-11-06', 4, 1, '2008-11-06 14:25:17'),
('2008-11-06', 5, 1, '2008-11-06 14:25:17'),
('2008-11-07', 1, 2, '2008-11-07 08:38:55'),
('2008-11-07', 13, 1, '2008-11-07 08:38:55'),
('2008-11-07', 11, 1, '2008-11-07 08:38:55'),
('2008-11-08', 1, 2, '2008-11-08 21:20:39'),
('2008-11-08', 8, 4, '2008-11-08 16:40:21'),
('2008-11-08', 4, 3, '2008-11-08 16:40:21'),
('2008-11-08', 5, 2, '2008-11-08 16:40:21'),
('2008-11-08', 7, 2, '2008-11-08 16:40:21'),
('2008-11-08', 2, 1, '2008-11-08 16:40:21'),
('2008-11-08', 6, 1, '2008-11-08 16:40:21'),
('2008-11-08', 11, 1, '2008-11-08 16:40:21'),
('2008-11-08', 13, 1, '2008-11-08 16:40:21'),
('2008-11-09', 4, 4, '2008-11-09 17:18:10'),
('2008-11-09', 1, 4, '2008-11-09 17:18:10'),
('2008-11-09', 7, 2, '2008-11-09 17:18:10'),
('2008-11-09', 6, 3, '2008-11-09 17:18:10'),
('2008-11-09', 2, 2, '2008-11-09 12:08:03'),
('2008-11-09', 8, 3, '2008-11-09 17:18:10'),
('2008-11-09', 13, 2, '2008-11-09 12:08:03'),
('2008-11-09', 11, 1, '2008-11-09 17:18:10'),
('2008-11-10', 7, 1, '2008-11-10 09:07:08'),
('2008-11-10', 1, 1, '2008-11-10 09:07:08'),
('2008-11-11', 1, 1, '2008-11-11 07:38:34'),
('2008-11-11', 4, 2, '2008-11-11 11:29:50'),
('2008-11-11', 8, 1, '2008-11-11 07:38:34'),
('2008-11-11', 13, 1, '2008-11-11 07:38:34'),
('2008-11-11', 7, 4, '2008-11-11 15:01:19'),
('2008-11-11', 6, 1, '2008-11-11 07:38:34'),
('2008-11-11', 20, 1, '2008-11-11 07:38:34'),
('2008-11-11', 2, 1, '2008-11-11 11:29:50'),
('2008-11-11', 5, 1, '2008-11-11 11:29:50'),
('2008-11-12', 4, 3, '2008-11-12 14:10:03'),
('2008-11-12', 1, 6, '2008-11-12 16:42:53'),
('2008-11-12', 7, 6, '2008-11-12 22:24:59'),
('2008-11-12', 6, 2, '2008-11-12 14:10:03'),
('2008-11-12', 2, 4, '2008-11-12 16:42:53'),
('2008-11-12', 5, 2, '2008-11-12 16:42:53'),
('2008-11-12', 8, 5, '2008-11-12 19:23:02'),
('2008-11-12', 11, 2, '2008-11-12 16:42:53'),
('2008-11-12', 16, 2, '2008-11-12 16:42:53'),
('2008-11-12', 15, 2, '2008-11-12 16:42:53'),
('2008-11-12', 14, 2, '2008-11-12 16:42:53'),
('2008-11-12', 13, 2, '2008-11-12 16:42:53'),
('2008-11-12', 17, 1, '2008-11-12 16:42:53'),
('2008-11-12', 18, 1, '2008-11-12 16:42:53'),
('2008-11-12', 19, 1, '2008-11-12 16:42:53'),
('2008-11-12', 20, 1, '2008-11-12 16:42:53'),
('2008-11-12', 21, 1, '2008-11-12 16:42:53'),
('2008-11-12', 22, 1, '2008-11-12 16:42:53'),
('2008-11-12', 23, 1, '2008-11-12 16:42:53'),
('2008-11-12', 24, 1, '2008-11-12 16:42:53'),
('2008-11-13', 8, 1, '2008-11-13 10:00:41'),
('2008-11-13', 7, 3, '2008-11-13 21:26:01'),
('2008-11-13', 1, 1, '2008-11-13 20:30:00'),
('2008-11-13', 6, 1, '2008-11-13 20:30:00'),
('2008-11-13', 13, 1, '2008-11-13 20:30:00'),
('2008-11-14', 7, 4, '2008-11-14 16:49:56'),
('2008-11-14', 1, 2, '2008-11-14 16:49:56'),
('2008-11-14', 4, 2, '2008-11-14 16:49:56'),
('2008-11-14', 2, 1, '2008-11-14 16:49:56'),
('2008-11-14', 6, 1, '2008-11-14 16:49:56'),
('2008-11-14', 8, 1, '2008-11-14 16:49:56'),
('2008-11-14', 11, 1, '2008-11-14 16:49:56'),
('2008-11-14', 13, 1, '2008-11-14 16:49:56'),
('2008-11-15', 1, 3, '2008-11-15 18:29:11'),
('2008-11-15', 7, 7, '2008-11-15 18:29:11'),
('2008-11-15', 8, 1, '2008-11-15 18:29:11'),
('2008-11-15', 13, 1, '2008-11-15 18:29:11'),
('2008-11-15', 6, 1, '2008-11-15 18:29:11'),
('2008-11-15', 4, 1, '2008-11-15 18:29:11'),
('2008-11-15', 11, 1, '2008-11-15 18:29:11'),
('2008-11-15', 5, 1, '2008-11-15 18:29:11'),
('2008-11-15', 2, 1, '2008-11-15 18:29:11'),
('2008-11-16', 4, 2, '2008-11-16 19:52:29'),
('2008-11-16', 2, 1, '2008-11-16 14:50:05'),
('2008-11-16', 13, 2, '2008-11-16 19:52:29'),
('2008-11-16', 1, 1, '2008-11-16 19:52:29'),
('2008-11-16', 5, 1, '2008-11-16 19:52:29'),
('2008-11-16', 7, 1, '2008-11-16 19:52:29'),
('2008-11-16', 11, 1, '2008-11-16 19:52:29'),
('2008-11-16', 22, 1, '2008-11-16 19:52:29'),
('2008-11-16', 8, 1, '2008-11-16 19:52:29'),
('2008-11-17', 1, 3, '2008-11-17 13:06:26'),
('2008-11-17', 19, 1, '2008-11-17 13:06:26'),
('2008-11-17', 14, 1, '2008-11-17 13:06:26'),
('2008-11-17', 17, 1, '2008-11-17 13:06:26'),
('2008-11-17', 22, 1, '2008-11-17 13:06:26'),
('2008-11-17', 18, 1, '2008-11-17 13:06:26'),
('2008-11-17', 20, 1, '2008-11-17 13:06:26'),
('2008-11-17', 24, 1, '2008-11-17 13:06:26'),
('2008-11-17', 12, 1, '2008-11-17 13:06:26'),
('2008-11-17', 15, 1, '2008-11-17 13:06:26'),
('2008-11-17', 23, 1, '2008-11-17 13:06:26'),
('2008-11-17', 21, 1, '2008-11-17 13:06:26'),
('2008-11-17', 16, 1, '2008-11-17 13:06:26'),
('2008-11-17', 4, 2, '2008-11-17 15:08:53'),
('2008-11-17', 5, 2, '2008-11-17 15:08:53'),
('2008-11-17', 6, 2, '2008-11-17 15:08:53'),
('2008-11-17', 8, 1, '2008-11-17 13:06:26'),
('2008-11-17', 13, 1, '2008-11-17 13:06:26'),
('2008-11-17', 11, 1, '2008-11-17 13:06:26'),
('2008-11-17', 2, 1, '2008-11-17 15:08:53'),
('2008-11-17', 7, 1, '2008-11-17 15:08:53'),
('2008-11-18', 8, 4, '2008-11-18 23:29:16'),
('2008-11-18', 6, 3, '2008-11-18 23:29:16'),
('2008-11-18', 2, 1, '2008-11-18 09:32:03'),
('2008-11-18', 5, 1, '2008-11-18 09:32:03'),
('2008-11-18', 11, 1, '2008-11-18 09:32:03'),
('2008-11-18', 13, 2, '2008-11-18 09:32:03'),
('2008-11-18', 7, 1, '2008-11-18 09:32:03'),
('2008-11-18', 4, 2, '2008-11-18 09:32:03'),
('2008-11-18', 1, 3, '2008-11-18 23:29:16'),
('2008-11-18', 22, 1, '2008-11-18 09:32:03'),
('2008-11-19', 4, 4, '2008-11-19 19:52:33'),
('2008-11-19', 2, 3, '2008-11-19 19:52:33'),
('2008-11-19', 7, 5, '2008-11-19 19:52:33'),
('2008-11-19', 5, 4, '2008-11-19 19:52:33'),
('2008-11-19', 1, 5, '2008-11-19 19:52:33'),
('2008-11-19', 6, 3, '2008-11-19 19:52:33'),
('2008-11-19', 8, 4, '2008-11-19 19:52:33'),
('2008-11-19', 11, 3, '2008-11-19 19:52:33'),
('2008-11-19', 13, 2, '2008-11-19 19:52:33'),
('2008-11-19', 22, 1, '2008-11-19 19:52:33'),
('2008-11-20', 6, 3, '2008-11-20 21:01:18'),
('2008-11-20', 7, 3, '2008-11-20 16:56:46'),
('2008-11-20', 4, 2, '2008-11-20 21:01:18'),
('2008-11-20', 1, 3, '2008-11-20 21:01:18'),
('2008-11-20', 2, 2, '2008-11-20 21:01:18'),
('2008-11-20', 5, 2, '2008-11-20 16:56:46'),
('2008-11-20', 8, 3, '2008-11-20 21:01:18'),
('2008-11-20', 11, 1, '2008-11-20 13:58:11'),
('2008-11-20', 13, 1, '2008-11-20 13:58:11'),
('2008-11-21', 8, 2, '2008-11-21 18:49:45'),
('2008-11-21', 4, 5, '2008-11-21 18:49:45'),
('2008-11-21', 5, 2, '2008-11-21 18:49:45'),
('2008-11-21', 2, 3, '2008-11-21 15:01:58'),
('2008-11-21', 1, 2, '2008-11-21 18:49:45'),
('2008-11-21', 7, 2, '2008-11-21 18:49:45'),
('2008-11-21', 6, 1, '2008-11-21 13:55:41'),
('2008-11-21', 13, 1, '2008-11-21 18:49:45'),
('2008-11-22', 2, 3, '2008-11-22 15:45:29'),
('2008-11-22', 1, 3, '2008-11-22 15:45:29'),
('2008-11-22', 6, 2, '2008-11-22 15:45:29'),
('2008-11-22', 4, 2, '2008-11-22 15:45:29'),
('2008-11-22', 5, 2, '2008-11-22 15:45:29'),
('2008-11-22', 7, 2, '2008-11-22 15:45:29'),
('2008-11-22', 8, 2, '2008-11-22 15:45:29'),
('2008-11-22', 11, 2, '2008-11-22 15:45:29'),
('2008-11-22', 13, 2, '2008-11-22 15:45:29'),
('2008-11-22', 16, 2, '2008-11-22 15:45:29'),
('2008-11-22', 12, 1, '2008-11-22 12:25:28'),
('2008-11-22', 24, 1, '2008-11-22 12:25:28'),
('2008-11-22', 23, 1, '2008-11-22 12:25:28'),
('2008-11-23', 7, 7, '2008-11-23 18:37:19'),
('2008-11-23', 1, 11, '2008-11-23 21:27:23'),
('2008-11-23', 4, 8, '2008-11-23 19:17:59'),
('2008-11-23', 11, 5, '2008-11-23 18:37:19'),
('2008-11-23', 6, 3, '2008-11-23 16:17:51'),
('2008-11-23', 5, 6, '2008-11-23 17:54:02'),
('2008-11-23', 2, 3, '2008-11-23 19:17:59'),
('2008-11-23', 13, 3, '2008-11-23 16:17:51'),
('2008-11-23', 8, 5, '2008-11-23 18:37:19'),
('2008-11-24', 11, 5, '2008-11-24 21:43:28'),
('2008-11-24', 13, 1, '2008-11-24 08:16:17'),
('2008-11-24', 5, 5, '2008-11-24 21:43:28'),
('2008-11-24', 7, 7, '2008-11-24 21:43:28'),
('2008-11-24', 8, 5, '2008-11-24 16:36:02'),
('2008-11-24', 1, 12, '2008-11-24 21:43:28'),
('2008-11-24', 2, 4, '2008-11-24 20:36:03'),
('2008-11-24', 6, 4, '2008-11-24 18:40:50');
INSERT INTO spip_visites_articles (`date`, id_article, visites, maj) VALUES
('2008-11-24', 4, 5, '2008-11-24 21:43:28'),
('2008-11-24', 24, 1, '2008-11-24 11:14:04'),
('2008-11-25', 4, 5, '2008-11-25 22:52:51'),
('2008-11-25', 2, 5, '2008-11-25 22:52:51'),
('2008-11-25', 1, 6, '2008-11-25 22:52:51'),
('2008-11-25', 6, 5, '2008-11-25 22:52:51'),
('2008-11-25', 5, 3, '2008-11-25 22:52:51'),
('2008-11-25', 7, 4, '2008-11-25 22:52:51'),
('2008-11-25', 8, 4, '2008-11-25 22:52:51'),
('2008-11-25', 11, 3, '2008-11-25 22:52:51'),
('2008-11-25', 13, 4, '2008-11-25 22:52:51'),
('2008-11-25', 23, 1, '2008-11-25 17:15:54'),
('2008-11-26', 4, 5, '2008-11-26 22:03:42'),
('2008-11-26', 2, 3, '2008-11-26 16:40:31'),
('2008-11-26', 1, 6, '2008-11-26 22:03:42'),
('2008-11-26', 6, 3, '2008-11-26 16:40:31'),
('2008-11-26', 7, 5, '2008-11-26 22:03:42'),
('2008-11-26', 5, 2, '2008-11-26 14:30:51'),
('2008-11-26', 13, 2, '2008-11-26 16:40:31'),
('2008-11-26', 8, 1, '2008-11-26 16:40:31'),
('2008-11-28', 8, 2, '2008-11-28 21:34:32'),
('2008-11-28', 1, 2, '2008-11-28 21:34:32'),
('2008-11-28', 4, 1, '2008-11-28 21:34:32'),
('2008-11-28', 2, 1, '2008-11-28 21:34:32'),
('2008-11-28', 5, 1, '2008-11-28 21:34:32'),
('2008-11-28', 7, 1, '2008-11-28 21:34:32'),
('2008-11-28', 11, 1, '2008-11-28 21:34:32'),
('2008-11-28', 13, 1, '2008-11-28 21:34:32'),
('2008-11-29', 1, 1, '2008-11-29 07:59:28'),
('2008-11-29', 11, 1, '2008-11-29 07:59:28'),
('2008-11-30', 1, 2, '2008-11-30 16:03:52'),
('2008-11-30', 4, 1, '2008-11-30 09:59:58'),
('2008-11-30', 7, 1, '2008-11-30 09:59:58'),
('2008-11-30', 6, 1, '2008-11-30 09:59:58'),
('2008-11-30', 2, 1, '2008-11-30 09:59:58'),
('2008-11-30', 5, 1, '2008-11-30 16:03:52'),
('2008-12-01', 1, 8, '2008-12-01 20:47:22'),
('2008-12-01', 4, 6, '2008-12-01 20:47:22'),
('2008-12-01', 5, 3, '2008-12-01 15:03:17'),
('2008-12-01', 11, 5, '2008-12-01 20:47:22'),
('2008-12-01', 19, 2, '2008-12-01 20:47:22'),
('2008-12-01', 23, 3, '2008-12-01 20:47:22'),
('2008-12-01', 21, 1, '2008-12-01 09:13:38'),
('2008-12-01', 22, 3, '2008-12-01 20:47:22'),
('2008-12-01', 13, 4, '2008-12-01 15:03:17'),
('2008-12-01', 6, 4, '2008-12-01 20:47:22'),
('2008-12-01', 8, 5, '2008-12-01 15:03:17'),
('2008-12-01', 7, 3, '2008-12-01 15:03:17'),
('2008-12-01', 2, 6, '2008-12-01 20:47:22'),
('2008-12-01', 24, 2, '2008-12-01 20:47:22'),
('2008-12-01', 12, 2, '2008-12-01 20:47:22'),
('2008-12-01', 20, 1, '2008-12-01 20:47:22'),
('2008-12-01', 18, 1, '2008-12-01 20:47:22'),
('2008-12-01', 14, 1, '2008-12-01 20:47:22'),
('2008-12-01', 15, 1, '2008-12-01 20:47:22'),
('2008-12-02', 1, 1, '2008-12-02 14:55:25'),
('2008-12-02', 23, 1, '2008-12-02 14:55:25'),
('2008-12-02', 15, 1, '2008-12-02 14:55:25'),
('2008-12-02', 20, 1, '2008-12-02 14:55:25'),
('2008-12-02', 17, 1, '2008-12-02 14:55:25'),
('2008-12-02', 8, 1, '2008-12-02 14:55:25'),
('2008-12-03', 4, 1, '2008-12-03 20:58:26'),
('2008-12-03', 8, 1, '2008-12-03 20:58:26'),
('2008-12-03', 1, 1, '2008-12-03 20:58:26'),
('2008-12-03', 6, 1, '2008-12-03 20:58:26'),
('2008-12-03', 2, 1, '2008-12-03 20:58:26'),
('2008-12-05', 1, 5, '2008-12-05 21:09:07'),
('2008-12-05', 4, 5, '2008-12-05 21:09:07'),
('2008-12-05', 5, 5, '2008-12-05 21:09:07'),
('2008-12-05', 8, 4, '2008-12-05 21:09:07'),
('2008-12-05', 2, 4, '2008-12-05 21:09:07'),
('2008-12-05', 6, 4, '2008-12-05 21:09:07'),
('2008-12-05', 7, 5, '2008-12-05 21:09:07'),
('2008-12-05', 11, 5, '2008-12-05 21:09:07'),
('2008-12-05', 13, 4, '2008-12-05 21:09:07'),
('2008-12-06', 2, 8, '2008-12-06 22:37:09'),
('2008-12-06', 4, 7, '2008-12-06 22:37:09'),
('2008-12-06', 6, 6, '2008-12-06 22:37:09'),
('2008-12-06', 5, 7, '2008-12-06 22:37:09'),
('2008-12-06', 7, 6, '2008-12-06 22:37:09'),
('2008-12-06', 8, 6, '2008-12-06 22:37:09'),
('2008-12-06', 19, 1, '2008-12-06 15:04:44'),
('2008-12-06', 13, 6, '2008-12-06 22:37:09'),
('2008-12-06', 1, 8, '2008-12-06 22:37:09'),
('2008-12-06', 11, 5, '2008-12-06 22:37:09'),
('2008-12-06', 16, 1, '2008-12-06 18:29:25'),
('2008-12-06', 14, 1, '2008-12-06 18:29:25'),
('2008-12-06', 17, 1, '2008-12-06 18:29:25'),
('2008-12-06', 18, 1, '2008-12-06 18:29:25'),
('2008-12-06', 23, 1, '2008-12-06 18:29:25'),
('2008-12-07', 1, 5, '2008-12-07 23:27:09'),
('2008-12-07', 6, 3, '2008-12-07 23:27:09'),
('2008-12-07', 4, 6, '2008-12-07 23:27:09'),
('2008-12-07', 2, 5, '2008-12-07 23:27:09'),
('2008-12-07', 5, 4, '2008-12-07 23:27:09'),
('2008-12-07', 7, 4, '2008-12-07 23:27:09'),
('2008-12-07', 8, 5, '2008-12-07 23:27:09'),
('2008-12-07', 11, 4, '2008-12-07 23:27:09'),
('2008-12-07', 13, 4, '2008-12-07 23:27:09'),
('2008-12-08', 1, 3, '2008-12-08 18:31:49'),
('2008-12-08', 4, 4, '2008-12-08 18:31:49'),
('2008-12-08', 5, 3, '2008-12-08 18:31:49'),
('2008-12-08', 7, 3, '2008-12-08 18:31:49'),
('2008-12-08', 13, 3, '2008-12-08 18:31:49'),
('2008-12-08', 2, 4, '2008-12-08 18:31:49'),
('2008-12-08', 6, 3, '2008-12-08 18:31:49'),
('2008-12-08', 8, 3, '2008-12-08 18:31:49'),
('2008-12-08', 11, 2, '2008-12-08 18:31:49'),
('2008-12-09', 1, 4, '2008-12-09 22:44:52'),
('2008-12-09', 6, 4, '2008-12-09 11:45:54'),
('2008-12-09', 4, 5, '2008-12-09 22:44:52'),
('2008-12-09', 11, 1, '2008-12-09 08:09:50'),
('2008-12-09', 7, 3, '2008-12-09 21:19:28'),
('2008-12-09', 13, 2, '2008-12-09 22:44:52'),
('2008-12-09', 2, 3, '2008-12-09 19:06:30'),
('2008-12-09', 5, 2, '2008-12-09 22:44:52'),
('2008-12-10', 4, 1, '2008-12-10 13:48:28'),
('2008-12-11', 1, 3, '2008-12-11 21:12:43'),
('2008-12-11', 6, 2, '2008-12-11 21:12:43'),
('2008-12-11', 13, 2, '2008-12-11 21:12:43'),
('2008-12-11', 11, 2, '2008-12-11 21:12:43'),
('2008-12-11', 8, 2, '2008-12-11 21:12:43'),
('2008-12-11', 7, 2, '2008-12-11 21:12:43'),
('2008-12-11', 4, 1, '2008-12-11 21:12:43'),
('2008-12-11', 2, 1, '2008-12-11 21:12:43'),
('2008-12-11', 5, 1, '2008-12-11 21:12:43'),
('2008-12-12', 1, 5, '2008-12-12 23:07:14'),
('2008-12-12', 4, 5, '2008-12-12 23:07:14'),
('2008-12-12', 2, 3, '2008-12-12 23:07:14'),
('2008-12-12', 5, 4, '2008-12-12 23:07:14'),
('2008-12-12', 8, 3, '2008-12-12 23:07:14'),
('2008-12-12', 7, 4, '2008-12-12 23:07:14'),
('2008-12-12', 6, 3, '2008-12-12 23:07:14'),
('2008-12-12', 11, 2, '2008-12-12 23:07:14'),
('2008-12-12', 13, 2, '2008-12-12 23:07:14'),
('2008-12-12', 24, 1, '2008-12-12 23:07:14'),
('2008-12-13', 6, 2, '2008-12-13 18:00:06'),
('2008-12-13', 4, 2, '2008-12-13 18:00:06'),
('2008-12-13', 2, 3, '2008-12-13 18:00:06'),
('2008-12-13', 5, 2, '2008-12-13 18:00:06'),
('2008-12-13', 7, 1, '2008-12-13 00:33:29'),
('2008-12-13', 8, 1, '2008-12-13 00:33:29'),
('2008-12-13', 11, 1, '2008-12-13 00:33:29'),
('2008-12-13', 13, 1, '2008-12-13 00:33:29'),
('2008-12-15', 4, 5, '2008-12-15 14:44:39'),
('2008-12-15', 2, 3, '2008-12-15 11:32:00'),
('2008-12-15', 1, 3, '2008-12-15 14:44:39'),
('2008-12-15', 6, 2, '2008-12-15 11:32:00'),
('2008-12-15', 5, 3, '2008-12-15 14:44:39'),
('2008-12-15', 7, 3, '2008-12-15 14:44:39'),
('2008-12-15', 8, 2, '2008-12-15 11:32:00'),
('2008-12-15', 11, 3, '2008-12-15 14:44:39'),
('2008-12-15', 13, 1, '2008-12-15 10:52:12'),
('2008-12-19', 2, 1, '2008-12-19 10:39:09'),
('2008-12-19', 6, 1, '2008-12-19 10:39:09'),
('2008-12-19', 7, 1, '2008-12-19 10:39:09'),
('2008-12-19', 4, 1, '2008-12-19 10:39:09'),
('2008-12-19', 8, 1, '2008-12-19 10:39:09'),
('2008-12-20', 4, 1, '2008-12-20 21:15:34'),
('2008-12-20', 5, 1, '2008-12-20 21:15:34'),
('2008-12-20', 7, 1, '2008-12-20 21:15:34'),
('2008-12-20', 1, 1, '2008-12-20 21:15:34'),
('2008-12-20', 8, 1, '2008-12-20 21:15:34'),
('2008-12-22', 4, 5, '2008-12-22 23:28:52'),
('2008-12-22', 1, 5, '2008-12-22 23:28:52'),
('2008-12-22', 8, 3, '2008-12-22 21:50:53'),
('2008-12-22', 6, 3, '2008-12-22 23:28:52'),
('2008-12-22', 2, 2, '2008-12-22 21:50:53'),
('2008-12-22', 5, 3, '2008-12-22 23:28:52'),
('2008-12-22', 7, 3, '2008-12-22 23:28:52'),
('2008-12-22', 11, 2, '2008-12-22 23:28:52'),
('2008-12-22', 13, 2, '2008-12-22 21:50:53'),
('2008-12-22', 23, 2, '2008-12-22 23:28:52'),
('2008-12-22', 24, 2, '2008-12-22 23:28:52'),
('2008-12-22', 20, 1, '2008-12-22 23:28:52'),
('2008-12-23', 4, 4, '2008-12-23 22:03:23'),
('2008-12-23', 2, 3, '2008-12-23 22:03:23'),
('2008-12-23', 1, 4, '2008-12-23 22:03:23'),
('2008-12-23', 5, 2, '2008-12-23 16:41:09'),
('2008-12-23', 7, 2, '2008-12-23 16:41:09'),
('2008-12-23', 20, 1, '2008-12-23 16:41:09'),
('2008-12-23', 6, 2, '2008-12-23 16:41:09'),
('2008-12-23', 8, 3, '2008-12-23 22:03:23'),
('2008-12-23', 11, 3, '2008-12-23 22:03:23'),
('2008-12-23', 13, 2, '2008-12-23 16:41:09'),
('2008-12-24', 13, 1, '2008-12-24 08:44:10'),
('2008-12-24', 11, 1, '2008-12-24 08:44:10'),
('2008-12-24', 8, 1, '2008-12-24 08:44:10'),
('2008-12-24', 7, 1, '2008-12-24 08:44:10'),
('2008-12-24', 5, 1, '2008-12-24 08:44:10'),
('2008-12-24', 2, 1, '2008-12-24 08:44:10'),
('2008-12-26', 2, 3, '2008-12-26 18:53:12'),
('2008-12-26', 6, 2, '2008-12-26 18:53:12'),
('2008-12-26', 4, 2, '2008-12-26 18:53:12'),
('2008-12-26', 11, 2, '2008-12-26 18:53:12'),
('2008-12-26', 7, 2, '2008-12-26 18:53:12'),
('2008-12-26', 13, 2, '2008-12-26 18:53:12'),
('2008-12-26', 1, 1, '2008-12-26 18:53:12'),
('2008-12-26', 8, 1, '2008-12-26 18:53:12'),
('2008-12-26', 5, 1, '2008-12-26 18:53:12'),
('2008-12-26', 16, 1, '2008-12-27 00:29:50'),
('2008-12-27', 1, 1, '2008-12-27 13:30:43'),
('2008-12-27', 6, 1, '2008-12-27 13:30:43'),
('2008-12-27', 4, 2, '2008-12-27 16:42:37'),
('2008-12-27', 2, 1, '2008-12-27 13:30:43'),
('2008-12-27', 24, 1, '2008-12-27 13:30:43'),
('2008-12-28', 8, 1, '2008-12-28 21:51:14'),
('2008-12-28', 7, 1, '2008-12-28 21:51:14'),
('2008-12-28', 5, 1, '2008-12-28 21:51:14'),
('2008-12-28', 2, 1, '2008-12-28 21:51:14'),
('2008-12-28', 4, 1, '2008-12-28 21:51:14'),
('2008-12-28', 6, 1, '2008-12-28 21:51:14'),
('2008-12-28', 1, 1, '2008-12-28 21:51:14'),
('2008-12-28', 13, 1, '2008-12-28 21:51:14'),
('2008-12-28', 11, 1, '2008-12-28 21:51:14'),
('2008-12-29', 1, 3, '2008-12-29 22:23:02'),
('2008-12-29', 6, 2, '2008-12-29 19:20:59'),
('2008-12-29', 4, 2, '2008-12-29 19:20:59'),
('2008-12-29', 5, 3, '2008-12-29 22:23:02'),
('2008-12-29', 7, 2, '2008-12-29 19:20:59'),
('2008-12-29', 8, 2, '2008-12-29 19:20:59'),
('2008-12-29', 11, 2, '2008-12-29 19:20:59'),
('2008-12-29', 14, 1, '2008-12-29 08:37:08'),
('2008-12-29', 20, 1, '2008-12-29 08:37:08'),
('2008-12-29', 13, 2, '2008-12-29 19:20:59'),
('2008-12-29', 2, 2, '2008-12-29 19:20:59'),
('2008-12-29', 17, 1, '2008-12-29 19:20:59'),
('2008-12-30', 1, 3, '2008-12-30 20:25:30'),
('2008-12-30', 6, 1, '2008-12-30 16:21:35'),
('2008-12-30', 4, 1, '2008-12-30 16:21:35'),
('2008-12-30', 5, 1, '2008-12-30 16:21:35'),
('2008-12-30', 7, 1, '2008-12-30 16:21:35'),
('2008-12-30', 11, 1, '2008-12-30 16:21:35'),
('2008-12-30', 13, 1, '2008-12-30 16:21:35'),
('2008-12-30', 2, 1, '2008-12-30 16:21:35'),
('2008-12-30', 15, 1, '2008-12-30 16:21:35'),
('2008-12-30', 8, 1, '2008-12-30 20:25:30'),
('2008-12-31', 6, 1, '2008-12-31 13:21:06'),
('2008-12-31', 1, 1, '2008-12-31 13:21:06'),
('2008-12-31', 4, 1, '2008-12-31 13:21:06'),
('2008-12-31', 2, 1, '2008-12-31 13:21:06'),
('2008-12-31', 5, 1, '2008-12-31 13:21:06'),
('2008-12-31', 7, 1, '2008-12-31 13:21:06'),
('2008-12-31', 8, 1, '2008-12-31 13:21:06'),
('2008-12-31', 11, 1, '2008-12-31 13:21:06'),
('2008-12-31', 24, 1, '2008-12-31 13:21:06'),
('2009-01-02', 24, 1, '2009-01-02 01:24:15'),
('2009-01-02', 16, 1, '2009-01-02 01:24:15'),
('2009-01-04', 8, 3, '2009-01-04 22:25:52'),
('2009-01-04', 1, 3, '2009-01-04 22:25:52'),
('2009-01-04', 7, 2, '2009-01-04 22:25:52'),
('2009-01-05', 1, 2, '2009-01-05 11:05:57'),
('2009-01-05', 4, 2, '2009-01-05 11:05:57'),
('2009-01-05', 2, 2, '2009-01-05 11:05:57'),
('2009-01-05', 13, 2, '2009-01-05 11:05:57'),
('2009-01-05', 6, 1, '2009-01-05 11:05:57'),
('2009-01-05', 5, 1, '2009-01-05 11:05:57'),
('2009-01-05', 7, 1, '2009-01-05 11:05:57'),
('2009-01-05', 8, 1, '2009-01-05 11:05:57'),
('2009-01-05', 11, 1, '2009-01-05 11:05:57'),
('2009-01-05', 16, 1, '2009-01-05 11:05:57'),
('2009-01-06', 1, 3, '2009-01-06 22:11:50'),
('2009-01-06', 8, 3, '2009-01-06 22:11:50'),
('2009-01-06', 11, 1, '2009-01-06 17:11:46'),
('2009-01-06', 5, 2, '2009-01-06 22:11:50'),
('2009-01-06', 2, 2, '2009-01-06 22:11:50'),
('2009-01-06', 7, 2, '2009-01-06 22:11:50'),
('2009-01-06', 13, 1, '2009-01-06 17:11:46'),
('2009-01-06', 4, 2, '2009-01-06 22:11:50'),
('2009-01-06', 6, 1, '2009-01-06 17:11:46'),
('2009-01-07', 2, 1, '2009-01-07 21:29:35'),
('2009-01-07', 4, 2, '2009-01-07 21:29:35'),
('2009-01-07', 6, 1, '2009-01-07 21:29:35'),
('2009-01-07', 11, 1, '2009-01-07 21:29:35'),
('2009-01-10', 13, 1, '2009-01-10 12:10:25'),
('2009-01-10', 4, 1, '2009-01-10 12:10:25'),
('2009-01-10', 7, 1, '2009-01-10 12:10:25'),
('2009-01-10', 6, 1, '2009-01-10 12:10:25'),
('2009-01-12', 4, 2, '2009-01-12 17:11:32'),
('2009-01-12', 1, 2, '2009-01-12 17:11:32'),
('2009-01-12', 6, 2, '2009-01-12 17:11:32'),
('2009-01-12', 5, 2, '2009-01-12 17:11:32'),
('2009-01-12', 7, 2, '2009-01-12 17:11:32'),
('2009-01-12', 8, 2, '2009-01-12 17:11:32'),
('2009-01-12', 11, 2, '2009-01-12 17:11:32'),
('2009-01-12', 13, 1, '2009-01-12 17:11:32'),
('2009-01-12', 23, 1, '2009-01-12 17:11:32'),
('2009-01-12', 16, 1, '2009-01-12 17:11:32'),
('2009-01-12', 2, 1, '2009-01-12 17:11:32'),
('2009-01-13', 4, 1, '2009-01-13 16:58:19'),
('2009-01-13', 5, 1, '2009-01-13 16:58:19'),
('2009-01-13', 2, 1, '2009-01-13 16:58:19'),
('2009-01-13', 7, 1, '2009-01-13 16:58:19'),
('2009-01-13', 8, 1, '2009-01-13 16:58:19'),
('2009-01-14', 4, 2, '2009-01-14 10:52:57'),
('2009-01-14', 5, 2, '2009-01-14 10:52:57'),
('2009-01-14', 2, 2, '2009-01-14 10:52:57'),
('2009-01-14', 6, 2, '2009-01-14 10:52:57'),
('2009-01-14', 1, 4, '2009-01-14 10:52:57'),
('2009-01-14', 7, 2, '2009-01-14 10:52:57'),
('2009-01-14', 8, 1, '2009-01-14 10:52:57'),
('2009-01-14', 11, 1, '2009-01-14 10:52:57'),
('2009-01-14', 13, 1, '2009-01-14 10:52:57'),
('2009-01-15', 4, 2, '2009-01-15 17:45:04'),
('2009-01-15', 6, 2, '2009-01-15 17:45:04'),
('2009-01-15', 11, 2, '2009-01-15 17:45:04'),
('2009-01-15', 1, 2, '2009-01-15 17:45:04'),
('2009-01-15', 2, 1, '2009-01-15 17:45:04'),
('2009-01-15', 8, 1, '2009-01-15 17:45:04'),
('2009-01-15', 7, 1, '2009-01-15 17:45:04'),
('2009-01-15', 5, 1, '2009-01-15 17:45:04'),
('2009-01-15', 16, 1, '2009-01-15 17:45:04'),
('2009-01-15', 12, 1, '2009-01-15 17:45:04'),
('2009-01-15', 15, 1, '2009-01-15 17:45:04'),
('2009-01-15', 14, 1, '2009-01-15 17:45:04'),
('2009-01-15', 17, 1, '2009-01-15 17:45:04'),
('2009-01-15', 18, 1, '2009-01-15 17:45:04'),
('2009-01-15', 19, 1, '2009-01-15 17:45:04'),
('2009-01-15', 20, 1, '2009-01-15 17:45:04'),
('2009-01-15', 21, 1, '2009-01-15 17:45:04'),
('2009-01-15', 22, 1, '2009-01-15 17:45:04'),
('2009-01-15', 23, 1, '2009-01-15 17:45:04'),
('2009-01-15', 24, 1, '2009-01-15 17:45:04'),
('2009-01-15', 13, 1, '2009-01-15 17:45:04'),
('2009-01-17', 1, 1, '2009-01-17 00:34:28'),
('2009-01-17', 4, 1, '2009-01-17 00:34:28'),
('2009-01-17', 2, 1, '2009-01-17 00:34:28'),
('2009-01-17', 5, 1, '2009-01-17 00:34:28'),
('2009-01-17', 7, 1, '2009-01-17 00:34:28'),
('2009-01-17', 6, 1, '2009-01-17 00:34:28'),
('2009-01-17', 8, 1, '2009-01-17 00:34:28'),
('2009-01-19', 1, 3, '2009-01-19 11:41:25'),
('2009-01-19', 5, 1, '2009-01-19 11:41:25'),
('2009-01-19', 8, 1, '2009-01-19 11:41:25'),
('2009-01-20', 5, 2, '2009-01-20 16:15:23'),
('2009-01-20', 1, 4, '2009-01-20 16:15:23'),
('2009-01-20', 8, 2, '2009-01-20 16:15:23'),
('2009-01-20', 6, 2, '2009-01-20 16:15:23'),
('2009-01-20', 4, 1, '2009-01-20 16:15:23'),
('2009-01-20', 2, 1, '2009-01-20 16:15:23'),
('2009-01-20', 13, 1, '2009-01-20 16:15:23'),
('2009-01-20', 11, 1, '2009-01-20 16:15:23'),
('2009-01-20', 7, 1, '2009-01-20 16:15:23'),
('2009-01-21', 1, 1, '2009-01-21 08:48:51'),
('2009-01-21', 6, 1, '2009-01-21 08:48:51'),
('2009-01-21', 4, 1, '2009-01-21 08:48:51'),
('2009-01-21', 2, 1, '2009-01-21 08:48:51'),
('2009-01-22', 4, 1, '2009-01-22 08:19:29'),
('2009-01-22', 2, 1, '2009-01-22 08:19:29'),
('2009-01-22', 5, 1, '2009-01-22 08:19:29'),
('2009-01-22', 7, 1, '2009-01-22 08:19:29'),
('2009-01-22', 8, 1, '2009-01-22 08:19:29'),
('2009-01-22', 11, 1, '2009-01-22 08:19:29'),
('2009-01-22', 13, 1, '2009-01-22 08:19:29'),
('2009-01-24', 1, 1, '2009-01-24 17:04:06'),
('2009-01-24', 4, 1, '2009-01-24 17:04:06'),
('2009-01-24', 2, 1, '2009-01-24 17:04:06'),
('2009-01-24', 6, 1, '2009-01-24 17:04:06'),
('2009-01-24', 5, 1, '2009-01-24 17:04:06'),
('2009-01-24', 7, 1, '2009-01-24 17:04:06'),
('2009-01-24', 8, 1, '2009-01-24 17:04:06'),
('2009-01-24', 11, 1, '2009-01-24 17:04:06'),
('2009-01-24', 23, 1, '2009-01-24 17:04:06'),
('2009-01-24', 13, 1, '2009-01-24 17:04:06'),
('2009-01-27', 8, 3, '2009-01-27 13:45:04'),
('2009-01-27', 1, 3, '2009-01-27 13:45:04'),
('2009-01-27', 6, 4, '2009-01-27 13:45:04'),
('2009-01-27', 4, 3, '2009-01-27 13:45:04'),
('2009-01-27', 2, 3, '2009-01-27 13:45:04'),
('2009-01-27', 5, 3, '2009-01-27 13:45:04'),
('2009-01-27', 7, 3, '2009-01-27 13:45:04'),
('2009-01-27', 11, 2, '2009-01-27 13:45:04'),
('2009-01-27', 13, 2, '2009-01-27 13:45:04'),
('2009-01-27', 16, 1, '2009-01-27 13:45:04'),
('2009-01-27', 12, 1, '2009-01-27 13:45:04'),
('2009-01-27', 15, 1, '2009-01-27 13:45:04'),
('2009-01-27', 14, 1, '2009-01-27 13:45:04'),
('2009-01-27', 17, 1, '2009-01-27 13:45:04'),
('2009-01-27', 18, 1, '2009-01-27 13:45:04'),
('2009-01-27', 19, 1, '2009-01-27 13:45:04'),
('2009-01-27', 20, 1, '2009-01-27 13:45:04'),
('2009-01-27', 21, 1, '2009-01-27 13:45:04'),
('2009-01-27', 22, 1, '2009-01-27 13:45:04'),
('2009-01-27', 23, 1, '2009-01-27 13:45:04'),
('2009-01-27', 24, 1, '2009-01-27 13:45:04'),
('2009-01-29', 1, 7, '2009-01-29 18:15:17'),
('2009-01-29', 6, 2, '2009-01-29 17:35:17'),
('2009-01-29', 4, 4, '2009-01-29 18:15:17'),
('2009-01-29', 7, 2, '2009-01-29 17:35:17'),
('2009-01-29', 8, 1, '2009-01-29 06:45:32'),
('2009-01-29', 13, 1, '2009-01-29 17:35:17'),
('2009-01-29', 11, 1, '2009-01-29 17:35:17'),
('2009-01-29', 2, 1, '2009-01-29 18:15:17'),
('2009-01-31', 1, 1, '2009-01-31 12:20:55'),
('2009-01-31', 4, 1, '2009-01-31 12:20:55'),
('2009-01-31', 5, 1, '2009-01-31 12:20:55'),
('2009-01-31', 7, 1, '2009-01-31 12:20:55'),
('2009-01-31', 8, 1, '2009-01-31 12:20:55'),
('2009-01-31', 11, 1, '2009-01-31 12:20:55'),
('2009-01-31', 16, 1, '2009-01-31 12:20:55'),
('2009-01-31', 15, 1, '2009-01-31 12:20:55'),
('2009-02-01', 4, 1, '2009-02-01 11:41:37'),
('2009-02-01', 2, 1, '2009-02-01 11:41:37'),
('2009-02-01', 5, 1, '2009-02-01 11:41:37'),
('2009-02-01', 7, 1, '2009-02-01 11:41:37'),
('2009-02-01', 20, 1, '2009-02-01 11:41:37'),
('2009-02-01', 13, 1, '2009-02-01 11:41:37'),
('2009-02-02', 1, 2, '2009-02-02 14:22:35'),
('2009-02-02', 4, 1, '2009-02-02 11:51:45'),
('2009-02-02', 7, 2, '2009-02-02 14:22:35'),
('2009-02-02', 2, 3, '2009-02-02 15:22:24'),
('2009-02-02', 8, 1, '2009-02-02 14:22:35'),
('2009-02-02', 5, 1, '2009-02-02 14:22:35'),
('2009-02-02', 13, 1, '2009-02-02 14:22:35'),
('2009-02-03', 1, 1, '2009-02-03 13:33:20'),
('2009-02-03', 4, 1, '2009-02-03 13:33:20'),
('2009-02-03', 2, 1, '2009-02-03 13:33:20'),
('2009-02-03', 5, 1, '2009-02-03 13:33:20'),
('2009-02-03', 7, 1, '2009-02-03 13:33:20'),
('2009-02-03', 8, 1, '2009-02-03 13:33:20'),
('2009-02-03', 11, 1, '2009-02-03 13:33:20'),
('2009-02-03', 13, 1, '2009-02-03 13:33:20'),
('2009-02-04', 2, 1, '2009-02-04 20:38:14'),
('2009-02-04', 1, 1, '2009-02-04 20:38:14'),
('2009-02-04', 6, 1, '2009-02-04 20:38:14'),
('2009-02-04', 5, 1, '2009-02-04 20:38:14'),
('2009-02-04', 7, 1, '2009-02-04 20:38:14'),
('2009-02-04', 8, 1, '2009-02-04 20:38:14'),
('2009-02-04', 13, 1, '2009-02-04 20:38:14'),
('2009-02-04', 4, 1, '2009-02-04 20:38:14'),
('2009-02-06', 1, 2, '2009-02-06 18:03:15'),
('2009-02-06', 8, 2, '2009-02-06 18:03:15'),
('2009-02-06', 6, 1, '2009-02-06 18:03:15'),
('2009-02-06', 4, 1, '2009-02-06 18:03:15'),
('2009-02-06', 5, 1, '2009-02-06 18:03:15'),
('2009-02-06', 7, 1, '2009-02-06 18:03:15'),
('2009-02-06', 11, 1, '2009-02-06 18:03:15'),
('2009-02-06', 13, 1, '2009-02-06 18:03:15'),
('2009-02-08', 1, 2, '2009-02-08 22:22:12'),
('2009-02-08', 2, 2, '2009-02-08 22:22:12'),
('2009-02-08', 4, 1, '2009-02-08 22:22:12'),
('2009-02-08', 8, 2, '2009-02-08 22:22:12'),
('2009-02-09', 1, 4, '2009-02-09 18:47:49'),
('2009-02-09', 4, 4, '2009-02-09 18:47:49'),
('2009-02-09', 11, 1, '2009-02-09 11:20:36'),
('2009-02-09', 5, 2, '2009-02-09 18:14:22'),
('2009-02-09', 8, 1, '2009-02-09 11:20:36'),
('2009-02-09', 6, 2, '2009-02-09 18:47:49'),
('2009-02-09', 2, 2, '2009-02-09 18:47:49'),
('2009-02-09', 7, 2, '2009-02-09 18:47:49'),
('2009-02-10', 1, 3, '2009-02-10 16:57:10'),
('2009-02-10', 6, 2, '2009-02-10 16:57:10'),
('2009-02-10', 4, 2, '2009-02-10 16:57:10'),
('2009-02-10', 2, 2, '2009-02-10 16:57:10'),
('2009-02-10', 5, 1, '2009-02-10 08:44:27'),
('2009-02-10', 7, 1, '2009-02-10 08:44:27'),
('2009-02-10', 8, 1, '2009-02-10 08:44:27'),
('2009-02-10', 11, 1, '2009-02-10 08:44:27'),
('2009-02-10', 13, 2, '2009-02-10 16:57:10'),
('2009-02-10', 19, 1, '2009-02-10 08:44:27'),
('2009-02-10', 14, 1, '2009-02-10 08:44:27'),
('2009-02-10', 17, 1, '2009-02-10 08:44:27'),
('2009-02-11', 1, 4, '2009-02-11 18:42:55'),
('2009-02-11', 8, 2, '2009-02-11 18:42:55'),
('2009-02-11', 4, 2, '2009-02-11 18:42:55'),
('2009-02-11', 6, 2, '2009-02-11 18:42:55'),
('2009-02-11', 7, 2, '2009-02-11 18:42:55'),
('2009-02-11', 13, 2, '2009-02-11 18:42:55'),
('2009-02-11', 2, 1, '2009-02-11 18:42:55'),
('2009-02-11', 5, 1, '2009-02-11 18:42:55'),
('2009-02-11', 11, 1, '2009-02-11 18:42:55'),
('2009-02-11', 23, 1, '2009-02-11 18:42:55'),
('2009-02-13', 4, 2, '2009-02-13 18:40:49'),
('2009-02-13', 2, 2, '2009-02-13 18:40:49'),
('2009-02-13', 6, 1, '2009-02-13 18:40:49'),
('2009-02-13', 5, 1, '2009-02-13 18:40:49'),
('2009-02-13', 7, 1, '2009-02-13 18:40:49'),
('2009-02-13', 11, 1, '2009-02-13 18:40:49'),
('2009-02-13', 13, 1, '2009-02-13 18:40:49'),
('2009-02-13', 8, 1, '2009-02-13 18:40:49'),
('2009-02-16', 8, 4, '2009-02-16 15:25:53'),
('2009-02-16', 1, 3, '2009-02-16 15:25:53'),
('2009-02-16', 6, 2, '2009-02-16 15:25:53'),
('2009-02-16', 4, 2, '2009-02-16 15:25:53'),
('2009-02-16', 2, 1, '2009-02-16 09:49:26'),
('2009-02-16', 5, 2, '2009-02-16 15:25:53'),
('2009-02-16', 7, 2, '2009-02-16 15:25:53'),
('2009-02-16', 11, 2, '2009-02-16 15:25:53'),
('2009-02-16', 13, 2, '2009-02-16 15:25:53'),
('2009-02-18', 11, 1, '2009-02-18 19:13:41'),
('2009-02-18', 1, 1, '2009-02-18 19:13:41'),
('2009-02-18', 6, 1, '2009-02-18 19:13:41'),
('2009-02-18', 4, 1, '2009-02-18 19:13:41'),
('2009-02-18', 5, 1, '2009-02-18 19:13:41'),
('2009-02-18', 7, 1, '2009-02-18 19:13:41'),
('2009-02-20', 1, 4, '2009-02-20 16:07:16'),
('2009-02-20', 5, 1, '2009-02-20 11:07:18'),
('2009-02-20', 4, 1, '2009-02-20 11:07:18'),
('2009-02-20', 2, 1, '2009-02-20 11:07:18'),
('2009-02-20', 16, 1, '2009-02-20 11:07:18'),
('2009-02-20', 19, 1, '2009-02-20 11:07:18'),
('2009-02-20', 20, 1, '2009-02-20 11:07:18'),
('2009-02-20', 6, 1, '2009-02-20 11:07:18'),
('2009-02-20', 13, 1, '2009-02-20 11:07:18'),
('2009-02-20', 11, 1, '2009-02-20 11:07:18'),
('2009-02-20', 7, 1, '2009-02-20 11:07:18'),
('2009-02-21', 23, 1, '2009-02-21 14:54:25'),
('2009-02-21', 11, 1, '2009-02-21 14:54:25'),
('2009-02-21', 8, 1, '2009-02-21 14:54:25'),
('2009-02-21', 24, 1, '2009-02-21 14:54:25'),
('2009-02-21', 7, 1, '2009-02-21 14:54:25'),
('2009-02-21', 1, 1, '2009-02-21 14:54:25'),
('2009-02-21', 4, 1, '2009-02-21 14:54:25'),
('2009-02-23', 1, 2, '2009-02-23 22:05:04'),
('2009-02-24', 4, 1, '2009-02-24 15:21:29'),
('2009-02-24', 2, 1, '2009-02-24 15:21:29'),
('2009-02-24', 1, 1, '2009-02-24 15:21:29'),
('2009-02-24', 5, 1, '2009-02-24 15:21:29'),
('2009-02-24', 7, 1, '2009-02-24 15:21:29'),
('2009-02-24', 11, 1, '2009-02-24 15:21:29'),
('2009-02-24', 8, 1, '2009-02-24 15:21:29'),
('2009-02-24', 23, 1, '2009-02-24 15:21:29'),
('2009-02-24', 22, 1, '2009-02-24 15:21:29'),
('2009-02-24', 21, 1, '2009-02-24 15:21:29'),
('2009-02-24', 16, 1, '2009-02-24 15:21:29'),
('2009-02-24', 12, 1, '2009-02-24 15:21:29'),
('2009-02-24', 15, 1, '2009-02-24 15:21:29'),
('2009-02-24', 14, 1, '2009-02-24 15:21:29'),
('2009-02-24', 17, 1, '2009-02-24 15:21:29'),
('2009-02-24', 19, 1, '2009-02-24 15:21:29'),
('2009-02-24', 13, 1, '2009-02-24 15:21:29'),
('2009-02-24', 6, 1, '2009-02-24 15:21:29'),
('2009-02-25', 1, 2, '2009-02-25 22:17:21'),
('2009-02-25', 4, 1, '2009-02-25 22:17:21'),
('2009-02-25', 2, 1, '2009-02-25 22:17:21'),
('2009-02-25', 5, 1, '2009-02-25 22:17:21'),
('2009-02-25', 7, 1, '2009-02-25 22:17:21'),
('2009-02-25', 8, 1, '2009-02-25 22:17:21'),
('2009-02-25', 11, 1, '2009-02-25 22:17:21'),
('2009-02-25', 24, 1, '2009-02-25 22:17:21'),
('2009-02-25', 13, 1, '2009-02-25 22:17:21'),
('2009-02-27', 1, 1, '2009-02-27 11:23:42'),
('2009-02-27', 8, 1, '2009-02-27 11:23:42'),
('2009-02-27', 4, 1, '2009-02-27 11:23:42'),
('2009-02-28', 1, 1, '2009-02-28 20:36:07'),
('2009-02-28', 13, 1, '2009-02-28 20:36:07'),
('2009-02-28', 4, 1, '2009-02-28 20:36:07'),
('2009-02-28', 6, 1, '2009-02-28 20:36:07'),
('2009-02-28', 8, 1, '2009-02-28 20:36:07'),
('2009-03-03', 4, 1, '2009-03-03 22:49:40'),
('2009-03-03', 2, 1, '2009-03-03 22:49:40'),
('2009-03-03', 1, 1, '2009-03-03 22:49:40'),
('2009-03-03', 6, 1, '2009-03-03 22:49:40'),
('2009-03-04', 1, 2, '2009-03-04 22:10:53'),
('2009-03-04', 11, 2, '2009-03-04 22:10:53'),
('2009-03-04', 13, 1, '2009-03-04 22:10:53'),
('2009-03-04', 2, 2, '2009-03-04 22:10:53'),
('2009-03-04', 4, 2, '2009-03-04 22:10:53'),
('2009-03-04', 5, 2, '2009-03-04 22:10:53'),
('2009-03-04', 6, 2, '2009-03-04 22:10:53'),
('2009-03-04', 7, 2, '2009-03-04 22:10:53'),
('2009-03-04', 8, 2, '2009-03-04 22:10:53'),
('2009-03-05', 1, 2, '2009-03-05 09:02:03'),
('2009-03-05', 8, 1, '2009-03-05 09:02:03'),
('2009-03-05', 7, 1, '2009-03-05 09:02:03'),
('2009-03-05', 2, 1, '2009-03-05 09:02:03'),
('2009-03-06', 1, 2, '2009-03-06 19:07:44'),
('2009-03-06', 4, 1, '2009-03-06 10:26:58'),
('2009-03-06', 5, 3, '2009-03-06 19:07:44'),
('2009-03-06', 8, 3, '2009-03-06 19:07:44'),
('2009-03-06', 13, 1, '2009-03-06 10:26:58'),
('2009-03-06', 7, 1, '2009-03-06 17:09:55'),
('2009-03-06', 11, 1, '2009-03-06 17:09:55'),
('2009-03-07', 1, 1, '2009-03-07 10:02:39'),
('2009-03-07', 6, 2, '2009-03-07 10:02:39'),
('2009-03-07', 4, 1, '2009-03-07 10:02:39'),
('2009-03-07', 2, 1, '2009-03-07 10:02:39'),
('2009-03-07', 5, 1, '2009-03-07 10:02:39'),
('2009-03-07', 7, 1, '2009-03-07 10:02:39'),
('2009-03-07', 8, 1, '2009-03-07 10:02:39'),
('2009-03-07', 11, 1, '2009-03-07 10:02:39'),
('2009-03-07', 20, 1, '2009-03-07 10:02:39'),
('2009-03-07', 13, 1, '2009-03-07 10:02:39'),
('2009-03-08', 8, 1, '2009-03-08 17:08:43'),
('2009-03-08', 1, 1, '2009-03-08 17:08:43'),
('2009-03-08', 6, 1, '2009-03-08 17:08:43'),
('2009-03-08', 4, 1, '2009-03-08 17:08:43'),
('2009-03-08', 7, 1, '2009-03-08 17:08:43'),
('2009-03-08', 11, 1, '2009-03-08 17:08:43'),
('2009-03-09', 8, 2, '2009-03-09 21:59:35'),
('2009-03-09', 6, 2, '2009-03-09 21:59:35'),
('2009-03-09', 4, 2, '2009-03-09 21:59:35'),
('2009-03-09', 11, 2, '2009-03-09 21:59:35'),
('2009-03-09', 13, 2, '2009-03-09 21:59:35'),
('2009-03-09', 1, 1, '2009-03-09 21:59:35'),
('2009-03-09', 2, 1, '2009-03-09 21:59:35'),
('2009-03-09', 5, 1, '2009-03-09 21:59:35'),
('2009-03-10', 1, 2, '2009-03-10 16:23:15'),
('2009-03-10', 6, 2, '2009-03-10 16:23:15'),
('2009-03-10', 4, 2, '2009-03-10 16:23:15'),
('2009-03-10', 2, 1, '2009-03-10 14:07:48'),
('2009-03-10', 5, 1, '2009-03-10 14:07:48'),
('2009-03-10', 7, 1, '2009-03-10 14:07:48'),
('2009-03-10', 8, 2, '2009-03-10 16:23:15'),
('2009-03-10', 11, 1, '2009-03-10 14:07:48'),
('2009-03-10', 13, 2, '2009-03-10 16:23:15'),
('2009-03-11', 1, 1, '2009-03-11 08:53:30'),
('2009-03-11', 4, 1, '2009-03-11 08:53:30'),
('2009-03-11', 5, 1, '2009-03-11 08:53:30'),
('2009-03-11', 6, 1, '2009-03-11 08:53:30'),
('2009-03-11', 13, 1, '2009-03-11 08:53:30'),
('2009-03-11', 23, 1, '2009-03-11 08:53:30'),
('2009-03-11', 24, 1, '2009-03-11 08:53:30'),
('2009-03-11', 20, 1, '2009-03-11 08:53:30'),
('2009-03-11', 17, 1, '2009-03-11 08:53:30'),
('2009-03-11', 18, 1, '2009-03-11 08:53:30'),
('2009-03-11', 16, 1, '2009-03-11 08:53:30'),
('2009-03-11', 7, 1, '2009-03-11 08:53:30'),
('2009-03-11', 11, 1, '2009-03-11 08:53:30'),
('2009-03-12', 1, 2, '2009-03-12 09:42:41'),
('2009-03-12', 4, 1, '2009-03-12 09:42:41'),
('2009-03-15', 1, 2, '2009-03-15 22:35:38'),
('2009-03-15', 6, 1, '2009-03-15 22:35:38'),
('2009-03-15', 4, 1, '2009-03-15 22:35:38'),
('2009-03-15', 2, 1, '2009-03-15 22:35:38'),
('2009-03-15', 7, 1, '2009-03-15 22:35:38'),
('2009-03-15', 5, 1, '2009-03-15 22:35:38'),
('2009-03-16', 1, 1, '2009-03-16 09:07:06'),
('2009-03-16', 6, 1, '2009-03-16 09:07:06'),
('2009-03-16', 4, 1, '2009-03-16 09:07:06'),
('2009-03-16', 2, 1, '2009-03-16 09:07:06'),
('2009-03-16', 5, 1, '2009-03-16 09:07:06'),
('2009-03-16', 7, 1, '2009-03-16 09:07:06'),
('2009-03-16', 8, 1, '2009-03-16 09:07:06'),
('2009-03-16', 11, 1, '2009-03-16 09:07:06'),
('2009-03-16', 13, 1, '2009-03-16 09:07:06'),
('2009-03-17', 13, 2, '2009-03-17 15:27:53'),
('2009-03-17', 4, 1, '2009-03-17 00:59:59'),
('2009-03-17', 7, 1, '2009-03-17 00:59:59'),
('2009-03-17', 6, 2, '2009-03-17 15:27:53'),
('2009-03-17', 1, 2, '2009-03-17 15:27:53'),
('2009-03-17', 2, 2, '2009-03-17 15:27:53'),
('2009-03-17', 11, 1, '2009-03-17 15:27:53'),
('2009-03-17', 12, 1, '2009-03-17 15:27:53'),
('2009-03-17', 14, 1, '2009-03-17 15:27:53'),
('2009-03-17', 15, 1, '2009-03-17 15:27:53'),
('2009-03-17', 16, 1, '2009-03-17 15:27:53'),
('2009-03-17', 17, 1, '2009-03-17 15:27:53'),
('2009-03-17', 18, 1, '2009-03-17 15:27:53'),
('2009-03-17', 19, 1, '2009-03-17 15:27:53'),
('2009-03-17', 20, 1, '2009-03-17 15:27:53'),
('2009-03-18', 6, 2, '2009-03-18 08:17:03'),
('2009-03-18', 1, 2, '2009-03-18 08:17:03'),
('2009-03-18', 11, 1, '2009-03-18 08:17:03'),
('2009-03-18', 12, 1, '2009-03-18 08:17:03'),
('2009-03-18', 13, 1, '2009-03-18 08:17:03'),
('2009-03-18', 14, 1, '2009-03-18 08:17:03'),
('2009-03-18', 15, 1, '2009-03-18 08:17:03'),
('2009-03-18', 16, 1, '2009-03-18 08:17:03'),
('2009-03-18', 17, 1, '2009-03-18 08:17:03'),
('2009-03-18', 18, 1, '2009-03-18 08:17:03'),
('2009-03-18', 19, 1, '2009-03-18 08:17:03'),
('2009-03-18', 2, 2, '2009-03-18 08:17:03'),
('2009-03-18', 20, 1, '2009-03-18 08:17:03'),
('2009-03-18', 4, 1, '2009-03-18 08:17:03'),
('2009-03-18', 7, 1, '2009-03-18 08:17:03'),
('2009-03-20', 6, 2, '2009-03-20 14:43:52'),
('2009-03-20', 7, 1, '2009-03-20 14:43:52'),
('2009-03-20', 13, 2, '2009-03-20 14:43:52'),
('2009-03-20', 1, 1, '2009-03-20 14:43:52'),
('2009-03-20', 11, 1, '2009-03-20 14:43:52'),
('2009-03-20', 12, 1, '2009-03-20 14:43:52'),
('2009-03-20', 14, 1, '2009-03-20 14:43:52'),
('2009-03-20', 15, 1, '2009-03-20 14:43:52'),
('2009-03-20', 16, 1, '2009-03-20 14:43:52'),
('2009-03-20', 17, 1, '2009-03-20 14:43:52'),
('2009-03-20', 18, 1, '2009-03-20 14:43:52'),
('2009-03-20', 19, 1, '2009-03-20 14:43:52'),
('2009-03-20', 2, 1, '2009-03-20 14:43:52'),
('2009-03-20', 20, 1, '2009-03-20 14:43:52'),
('2009-03-23', 1, 4, '2009-03-23 11:58:03'),
('2009-03-23', 8, 1, '2009-03-23 11:58:03'),
('2009-03-24', 7, 1, '2009-03-24 11:10:43'),
('2009-03-24', 1, 2, '2009-03-24 15:58:41'),
('2009-03-24', 6, 2, '2009-03-24 15:58:41'),
('2009-03-24', 4, 1, '2009-03-24 15:58:41'),
('2009-03-24', 2, 2, '2009-03-24 15:58:41'),
('2009-03-24', 11, 1, '2009-03-24 15:58:41'),
('2009-03-24', 12, 1, '2009-03-24 15:58:41'),
('2009-03-24', 13, 1, '2009-03-24 15:58:41'),
('2009-03-24', 14, 1, '2009-03-24 15:58:41'),
('2009-03-24', 15, 1, '2009-03-24 15:58:41'),
('2009-03-24', 16, 1, '2009-03-24 15:58:41'),
('2009-03-24', 17, 1, '2009-03-24 15:58:41'),
('2009-03-24', 18, 1, '2009-03-24 15:58:41'),
('2009-03-24', 19, 1, '2009-03-24 15:58:41'),
('2009-03-24', 20, 1, '2009-03-24 15:58:41'),
('2009-03-26', 1, 2, '2009-03-26 21:31:34'),
('2009-03-26', 6, 1, '2009-03-26 21:31:34'),
('2009-03-26', 20, 1, '2009-03-26 21:31:34'),
('2009-03-26', 16, 1, '2009-03-26 21:31:34'),
('2009-03-26', 24, 1, '2009-03-26 21:31:34'),
('2009-03-26', 23, 1, '2009-03-26 21:31:34'),
('2009-03-26', 19, 1, '2009-03-26 21:31:34'),
('2009-03-26', 17, 1, '2009-03-26 21:31:34'),
('2009-03-26', 14, 1, '2009-03-26 21:31:34'),
('2009-03-26', 13, 1, '2009-03-26 21:31:34'),
('2009-03-26', 7, 1, '2009-03-26 21:31:34'),
('2009-03-26', 5, 1, '2009-03-26 21:31:34'),
('2009-03-30', 1, 3, '2009-03-30 20:10:01'),
('2009-03-30', 8, 1, '2009-03-30 19:21:16'),
('2009-03-30', 6, 2, '2009-03-30 20:10:01'),
('2009-03-30', 4, 1, '2009-03-30 19:21:16'),
('2009-03-30', 11, 2, '2009-03-30 20:10:01'),
('2009-03-30', 12, 1, '2009-03-30 20:10:01'),
('2009-03-30', 13, 1, '2009-03-30 20:10:01'),
('2009-03-30', 14, 1, '2009-03-30 20:10:01'),
('2009-03-30', 15, 1, '2009-03-30 20:10:01'),
('2009-03-30', 16, 1, '2009-03-30 20:10:01'),
('2009-03-30', 17, 1, '2009-03-30 20:10:01'),
('2009-03-30', 18, 1, '2009-03-30 20:10:01'),
('2009-03-30', 19, 1, '2009-03-30 20:10:01'),
('2009-03-30', 2, 3, '2009-03-30 20:10:01'),
('2009-03-30', 20, 1, '2009-03-30 20:10:01'),
('2009-04-01', 4, 1, '2009-04-01 15:01:55'),
('2009-04-01', 2, 1, '2009-04-01 15:01:55'),
('2009-04-01', 7, 1, '2009-04-01 15:01:55'),
('2009-04-01', 8, 1, '2009-04-01 15:01:55'),
('2009-04-01', 5, 1, '2009-04-01 15:01:55'),
('2009-04-01', 16, 1, '2009-04-01 15:01:55'),
('2009-04-04', 13, 1, '2009-04-05 00:13:34'),
('2009-04-04', 4, 1, '2009-04-05 00:13:34'),
('2009-04-04', 1, 1, '2009-04-05 00:13:34'),
('2009-04-04', 12, 1, '2009-04-05 00:13:34'),
('2009-04-04', 14, 1, '2009-04-05 00:13:34'),
('2009-04-04', 15, 1, '2009-04-05 00:13:34'),
('2009-04-04', 16, 1, '2009-04-05 00:13:34'),
('2009-04-04', 17, 1, '2009-04-05 00:13:34'),
('2009-04-04', 18, 1, '2009-04-05 00:13:34'),
('2009-04-04', 19, 1, '2009-04-05 00:13:34'),
('2009-04-04', 20, 1, '2009-04-05 00:13:34'),
('2009-04-04', 21, 1, '2009-04-05 00:13:34'),
('2009-04-04', 22, 1, '2009-04-05 00:13:34'),
('2009-04-04', 23, 1, '2009-04-05 00:13:34'),
('2009-04-04', 24, 1, '2009-04-05 00:13:34'),
('2009-04-04', 6, 1, '2009-04-05 00:13:34'),
('2009-04-04', 2, 1, '2009-04-05 00:13:34'),
('2009-04-09', 1, 4, '2009-04-09 07:59:40'),
('2009-04-09', 6, 2, '2009-04-09 07:59:40'),
('2009-04-09', 4, 2, '2009-04-09 07:59:40'),
('2009-04-09', 2, 2, '2009-04-09 07:59:40'),
('2009-04-09', 7, 2, '2009-04-09 07:59:40'),
('2009-04-09', 8, 2, '2009-04-09 07:59:40'),
('2009-04-09', 13, 1, '2009-04-09 07:59:40'),
('2009-04-09', 5, 1, '2009-04-09 07:59:40'),
('2009-04-09', 11, 1, '2009-04-09 07:59:40'),
('2009-04-14', 6, 2, '2009-04-14 10:02:46'),
('2009-04-14', 4, 1, '2009-04-14 10:02:46'),
('2009-04-14', 8, 1, '2009-04-14 10:02:46'),
('2009-04-14', 11, 1, '2009-04-14 10:02:46'),
('2009-04-14', 14, 1, '2009-04-14 10:02:46'),
('2009-04-14', 19, 1, '2009-04-14 10:02:46'),
('2009-04-14', 23, 1, '2009-04-14 10:02:46'),
('2009-04-14', 7, 1, '2009-04-14 10:02:46'),
('2009-04-14', 18, 1, '2009-04-14 10:02:46'),
('2009-04-14', 22, 1, '2009-04-14 10:02:46'),
('2009-04-14', 1, 4, '2009-04-14 10:02:46'),
('2009-04-14', 13, 1, '2009-04-14 10:02:46'),
('2009-04-14', 17, 1, '2009-04-14 10:02:46'),
('2009-04-14', 21, 1, '2009-04-14 10:02:46'),
('2009-04-14', 5, 1, '2009-04-14 10:02:46'),
('2009-04-14', 15, 1, '2009-04-14 10:02:46'),
('2009-04-14', 2, 1, '2009-04-14 10:02:46'),
('2009-04-14', 12, 1, '2009-04-14 10:02:46'),
('2009-04-14', 24, 1, '2009-04-14 10:02:46'),
('2009-04-14', 16, 1, '2009-04-14 10:02:46'),
('2009-04-14', 20, 1, '2009-04-14 10:02:46'),
('2009-04-15', 1, 1, '2009-04-15 13:13:07'),
('2009-04-15', 4, 1, '2009-04-15 13:13:07'),
('2009-04-15', 2, 1, '2009-04-15 13:13:07'),
('2009-04-15', 7, 1, '2009-04-15 13:13:07'),
('2009-04-16', 5, 1, '2009-04-16 12:57:26'),
('2009-04-16', 1, 1, '2009-04-16 12:57:26'),
('2009-04-16', 6, 1, '2009-04-16 12:57:26'),
('2009-04-16', 4, 2, '2009-04-16 22:39:45'),
('2009-04-16', 2, 2, '2009-04-16 22:39:45'),
('2009-04-16', 7, 1, '2009-04-16 12:57:26'),
('2009-04-16', 17, 1, '2009-04-16 12:57:26'),
('2009-04-16', 12, 1, '2009-04-16 12:57:26'),
('2009-04-16', 16, 1, '2009-04-16 12:57:26'),
('2009-04-16', 19, 1, '2009-04-16 12:57:26'),
('2009-04-16', 20, 1, '2009-04-16 12:57:26'),
('2009-04-17', 2, 1, '2009-04-17 09:10:24'),
('2009-04-17', 1, 1, '2009-04-17 09:10:24'),
('2009-04-17', 6, 1, '2009-04-17 09:10:24'),
('2009-04-17', 4, 1, '2009-04-17 09:10:24'),
('2009-04-17', 5, 1, '2009-04-17 09:10:24'),
('2009-04-17', 7, 1, '2009-04-17 09:10:24'),
('2009-04-17', 8, 1, '2009-04-17 09:10:24'),
('2009-04-17', 11, 1, '2009-04-17 09:10:24'),
('2009-04-17', 21, 1, '2009-04-17 09:10:24'),
('2009-04-17', 13, 1, '2009-04-17 09:10:24'),
('2009-04-18', 13, 1, '2009-04-18 12:14:01'),
('2009-04-19', 1, 1, '2009-04-19 10:26:25'),
('2009-04-19', 4, 1, '2009-04-19 10:26:25'),
('2009-04-19', 2, 1, '2009-04-19 10:26:25'),
('2009-04-19', 5, 1, '2009-04-19 10:26:25'),
('2009-04-19', 7, 1, '2009-04-19 10:26:25'),
('2009-04-19', 8, 1, '2009-04-19 10:26:25'),
('2009-04-19', 11, 1, '2009-04-19 10:26:25'),
('2009-04-19', 13, 1, '2009-04-19 10:26:25'),
('2009-04-20', 4, 1, '2009-04-20 17:56:59'),
('2009-04-20', 2, 1, '2009-04-20 17:56:59'),
('2009-04-20', 7, 1, '2009-04-20 17:56:59'),
('2009-04-20', 8, 1, '2009-04-20 17:56:59'),
('2009-04-21', 12, 2, '2009-04-21 14:46:52'),
('2009-04-21', 15, 2, '2009-04-21 14:46:52'),
('2009-04-21', 14, 2, '2009-04-21 14:46:52'),
('2009-04-21', 17, 2, '2009-04-21 14:46:52'),
('2009-04-21', 18, 2, '2009-04-21 14:46:52'),
('2009-04-21', 19, 2, '2009-04-21 14:46:52'),
('2009-04-21', 20, 2, '2009-04-21 14:46:52'),
('2009-04-21', 21, 2, '2009-04-21 14:46:52'),
('2009-04-21', 22, 2, '2009-04-21 14:46:52'),
('2009-04-21', 23, 2, '2009-04-21 14:46:52'),
('2009-04-21', 24, 2, '2009-04-21 14:46:52'),
('2009-04-21', 1, 4, '2009-04-21 22:28:21'),
('2009-04-21', 16, 3, '2009-04-21 14:46:52'),
('2009-04-21', 4, 1, '2009-04-21 13:31:11'),
('2009-04-21', 5, 1, '2009-04-21 13:31:11'),
('2009-04-21', 13, 1, '2009-04-21 13:31:11'),
('2009-04-21', 2, 1, '2009-04-21 16:47:37'),
('2009-04-21', 11, 1, '2009-04-21 16:47:37'),
('2009-04-21', 8, 2, '2009-04-21 22:28:21'),
('2009-04-22', 7, 2, '2009-04-22 16:42:59'),
('2009-04-22', 8, 3, '2009-04-22 16:42:59'),
('2009-04-22', 11, 2, '2009-04-22 16:42:59'),
('2009-04-22', 1, 1, '2009-04-22 16:42:59'),
('2009-04-25', 1, 4, '2009-04-25 08:05:04'),
('2009-04-26', 6, 2, '2009-04-26 21:53:53'),
('2009-04-26', 4, 1, '2009-04-26 20:10:05'),
('2009-04-26', 2, 1, '2009-04-26 20:10:05'),
('2009-04-26', 1, 1, '2009-04-26 21:53:53'),
('2009-04-26', 8, 1, '2009-04-26 21:53:53'),
('2009-04-26', 5, 1, '2009-04-26 21:53:53'),
('2009-04-26', 11, 1, '2009-04-26 21:53:53'),
('2009-04-26', 13, 1, '2009-04-26 21:53:53'),
('2009-04-27', 1, 2, '2009-04-27 10:36:05'),
('2009-04-27', 6, 1, '2009-04-27 10:36:05'),
('2009-04-27', 4, 1, '2009-04-27 10:36:05'),
('2009-04-27', 2, 1, '2009-04-27 10:36:05'),
('2009-04-27', 5, 1, '2009-04-27 10:36:05'),
('2009-04-27', 7, 1, '2009-04-27 10:36:05'),
('2009-04-27', 8, 1, '2009-04-27 10:36:05'),
('2009-04-27', 11, 1, '2009-04-27 10:36:05'),
('2009-04-27', 16, 1, '2009-04-27 10:36:05'),
('2009-04-27', 12, 1, '2009-04-27 10:36:05'),
('2009-04-27', 15, 1, '2009-04-27 10:36:05'),
('2009-04-27', 14, 1, '2009-04-27 10:36:05'),
('2009-04-27', 17, 1, '2009-04-27 10:36:05'),
('2009-04-27', 18, 1, '2009-04-27 10:36:05'),
('2009-04-27', 19, 1, '2009-04-27 10:36:05'),
('2009-04-27', 20, 1, '2009-04-27 10:36:05'),
('2009-04-27', 21, 1, '2009-04-27 10:36:05'),
('2009-04-27', 22, 1, '2009-04-27 10:36:05'),
('2009-04-27', 23, 1, '2009-04-27 10:36:05'),
('2009-04-27', 24, 1, '2009-04-27 10:36:05'),
('2009-04-27', 13, 1, '2009-04-27 10:36:05'),
('2009-04-29', 1, 2, '2009-04-29 16:29:50'),
('2009-05-02', 1, 1, '2009-05-02 02:35:28'),
('2009-05-02', 4, 1, '2009-05-02 02:35:28'),
('2009-05-02', 5, 1, '2009-05-02 02:35:28'),
('2009-05-02', 7, 1, '2009-05-02 02:35:28'),
('2009-05-02', 8, 1, '2009-05-02 02:35:28'),
('2009-05-02', 11, 1, '2009-05-02 02:35:28'),
('2009-05-02', 17, 1, '2009-05-02 02:35:28'),
('2009-05-02', 21, 1, '2009-05-02 02:35:28'),
('2009-05-04', 7, 1, '2009-05-04 15:19:38'),
('2009-05-04', 13, 1, '2009-05-04 15:19:38'),
('2009-05-04', 6, 1, '2009-05-04 15:19:38'),
('2009-05-06', 4, 1, '2009-05-06 11:03:15'),
('2009-05-06', 11, 1, '2009-05-06 11:03:15'),
('2009-05-06', 1, 1, '2009-05-06 11:03:15'),
('2009-05-06', 13, 1, '2009-05-06 11:03:15'),
('2009-05-06', 6, 1, '2009-05-06 11:03:15'),
('2009-05-06', 7, 1, '2009-05-06 11:03:15'),
('2009-05-06', 8, 1, '2009-05-06 11:03:15'),
('2009-05-09', 1, 2, '2009-05-09 13:08:11'),
('2009-05-09', 4, 2, '2009-05-09 13:08:11'),
('2009-05-09', 2, 1, '2009-05-09 13:08:11'),
('2009-05-14', 2, 1, '2009-05-14 14:45:26'),
('2009-05-14', 7, 1, '2009-05-14 14:45:26'),
('2009-05-14', 8, 1, '2009-05-14 14:45:26'),
('2009-05-14', 1, 1, '2009-05-14 14:45:26'),
('2009-05-15', 5, 1, '2009-05-15 13:44:06'),
('2009-05-15', 4, 2, '2009-05-15 16:43:50'),
('2009-05-15', 6, 1, '2009-05-15 13:44:06'),
('2009-05-15', 1, 4, '2009-05-15 16:43:50'),
('2009-05-15', 2, 2, '2009-05-15 16:43:50'),
('2009-05-15', 7, 1, '2009-05-15 13:44:06'),
('2009-05-15', 11, 2, '2009-05-15 16:43:50'),
('2009-05-15', 13, 1, '2009-05-15 13:44:06'),
('2009-05-18', 24, 1, '2009-05-18 18:03:27'),
('2009-05-18', 6, 1, '2009-05-18 18:03:27'),
('2009-05-18', 1, 1, '2009-05-18 18:03:27'),
('2009-05-18', 4, 1, '2009-05-18 18:03:27'),
('2009-05-18', 7, 1, '2009-05-18 18:03:27'),
('2009-05-19', 1, 3, '2009-05-19 20:54:26'),
('2009-05-19', 4, 2, '2009-05-19 20:54:26'),
('2009-05-19', 5, 2, '2009-05-19 20:54:26'),
('2009-05-19', 8, 2, '2009-05-19 20:54:26'),
('2009-05-19', 6, 1, '2009-05-19 20:54:26'),
('2009-05-19', 2, 1, '2009-05-19 20:54:26'),
('2009-05-19', 7, 1, '2009-05-19 20:54:26'),
('2009-05-19', 11, 1, '2009-05-19 20:54:26'),
('2009-05-19', 24, 1, '2009-05-19 20:54:26'),
('2009-05-19', 17, 1, '2009-05-19 20:54:26'),
('2009-05-19', 16, 1, '2009-05-19 20:54:26'),
('2009-05-19', 12, 1, '2009-05-19 20:54:26'),
('2009-05-19', 18, 1, '2009-05-19 20:54:26'),
('2009-05-20', 1, 1, '2009-05-20 12:30:44'),
('2009-05-20', 4, 1, '2009-05-20 12:30:44'),
('2009-05-20', 2, 1, '2009-05-20 12:30:44'),
('2009-05-20', 5, 1, '2009-05-20 12:30:44'),
('2009-05-20', 13, 1, '2009-05-20 12:30:44'),
('2009-05-20', 8, 1, '2009-05-20 12:30:44'),
('2009-05-20', 23, 1, '2009-05-20 12:30:44'),
('2009-05-20', 22, 1, '2009-05-20 12:30:44'),
('2009-05-20', 18, 1, '2009-05-20 12:30:44'),
('2009-05-20', 24, 1, '2009-05-20 12:30:44'),
('2009-05-20', 11, 1, '2009-05-20 12:30:44'),
('2009-05-20', 6, 1, '2009-05-20 12:30:44'),
('2009-05-21', 1, 1, '2009-05-21 19:23:28'),
('2009-05-21', 8, 1, '2009-05-21 19:23:28'),
('2009-05-21', 6, 2, '2009-05-21 19:23:28'),
('2009-05-22', 1, 1, '2009-05-22 13:11:47'),
('2009-05-22', 6, 1, '2009-05-22 13:11:47'),
('2009-05-22', 4, 1, '2009-05-22 13:11:47'),
('2009-05-22', 2, 1, '2009-05-22 13:11:47'),
('2009-05-22', 5, 1, '2009-05-22 13:11:47'),
('2009-05-22', 7, 1, '2009-05-22 13:11:47'),
('2009-05-22', 8, 1, '2009-05-22 13:11:47'),
('2009-05-22', 11, 1, '2009-05-22 13:11:47'),
('2009-05-22', 16, 1, '2009-05-22 13:11:47'),
('2009-05-22', 12, 1, '2009-05-22 13:11:47'),
('2009-05-22', 15, 1, '2009-05-22 13:11:47'),
('2009-05-22', 14, 1, '2009-05-22 13:11:47'),
('2009-05-22', 17, 1, '2009-05-22 13:11:47'),
('2009-05-22', 18, 1, '2009-05-22 13:11:47'),
('2009-05-22', 19, 1, '2009-05-22 13:11:47'),
('2009-05-22', 20, 1, '2009-05-22 13:11:47'),
('2009-05-22', 21, 1, '2009-05-22 13:11:47'),
('2009-05-22', 22, 1, '2009-05-22 13:11:47'),
('2009-05-22', 23, 1, '2009-05-22 13:11:47'),
('2009-05-22', 24, 1, '2009-05-22 13:11:47'),
('2009-05-22', 13, 1, '2009-05-22 13:11:47'),
('2009-05-23', 7, 2, '2009-05-23 19:16:06'),
('2009-05-23', 23, 1, '2009-05-23 17:35:41'),
('2009-05-23', 19, 1, '2009-05-23 17:35:41'),
('2009-05-23', 13, 1, '2009-05-23 19:16:06'),
('2009-05-23', 11, 1, '2009-05-23 19:16:06'),
('2009-05-23', 4, 1, '2009-05-23 19:16:06'),
('2009-05-24', 1, 3, '2009-05-24 12:40:14'),
('2009-05-24', 6, 2, '2009-05-24 12:40:14'),
('2009-05-24', 5, 1, '2009-05-24 12:40:14'),
('2009-05-24', 8, 1, '2009-05-24 12:40:14'),
('2009-05-24', 4, 1, '2009-05-24 12:40:14'),
('2009-05-24', 7, 1, '2009-05-24 12:40:14'),
('2009-05-24', 11, 1, '2009-05-24 12:40:14'),
('2009-05-24', 13, 1, '2009-05-24 12:40:14'),
('2009-05-25', 7, 3, '2009-05-25 21:43:55'),
('2009-05-25', 1, 4, '2009-05-25 21:43:55'),
('2009-05-25', 4, 4, '2009-05-25 21:43:55'),
('2009-05-25', 6, 1, '2009-05-25 10:41:10'),
('2009-05-25', 2, 2, '2009-05-25 21:43:55'),
('2009-05-25', 5, 2, '2009-05-25 21:43:55'),
('2009-05-25', 8, 2, '2009-05-25 21:43:55'),
('2009-05-25', 11, 2, '2009-05-25 21:43:55'),
('2009-05-25', 13, 2, '2009-05-25 21:43:55'),
('2009-05-26', 1, 1, '2009-05-26 18:23:36'),
('2009-05-26', 6, 1, '2009-05-26 18:23:36'),
('2009-05-26', 4, 1, '2009-05-26 18:23:36'),
('2009-05-26', 5, 1, '2009-05-26 18:23:36'),
('2009-05-26', 7, 1, '2009-05-26 18:23:36'),
('2009-05-26', 8, 1, '2009-05-26 18:23:36'),
('2009-05-26', 11, 1, '2009-05-26 18:23:36'),
('2009-05-26', 17, 1, '2009-05-26 18:23:36'),
('2009-05-27', 4, 1, '2009-05-27 14:11:04'),
('2009-05-27', 5, 1, '2009-05-27 14:11:04'),
('2009-05-27', 7, 1, '2009-05-27 14:11:04'),
('2009-05-27', 8, 1, '2009-05-27 14:11:04'),
('2009-05-27', 11, 1, '2009-05-27 14:11:04'),
('2009-05-27', 13, 1, '2009-05-27 14:11:04'),
('2009-05-27', 1, 2, '2009-05-27 14:11:04'),
('2009-05-27', 6, 1, '2009-05-27 14:11:04'),
('2009-05-27', 2, 1, '2009-05-27 14:11:04'),
('2009-05-29', 1, 2, '2009-05-29 18:41:22'),
('2009-05-29', 7, 1, '2009-05-29 18:41:22'),
('2009-05-29', 4, 2, '2009-05-29 18:41:22'),
('2009-06-01', 8, 2, '2009-06-01 19:21:41'),
('2009-06-01', 6, 2, '2009-06-01 19:21:41'),
('2009-06-01', 4, 3, '2009-06-01 19:21:41'),
('2009-06-01', 1, 2, '2009-06-01 19:21:41'),
('2009-06-01', 2, 2, '2009-06-01 19:21:41'),
('2009-06-01', 5, 2, '2009-06-01 19:21:41'),
('2009-06-01', 7, 2, '2009-06-01 19:21:41'),
('2009-06-01', 11, 2, '2009-06-01 19:21:41'),
('2009-06-01', 16, 1, '2009-06-01 04:12:03'),
('2009-06-01', 13, 1, '2009-06-01 04:12:03'),
('2009-06-01', 24, 1, '2009-06-01 19:21:41'),
('2009-06-01', 23, 1, '2009-06-01 19:21:41'),
('2009-06-03', 4, 1, '2009-06-03 10:34:39'),
('2009-06-03', 1, 1, '2009-06-03 10:34:39'),
('2009-06-03', 6, 1, '2009-06-03 10:34:39'),
('2009-06-03', 2, 1, '2009-06-03 10:34:39'),
('2009-06-03', 5, 1, '2009-06-03 10:34:39'),
('2009-06-04', 1, 2, '2009-06-04 20:08:32'),
('2009-06-04', 8, 1, '2009-06-04 17:54:02'),
('2009-06-04', 13, 1, '2009-06-04 17:54:02'),
('2009-06-05', 13, 1, '2009-06-05 22:26:52'),
('2009-06-05', 6, 1, '2009-06-05 22:26:52'),
('2009-06-05', 1, 1, '2009-06-05 22:26:52'),
('2009-06-07', 13, 1, '2009-06-07 16:11:14'),
('2009-06-07', 1, 1, '2009-06-07 16:11:14'),
('2009-06-08', 1, 1, '2009-06-08 08:25:03'),
('2009-06-08', 8, 1, '2009-06-08 08:25:03'),
('2009-06-08', 4, 1, '2009-06-08 08:25:03'),
('2009-06-08', 5, 1, '2009-06-08 08:25:03'),
('2009-06-08', 6, 1, '2009-06-08 08:25:03'),
('2009-06-08', 2, 1, '2009-06-08 08:25:03'),
('2009-06-10', 1, 2, '2009-06-10 22:39:52'),
('2009-06-10', 4, 1, '2009-06-10 22:39:52'),
('2009-06-10', 2, 1, '2009-06-10 22:39:52'),
('2009-06-10', 5, 1, '2009-06-10 22:39:52'),
('2009-06-10', 7, 1, '2009-06-10 22:39:52'),
('2009-06-10', 8, 1, '2009-06-10 22:39:52'),
('2009-06-10', 11, 1, '2009-06-10 22:39:52'),
('2009-06-11', 1, 1, '2009-06-11 18:16:42'),
('2009-06-11', 13, 2, '2009-06-11 18:16:42'),
('2009-06-12', 13, 1, '2009-06-12 07:31:30'),
('2009-06-13', 7, 1, '2009-06-13 14:26:29'),
('2009-06-13', 5, 1, '2009-06-13 14:26:29'),
('2009-06-13', 13, 2, '2009-06-13 14:26:29'),
('2009-06-13', 11, 1, '2009-06-13 14:26:29'),
('2009-06-13', 4, 1, '2009-06-13 14:26:29'),
('2009-06-13', 6, 1, '2009-06-13 14:26:29'),
('2009-06-13', 1, 1, '2009-06-13 14:26:29'),
('2009-06-15', 13, 1, '2009-06-15 10:35:55'),
('2009-06-15', 4, 1, '2009-06-15 10:35:55'),
('2009-06-15', 2, 1, '2009-06-15 10:35:55'),
('2009-06-15', 8, 1, '2009-06-15 10:35:55'),
('2009-06-15', 5, 1, '2009-06-15 10:35:55'),
('2009-06-16', 1, 2, '2009-06-16 23:56:26'),
('2009-06-16', 13, 1, '2009-06-16 23:56:26'),
('2009-06-16', 6, 1, '2009-06-16 23:56:26'),
('2009-06-17', 1, 2, '2009-06-17 16:28:09'),
('2009-06-17', 4, 1, '2009-06-17 16:28:09'),
('2009-06-17', 8, 2, '2009-06-17 16:28:09'),
('2009-06-19', 1, 2, '2009-06-19 20:43:30'),
('2009-06-19', 4, 2, '2009-06-19 20:43:30'),
('2009-06-19', 2, 2, '2009-06-19 20:43:30'),
('2009-06-19', 5, 1, '2009-06-19 16:46:32'),
('2009-06-19', 8, 1, '2009-06-19 16:46:32'),
('2009-06-19', 11, 2, '2009-06-19 20:43:30'),
('2009-06-19', 6, 1, '2009-06-19 20:43:30'),
('2009-06-19', 7, 1, '2009-06-19 20:43:30'),
('2009-06-22', 1, 2, '2009-06-22 14:59:56'),
('2009-06-22', 5, 1, '2009-06-22 14:59:56'),
('2009-06-22', 6, 1, '2009-06-22 14:59:56'),
('2009-06-22', 4, 1, '2009-06-22 14:59:56'),
('2009-06-25', 1, 2, '2009-06-25 11:30:07'),
('2009-06-25', 5, 2, '2009-06-25 11:30:07'),
('2009-06-25', 6, 2, '2009-06-25 11:30:07'),
('2009-06-25', 7, 2, '2009-06-25 11:30:07'),
('2009-06-25', 11, 2, '2009-06-25 11:30:07'),
('2009-06-25', 8, 2, '2009-06-25 11:30:07'),
('2009-06-25', 4, 1, '2009-06-25 11:30:07'),
('2009-06-25', 14, 1, '2009-06-25 11:30:07'),
('2009-06-25', 2, 1, '2009-06-25 11:30:07'),
('2009-06-29', 1, 2, '2009-06-29 14:30:28'),
('2009-06-29', 11, 1, '2009-06-29 14:30:28'),
('2009-06-29', 8, 1, '2009-06-29 14:30:28'),
('2009-06-29', 17, 1, '2009-06-29 14:30:28'),
('2009-06-29', 19, 1, '2009-06-29 14:30:28'),
('2009-06-29', 15, 1, '2009-06-29 14:30:28'),
('2009-06-29', 5, 1, '2009-06-29 14:30:28'),
('2009-06-29', 12, 1, '2009-06-29 14:30:28'),
('2009-06-29', 7, 1, '2009-06-29 14:30:28'),
('2009-06-29', 16, 1, '2009-06-29 14:30:28'),
('2009-06-29', 22, 1, '2009-06-29 14:30:28'),
('2009-06-29', 18, 1, '2009-06-29 14:30:28'),
('2009-06-29', 6, 1, '2009-06-29 14:30:28'),
('2009-06-29', 2, 1, '2009-06-29 14:30:28'),
('2009-06-29', 24, 1, '2009-06-29 14:30:28'),
('2009-06-29', 21, 1, '2009-06-29 14:30:28'),
('2009-06-29', 23, 1, '2009-06-29 14:30:28'),
('2009-06-29', 20, 1, '2009-06-29 14:30:28'),
('2009-06-30', 8, 1, '2009-06-30 15:42:53'),
('2009-06-30', 7, 1, '2009-06-30 15:42:53'),
('2009-07-01', 1, 2, '2009-07-01 20:59:51'),
('2009-07-01', 4, 1, '2009-07-01 11:26:16'),
('2009-07-01', 2, 1, '2009-07-01 11:26:16'),
('2009-07-01', 5, 1, '2009-07-01 11:26:16'),
('2009-07-01', 7, 1, '2009-07-01 11:26:16'),
('2009-07-01', 8, 2, '2009-07-01 20:59:51'),
('2009-07-01', 11, 1, '2009-07-01 11:26:16'),
('2009-07-07', 1, 3, '2009-07-07 11:25:05'),
('2009-07-07', 6, 3, '2009-07-07 11:25:05'),
('2009-07-07', 4, 2, '2009-07-07 11:25:05'),
('2009-07-07', 2, 2, '2009-07-07 11:25:05'),
('2009-07-07', 5, 2, '2009-07-07 11:25:05'),
('2009-07-07', 7, 2, '2009-07-07 11:25:05'),
('2009-07-07', 8, 2, '2009-07-07 11:25:05'),
('2009-07-07', 17, 1, '2009-07-07 11:25:05'),
('2009-07-07', 20, 1, '2009-07-07 11:25:05'),
('2009-07-07', 23, 1, '2009-07-07 11:25:05'),
('2009-07-07', 11, 1, '2009-07-07 11:25:05'),
('2009-07-15', 1, 3, '2009-07-15 14:34:50'),
('2009-07-15', 4, 2, '2009-07-15 14:34:50'),
('2009-07-15', 6, 2, '2009-07-15 14:34:50'),
('2009-07-15', 7, 1, '2009-07-15 14:34:50'),
('2009-07-15', 11, 1, '2009-07-15 14:34:50'),
('2009-07-17', 12, 1, '2009-07-17 08:33:33'),
('2009-07-17', 24, 1, '2009-07-17 08:33:33'),
('2009-07-17', 18, 1, '2009-07-17 08:33:33'),
('2009-07-17', 14, 1, '2009-07-17 08:33:33'),
('2009-07-17', 6, 2, '2009-07-17 08:33:33'),
('2009-07-17', 1, 2, '2009-07-17 08:33:33'),
('2009-07-17', 19, 1, '2009-07-17 08:33:33'),
('2009-07-17', 11, 2, '2009-07-17 08:33:33'),
('2009-07-17', 22, 1, '2009-07-17 08:33:33'),
('2009-07-17', 5, 2, '2009-07-17 08:33:33'),
('2009-07-17', 8, 2, '2009-07-17 08:33:33'),
('2009-07-17', 4, 2, '2009-07-17 08:33:33'),
('2009-07-17', 7, 2, '2009-07-17 08:33:33'),
('2009-07-17', 16, 1, '2009-07-17 08:33:33'),
('2009-07-17', 2, 1, '2009-07-17 08:33:33'),
('2009-07-17', 21, 1, '2009-07-17 08:33:33'),
('2009-07-17', 15, 1, '2009-07-17 08:33:33'),
('2009-07-17', 23, 1, '2009-07-17 08:33:33'),
('2009-07-17', 17, 1, '2009-07-17 08:33:33'),
('2009-07-17', 20, 1, '2009-07-17 08:33:33'),
('2009-07-18', 4, 1, '2009-07-18 17:47:21'),
('2009-07-18', 1, 1, '2009-07-18 17:47:21'),
('2009-07-27', 15, 1, '2009-07-27 18:39:06'),
('2009-07-27', 1, 3, '2009-07-27 18:39:06'),
('2009-07-27', 4, 1, '2009-07-27 18:39:06'),
('2009-07-27', 5, 1, '2009-07-27 18:39:06'),
('2009-07-29', 4, 1, '2009-07-29 17:49:42'),
('2009-07-29', 17, 1, '2009-07-29 17:49:42'),
('2009-07-29', 24, 1, '2009-07-29 17:49:42');
INSERT INTO spip_visites_articles (`date`, id_article, visites, maj) VALUES
('2009-07-29', 2, 1, '2009-07-29 17:49:42'),
('2009-07-31', 1, 2, '2009-07-31 10:47:33'),
('2009-07-31', 4, 1, '2009-07-31 10:47:33'),
('2009-07-31', 2, 1, '2009-07-31 10:47:33'),
('2009-07-31', 7, 1, '2009-07-31 10:47:33'),
('2009-07-31', 5, 1, '2009-07-31 10:47:33'),
('2009-07-31', 11, 1, '2009-07-31 10:47:33'),
('2009-08-09', 1, 1, '2009-08-09 19:24:06'),
('2009-08-09', 2, 2, '2009-08-09 19:24:06'),
('2009-08-10', 6, 1, '2009-08-10 18:52:45'),
('2009-08-10', 4, 1, '2009-08-10 18:52:45'),
('2009-08-10', 5, 1, '2009-08-10 18:52:45'),
('2009-08-10', 7, 2, '2009-08-10 18:52:45'),
('2009-08-10', 2, 1, '2009-08-10 18:52:45'),
('2009-08-10', 8, 1, '2009-08-10 18:52:45'),
('2009-08-10', 11, 1, '2009-08-10 18:52:45'),
('2009-08-10', 17, 1, '2009-08-10 18:52:45'),
('2009-08-10', 20, 1, '2009-08-10 18:52:45'),
('2009-08-10', 24, 1, '2009-08-10 18:52:45'),
('2009-08-11', 8, 1, '2009-08-11 13:00:15'),
('2009-08-13', 11, 1, '2009-08-13 12:33:36'),
('2009-08-13', 5, 1, '2009-08-13 12:33:36'),
('2009-08-13', 6, 2, '2009-08-13 12:33:36'),
('2009-08-13', 8, 1, '2009-08-13 12:33:36'),
('2009-08-13', 1, 2, '2009-08-13 12:33:36'),
('2009-08-13', 2, 2, '2009-08-13 12:33:36'),
('2009-08-13', 7, 2, '2009-08-13 12:33:36'),
('2009-08-13', 4, 2, '2009-08-13 12:33:36'),
('2009-08-14', 4, 1, '2009-08-14 17:01:57'),
('2009-08-14', 8, 1, '2009-08-14 17:01:57'),
('2009-08-14', 11, 1, '2009-08-14 17:01:57'),
('2009-08-14', 7, 1, '2009-08-14 17:01:57'),
('2009-08-14', 5, 2, '2009-08-14 17:01:57'),
('2009-08-14', 6, 1, '2009-08-14 17:01:57'),
('2009-08-14', 1, 1, '2009-08-14 17:01:57'),
('2009-08-15', 15, 1, '2009-08-15 16:36:05'),
('2009-08-15', 18, 1, '2009-08-15 16:36:05'),
('2009-08-15', 16, 1, '2009-08-15 16:36:05'),
('2009-08-17', 1, 3, '2009-08-17 19:00:20'),
('2009-08-17', 6, 1, '2009-08-17 19:00:20'),
('2009-08-17', 7, 1, '2009-08-17 19:00:20'),
('2009-08-17', 2, 1, '2009-08-17 19:00:20'),
('2009-08-17', 17, 1, '2009-08-17 19:00:20'),
('2009-08-17', 4, 1, '2009-08-17 19:00:20'),
('2009-08-20', 1, 4, '2009-08-20 22:40:23'),
('2009-08-20', 12, 1, '2009-08-20 11:20:26'),
('2009-08-20', 11, 1, '2009-08-20 22:40:23'),
('2009-08-20', 8, 1, '2009-08-20 22:40:23'),
('2009-08-24', 1, 2, '2009-08-24 12:25:46'),
('2009-08-24', 5, 1, '2009-08-24 12:25:46'),
('2009-08-24', 6, 1, '2009-08-24 12:25:46'),
('2009-08-24', 4, 1, '2009-08-24 12:25:46'),
('2009-08-24', 2, 1, '2009-08-24 12:25:46'),
('2009-08-24', 7, 1, '2009-08-24 12:25:46'),
('2009-08-24', 8, 1, '2009-08-24 12:25:46'),
('2009-08-24', 11, 1, '2009-08-24 12:25:46'),
('2009-08-25', 1, 1, '2009-08-25 19:05:39'),
('2009-08-25', 4, 1, '2009-08-25 19:05:39'),
('2009-08-25', 6, 1, '2009-08-25 19:05:39'),
('2009-08-25', 2, 1, '2009-08-25 19:05:39'),
('2009-08-25', 5, 1, '2009-08-25 19:05:39'),
('2009-08-25', 7, 1, '2009-08-25 19:05:39'),
('2009-08-25', 8, 1, '2009-08-25 19:05:39'),
('2009-08-25', 11, 1, '2009-08-25 19:05:39'),
('2009-08-25', 12, 1, '2009-08-25 19:05:39'),
('2009-08-29', 8, 1, '2009-08-29 15:12:20'),
('2009-08-29', 1, 2, '2009-08-29 15:12:20'),
('2009-08-29', 6, 1, '2009-08-29 15:12:20'),
('2009-08-29', 4, 1, '2009-08-29 15:12:20'),
('2009-08-29', 2, 1, '2009-08-29 15:12:20'),
('2009-08-29', 5, 1, '2009-08-29 15:12:20'),
('2009-08-29', 7, 1, '2009-08-29 15:12:20'),
('2009-08-29', 11, 1, '2009-08-29 15:12:20'),
('2009-08-29', 16, 1, '2009-08-29 15:12:20'),
('2009-08-29', 12, 1, '2009-08-29 15:12:20'),
('2009-08-29', 15, 1, '2009-08-29 15:12:20'),
('2009-08-29', 14, 1, '2009-08-29 15:12:20'),
('2009-08-29', 17, 1, '2009-08-29 15:12:20'),
('2009-08-29', 18, 1, '2009-08-29 15:12:20'),
('2009-08-29', 19, 1, '2009-08-29 15:12:20'),
('2009-08-29', 20, 1, '2009-08-29 15:12:20'),
('2009-08-29', 21, 1, '2009-08-29 15:12:20'),
('2009-08-29', 22, 1, '2009-08-29 15:12:20'),
('2009-08-29', 23, 1, '2009-08-29 15:12:20'),
('2009-08-29', 24, 1, '2009-08-29 15:12:20'),
('2009-09-02', 1, 2, '2009-09-02 17:53:15'),
('2009-09-02', 5, 1, '2009-09-02 17:53:15'),
('2009-09-02', 4, 1, '2009-09-02 17:53:15'),
('2009-09-02', 2, 1, '2009-09-02 17:53:15'),
('2009-09-02', 6, 1, '2009-09-02 17:53:15'),
('2009-09-02', 11, 1, '2009-09-02 17:53:15'),
('2009-09-02', 8, 1, '2009-09-02 17:53:15'),
('2009-09-02', 7, 1, '2009-09-02 17:53:15'),
('2009-09-04', 1, 2, '2009-09-04 18:39:22'),
('2009-09-04', 5, 1, '2009-09-04 18:39:22'),
('2009-09-04', 7, 1, '2009-09-04 18:39:22'),
('2009-09-04', 8, 1, '2009-09-04 18:39:22'),
('2009-09-04', 11, 1, '2009-09-04 18:39:22'),
('2009-09-08', 2, 1, '2009-09-08 13:56:50'),
('2009-09-08', 1, 2, '2009-09-08 13:56:50'),
('2009-09-10', 2, 1, '2009-09-10 10:40:06'),
('2009-09-10', 1, 1, '2009-09-10 10:40:06'),
('2009-09-10', 4, 1, '2009-09-10 10:40:06'),
('2009-09-11', 1, 3, '2009-09-11 14:38:20'),
('2009-09-11', 8, 1, '2009-09-11 14:38:20'),
('2009-09-13', 1, 2, '2009-09-13 19:04:16'),
('2009-09-13', 11, 1, '2009-09-13 19:04:16'),
('2009-09-13', 5, 1, '2009-09-13 19:04:16'),
('2009-09-15', 1, 2, '2009-09-15 23:42:41'),
('2009-09-15', 2, 1, '2009-09-15 15:56:45'),
('2009-09-15', 4, 1, '2009-09-15 15:56:45'),
('2009-09-15', 18, 1, '2009-09-15 15:56:45'),
('2009-09-15', 15, 1, '2009-09-15 15:56:45'),
('2009-09-15', 16, 1, '2009-09-15 15:56:45'),
('2009-09-15', 8, 1, '2009-09-15 23:42:41'),
('2009-09-16', 1, 2, '2009-09-16 18:48:13'),
('2009-09-16', 7, 1, '2009-09-16 08:47:09'),
('2009-09-16', 8, 1, '2009-09-16 08:47:09'),
('2009-09-16', 2, 1, '2009-09-16 08:47:09'),
('2009-09-16', 4, 1, '2009-09-16 08:47:09'),
('2009-09-16', 6, 1, '2009-09-16 08:47:09'),
('2009-09-17', 1, 1, '2009-09-17 01:06:41'),
('2009-09-17', 5, 1, '2009-09-17 01:06:41'),
('2009-09-17', 19, 1, '2009-09-17 01:06:41'),
('2009-09-17', 14, 1, '2009-09-17 01:06:41'),
('2009-09-17', 7, 1, '2009-09-17 01:06:41'),
('2009-09-17', 22, 1, '2009-09-17 11:51:51'),
('2009-09-17', 24, 1, '2009-09-17 11:51:51'),
('2009-09-18', 4, 1, '2009-09-18 20:42:42'),
('2009-09-18', 6, 1, '2009-09-18 20:42:42'),
('2009-09-18', 2, 1, '2009-09-18 20:42:42'),
('2009-09-18', 5, 1, '2009-09-18 20:42:42'),
('2009-09-18', 7, 1, '2009-09-18 20:42:42'),
('2009-09-18', 23, 1, '2009-09-18 20:42:42'),
('2009-09-20', 8, 2, '2009-09-20 09:43:36'),
('2009-09-20', 4, 1, '2009-09-20 09:43:36'),
('2009-09-20', 2, 1, '2009-09-20 09:43:36'),
('2009-09-20', 1, 1, '2009-09-20 09:43:36'),
('2009-09-20', 6, 1, '2009-09-20 09:43:36'),
('2009-09-20', 5, 1, '2009-09-20 09:43:36'),
('2009-09-21', 6, 2, '2009-09-21 11:43:22'),
('2009-09-21', 7, 1, '2009-09-21 11:43:22'),
('2009-09-21', 5, 1, '2009-09-21 11:43:22'),
('2009-09-21', 1, 1, '2009-09-21 11:43:22'),
('2009-09-22', 1, 1, '2009-09-22 13:22:06'),
('2009-09-22', 4, 1, '2009-09-22 13:22:06'),
('2009-09-22', 7, 1, '2009-09-22 13:22:06'),
('2009-09-22', 8, 1, '2009-09-22 13:22:06'),
('2009-09-22', 11, 1, '2009-09-22 13:22:06'),
('2009-09-22', 23, 1, '2009-09-22 13:22:06'),
('2009-09-22', 22, 1, '2009-09-22 13:22:06'),
('2009-09-22', 17, 1, '2009-09-22 13:22:06'),
('2009-09-22', 15, 1, '2009-09-22 13:22:06'),
('2009-09-22', 16, 1, '2009-09-22 13:22:06'),
('2009-09-22', 2, 1, '2009-09-22 13:22:06'),
('2009-09-23', 1, 2, '2009-09-23 12:00:28'),
('2009-09-23', 8, 1, '2009-09-23 12:00:28'),
('2009-09-26', 4, 1, '2009-09-26 09:34:10'),
('2009-09-26', 7, 1, '2009-09-26 09:34:10'),
('2009-09-26', 16, 1, '2009-09-26 09:34:10'),
('2009-09-26', 5, 1, '2009-09-26 09:34:10'),
('2009-09-26', 20, 1, '2009-09-26 09:34:10'),
('2009-09-27', 19, 1, '2009-09-27 11:59:41'),
('2009-09-27', 1, 2, '2009-09-27 16:37:25'),
('2009-09-27', 8, 1, '2009-09-27 16:37:25'),
('2009-09-27', 7, 1, '2009-09-27 16:37:25'),
('2009-09-27', 5, 3, '2009-09-28 00:04:36'),
('2009-09-27', 2, 1, '2009-09-27 16:37:25'),
('2009-09-27', 4, 1, '2009-09-27 16:37:25'),
('2009-09-27', 6, 1, '2009-09-27 16:37:25'),
('2009-09-30', 1, 2, '2009-09-30 17:34:50'),
('2009-09-30', 8, 1, '2009-09-30 17:34:50'),
('2009-09-30', 5, 1, '2009-09-30 17:34:50'),
('2009-10-01', 11, 1, '2009-10-01 09:40:19'),
('2009-10-01', 1, 3, '2009-10-01 16:38:08'),
('2009-10-01', 4, 1, '2009-10-01 16:38:08'),
('2009-10-04', 1, 6, '2009-10-04 23:04:16'),
('2009-10-04', 11, 2, '2009-10-04 18:14:30'),
('2009-10-04', 2, 2, '2009-10-04 18:14:30'),
('2009-10-04', 4, 2, '2009-10-04 18:14:30'),
('2009-10-04', 5, 2, '2009-10-04 18:14:30'),
('2009-10-04', 6, 3, '2009-10-04 23:04:16'),
('2009-10-04', 7, 2, '2009-10-04 18:14:30'),
('2009-10-04', 8, 2, '2009-10-04 18:14:30'),
('2009-10-04', 23, 1, '2009-10-04 14:57:25'),
('2009-10-04', 22, 1, '2009-10-04 14:57:25'),
('2009-10-04', 20, 1, '2009-10-04 14:57:25'),
('2009-10-04', 19, 1, '2009-10-04 14:57:25'),
('2009-10-04', 18, 1, '2009-10-04 14:57:25'),
('2009-10-04', 12, 1, '2009-10-04 14:57:25'),
('2009-10-04', 24, 1, '2009-10-04 14:57:25'),
('2009-10-04', 15, 1, '2009-10-04 14:57:25'),
('2009-10-04', 17, 1, '2009-10-04 14:57:25'),
('2009-10-04', 21, 1, '2009-10-04 14:57:25'),
('2009-10-04', 14, 2, '2009-10-04 18:14:30'),
('2009-10-04', 16, 2, '2009-10-04 18:14:30'),
('2009-10-06', 1, 2, '2009-10-06 14:36:40'),
('2009-10-06', 4, 1, '2009-10-06 14:36:40'),
('2009-10-06', 8, 1, '2009-10-06 14:36:40'),
('2009-10-07', 4, 2, '2009-10-07 10:48:33'),
('2009-10-07', 8, 1, '2009-10-07 10:48:33'),
('2009-10-07', 1, 1, '2009-10-07 10:48:33'),
('2009-10-07', 6, 1, '2009-10-07 10:48:33'),
('2009-10-07', 2, 1, '2009-10-07 10:48:33'),
('2009-10-07', 5, 1, '2009-10-07 10:48:33'),
('2009-10-07', 7, 1, '2009-10-07 10:48:33'),
('2009-10-07', 11, 1, '2009-10-07 10:48:33'),
('2009-10-09', 11, 1, '2009-10-09 02:51:56'),
('2009-10-09', 8, 1, '2009-10-09 02:51:56'),
('2009-10-09', 4, 1, '2009-10-09 02:51:56'),
('2009-10-09', 6, 1, '2009-10-09 02:51:56'),
('2009-10-09', 2, 1, '2009-10-09 02:51:56'),
('2009-10-09', 5, 1, '2009-10-09 02:51:56'),
('2009-10-09', 7, 1, '2009-10-09 02:51:56'),
('2009-10-09', 1, 1, '2009-10-09 02:51:56'),
('2009-10-09', 21, 1, '2009-10-09 02:51:56'),
('2009-10-10', 14, 1, '2009-10-10 13:29:51'),
('2009-10-10', 6, 1, '2009-10-10 13:29:51'),
('2009-10-10', 15, 1, '2009-10-10 13:29:51'),
('2009-10-14', 1, 1, '2009-10-14 12:37:46'),
('2009-10-15', 1, 4, '2009-10-15 07:16:58'),
('2009-10-15', 6, 2, '2009-10-15 07:16:58'),
('2009-10-15', 5, 1, '2009-10-15 07:16:58'),
('2009-10-15', 7, 1, '2009-10-15 07:16:58'),
('2009-10-15', 8, 1, '2009-10-15 07:16:58'),
('2009-10-15', 11, 1, '2009-10-15 07:16:58'),
('2009-10-15', 4, 1, '2009-10-15 07:16:58'),
('2009-10-15', 23, 1, '2009-10-15 08:39:10'),
('2009-10-17', 1, 2, '2009-10-17 10:41:58'),
('2009-10-17', 11, 1, '2009-10-17 10:41:58'),
('2009-10-17', 6, 1, '2009-10-17 10:41:58'),
('2009-10-17', 4, 1, '2009-10-17 10:41:58'),
('2009-10-17', 5, 1, '2009-10-17 10:41:58'),
('2009-10-17', 8, 1, '2009-10-17 10:41:58'),
('2009-10-18', 1, 1, '2009-10-18 21:16:12'),
('2009-10-20', 5, 3, '2009-10-20 11:21:40'),
('2009-10-20', 1, 4, '2009-10-20 13:46:59'),
('2009-10-20', 11, 2, '2009-10-20 11:21:40'),
('2009-10-20', 8, 2, '2009-10-20 11:21:40'),
('2009-10-20', 7, 2, '2009-10-20 11:21:40'),
('2009-10-20', 6, 2, '2009-10-20 11:21:40'),
('2009-10-20', 2, 1, '2009-10-20 11:21:40'),
('2009-10-20', 4, 1, '2009-10-20 11:21:40'),
('2009-10-20', 16, 1, '2009-10-20 11:21:40'),
('2009-10-20', 12, 1, '2009-10-20 11:21:40'),
('2009-10-20', 15, 1, '2009-10-20 11:21:40'),
('2009-10-20', 14, 1, '2009-10-20 11:21:40'),
('2009-10-20', 17, 1, '2009-10-20 11:21:40'),
('2009-10-20', 18, 1, '2009-10-20 11:21:40'),
('2009-10-20', 19, 1, '2009-10-20 11:21:40'),
('2009-10-20', 20, 1, '2009-10-20 11:21:40'),
('2009-10-20', 21, 1, '2009-10-20 11:21:40'),
('2009-10-20', 22, 1, '2009-10-20 11:21:40'),
('2009-10-20', 23, 1, '2009-10-20 11:21:40'),
('2009-10-20', 24, 1, '2009-10-20 11:21:40'),
('2009-10-21', 1, 1, '2009-10-21 17:31:05'),
('2009-10-21', 6, 1, '2009-10-21 17:31:05'),
('2009-10-21', 4, 1, '2009-10-21 17:31:05'),
('2009-10-21', 2, 1, '2009-10-21 17:31:05'),
('2009-10-21', 24, 1, '2009-10-21 17:31:05'),
('2009-10-21', 16, 1, '2009-10-21 17:31:05'),
('2009-10-22', 2, 3, '2009-10-22 13:04:20'),
('2009-10-22', 1, 1, '2009-10-22 01:38:41'),
('2009-10-22', 11, 1, '2009-10-22 01:38:41'),
('2009-10-22', 8, 2, '2009-10-22 13:04:20'),
('2009-10-22', 4, 1, '2009-10-22 13:04:20'),
('2009-10-22', 7, 1, '2009-10-22 13:04:20'),
('2009-10-22', 5, 1, '2009-10-22 13:04:20'),
('2009-10-23', 1, 1, '2009-10-23 12:24:53'),
('2009-10-23', 4, 1, '2009-10-23 12:24:53'),
('2009-10-24', 1, 4, '2009-10-24 11:50:56'),
('2009-10-24', 4, 1, '2009-10-24 11:50:56'),
('2009-10-24', 5, 1, '2009-10-24 11:50:56'),
('2009-10-24', 6, 1, '2009-10-24 11:50:56'),
('2009-10-24', 2, 1, '2009-10-24 11:50:56'),
('2009-10-24', 20, 1, '2009-10-24 11:50:56'),
('2009-10-24', 17, 1, '2009-10-24 11:50:56'),
('2009-10-24', 16, 1, '2009-10-24 11:50:56'),
('2009-10-24', 19, 1, '2009-10-24 11:50:56'),
('2009-10-24', 23, 1, '2009-10-24 11:50:56'),
('2009-10-24', 24, 1, '2009-10-24 11:50:56'),
('2009-10-26', 5, 2, '2009-10-26 20:25:25'),
('2009-10-26', 4, 1, '2009-10-26 20:25:25'),
('2009-10-26', 7, 1, '2009-10-26 20:25:25');
