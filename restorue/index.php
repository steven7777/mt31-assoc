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
				<ul class="fil_ariane">
					<li>
						<a href="../index.php">Accueil</a>
						<span class="divider">/</span>
					</li>
					<li class="active">Resto'Rue</li>
				</ul>
				<h1>Nos actions</h1>
			</div>
		</div>

		<!-- NOS ACTIONS | RESTO' RUE -->
		<div class="mt_cadre mt_association mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Resto'Rue</h2>
					<p><?php $textrestorue="Un service de repas distribués sur la ville de Toulouse dans le secteur de la gare Matabiau à destination des plus démunis. 
Ce public, parfois très précarisé est très varié: SDF, jeunes en rupture familiale, demandeurs d’emploi, chômeurs en fin de droits, retraités avec de faibles ressources, travailleurs pauvres, demandeurs d’asile…. souvent en situation de grande pauvreté, évoluant dans de mauvaises conditions de vie (pas de logement ou logements vétustes voire insalubres, sous et malnutrition, non accès à l’hygiène, mauvais climat affectif, insécurité, dégradation de l’image de soi…) tous ces points influent souvent sur leur état de santé physique ou psychologique.

Ces personnes sont souvent exclues de toute forme d’aides autres que caritative. 


Chaque dimanche soir, pendant toute l’année, des repas gratuits sont servis à toute personne en demande. L’accueil est inconditionnel, il n’y a pas d’autre critère que le besoin  Ce sont des repas complets et chauds : soupe, crudité, plat principal, laitage, fruit, café, ou chocolat chaud. 
Le choix du dimanche a fait l’objet d'une étude afin de répondre au mieux aux besoins de ce public et de ne pas doubler une action déjà mise en place. 

Mais au-delà de l’aspect matériel, le but de l’association est de retisser du lien social, voire de le créer. L’accueil inconditionnel, un regard bienveillant et le dialogue qui accompagnent la distribution permettent aux personnes servies de retrouver l’estime d’elles-mêmes. 
Pour aider les bénévoles dans ces temps de partage, une formation à l'écoute active leur est assurée.
Une moyenne de 120 à 130 repas sont servis tous les dimanches. (<a href=\"../nosrapportsdactivite\">voir nos rapports d’activités</a>)";
				echo str_replace(array("\r\n","\n"),"<br/>", $textrestorue);
		?></p>
				</article>
			</div>
		</div>

		<!-- NOS ACTIONS | A PROPOS -->
		<div class="mt_cadre mt_apropos mt31_cadres">
			<div class="filtre">
				<h2>À propos</h2>
				<!-- CARTE GOOGLE MAPS -->
				<div class="map">
					<!-- Ancienne adresse était : avenue de Lyon -->
					<iframe 
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13062.348964017367!2d1.4363460877750478!3d43.61951098582657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebca61640991d%3A0x4c54ac3b38b19625!2s76%20Chemin%20du%20Raisin%2C%2031200%20Toulouse!5e0!3m2!1sfr!2sfr!4v1593614691873!5m2!1sfr!2sfr" 
						width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"
					>
					</iframe>
				</div>
				<!-- ADRESSE -->
				<address>
					<strong>Resto'Rue</strong><br />
					Tous les Dimanches soir<br />
					À partir de 18h30 toute l'année.<br />
					76 chemin du Raisin<br />
					31200 Toulouse<br />
				</address>
				<!-- PHOTOS -->
				<div class="thumbs_xy">
					<strong>Voir nos photos</strong>
				<?php
					$deuxPremiersAlbums = $db->prepare('SELECT * FROM mt31_albums WHERE idAlbum = :idAlbum');
					$deuxPremiersAlbums->execute(array("idAlbum" => 1));
					while ($lesDeuxPremiersAlbums = $deuxPremiersAlbums->fetch()) {
				?>
					<div style="background-image: url('../<?php echo $lesDeuxPremiersAlbums['photoCover']; ?>');" class="thumbs thumbs_r thumb_<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>">
						<a href="../galeriephoto/visionneuse-galerie.php?idAlbum=<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>" class="acces_galerie">
							<p class="caption"><?php echo my_utf8_encode($lesDeuxPremiersAlbums['titreAlbum']); ?></p>
						</a>
					</div>
				<?php
					}
					$deuxPremiersAlbums->closeCursor();
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