<!DOCTYPE html>
<html>
	<head>
		<title>Contact - Main Tendue 31</title>
		<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
	</head>
	<body>
<?php
# Envoi du formulaire
//var_dump("coucou");exit;
if(isset($_POST['envoi'])){
	
    # OK : Rubriques non vides
	if (
	   !empty($_POST['nom']) && 
	   !empty($_POST['prenom']) && 
	   !empty($_POST['email']) && 
	   !empty($_POST['telephone']) && 
	   !empty($_POST['objet']) && 
	   !empty($_POST['message']) && 
	   !empty($_POST['captcha'])
	) {

		$nom = $_POST['nom'];
		$prenom = $_POST['prenom'];
		$email_exp = $_POST['email'];
		$tel = $_POST['telephone'];
		$objet = $_POST['objet'];
		$message = str_replace("\'", "'", $_POST['message']);
		$captcha = $_POST['captcha'];

		// CAPTCHA OK
		if ($captcha == 7) {
    		//var_dump("captch ok");
			//$destinataire = 'main-tendue-31@hotmail.fr';
			$destinataire = 'contact@maintendue31.org';
			$expediteur = ctype_upper($nom) . ' ' . $prenom . ' <' . $email_exp . ' - ' . $tel . '>';

			$contenu = "Un internaute du site MainTendue31 vient de vous contacter. Voici son message :\n
			Objet : $objet\n
	               $message
            ";
			$entete = "$nom <$email_exp - $tel>";
			$send = mail($destinataire, $objet, $contenu, $entete);
			if($send){
			?>
				<div class="alert alert-success"><?php echo utf8_decode("Votre mail a bien été envoyé !"); ?></div>
				<meta http-equiv="refresh" content="3; URL=../contact" />
			<?php
			}
		} 

		// CAPTCHA KO
		else {
			?>
			<div class="alert alert-danger">
				<?php 
        		//var_dump("captch ko");
				echo utf8_decode("Mauvais résultat ! Veuillez entrer la bonne valeur."); 
				?>
				<meta http-equiv="refresh" content="3; URL=../contact" />
			</div>
			<?php
		} // captcha KO
	} // tous les champs sont remplis
	
    // ERREUR : Il manque au moins 1 champ
	else { 
		?>
		<div class="alert alert-danger">
			<?php 
			//var_dump("champ manquant");
			echo utf8_decode("Veuillez remplir les champs obligatoires !"); 
			?>
			<meta http-equiv="refresh" content="3; URL=../contact" />
		</div>
		<?php
	} // il manque au moins 1 champ
}
?>
	</body>
</html>