<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Projets de l'association" />
	<title>Projets - Main Tendue 31</title>
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
				<!-- 
				<ul class="fil_ariane">
					<li>
						<a href="../index.php">Accueil</a>
						<span class="divider">/</span>
					</li>
					<li class="active">Projets</li>
				</ul>
				-->
				<h1>Nos actions</h1>
			</div>
		</div>
		<?php

		      $textbus = "Le Solidaribus est un bus aménagé en accueil de jour mobile qui sillonne les rues de Toulouse à la rencontre de personnes SDF isolées très marginalisées afin de retisser du lien social. Ainsi, les personnes sont mises à l’abri le temps d’une soupe, d'une collation, d’un café et il est alors possible de prendre le temps nécessaire individuellement pour leur redonner confiance, leur faire prendre conscience de leurs capacités et les accompagner vers une démarche d'accès soins, d'accès au droit, d'accès au logement, d'accès à la culture…

Nos équipes proposent de la documentation qui répond aux questions que peuvent se poser les personnes accueillies, au niveau de la santé (accès aux soins, prévention toxicomanie, alcool,...) des violences, des renseignements juridiques ou administratifs (travail, droits, justice...), des hébergements, des divers services proposés.

Il est aussi possible, si les personnes le souhaitent, d’entamer une démarche d'accompagnement et de les aider dans leurs démarches administratives. Un accueil inconditionnel, un regard bienveillant et un dialogue construit et suivi permettent de repérer les besoins et d’orienter les personnes vers les partenaires ou les services sociaux adaptés.

Le Solidaribus est signataire de la <a href='http://www.espace-ethique.org/sites/default/files/Charte-e%CC%81thique%26maraude-2.pdf'>Charte Ethique et maraudes</a>";
/*
			 $textbus1="Pour aller plus loin dans nos actions, nous envisageons de transformer un bus 17 place dont nous sommes propriétaires, en bus de maraude pour aller à la rencontre de personnes sdf isolées.
Le projet est donc d'équiper ce bus en salon mobile confortable et décoré avec soin et y installer des tables et des fauteuils. Le but étant que les personnes accueillies se sentent \"comme à la maison\". Ainsi elles seront valorisées et seront en confiance.

Nous pourrons ainsi entamer une démarche d'accompagnement suivi et si le besoin est avéré, les orienter vers les partenaires ou les services sociaux les plus adaptés à leurs problèmes.

Nous mettrons en place de la documentation qui puisse répondre aux questions qui peuvent se poser, au niveau de la santé (prévention toxicomanie, alcool,...) des violences, des renseignements juridiques (droits, justice...), des hébergements, des divers services proposés aux personnes en errance sur Toulouse (hygiène, vêtements, restauration, accueils de jour...)

Nous proposerons également des livres divers, (romans, essais, sociologie, philosophie...) que les personnes pourront emporter afin de leur offrir un accès à la culture, elles qui en sont souvent exclues.

C'est une idée innovante car les maraudes qui ont lieu sur Toulouse sont généralement des passages rapides auprès des SDF, avec une soupe ou un sandwich et un café, mais sans accompagnement.
Le concept que nous proposons est totalement différent.

Quels sont les principaux objectifs du projet ?";
			 $textbus2="Aller à la rencontre de personnes SDF isolées, et prendre le temps nécessaire individuellement pour leur redonner confiance, leur faire prendre conscience de leurs capacités et les accompagner vers une démarche d'accès soins, d'accès au droit, d'accès au logement, d'accès à la culture... . ";
			 $textbus3="Entamer une démarche d'accompagnement afin de retisser du lien social, voire de le créer. Un accueil inconditionnel, un regard bienveillant et un dialogue construit et suivi permettront de repérer les besoins et d’orienter les personnes vers les partenaires ou les services sociaux adaptés.";
			 $textbus4="Proposer de la documentation qui puisse répondre aux questions qui peuvent se poser, au niveau de la santé (prévention toxicomanie, alcool,...) des violences, des renseignements juridiques ou administratifs (travail, droits, justice...), des hébergements, des divers services proposés.";
			 $textbus5="Les personnes auront renforcé la confiance en elles mêmes et leur capacité à se prendre en charge. Elles pourront ainsi retrouver leur dignité et leur autonomie et auront la force de se battre pour affronter les difficultés engendrées par la recherche d’emploi, de logement ou plus simplement pour accepter une prise en charge pour un accès aux soins, une cure de sevrage (alcool, drogues, médicaments,...) ou un accompagnement psychologique. ";
*/
		?>

		<!-- NOS ACTIONS | BUS DE MARAUDES -->
		<div class="mt_cadre mt_association mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Le Solidaribus</h2>
					<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $textbus);?></p>
				</article>
			</div>
		</div>

		<!-- NOS ACTIONS | A PROPOS -->
		<div class="mt_cadre mt_apropos mt31_cadres">
			<div class="filtre">
				<h2>À propos</h2>
				<div class="thumbs_xy">
					<strong>Voir nos photos</strong>
				<?php
					$deuxPremiersAlbums = $db->prepare('SELECT * FROM mt31_albums WHERE idAlbum = :idAlbum');
					$deuxPremiersAlbums->execute(array("idAlbum" => 6));
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