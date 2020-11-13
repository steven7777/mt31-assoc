<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association en détails" />
	<title>L'Association - Main Tendue 31</title>
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
					<li class="active">L'Association</li>
				</ul>
				<h1>Main Tendue 31</h1>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | L'ASSOCIATION -->
		<div class="mt_cadre mt_association mt31_cadres">
			<div class="filtre">
				<article>
				<h2>Notre association</h2>
					<p>L’association Main Tendue 31, constituée le 10 juin 2003 sous le statut de la loi de 1901, est née de la volonté d’un groupe d’individus d’aller au-devant des personnes subissant une situation d’exclusion.  L’association s’est donnée pour objet d’apporter une aide morale, matérielle et éducative aux personnes se trouvant en situation de précarité et/ou d’exclusion sociale, en :</p>
					<ul>
						<li>Leur venant en aide pour leurs besoins indispensables</li>
						<li>Leur fournissant des repas gratuits</li>
						<li>Contribuant à favoriser leur logement, leur insertion, leur promotion sociale</li>
						<li>Les accompagnant dans leurs démarches administratives</li>
						<li>Leur consacrant du temps d’écoute</li>
					</ul>
					<p>En portant assistance dans les domaines précités, Main Tendue 31 reconnait comme ses valeurs fondatrices, les principes moraux et éthiques de l’Évangile et de la Déclaration Universelle des Droits de l’Homme de 1948. Main Tendue 31 apporte son aide à toute personne dans le besoin, sans distinction d’origine raciale, religieuse, politiques ou de sexe. Main Tendue 31 accepte en son sein comme adhérent ou bénévole, toute personne se reconnaissant librement dans ses valeurs fondatrices.</p>
					<p><blockquote>L'association Main Tendue 31 est membre de la Fédération de l'Entraide Protestante et du CNEF Solidarité</blockquote></p>
				</article>
			</div>
		</div>

		<div class="mt_cadre mt_benevoles mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Nos bénévoles</h2>
					<p>L’association Main Tendue 31 compte à ce jour :</p>
					<ul>
						<li>80 bénévoles</li>
						<li>2 salariés à temps partiel</li>
						<li>2 services civiques</li>
					</ul>
					<p>Les bénévoles travaillant en cuisine sont formés à la règlementation en vigueur concernant les mesures d’hygiène à appliquer en restauration collective.</p>
					<p>Les bénévoles au contact du public en difficulté sont formés à l’écoute active.</p>
				</article>
			</div>
		</div>

	</div>

	<script type="text/javascript" src="../js/jquery-2-1-4-min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.js"></script>
	<script type="text/javascript" src="../js/navbar.js"></script>
	<script type="text/javascript" src="../js/maintendue31.js"></script>

	<footer>
		<?php include($_SERVER['DOCUMENT_ROOT'] . '/tools/footer.php'); ?>
	</footer>

</body>
</html>