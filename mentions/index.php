<!DOCTYPE html>
<html lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Mentions légales - Main Tendue 31</title>
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
					<li class="active">Mentions légales</li>
				</ul>
				<h1>Mentions légales</h1>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | MENTIONS LÉGALES -->
		<div class="mt_cadre mt_mentions mt31_cadres">
			<div class="filtre">
				<h3>Coordonnées de l'association</h3>
				<p>12, rue de Fenouillet<br />
					31 200 Toulouse<br />
					Responsable de la rédaction : M.Christian Soulié</p>
				<h3>Hébergeur</h3>
				<p>L'hébergement du site est assuré par :<br />
					NFrance Conseil - 4 rue J.F. Kennedy - 31000 Toulouse</p>
				<h3>Traitement des données</h3>
				<p>En communiquant vos données, vous acceptez implicitement qu'elles puissent être utilisées, traitées et transférées au sein de l'association "Main Tendue 31".
					Elles ne seront communiquées à aucun tier externe à l'association.<br /> 
					En application de l’article 40 de la loi du 6 janvier 1978, vous bénéficiez d’un droit d’accès et de rectification aux informations qui vous concernent. Si vous souhaitez exercer ce droit et obtenir la communication de ces informations, veuillez contacter notre association.</p>
				<h3>WebMasters</h3>
				<p>Conception et Réalisation Graphique du site Main tendue 31 par <a href="mailto:davidboot31@gmail.com">David BOOT</a> et <a href="mailto:kouassiweb@gmail.com">KouassiWeb</a></p>
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