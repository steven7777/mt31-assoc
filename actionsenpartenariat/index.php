<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Main Tendue 31 est ainsi aujourd’hui bien connue des autres acteurs associatifs et institutionnels agissant dans la lutte contre la grande précarité..." />
	<title>Actions en partenariat - Main Tendue 31</title>
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
					<li class="active">Actions en partenariat</li>
				</ul>
				<h1>Main Tendue 31</h1>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | ACTIONS EN PARTENARIAT -->
		<div class="mt_cadre mt_actionsenpartenariat mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Actions en partenariat</h2>
					<?php
						$aep = "L’association Main Tendue 31 est ainsi aujourd’hui bien connue des autres acteurs associatifs et institutionnels agissant dans la lutte contre la grande précarité, et en particulier des différents services de la Veille Sociale gérée par le CCAS de Toulouse (le 115, l’Equipe Mobile Sociale et le Pôle d’Accueil, d’Information et d’Orientation), avec lesquels l’Association a pu développer un partenariat de qualité.

					L’association Main Tendue 31 a également mené une action de prévention et d’information sur les dangers de l’alcool, sur un week-end, en partenariat avec la Caisse Primaire d’Assurance Maladie et l’Association des Alcooliques Anonymes.

					L’association Main Tendue 31 est membre du collectif inter-association solidarité du quartier des Minimes à Toulouse et du <a href='https://www.collectif-toulouse.org/accueil'>CIAT</a>.";
						
						$svg31 = "<a href=\"http://www.sauvegarde31.fr/\" target=\"_blank\">SAUVEGARDE 31</a> est une association œuvrant dans le champ de la protection de l’enfance. Elle a pour objet d’aider, d’accompagner des enfants, des adolescents et leurs familles en difficulté. Sa mission principale est de mettre en œuvre des Actions Éducatives en Milieu Ouvert - AEMO - auprès des mineurs en danger ou en risque de l’être, sous l’autorité du juge pour enfants.

					Nous accueillons plusieurs fois par an des adolescents confrontés à de nombreux problèmes familiaux ou sociaux, accompagnés de leurs éducateurs. Le but  de ces rencontres est :
					<ul>
						<li>De découvrir le milieu associatif</li>
						<li>De concentrer l’attention de ces jeunes à autre chose que leurs problèmes</li>
						<li>De les sensibiliser à l’aide aux autres </li>
						<li>De leur apprendre à donner de leur temps pour les autres</li>
					</ul>Ces adolescents participent à la mise en rayon de denrées alimentaires et au tri des fruits et légumes au sein de l’épicerie solidaire GRAINE2VIE.";
						$adn = "<a href=\"http://www.amicaledunid.org/index.php/les-etablissements/joomla-3/adn-toulouse\" target=\"_blank\">L’Amicale du Nid</a> propose aux femmes et aux hommes en danger, ayant connu ou en situation de prostitution, un accompagnement vers des alternatives à leur situation pour leur permettre leur insertion sociale et professionnelle.

							L’amicale du Nid considère la prostitution comme une violence et une atteinte à la dignité des personnes ; elle refuse de l’assimiler à une profession.

							Lorsque les personnes sortent des réseaux de prostitution elles se retrouvent sans ressource ou avec des ressources très limitées. Elles sont alors orientées vers notre épicerie solidaire par les éducateurs de l’Amicale du Nid pour une prise ne charge alimentaire.";
					?>
					<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $aep); ?></p>

					<h3>Sauvegarde 31</h3>
					<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $svg31); ?></p>

					<h3>L’Amicale du Nid</h3>
					<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $adn); ?></p>
				</article>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | AUTRES ACTIONS -->
		<div class="mt_cadre mt_autresactions mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Autres actions</h2>
					<p>L’association Main Tendue 31 travaille dans le respect de l’individu. Au-delà de la distribution des repas chauds dans la rue, elle se montre attentive aux besoins repérés ou exprimés par les personnes rencontrées, et, le cas échéant, est amenée à proposer des orientations vers les partenaires sociaux et/ou médicaux les mieux adaptés aux problématiques de chacune des situations.</p>
				</article>
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