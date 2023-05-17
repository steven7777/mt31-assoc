<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="L'association en détails" />
	<title>Nos rapports d'activités - Main Tendue 31</title>
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
					<li class="active">Nos rapports d'activité</li>
				</ul>
				<h1>Main Tendue 31</h1>
			</div>
		</div>

		<!-- MAIN TENDUE 31 | L'ASSOCIATION -->
		<div class="mt_cadre mt_rapports mt31_cadres">
			<div class="filtre">
				<article>
					<h2>Nos rapports d'activités</h2>
					<p class="info">Certains documents présents sur ce site, sont en format PDF. Afin de pouvoir les exploiter veuillez télécharger gratuitement un lecteur PDF en cliquant <a href="https://get.adobe.com/reader/?loc=fr" target="_blank">ici</a>.</p>

					<p>Vous pouvez consulter nos rapports d'activités ci-dessous : </p>
					
					<?php 
		                // 1) Affiche les new docs directement via le dossier pdf/
                        $docs_hors_bd = array(
                            'RA_2021' => '2021',
                            'RA_2020' => '2020',
                            'RA_2019' => '2019',
                            'RA_2018' => '2018',
                            'Rapport_d_activites_2017' => '2017',
                        );
                        foreach ($docs_hors_bd as $doc=>$year) {
                    ?>
    						<ul class="file pdf">
        						<a href="../pdf/<?=$doc?>.pdf" target="_blank">
        						    <span class="glyphicon glyphicon-save-file download"></span>
        						    <li>
            						    <p class="date"><?=$year?>-12-31</p>
        								<p class="titre">Rapport d'activités <?=$year?></p>
        							</li>
        						</a>
        					</ul>
                    <?php                       
                        }
                        
    					// 2) Affiche les docs via la BD
						$pdf_nr=$db->prepare('SELECT * FROM mt31_pdf WHERE page="nosrapports" ORDER BY dateP DESC;');
						$voirPDF_nr=$pdf_nr->execute();
						while ($allNR=$pdf_nr->fetch()) {
					?>
        					<ul class="file pdf">
        						<a href="../pdf/<?php echo $allNR['nomfichier']; ?>" target="_blank">
        							<span class="glyphicon glyphicon-save-file download"></span>
        							<li>
        								<p class="date"><?php echo $allNR['dateP']; ?></p>
        								<p class="titre"><?php echo my_utf8_encode($allNR['titrePDF']); ?></p>
        							</li>
        						</a>
        					</ul>
					<?php
						} // end while
						
						$pdf_nr->closeCursor();
					?>
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