<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association en détails" />
	<title>Galerie photos - Main Tendue 31</title>
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
					<li class="active">Galerie photos</li>
				</ul>
				<h1>Multimédia</h1>
			</div>
		</div>

		<div class="mt_cadre galerie_photo">
			<div class="titre_album">
				<?php
					$recupererTitreAlbum = $db->prepare('SELECT * FROM mt31_albums WHERE idAlbum = :idAlbum');
					$recupererTitreAlbum->execute(array("idAlbum" => $_GET['idAlbum']));
					$titreAlbum = $recupererTitreAlbum->fetch();
					echo "<h2> Photos de l'événement \"" . utf8_encode($titreAlbum['titreAlbum']) . "\"</h2>";
				?>
			</div>
			<div class="vue">
				<!-- Image choisie générée automatiquement -->
				<img id="visionneuse_principale" src="" alt="" />
			</div>
			<div class="contain_ul">
				<?php
					$nbImg = $db->prepare('SELECT count(*) as nbImg FROM mt31_photos WHERE idAlbum = :idAlbum');
					$nbImg->execute(array("idAlbum" => $_GET['idAlbum']));
					$nb = $nbImg->fetch();
				?>
					<ul class="liste_images" id="liste_images" style="width: calc(<?php echo $nb['nbImg']; ?> * 120px);" >
				<?php	
					$nbImg->closeCursor();
						$recupererListeImages = $db->prepare('SELECT * FROM mt31_photos WHERE idAlbum = :idAlbum');
						$recupererListeImages->execute(array("idAlbum" => $_GET['idAlbum']));
						while ($listeImages = $recupererListeImages->fetch()) {
				?>
						<li class="li_img li_<?php echo($listeImages['idPhoto']); ?>">
							<a href="../<?php echo($listeImages['cheminPhoto']); ?>">
								<img id="img_<?php echo($listeImages['idPhoto']); ?>" src="../<?php echo($listeImages['cheminVignette']); ?>" alt="photo_<?php echo $listeImages['idPhoto']; ?>" />
							</a>
						</li>
					<?php
						}
						$recupererListeImages->closeCursor();
					?>
				</ul>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="../js/jquery-2-1-4-min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/navbar.js"></script>
	<script type="text/javascript" src="../js/maintendue31.js"></script>
	<script type="text/javascript" src="../js/galerie.js"></script>

	<footer>
		<?php include('../tools/footer.php'); ?>
	</footer>

</body>
</html>