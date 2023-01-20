<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association en mouvement" />
	<title>Resto' Rue - Main Tendue 31</title>
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
				<h1>chorale</h1>
			</div>
		</div>

		<div class="mt_cadre mt_association mt31_cadres">
			<div class="filtre">
				<article>
					<p>
					<?php 
					$textchorale=
					"Le <b>Chœur KoKeLiKo</b> est destiné aux personnes de la rue ou ayant fait l'expérience de la rue, aux bénéficiaires de l'épicerie solidaire, mais aussi aux bénévoles d'associations et toute personne intéressée par le projet.
					Au-delà du plaisir de chanter ensemble, cette chorale permet d’entrer en relation avec l'autre par la musique, d'intégrer un groupe et retrouver confiance en soi au travers du chant. La chorale est présente lors d'obsèques de personnes de la rue, avec l'Association 'Goutte de Vies'. 
					Le Chœur KoKeLiKo permet aux personnes en situation de précarité et/ou d’exclusion de réapprendre les gestes et les comportements nécessaires à leur réinsertion. (Présence aux répétitions, respect des horaires, respect des autres, respect des règles...)
					
					Il est ouvert aux projets qui se présentent à lui : animations, fête de la musique, moment de chant partagé lors des distributions de repas, ou dans des centres d'hébergement.
					Lee répétitions ont lieu tous les 15 jours, le samedi après-midi.
					
					Répertoire de la variété française (Brassens, Aznavour, Piaf, Renaud, Duteil, Nougaro...) et du Gospel, tout ceci accompagné d'un accordéon et d'un piano.
					Au plaisir de chanter avec vous !
					<!-- n'existe plus
					<a href='https://www.youtube.com/watch?v=ziX2Da-YjQY'>Voir une vidéo de présentation</a>
					<a href='https://www.grosfichiers.com/7KAE6EAdWd4IK'>Écouter un reportage radio (plus ancien)</a>
					-->
					<a href='https://www.radiopresence.com/emissions/information/regionale/carrefour-des-associations/article/main-tendue'>Écouter un reportage radio</a>

					"
					."Contact : Joseph - 07 69 76 22 83 - kokeliko@maintendue31.org";
					#."Contact : Florence 07 83 52 15 31 ou choeurkokeliko@gmail.com";
					echo str_replace(array("\r\n","\n"),"<br/>", $textchorale);
					?>
					</p>
				</article>
			</div>
		</div>

		<!-- NOS ACTIONS | A PROPOS -->
		<div class="mt_cadre mt_apropos mt31_cadres">
			<div class="filtre">
				<h2>À propos</h2>
				<div class="map">
					<div class="mapouter">
						<div class="gmap_canvas">
							<iframe width="200" height="200" id="gmap_canvas" 
								src="https://maps.google.com/maps?q=56%20rue%20de%20P%C3%A9riole%2031500%20Toulouse&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
							</iframe>
							<a href="https://www.maps-erstellen.de">maps-erstellen.de</a>
						</div>
						<style>.mapouter{text-align:right;height:200px;width:200px;}.gmap_canvas {overflow:hidden;background:none!important;height:200px;width:200px;}</style>
					</div>
				<!-- 
					<iframe 
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5777.64483333987!2d1.439225!3d43.610239!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebb5e0df9ee77%3A0x345405060c67c34c!2s22+Place+Arnaud+Bernard%2C+31000+Toulouse%2C+France!5e0!3m2!1sfr!2sfr!4v1501260951266" 
					width="200" height="200" frameborder="0" style="border:0" allowfullscreen>
					</iframe>
				 -->
				</div>
				<address>
					<strong style="text-align: center; display: block;">Chorale</strong><br />
                    <br />
                    Délégation du secours Catholique<br>
                    56 rue de Périole 31500 Toulouse<br>
					Pour tous renseignements : 07 83 52 15 31<br />
                    <!-- 
					L'Ostalada 22 place Arnaud Bernard 31000 Toulouse<br />
                    -->
				</address>

				<div class="thumbs_xy">
					<strong>Voir nos photos</strong>
				<?php
					$deuxPremiersAlbums = $db->prepare('SELECT * FROM mt31_albums WHERE idAlbum = :idAlbum');
					$deuxPremiersAlbums->execute(array("idAlbum" => 5));
					while ($lesDeuxPremiersAlbums = $deuxPremiersAlbums->fetch()) {
				?>
					<div style="background-image: url('../<?php echo $lesDeuxPremiersAlbums['photoCover']; ?>');" class="thumbs thumbs_r thumb_<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>">
						<a href="../galeriephoto/visionneuse-galerie.php?idAlbum=<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode($lesDeuxPremiersAlbums['titreAlbum']); ?></p>
						</a>
					</div>
				<?php
					}
					$deuxPremiersAlbums->closeCursor();
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