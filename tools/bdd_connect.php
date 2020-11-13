<?php
# Connexion	à la BDD
	$server_name = 'wb59832';
	$login = 'wb59832';
	$password = 'bcl72ozb';

	try{
		$db=new PDO('mysql:host=localhost;dbname=' . $server_name . ';charset=UTF8', $login, $password);
	}
	catch(exception $e){
		die('Erreur : ' . $e->getMessage());
	}
?>
