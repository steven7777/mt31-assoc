#!/bin/bash

#/* 
# * VARIABLES DE CONFIGURATION GENERALES - VALEURS PAR DÉFAUT
# *
# * Vous pouvez changer ces valeurs par défaut en respectant cette procédure :
# *
# * 1) Dans le dossier courant (config/) Faites une copie de ce fichier et nommez le ENV.sh
# *
# * 2) Modifiez les valeurs des variables ci-dessous SEULEMENT dans votre fichier ENV.sh
# * (qui n'est pas versionné et donc PRIVÉ, non visible sur le registry git)
# */

# Je suis administrateur de la machine (acces sudo) ? 1 (sinon 0)
JE_SUIS_ADMIN=0

#/* 
# * Administrateur Mysql :
# * Si vous etes admin Mysql, entrez votre login et pass ici:
# * Sinon, attention, il faut que la BD epicerie ET le user mt31-epicerie soient deja créés dans MySql AVANT d'executer le script install/INSTALL
# */
#DB_ADMIN_LOGIN='root'
#DB_ADMIN_PASS=''


#/*
# * Variables de configuration de la BD
# */

#/* 
# * CakePHP will use the default DB port based on the driver selected
# * MySQL on MAMP uses port 8889, MAMP users will want to uncomment
# * the following line and set the port accordingly
#*/
#//'port' => 'non_standard_port_number',

# 1) BD prod
HOST='localhost'
DATABASE='epicerie'
USERNAME='mt31-epicerie'
PASSWORD='epicerie_pass'

# 2) BD test
HOST_TEST='localhost'
DATABASE_TEST='test_epicerie'
# Par defaut, idem USERNAME
USERNAME_TEST='mt31-epicerie'
# Meme mot de passe pour les 2 BD (prod et test)
PASSWORD_TEST=$PASSWORD

