<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association organise l'événement Noël Pour Tous" />
	<title>Noël Pour Tous - Main Tendue 31</title>
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
					<li class="active">Noël Pour Tous</li>
				</ul>
				<h1>Nos actions</h1>
			</div>
		</div>

		<!-- NOS ACTIONS | NOËL POUR TOUS -->
		<div class="mt_cadre mt_association mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Noël Pour Tous</h2>
					<p><?php $textnpt="Ce repas \"Noël Pour Tous\" est un événement auquel nous portons toute notre attention dans chacun des domaines.  Il s'agit de faire de cette journée un moment d'exception, une référence relationnelle pour chacun des participants, bénéficiaires comme organisateurs. Ce moment cristallise les relations entamées au cours de l'année, trop courtes par nature. Noël Pour Tous permet à chacun de donner du temps au temps, du temps relationnel, bien sûr.

Pour atteindre cet objectif, nous mettons en œuvre un service d'exception à chaque moment de cette journée : 
Les invités sont accueillis à un vestiaire où ils peuvent laisser leurs affaires en toute confiance car un système de billetterie sécurise leur dépôt. Ce point est central pour une population qui se déplace \"avec sa maison sur le dos\".
Dans la mesure du possible, c'est un bénévole qui a déjà tissé des relations avec un invité qui l'accueille dans un premier temps et le guide vers la table ensuite.
Chaque personne du service aux tables est vêtue dans un style \"maître d'hôtel\", le noir et blanc est généralisé.
Chaque table est composée au fil des arrivées par un bénévole qui partage le repas des invités et anime la conversation à sa table. Ce bénévole tient lieu de maître de maison.

Le service aux tables se fait à l'assiette afin d'éviter la notion de cantine
L'emphase est mise dans la présentation des plats qui composent un menu construit sur un thème spécifique différent chaque année.

L'esthétique est un fil rouge de la construction de cet évènement. Le thème choisi est décliné dans tous les domaines : l'invitation, la décoration de la salle, les tables et les menus.

L'animation est chaque année confiée à un artiste ou un groupe qui s'associe à l'intention de l'association en adaptant la façon de présenter son répertoire à un public inhabituel. L'enjeu pour les animateurs est de créer une ambiance apaisante et tonique propice à la mise en place d'un dialogue avec l'hôte qui anime chacune des tables. Elle doit être apaisante pour sécuriser une population qui en a grandement besoin afin d'entamer un dialogue confiant. Paisible aussi dans son contenu, pour éviter une hyperstimulation de personnes régulièrement confrontées à la violence.  Elle doit cependant rester tonique pour permettre au dialogue entamé autour de la table d'utiliser \"la nostalgie de l'enfance\" inhérente à l'événement comme moyen de repositionnement en mode projet.

Mis à part un gobelet de cidre associé à la bûche traditionnelle, nous maintenons le principe du repas sans alcool. Nous démontrons ainsi à une population souvent victime d’addictions, que la convivialité et le bien-être ne dépendent  pas de l'alcool.

En résumé, nous voulons faire de cette journée une \"journée unique\" pour chacun, en dépassant l'aspect matériel, pour toucher l'humain au plus profond de son humanité,  et aider ainsi chaque participant à restaurer ou construire son image.";
				echo str_replace(array("\r\n","\n"),"<br/>", $textnpt);
		?></p>
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
					$deuxPremiersAlbums->execute(array("idAlbum" => 4));
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