-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 11 jan. 2019 à 18:07
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `_mydb_`
-- wb59832
-- maintendue
--

-- (EP) Est-ce vraiment utile de faire une transaction si tot ?
-- SET AUTOCOMMIT = 0;
-- START TRANSACTION;

DROP database IF EXISTS $db_name;
CREATE SCHEMA IF NOT EXISTS $db_name DEFAULT CHARACTER SET latin1;
-- CREATE SCHEMA IF NOT EXISTS maintendue_test DEFAULT CHARACTER SET latin1;


-- Creation du proprietaire de la BD
-- La ligne suivante serait la meilleure, mais ne suffit pas, impossible de se connecter a la BD avec ceci :
-- grant all on _mydb_.* to 'bddUserName' identified by 'bddUserPass';
-- ni avec ceci :
-- grant all on _mydb_.* to 'bddUserName'@'%' identified by 'bddUserPass';
-- Il faut donc faire ceci (ajouter localhost) et on pourra alors se connecter a la BD !!! :

-- Il faut supprimer l'utilisateur avant de l'ajouter.
-- (EP 2020-01-20) : 
-- Ca ne marche plus avec mysql 5.7 !!!
-- Par contre, ca risque d'etre toujours necessaire pour les anciennes versions !!!
-- TODO: tester ce script avec une ancienne version
-- GRANT USAGE ON *.* TO 'mydb_user';
-- DROP USER 'mydb_user';
-- GRANT USAGE ON *.* TO 'superadmin';
-- DROP USER 'superadmin';

-- grant all on _mydb_.* to '_mydb_'@'localhost' identified by '_mydb_1';
-- grant usage on maintendue.* to 'maintendue_user'@'localhost' identified by 'MTuSeRpass';
-- grant all on maintendue.* to 'maintendue_user'@'localhost' identified by 'MTuSeRpass';
grant all on $db_name.* to '$login'@'localhost' identified by '$password';

-- grant all on _mydbtest_.* to 'superadmin'@'localhost' identified by 'superadmin';
-- grant all on _mydbtest_.* to 'mydb_user'@'localhost' identified by 'mydb_pass';

-- Mais, ca serait plus prudent de limiter les droits (au lieu de "grant all"):
-- grant select,insert,update,delete on _mydb_.* to ...
flush privileges;




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- USE maintendue;

-- Est-ce bien utile ?
-- SET FOREIGN_KEY_CHECKS = 0;

