<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="L’association Main Tendue 31, constituée le 10 juin 2003 sous le statut de la loi de 1901, est née de la volonté d’un groupe d’individus d’aller au-devant..." />
	<meta name="robots" content="robots.txt">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
	<title>Main Tendue 31 - Association bénévole basée à Toulouse</title>
	<link rel="icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/navbar.css" />
	<link rel="stylesheet" type="text/css" href="css/carrousel.css" />
	<link rel="stylesheet" type="text/css" href="css/footer.css" />
	<link rel="stylesheet" type="text/css" href="css/main2.css" />
	<link rel="stylesheet" type="text/css" href="css/photos.css" />
	<link rel="stylesheet" type="text/css" href="css/max1630px.css" media="screen and (min-width: 1445px) and (max-width: 1630px)" />
	<link rel="stylesheet" type="text/css" href="css/max1445px.css" media="screen and (min-width: 1280px) and (max-width: 1445px)" />
	<link rel="stylesheet" type="text/css" href="css/max1280px.css" media="screen and (min-width: 1024px) and (max-width: 1280px)" />
	<link rel="stylesheet" type="text/css" href="css/max1032px.css" media="screen and (min-width: 768px) and (max-width: 1032px)" />
	<link rel="stylesheet" type="text/css" href="css/mobile.css" media="screen and (max-width: 768px)" />
</head>
<body>
	<!-- EN-TÊTE -->
	<header>
		<!-- BARRE DE NAVIGATION -->
		<?php	
		  require('tools/bdd_connect.php');
		  // Variables recupérées de bdd_connect.php :
		  $VIDEO_PATH = $VIDEO_PATH;
		  $LAST_ID_VIDEO = $LAST_ID_VIDEO;
		  $videos_from_array = $videos_from_array;
		  #require('tools/bdd_connect_ma_config.php');
		  include('tools/navbar.php');
		?>
	</header>

	<!-- CORPS PRINCIPAL -->
	<div id="corps">
		<!-- SLIDESHOW -->
		<?php include('tools/slideshow.php'); ?>

		<!-- MAIN TENDUE 31 -->
		<div class="home_cadre home_main_tendue_31" id="home_main_tendue_31">
			<div class="filtre">
				<h2 class="titre_h2">Main Tendue 31</h2>

				<!-- Vidéo de présentation de l'assoc (2020-11) -->
				<div class="present present-left">
					<div class="div-present div-present-association">
						<h3>Vidéo de présentation de l'association</h3>
	    				<video controls width="500">
        					<?php
    	    			    $video = $videos_from_array[100];
        					$ext = 'webm';
        					$video_name = $video['cheminVideo'].'.'.$ext;
        					$video_mime = "video/$ext";
        					?>
        					<source src="../<?=$video_name?>" type="<?=$video_mime?>" />
        					Désolé, votre navigateur ne supporte pas les vidéos intégrées (embedded).
	    				</video>
					</div>
				</div>

				<!-- Présentation de l'association -->
				<div class="present present-left">
					<div class="div-present div-present-association">
						<h3>L'Association</h3>
						<p>L’association Main Tendue 31, constituée le 10 juin 2003 sous le statut de la loi de 1901, est née de la volonté d’un groupe d’individus d’aller au-devant des personnes subissant une situation d’exclusion. L’association s’est donnée pour objet d’apporter une aide morale, matérielle et éducative aux personnes se trouvant en situation de précarité et/ou d’exclusion sociale...</p>
						<a href="mt31" class="acces_page">Découvrir<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>

				<div class="present present-center">
					<!-- Présentation de l'épicerie solidaire -->
					<div class="div-present div-present-epicerie">
						<h3>Épicerie solidaire</h3>
						<p>L’épicerie solidaire Graine2Vie apporte une aide, principalement alimentaire, à un public en difficulté économique, fragilisé ou exclu résidants sur le secteur 31200 à Toulouse...</p>
						<a href="epiceriesolidaire" class="acces_page">En savoir plus<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<!-- Présentation du resto'rue -->
					<div class="div-present div-present-restorue">	
						<h3>Resto' Rue</h3>
						<p>Pour mettre en œuvre les objectifs qu’elle s’est fixés, l’association Main Tendue 31 a débuté ses activités par la création d’un service de distribution de repas auprès des plus démunis, en allant au-devant d’eux...</p>
						<a href="restorue" class="acces_page">Découvrir<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<!-- Présentation du Solidaribus -->
					<div class="div-present div-present-restorue">	
						<h3>Solidaribus</h3>
						<p>Le Solidaribus est un bus aménagé en accueil de jour mobile qui sillonne les rues de Toulouse à la rencontre de personnes SDF isolées très marginalisées afin de retisser du lien social...</p>
						<a href="solidaribus" class="acces_page">En savoir plus<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					<!-- Présentation de KoKeLiKo -->
					<div class="div-present div-present-restorue">	
						<h3>KoKeLiKo</h3>
						<p>Le Chœur KoKeLiKo est destiné aux personnes de la rue ou ayant fait l'expérience de la rue, aux bénéficiaires d'épiceries solidaires, mais aussi aux bénévoles d'associations et toutes personnes intéressées par le projet...</p>
						<a href="chorale" class="acces_page">En savoir plus<span class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
				</div>
                
                <div class="present present-right">
					<!-- fil actualité page FB -->
					<div class="div-present div-present-facebook">
						<h3>Fil d'actualité de notre page Facebook</h3>
						<!-- 
					    <div class="fb-page" data-href="https://www.facebook.com/Main-Tendue-31-114243778598567" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
						 -->
					    <div class="fb-page" data-href="https://www.facebook.com/Main-Tendue-31" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
					    	<blockquote cite="https://www.facebook.com/Main-Tendue-31-114243778598567" class="fb-xfbml-parse-ignore">
					    		<!-- 
					    		<a href="https://www.facebook.com/Main-Tendue-31-114243778598567">Main Tendue 31</a>
					    		 -->
					    		<a href="https://www.facebook.com/Main-Tendue-31">Main Tendue 31</a>
					    	</blockquote>
					    </div>
					</div>
				</div>

			</div>
		</div>

		<!-- BÉNÉVOLAT -->
		<div class="home_cadre home_activite">
			<div class="filtre">
				<h2 class="titre_h2">À ce jour</h2>
				<div class="stats">
					<div class="div-stats benevoles">
						<span class="glyphicon glyphicon-user nb_benevole"></span>
						<h4>Bénévoles</h4>
						<p>.. Au service des plus démunis.</p>
					</div>
					<div class="div-stats actions">
						<span class="glyphicon glyphicon-fire nb_action"></span>
						<h4>Activités principales</h4>
						<ul>
							<li>Resto'Rue</li>
							<li>Graine2Vie</li>
							<li>Le Solidaribus</li>
							<li>Le chœur KoKeLiKo</li>
							<li>Noël Pour Tous</li>
						</ul>
					</div>
					<div class="div-stats services">
						<span class="glyphicon glyphicon-globe nb_service"></span>
						<h4>Jeunes services civiques</h4>
						<p></p>
					</div>
					<div class="div-stats salarie">
						<span class="glyphicon glyphicon-eur nb_salarie"></span>
						<h4>Salariés</h4>
						<p></p>
					</div>
				</div>
			</div>
		</div>

		<!-- GALERIE PHOTO -->
		<div class="home_cadre home_galerie_photo">
			<div class="filtre">
				<h2 class="titre_h2">Galerie photo</h2>
				<div class="thumbs_xy thumbs_hori">
				<?php
					$deuxPremiersAlbums = $db->prepare('SELECT * FROM mt31_albums LIMIT 2');
					$deuxPremiersAlbums->execute();
					while ($lesDeuxPremiersAlbums = $deuxPremiersAlbums->fetch()) {
				?>
					<div style="background-image: url(<?php echo $lesDeuxPremiersAlbums['photoCover']; ?>);" class="thumbs thumb_<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>">
						<a href="galeriephoto/visionneuse-galerie.php?idAlbum=<?php echo $lesDeuxPremiersAlbums['idAlbum']; ?>" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode($lesDeuxPremiersAlbums['titreAlbum']); ?></p>
						</a>
					</div>
				<?php
					}
					$deuxPremiersAlbums->closeCursor();
				?>
				</div>
				<div class="thumbs_xy thumbs_vert">
				<?php
					$deuxDerniersAlbums = $db->prepare('SELECT * FROM mt31_albums LIMIT 2, 4');
					$deuxDerniersAlbums->execute();
					while ($lesDeuxDerniersAlbums = $deuxDerniersAlbums->fetch()) {
				?>
					<div style="background-image: url(<?php echo $lesDeuxDerniersAlbums['photoCover']; ?>);" class="thumbs thumb_<?php echo $lesDeuxDerniersAlbums['idAlbum']; ?>">
						<a href="galeriephoto/visionneuse-galerie.php?idAlbum=<?php echo $lesDeuxDerniersAlbums['idAlbum']; ?>" class="acces_galerie">
							<p class="caption"><?php echo utf8_encode($lesDeuxDerniersAlbums['titreAlbum']); ?></p>
						</a>
					</div>
				<?php
					}
					$deuxDerniersAlbums->closeCursor();
				?>
				</div>
			</div>
		</div>

		<!-- OÙ NOUS TROUVER -->
		<div class="home_cadre home_contact">
			<div class="filtre">
				<article class="home_txt">
					<h2 class="titre_h2">Où nous trouver ?</h2>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2888.042197355565!2d1.43056034505156!3d43.62648066539366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebb4cfcb5a4ef%3A0xc62d6d65c715ff69!2s12+Rue+de+Fenouillet%2C+31200+Toulouse!5e0!3m2!1sfr!2sfr!4v1478093704612" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<address>
						<strong>Association Main Tendue 31</strong><br />
						12, rue de Fenouillet<br />
						31 200 Toulouse<br />
						Tél. : 06 66 27 96 74<br />
						Mail : <a href="mailto:main-tendue-31@hotmail.fr">main-tendue-31@hotmail.fr</a>
					</address>
				</article>
			</div>
		</div>

	</div>


    <div id="fb-root"></div>
    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/fr_FR/sdk.js#xfbml=1&version=v2.9&appId=789618234431924";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

	<script type="text/javascript" src="js/jquery-2-1-4-min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.js" ></script>
	<script type="text/javascript" src="js/navbar.js" ></script>
	<script type="text/javascript" src="js/maintendue31.js" ></script>

	<footer>
		<?php include('tools/footer.php'); ?>
	</footer>

</body>
</html>