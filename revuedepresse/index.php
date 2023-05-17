<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Revue de presse - Main Tendue 31</title>
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
					<li class="active">Revue de presse</li>
				</ul>
				<h1>Main Tendue 31</h1>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | REVUE DE PRESSE -->
		<div class="mt_cadre mt_revue mt31_cadres">
			<div class="filtre">
				<h2>La presse parle de nous</h2>
					<p class="info">Certains documents présents sur ce site, sont en format PDF. Afin de pouvoir les exploiter veuillez télécharger gratuitement un lecteur PDF en cliquant <a href="https://get.adobe.com/reader/?loc=fr" target="_blank">ici</a>.</p>

					<?php
					$press_articles = array(
					    "2018-10-25/Les épiceries solidaires de Toulouse ont hélas de plus en plus de clients" => 'https://www.ladepeche.fr/article/2018/10/25/2894777-epiceries-solidaires-ont-helas-plus-plus-clients.html?fbclid=IwAR0CVPlSchvkCRTD1HXET2QCYikUn_4tZiQPL5WKpKaw_-kthP3gm-A9Lx0',
					    "2018-05-09/La chorale Kokeliko, le chœur des sans-abris toulousains" => 'http://www.toulouseinfos.fr/actualites/29383-chorale-kokeliko-choeur-abris-toulousains.html',
					    "2017-12-18/C'était le noël des précaires" => 'https://www.ladepeche.fr/article/2017/12/18/2706334-c-etait-le-noel-des-precaires.html',
					    "2017-11-05/Solidaribus, le véhicule d'accueil des gens de la rue" => 'https://www.ladepeche.fr/article/2017/11/05/2678712-solidaribus-le-vehicule-d-accueil-des-gens-de-la-rue.html',
					    "2017-12-24/Kokeliko, un choeur pour les gens de la rue" => 'https://www.ladepeche.fr/article/2017/12/24/2710340-kokeliko-un-choeur-pour-les-gens-de-la-rue.html',
					);
					$i=1;
					foreach ($press_articles as $date_title=>$article) {
					    list($date, $title) = explode('/', $date_title);
					    //print($article);
					 ?>
    					<ul class="file pdf">
    						<a href="<?php echo $article ?>" target="_blank">
    							<span class="glyphicon glyphicon-save-file download"></span>
    							<li>
    								<p class="date"><?=$date?></p>
    								<p class="titre"><?=$title?></p>
    							</li>
    						</a>
    					</ul>
					<?php 
					}
					?>

					<?php 
						$pdf_rp=$db->prepare('SELECT * FROM mt31_pdf WHERE page="revuepresse" ORDER BY dateP DESC;');
						$voirPDF_rp=$pdf_rp->execute();
						while ($allRP=$pdf_rp->fetch()) {
							if ($allRP['typefichier'] == 'pdf') {
					 ?>
					<ul class="file pdf">
						<a href="../pdf/<?php echo $allRP['nomfichier']; ?>" target="_blank">
							<span class="glyphicon glyphicon-save-file download"></span>
							<li>
								<p class="date"><?php echo $allRP['dateP']; ?></p>
								<p class="titre"><?php echo my_utf8_encode($allRP['titrePDF']); ?></p>
							</li>
						</a>
					</ul>
					<?php
							} else if ($allRP['typefichier'] == 'jpg') {
					?>
					<ul class="file jpg">
						<a href="../pdf/<?php echo $allRP['nomfichier']; ?>" target="_blank">
							<span class="glyphicon glyphicon-picture download"></span>
							<li>
								<p class="date"><?php echo $allRP['dateP']; ?></p>
								<p class="titre"><?php echo my_utf8_encode($allRP['titrePDF']); ?></p>
							</li>
						</a>
					</ul>
					<?php
							} else if ($allRP['typefichier'] == 'article') {
					?>
					<ul class="file article">
						<a href="../pdf/<?php echo $allRP['nomfichier']; ?>" target="_blank">
							<span class="glyphicon glyphicon-link download"></span>
							<li>
								<p class="date"><?php echo $allRP['dateP']; ?></p>
								<p class="titre"><?php echo my_utf8_encode($allRP['titrePDF']); ?></p>
							</li>
						</a>
					</ul>
					<?php
							}
						}
						$pdf_rp->closeCursor();
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