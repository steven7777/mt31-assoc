<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association en détails" />
	<title>Vidéo - Main Tendue 31</title>
	<link rel="icon" href="../favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="../css/navbar.css" />
	<link rel="stylesheet" type="text/css" href="../css/footer.css" />
	<link rel="stylesheet" type="text/css" href="../css/main2.css" />
	<link rel="stylesheet" type="text/css" href="../css/photos.css" />
	<link rel="stylesheet" type="text/css" href="../css/max1630px.css" media="screen and (min-width: 1445px) and (max-width: 1630px)" />
	<link rel="stylesheet" type="text/css" href="../css/max1445px.css" media="screen and (min-width: 1280px) and (max-width: 1445px)" />
	<link rel="stylesheet" type="text/css" href="../css/max1280px.css" media="screen and (min-width: 1024px) and (max-width: 1280px)" />
	<link rel="stylesheet" type="text/css" href="../css/max1032px.css" media="screen and (min-width: 768px) and (max-width: 1032px)" />
	<link rel="stylesheet" type="text/css" href="../css/mobile.css" media="screen and (max-width: 768px)" />
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
</head>

<?php

/* Transféré dans /tools/bdd_connect
// (EP 202012) Bidouille pour ajouter des videos qui ne sont pas dans la BD
$VIDEO_PATH = 'edit/video/';
// Dernier IdVideo, fixé à 99 pour que ça commence à 100 (à cause du ++)
$LAST_ID_VIDEO = 99;
$videos_from_array = array(
    /S Autre video dans le futur...
    $LAST_ID_VIDEO++ => [
        'idVideo' => $LAST_ID_VIDEO,
        'estExterne' => 0,
        'miniatureVideo' => null,
        'cheminVideo' => $VIDEO_PATH.'nom_de_la_video',
        'titreVideo' => "titre de la video",
     ],
     S/
    ++$LAST_ID_VIDEO => array(
        'idVideo' => $LAST_ID_VIDEO,
        'estExterne' => 0,
        'miniatureVideo' => null,
        'cheminVideo' => $VIDEO_PATH.'presentation_association_2020-11-reduced-1280x720',
        'titreVideo' => "Presentation association Nov. 2020",
    ),
);
//echo "last id video is $LAST_ID_VIDEO";
*/

function displayVideoMiniature($video) {
    //print_r($video);
    if ($video['estExterne'] == 1) {
        ?>
    	<div style="width: 200px; height: 150px; background-image: url('../<?php echo $video['miniatureVideo']; ?>');" class="thumbs thumb_<?php echo $video['idVideo']; ?>">
    		<a href="<?php echo $video['cheminVideo']; ?>" target="_blank" class="acces_galerie">
    			<p class="caption"><?php echo utf8_encode(substr($video['titreVideo'], 0, 15)); ?>...</p>
    		</a>
    	</div>
    	<?php
    } 
    else {
        ?>
    	<div style="width: 200px; height: 150px; background-image: url('../<?php echo $video['miniatureVideo']; ?>');" class="thumbs thumb_<?php echo $video['idVideo']; ?>">
    		<a href="index.php?idVideo=<?php echo $video['idVideo']; ?>" class="acces_galerie">
    			<p class="caption"><?php echo utf8_encode(substr($video['titreVideo'], 0, 15)); ?>...</p>
    		</a>
    	</div>
    	<?php
    }
}
?>
    				
<body>

	<!-- EN-TÊTE -->
	<header>
		<!-- BARRE DE NAVIGATION -->
		<?php	
		include($_SERVER['DOCUMENT_ROOT'] . '/tools/navbar.php');
		require('../tools/bdd_connect.php');
		// Variables recupérées de bdd_connect.php :
		$VIDEO_PATH = $VIDEO_PATH;
		$LAST_ID_VIDEO = $LAST_ID_VIDEO;
		$videos_from_array = $videos_from_array;
		?>
	</header>

	<!-- CORPS PRINCIPAL -->
	<div id="corps">

		<!-- TITRE -->
		<div class="mt_cadre mt_h1 titre_h1">
			<div class="filtre">
				<ul class="fil_ariane">
					<li>
						<a href="../index.php">Accueil</a>
						<span class="divider">/</span>
					</li>
					<li class="active">Vidéo</li>
				</ul>
				<h1>Multimédia</h1>
			</div>
		</div>

		<!-- MULTIMÉDIA | VIDÉO - VUE DÉTAILLÉE DE LA VIDÉO CHOISIE -->
		<div class="mt_cadre mt_galerie lecture_video mt31_cadres">
		
			<div class="filtre">
				<h2>Vidéo</h2>
    			<?php
    			//$idVideo = isset($_GET['idVideo']) ? (int) $_GET['idVideo'] : null;
    			$idVideo = isset($_GET['idVideo']) ? (int) $_GET['idVideo'] : $LAST_ID_VIDEO;
    			//echo ($idVideo);
    			/* (EP 202012) 
    			 * Bidouille pour ajouter une video qui n'est pas dans la BD
    			 * Elle aura un id >= 100
    			 */
    			// 1) From DB
    			if ($idVideo < 100) {
    				$videoCourante = $db->prepare('SELECT * FROM mt31_video WHERE idVideo = :idVideo;');
    				$videoCourante->execute(array("idVideo" => $idVideo));
    				$video = $videoCourante->fetch();
    				//print_r($video);
    				$videoCourante->closeCursor();
    			}
    			// 2) From array
    			else {
    			    $video = $videos_from_array[$idVideo];
    			}
    			?>
    			<?php
				if ($video['estExterne'] == 1) {
                    // on fait rien
				} 
				else {
    			    //$toutSurLaVideo['cheminVideo'] = 'edit/video/_ORIG_PAS_DANS_GIT_NI_SUR_FTP/presentation_association_2020-11-reduced-1280x720';
    			    //$video['cheminVideo'] = 'edit/video/presentation_association_2020-11-reduced-1280x720';
    			    //$toutSurLaVideo['cheminVideo'] = 'edit/video/Musique_20__20LIZ_20MC_20COMB_20fait_20chanter_20Toulouse';
    			    // ok webm:
    			    //$toutSurLaVideo['cheminVideo'] = 'edit/video/NVEExport_0002';
    			    //$toutSurLaVideo['cheminVideo'] = 'edit/video/NVEExport';
    			    //$toutSurLaVideo['cheminVideo'] = 'edit/video/pps_20noel';
    			    //$video['titreVideo'] = 'TOTO TITI';
    			    //echo $toutSurLaVideo['cheminVideo'];
    				//echo $toutSurLaVideo['titreVideo'];
        			?>
    				
    				<h3><?php echo utf8_encode($video['titreVideo']); ?></h3>
    				
    				<!--
    				(EP 202012)
    				Doc utile sur la balise <video> : 
    				https://developer.mozilla.org/fr/docs/Apprendre/HTML/Multimedia_and_embedding/Contenu_audio_et_video
    				Attention : 
    				- seul le type mime "webm" fonctionne, "flv" ne fonctionne ni avec Firefox ni avec Chrome
    				- mais c'est très long à produire avec _REDUCE_ORIG_VIDEO.sh (conversion de .mov vers .webm)
    				- S'il y a plusieurs lignes "source", le navigateur utilise la première ligne qui marche
    				<video controls="controls">
    				 -->
    				<video controls width="500">

    					<?php
    					$ext = 'webm';
    					$video_name = $video['cheminVideo'].'.'.$ext;
    					$video_mime = "video/$ext";
    					?>
    					<source src="../<?=$video_name?>" type="<?=$video_mime?>" />
    					
						<?php
    					$ext = 'flv';
    					$video_name = $video['cheminVideo'].'.'.$ext;
    					$video_mime = "video/$ext";
    					?>
    					<source src="../<?=$video_name?>" type="<?=$video_mime?>" />
    					
    					<!-- 
    					<source src="../<=$toutSurLaVideo['cheminVideo']?>.webm" type="video/webm" />
    					<source src="../<=$toutSurLaVideo['cheminVideo']?>.flv" type="video/flv" />
    					 -->
    					Désolé, votre navigateur ne supporte pas les vidéos intégrées (embedded).
    					
    				</video>

					<?php
				}
			    //($idVideo<100) && $videoCourante->closeCursor();
    			?>
			</div> <!-- filtre -->
		
		</div> <!-- mt_cadre -->


		<!-- MULTIMÉDIA | VIDÉO - LISTE -->
		<div class="mt_cadre mt_photos mt_video mt31_cadres">
			<div class="filtre">
				<div class="thumbs_xy">
				
					<!-- 1) On affiche d'abord une miniature un peu plus grosse pour la video en cours -->
					<div style="width: 300px; height: 200px; background-image: url('../<?php echo $video['miniatureVideo']; ?>');" class="thumbs active_thumbs thumb_<?php echo $video['idVideo']; ?>">
						<a href="#" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode($video['titreVideo']); ?></p>
						</a>
					</div>
					
					<!-- 2) On affiche ensuite une plus petite miniature pour chaque autre video, par ordre anti-chrono -->
    				<?php
    				// (EP 202012) Bidouille : ajout nouvelles vidéos qui ne sont pas dans la BD
    				// b) From Array
    				foreach ($videos_from_array as $video) 
    				    if ($video['idVideo'] != $idVideo) displayVideoMiniature($video);
    				// a) From DB
    				$videos = $db->prepare('SELECT * FROM mt31_video WHERE idVideo != :idVideo ORDER BY idVideo');
    				//$videos->execute(array("idVideo" => $_GET['idVideo']));
    				$videos->execute(array("idVideo" => $idVideo));
    				while ($video = $videos->fetch()) displayVideoMiniature($video);
    				$videos->closeCursor();
    				?>
    				
				</div> <!-- thumbs_xy -->
			</div> <!-- filtre -->
		</div> <!-- mt_cadre -->

	</div> <!-- corps -->
	
	<script type="text/javascript" src="../js/jquery-2-1-4-min.js" ></script>
	<script type="text/javascript" src="../js/bootstrap.js" ></script>
	<script type="text/javascript" src="../js/navbar.js" ></script>
	<script type="text/javascript" src="../js/maintendue31.js" ></script>

	<footer>
		<?php include($_SERVER['DOCUMENT_ROOT'] . '/tools/footer.php'); ?>
	</footer>

</body>
</html>