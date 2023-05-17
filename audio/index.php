<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Audio - Main Tendue 31</title>
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
<body>

	<!-- EN-TÊTE -->
	<header>
		<!-- BARRE DE NAVIGATION -->
		<?php	include($_SERVER['DOCUMENT_ROOT'] . '/tools/navbar.php');
				require('../tools/bdd_connect.php');
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
					<li class="active">Audio</li>
				</ul>
				<h1>Multimédia</h1>
			</div>
		</div>

		<!-- MULTIMÉDIA | AUDIO -->
		<div class="mt_cadre mt_audio mt31_cadres">
			<div class="filtre">
				<h2>Audio</h2>
				
				<?php
				#$allAudio = array();
				$audiofiles = array(
				
    				# https://www.radiopresence.com/emissions/foi/decouverte/immersion/article/immersion-50943
				    # Titre : Graine2Vie, Graine d'espérance
    				array (
        				'auteurAudio' => "Radio Presence - Immersion (19/2/19)",
        				'typeAudio' => "Reportage",
        				'titreAudio' => "Epicerie Graine2Vie",
        				'nomFichierAudio' => "19022019_immersion.mp3",
	                ),

    				array(
        				'auteurAudio' => "Radio Presence - Immersion (8/1/19)",
        				'typeAudio' => "Reportage",
        				'titreAudio' => "chorale KoKeLiKo",
        				'nomFichierAudio' => "08012019_immersion.mp3"
    				),
    				
	            );
				foreach ($audiofiles as $audiofile) {
				?>
    				<div class="audio">
    					<div class="filtre_w">
    						<h4><?php echo my_utf8_encode($audiofile['auteurAudio']); ?></h4>
    						<h3><?php echo my_utf8_encode(ucfirst($audiofile['typeAudio'])); ?> - <?php echo my_utf8_encode($audiofile['titreAudio']); ?></h3>
    						<audio controls="controls">
    							<source src="../media/audio/<?php echo $audiofile['nomFichierAudio']; ?>" type="audio/mp3"></source>
    						</audio>
    					</div>
    				</div>
    				<br/>
				<?php
				}
				
				$audio=$db->prepare('SELECT * FROM mt31_audio ORDER BY idAudio;');
				$audio->execute();
				while ($allAudio=$audio->fetch()) {
				?>
    				<div class="audio">
    					<div class="filtre_w">
    						<h4><?php echo my_utf8_encode($allAudio['auteurAudio']); ?></h4>
    						<h3><?php echo my_utf8_encode(ucfirst($allAudio['typeAudio'])); ?> - <?php echo my_utf8_encode($allAudio['titreAudio']); ?></h3>
    						<audio controls="controls">
    							<source src="../media/audio/<?php echo $allAudio['nomFichierAudio']; ?>" type="audio/mp3"></source>
    						</audio>
    					</div>
    				</div>
					<br/>
				<?php
				}
				$audio->closeCursor();
				?>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="../js/jquery-2-1-4-min.js" ></script>
	<script type="text/javascript" src="../js/bootstrap.js" ></script>
	<script type="text/javascript" src="../js/navbar.js" ></script>
	<script type="text/javascript" src="../js/maintendue31.js" ></script>

	<footer>
		<?php include($_SERVER['DOCUMENT_ROOT'] . '/tools/footer.php'); ?>
	</footer>

</body>
</html>