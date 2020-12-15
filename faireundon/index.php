<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L’épicerie solidaire Graine2Vie apporte une aide, principalement alimentaire, à un public en difficulté économique, fragilisé ou exclu résidants sur le secteur 31200 à Toulouse." />
	<title>Faire un don - Main Tendue 31</title>
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
					<li class="active">Faire un don</li>
				</ul>
				<h1>Soutenez-nous</h1>
			</div>
		</div>

		<!-- NOS ACTIONS | L'ÉPICERIE SOLIDAIRE -->
		<div class="mt_cadre mt_epicerie mt31_cadres">
			<div class="filtre">
				<h2>Faire un don</h2>
				<article>
					<h3>Comment faire un don à Main Tendue  31  ?</h3>
					<?php
						$fud=$db->prepare('SELECT * FROM mt31_pdf WHERE page="faireundon"');
						$fud->execute();
						$voirFUD = $fud->fetch();
						// Astuce pour remplacer l'ancien bon par le nouveau (2018-12-02)
						$voirFUD['nomfichier'] = 'Bon_de_soutien.pdf'; 
						$voirFUD['dateP'] = '';
	                    //$voirFUD['titrePDF'] = 'Bon de soutien';
						
						$dons = "Imprimez le bon de soutien en PDF ci-dessous et  renvoyez le  nous complété à l'adresse indiquée.";

						$dons2 = "La législation française prévoit pour chaque don à un organisme d'aide aux personnes en difficulté, une défiscalisation du don à hauteur de 75% pour les particuliers (<a href=\"http://www.legifrance.gouv.fr/affichCodeArticle.do?idArticle=LEGIARTI000018619914&cidTexte=LEGITEXT000006069577\" target=\"_blank\">Info Légifrance particuliers - ligne 1.ter</a>) et à hauteur de 60 % pour les sociétés (<a href=\"http://www.legifrance.gouv.fr/affichCodeArticle.do?cidTexte=LEGITEXT000006069577&idArticle=LEGIARTI000006309076&dateTexte=&categorieLien=cid\" target=\"_blank\">Info Légifrance sociétés</a>).     Ainsi un don de 100€ ne vous coûtera en réalité que 25€.
				
				-- Bénéficiez d'une défiscalisation de vos dons à Main Tendue 31 --"; ?>

						<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $dons); ?></p>

						<p class="info">Certains documents présents sur ce site, sont en format PDF. Afin de pouvoir les exploiter veuillez télécharger gratuitement un lecteur PDF en cliquant <a href="https://get.adobe.com/reader/?loc=fr" target="_blank">ici</a>.</p>

					<ul class="file pdf">
						<a href="../pdf/<?php echo $voirFUD['nomfichier']; ?>" target="_blank">
							<span class="glyphicon glyphicon-save-file download"></span>
							<li>
								<p class="date"><?php echo $voirFUD['dateP']; ?></p>
								<p class="titre"><?php echo utf8_encode($voirFUD['titrePDF']); ?></p>
							</li>
						</a>
					</ul>
					<p><?php echo str_replace(array("\r\n","\n"),"<br/>", $dons2); ?></p>
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
					Tous les  mardis et vendredis<br />
					De 14h à 17h30<br />
					12, rue du Fenouillet<br />
					31200 Toulouse<br />
				</address>
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