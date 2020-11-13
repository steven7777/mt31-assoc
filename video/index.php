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
					<li class="active">Vidéo</li>
				</ul>
				<h1>Multimédia</h1>
			</div>
		</div>

		<!-- MULTIMÉDIA | VIDÉO - VUE GÉNÉRALE -->
		<div class="mt_cadre mt_galerie lecture_video mt31_cadres">
			<div class="filtre">
				<h2>Vidéo</h2>
			<?php
				$videoCourante = $db->prepare('SELECT * FROM mt31_video WHERE idVideo = :idVideo;');
				$videoCourante->execute(array("idVideo" => $_GET['idVideo']));
				$toutSurLaVideo = $videoCourante->fetch();
			?>
			<?php
				if ($toutSurLaVideo['estExterne'] == 1) {
			?>

			<?php
				} else {
			?>
				<h3><?php echo utf8_encode($toutSurLaVideo['titreVideo']); ?></h3>
				<video controls="controls">
					<source src="../<?php echo $toutSurLaVideo['cheminVideo']; ?>.webm" type="video/webm" />
					<source src="../<?php echo $toutSurLaVideo['cheminVideo']; ?>.flv" type="video/flv" />
				</video>
			<?php
				}
			$videoCourante->closeCursor();
			?>
			</div>
		</div>

		<!-- MULTIMÉDIA | VIDÉO - LISTE -->
		<div class="mt_cadre mt_photos mt_video mt31_cadres">
			<div class="filtre">
				<div class="thumbs_xy">
					<div style="width: 300px; height: 200px; background-image: url('../<?php echo $toutSurLaVideo['miniatureVideo']; ?>');" class="thumbs active_thumbs thumb_<?php echo $toutSurLaVideo['idVideo']; ?>">
						<a href="#" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode($toutSurLaVideo['titreVideo']); ?></p>
						</a>
					</div>
			<?php
				$video = $db->prepare('SELECT * FROM mt31_video WHERE idVideo != :idVideo ORDER BY idVideo');
				$video->execute(array("idVideo" => $_GET['idVideo']));
				while ($toutesLesVideos = $video->fetch()) {
					if ($toutesLesVideos['estExterne'] == 1) {
			?>
					<div style="width: 200px; height: 150px; background-image: url('../<?php echo $toutesLesVideos['miniatureVideo']; ?>');" class="thumbs thumb_<?php echo $toutesLesVideos['idVideo']; ?>">
						<a href="<?php echo $toutesLesVideos['cheminVideo']; ?>" target="_blank" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode(substr($toutesLesVideos['titreVideo'], 0, 15)); ?>...</p>
						</a>
					</div>
			<?php
					} else {
			?>
					<div style="width: 200px; height: 150px; background-image: url('../<?php echo $toutesLesVideos['miniatureVideo']; ?>');" class="thumbs thumb_<?php echo $toutesLesVideos['idVideo']; ?>">
						<a href="index.php?idVideo=<?php echo $toutesLesVideos['idVideo']; ?>" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode(substr($toutesLesVideos['titreVideo'], 0, 15)); ?>...</p>
						</a>
					</div>
			<?php
					}
				}
				$video->closeCursor();
			?>
				</div>
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