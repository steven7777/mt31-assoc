<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr-FR">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Besoin d'informations ? Envoyez-nous votre requête par mail." />
	<title>Contact - Main Tendue 31</title>
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
					<li class="active">Contact</li>
				</ul>
				<h1>Contactez-nous</h1>
			</div>
		</div>

		<!-- CONTACT | OU NOUS TROUVER -->
		<div class="mt_cadre mt_noustrouver mt31_cadres">
			<div class="filtre">
				<article class="home_txt">
					<h2>Où nous trouver ?</h2>
					<div class="map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2888.042197355565!2d1.43056034505156!3d43.62648066539366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12aebb4cfcb5a4ef%3A0xc62d6d65c715ff69!2s12+Rue+de+Fenouillet%2C+31200+Toulouse!5e0!3m2!1sfr!2sfr!4v1478093704612" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
					</div>
					<div class="contentother">
						<address>
							<strong>Association Main Tendue 31</strong><br />
							12, rue de Fenouillet<br />
							31 200 Toulouse<br />
							Tél. : 06 66 27 96 74<br />
							<?php 
							//$contact='contact@maintendue31.org';
							$contact='contact AT maintendue31.org';
							?>
							Mail : <a href="mailto:<?=$contact?>"><?=$contact?></a>
							<br/><i>(Remplacer le AT par @)</i>
							<!-- 
							Mail : <a href="mailto:main-tendue-31@hotmail.fr">main-tendue-31@hotmail.fr</a>
							 -->
						</address>
						<div class="reseauxsociaux">
							<a href="https://www.facebook.com/main.tendue.3" target="_blank">
								<img src="../media/200-circle-facebook-icon.png">
							</a>
						</div>
					</div>
				</article>
			</div>
		</div>

		<!-- CONTACT | NOUS JOINDRE -->
		<div class="mt_cadre mt_nousjoindre mt31_cadres">
			<div class="filtre">

        <!-- ******************* ENVOI DES MESSAGES ******************* -->
        <?php //include('../tools/envoi_mail.php'); ?>
            <!-- ********************************************************** -->

			<h2>Nous joindre ?</h2>

			<p class="contact-p">Vous avez la possibilité de nous joindre via le formulaire suivant :</p>

			<form method="post" action="../tools/envoi_mail.php" class="form-horizontal">
			
			  <div class="form-group">
			    <label for="inputnom" class="col-sm-2 control-label">Nom <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
				    <input required type="text" name="nom" class="form-control" id="inputnom" placeholder="Iris" value="<?php echo isset($_SESSION['inputs']['nom'])? $_SESSION['inputs']['nom'] : ''; ?>">
				</div>
			  </div>

			  <div class="form-group">
			    <label for="inputprenom" class="col-sm-2 control-label">Prénom <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
				    <input required type="text" name="prenom" class="form-control" id="inputprenom" placeholder="Bonet" value="<?php echo isset($_SESSION['inputs']['nom'])? $_SESSION['inputs']['nom'] : ''; ?>">
				</div>
			  </div>

			  <div class="form-group">
			    <label for="inputemail" class="col-sm-2 control-label">Email <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
			      <input required type="email" name="email" class="form-control" id="inputemail" placeholder="iris.bonnet@mail.fr" value="<?php echo isset($_SESSION['inputs']['email'])? $_SESSION['inputs']['email'] : ''; ?>">
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="inputtelephone" class="col-sm-2 control-label">Téléphone <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
			      <input required type="tel" pattern="^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{2,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$" name="telephone" class="form-control" id="inputtelephone" placeholder="0678451235" value="<?php echo isset($_SESSION['inputs']['telephone'])? $_SESSION['inputs']['telephone'] : ''; ?>">
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="inputobjet" class="col-sm-2 control-label">Objet <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
			  		<input required type="text" name="objet" class="form-control" id="inputobjet" placeholder="Objet" value="<?php echo isset($_SESSION['inputs']['objet'])? $_SESSION['inputs']['objet'] : ''; ?>">
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="inputmessage" class="col-sm-2 control-label">Message <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
			    	<textarea required id="inputmessage" name="message" class="form-control" rows="3" placeholder="Écrire un message..."><?php echo isset($_SESSION['inputs']['message'])? $_SESSION['inputs']['message'] : ''; ?></textarea>
			    </div>
			  </div>

			  <div class="form-group">
			    <label for="inputcaptcha" class="col-sm-2 control-label">1 + 3 = <span class="champ_obligatoire">*</span></label>
			    <div class="col-sm-10">
					<input required type="text" id="inputcaptcha" name="captcha" class="form-control" maxlength="2" />
			    </div>
			  </div>

			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <button type="submit" name="envoi" class="btn btn-default">Envoyer</button>
			    </div>
			  </div>
			</form>

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
<?php
  unset($_SESSION['inputs']); // on nettoie les données précédentes
  unset($_SESSION['success']);
  unset($_SESSION['errors']);
?>