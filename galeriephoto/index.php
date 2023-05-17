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

		<!-- MULTIMÉDIA | PHOTOS -->
		<div class="mt_cadre mt_photos mt_photos_liste mt31_cadres">
			<div class="filtre">
				<h2>Galerie photos</h2>
				<p></p>
				<div class="thumbs_xy">
			<?php
				$albums = $db->prepare('SELECT * FROM mt31_albums');
				$albums->execute();
				while ($tousLesAlbums = $albums->fetch()) {
			?>
					<div style="background-image: url('../<?php echo $tousLesAlbums['photoCover']; ?>');" class="thumbs thumb_<?php echo $tousLesAlbums['idAlbum']; ?>">
						<a href="visionneuse-galerie.php?idAlbum=<?php echo $tousLesAlbums['idAlbum']; ?>" class="acces_galerie">
							<p class="caption"><?php echo my_utf8_encode($tousLesAlbums['titreAlbum']); ?></p>
						</a>
					</div>
			<?php
				}
				$albums->closeCursor();
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