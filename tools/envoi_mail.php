<!DOCTYPE html>
<html>
	<head>
		<title>Contact - Main Tendue 31</title>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
	</head>
	<body>
<?php
# Envoi du formulaire
if(isset($_POST['envoi'])){
	# Rubriques non vides
	if(!empty($_POST['nom']) && !empty($_POST['prenom']) && !empty($_POST['email']) && !empty($_POST['telephone']) && !empty($_POST['objet']) && !empty($_POST['message']) && !empty($_POST['captcha'])){

		$nom = $_POST['nom'];
		$prenom = $_POST['prenom'];
		$email_exp = $_POST['email'];
		$tel = $_POST['telephone'];
		$objet = $_POST['objet'];
		$message = str_replace("\'", "'", $_POST['message']);
		$captcha = $_POST['captcha'];

		if ($captcha == 4) {
			//$destinataire = 'main-tendue-31@hotmail.fr';
			$destinataire = 'contact@maintendue31.org';
			$expediteur = ctype_upper($nom) . ' ' . $prenom . ' <' . $email_exp . ' - ' . $tel . '>';

			$contenu = "Un internaute du site MainTendue31 vient de vous contacter. Voici son message :\n
			Objet : $objet\n
	$message";

			$entete = "$nom <$email_exp - $tel>";


			$send = mail($destinataire, $objet, $contenu, $entete);
			if($send){
			?>
				<div class="alert alert-success"><?php echo utf8_decode("Votre mail a bien été envoyé !"); ?></div>
				<meta http-equiv="refresh" content="3; URL=../contact" />
			<?php
			}
		} else {
			?>
			<div class="alert alert-danger">
				<?php echo utf8_decode("Mauvais résultat ! Veuillez entrer la bonne valeur."); ?>
				<meta http-equiv="refresh" content="3; URL=../contact" />
			</div>
			<?php
		}
	} else {
		?>
		<div class="alert alert-danger">
			<?php echo utf8_decode("Veuillez remplir les champs obligatoires !"); ?>
			<meta http-equiv="refresh" content="3; URL=../contact" />
		</div>
		<?php
	}
}
?>
	</body>
</html>