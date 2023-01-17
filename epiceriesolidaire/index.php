<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L’épicerie solidaire Graine2Vie apporte une aide, principalement alimentaire, à un public en difficulté économique, fragilisé ou exclu résidants sur le secteur 31200 à Toulouse." />
	<title>Épicerie solidaire - Main Tendue 31</title>
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
					<li class="active">Épicerie solidaire</li>
				</ul>
				<h1>Nos actions</h1>
			</div>
		</div>

		<!-- NOS ACTIONS | L'ÉPICERIE SOLIDAIRE -->
		<div class="mt_cadre mt_epicerie mt31_cadres">
			<div class="filtre">
				<h2>Épicerie Solidaire - « Graine2Vie »</h2>
				<article>
					<p><?php $gdv = "L’épicerie solidaire Graine2Vie apporte une aide, principalement alimentaire, à un public en difficulté économique, fragilisé ou exclu résidants sur le secteur 31200 à Toulouse.

					Dans son espace aménagé, elle propose à ses usagers des produits variés et de qualité, moyennant une faible participation financière : entre 10% et 30% du prix usuel.

					La liberté de choix et la contribution financière participent à la dignité des personnes accueillies et évitent que la lutte contre l'exclusion ne favorise l'assistanat.  L’aide alimentaire ne peut plus seulement pallier l’urgence ; elle doit s’accompagner d’actions de soutien et de resocialisation des personnes en difficulté.
					
					L'ambition de cette une offre alimentaire participative, aussi proche que possible des circuits de consommation traditionnels, est de promouvoir l'autonomie des personnes et leur insertion durable.

					Demander de l'aide est une démarche difficile, souvent vécue comme une humiliation surtout sur le volet alimentaire, car cette demande traduit essentiellement une incapacité à se nourrir ou à nourrir les siens, ce qui est un geste essentiel de la vie.

					L'accès des usagers est validé en fonction de critères socio-économiques et familiaux. Les personnes sont orientées vers l’épicerie par les travailleurs sociaux de la fonction publique territoriale, des associations partenaires on le « bouche à oreilles ».

					Le public est essentiellement composé de bénéficiaires des minima sociaux, de « travailleurs pauvres », de familles monoparentales, de retraités, d'intérimaires, étudiants sans ressources, etc…

					La durée d’accès à l’épicerie est en général de 6 mois.

                    Notre épicerie solidaire organise également des activités pour les bénéficiaires : ateliers cuisine, ateliers diététique, ateliers calligraphie, sorties culturelles… Ces activités permettant ainsi aux personnes de tisser des liens et de développer des compétences.

                    En parallèle, Véronique, notre conseillère en insertion socioprofessionnelle accompagne les bénéficiaires dans un projet personnel pour les amener à une autonomie financière et une insertion professionnelle :
                    <ul>    
                        <li>Apprendre à gérer son budget</li>
                        <li>Travailler sur des situations de surendettement</li>
                        <li>Travailler sur un projet professionnel (formation, aide à la recherche d’emploi, faire un CV, une lettre de motivation…)</li>
                        <li>Ouverture de droits sociaux</li>
                        <li>…Autres…</li>
                    </ul>
                    Le but de ces accompagnements étant que les achats à l’épicerie solidaire ne soient pas une fin en soit, mais que les bénéficiaires retrouvent leur autonomie.
                    
                    <hr />
					Notre épicerie solidaire accompagne plus de 300 familles par an.
    
                    <hr />
					L'association Main Tendue 31 est adhérente au <a href='http://gesmip.org'>GESMIP</a> (Groupement des Epiceries Solidaires de Midi Pyrénées).";

						echo str_replace(array("\r\n","\n"),"<br/>", $gdv);

					?></p>
				</article>
			</div>
		</div>

		<!-- NOS ACTIONS | A PROPOS -->
		<div class="mt_cadre mt_apropos mt31_cadres">
			<div class="filtre">
				<h2>À propos</h2>
				<div class="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2888.042197355565!2d1.43056034505156!3d43.62648066539366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebb4cfcb5a4ef%3A0xc62d6d65c715ff69!2s12+Rue+de+Fenouillet%2C+31200+Toulouse!5e0!3m2!1sfr!2sfr!4v1478093704612" width="300" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
				</div>
				<address>
					<strong>Épicerie solidaire</strong><br />
					<br>
					Tous les  mardis et vendredis de 14h à 17h00<br />
					Et le samedi de 10h à 12h30 pour les étudiants<br>
					<br>
					12, rue de Fenouillet<br />
					31200 Toulouse<br />
				</address>
				<div class="thumbs_xy">
					<strong>Voir nos photos</strong>
				<?php
					$deuxPremiersAlbums = $db->prepare('SELECT * FROM mt31_albums WHERE idAlbum = :idAlbum');
					$deuxPremiersAlbums->execute(array("idAlbum" => 2));
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
