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



// (EP 202012) BDD SIMULÉE via des tableaux en mémoire (array)

$VIDEO_PATH = 'edit/video/';
// Dernier IdVideo, fixé à 99 pour que ça commence à 100 (à cause du ++)
$LAST_ID_VIDEO = 99;
$videos_from_array = array(
    /* Autre video dans le futur...
     $LAST_ID_VIDEO++ => [
     'idVideo' => $LAST_ID_VIDEO,
     'estExterne' => 0,
     'miniatureVideo' => null,
     'cheminVideo' => $VIDEO_PATH.'nom_de_la_video',
     'titreVideo' => "titre de la video",
     ],
     */
    ++$LAST_ID_VIDEO => array(
        'idVideo' => $LAST_ID_VIDEO,
        'estExterne' => 0,
        'miniatureVideo' => null,
        'cheminVideo' => $VIDEO_PATH.'presentation_association_2020-11-reduced-1280x720',
        'titreVideo' => "Presentation association Nov. 2020",
    ),
);
//echo "last id video is $LAST_ID_VIDEO";


?>
