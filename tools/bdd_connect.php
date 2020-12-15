<?php

# Connexion	à la BDD

#include('/config/app.php');
include($_SERVER['DOCUMENT_ROOT'] . '/config/app.php');

#echo("$db_name, $login, $password");

try{
    //$db=new PDO('mysql:host=localhost;dbname=' . $db_name . ';charset=UTF8', $login, $password);
    $db=new PDO('mysql:host=localhost;dbname=' . $db_name . ';charset=LATIN1', $login, $password);
}
catch(exception $e){
	die('Erreur : ' . $e->getMessage());
}

?>
