<?php
	require 'bdd_connect.php';
	# A l'envoi du formulaire
	if (isset($_POST['envoi_photos'])) {
		# Vérifie les champs renseignés
		if (empty($_FILES['chemin_photos']) || empty($_POST['titre_album']) || ($_POST['titre_album'] == '---')) {
			echo 'Veuillez remplir tous les champs !';
			header("Refresh:1;url=../edit/ajoutPhoto.php");
		} else {
			# Trouver l'identifiant de l'album
			$titreAlbumChoisi = strchr($_POST['titre_album'], '(', true);

			$rechercheAlbumDansBDD = $db->prepare('SELECT idAlbum FROM mt31_albums WHERE titreAlbum = :titreAlbum');
			$rechercheAlbumDansBDD->execute(array("titreAlbum" => $titreAlbumChoisi));
			$trouverAlbumDansBDD = $rechercheAlbumDansBDD->fetch();
			$identifiantAlbumChoisi = $trouverAlbumDansBDD['idAlbum'];
			//echo $identifiantAlbumChoisi . " trouvé !!";

			# Compter le nombre de photos téléchargées
			$tableau_photos = array();
			$nb_photos = count($_FILES['chemin_photos']['name']);
			//echo "Compte = " . $nb_photos . "<br />";

			# Gestion des photos sélectionnées
			$extensions_valides = array('jpg', 'jpeg', 'png');
	  		$dossier = 'edit/album' . $identifiantAlbumChoisi;

	  		# Requête d'ajout dans la BDD
	  		$ajoutPhotodansBDD = $db->prepare('INSERT INTO `mt31_photos`(cheminPhoto, idAlbum) VALUES (:cheminPhoto, :idAlbum);');

			# Traite chaque photo
			for($i = 0; $i < $nb_photos; $i++){

				$photoCourante = $_FILES['chemin_photos']['tmp_name'][$i];
				$nomPhotoCourante = strchr($_FILES['chemin_photos']['name'][$i], '.', true);
				//echo $nomPhotoCourante . "<br />";

				if ($photoCourante != ""){
					$extension_upload = strtolower(substr(strrchr($_FILES['chemin_photos']['name'][$i], '.'), 1));
					$photo = '../' . $dossier . "/" . $nomPhotoCourante . "." . $extension_upload;
				}
				if(!file_exists('../' . $dossier)){
	  				mkdir('../' . $dossier, 0777, true);
				}
				# Vérifie si la photo a bien été ajoutée
				if(is_uploaded_file($photoCourante)){
					$photo = $dossier . "/" . $nomPhotoCourante . "." . $extension_upload;
				}
				$resultat = move_uploaded_file($photoCourante, '../' . $photo);

				# Ajoute la photo courante dans la BDD
				$ajouterPhoto = $ajoutPhotodansBDD->execute(array("cheminPhoto" => $photo, "idAlbum" => $identifiantAlbumChoisi));
				if ($ajouterPhoto) {
					echo "Photo " . $photo . " ajoutée dans le dossier ";
				}
				if ($resultat) {
					echo " et " . $photo . " bien enregistrée !<br />";
				}
			}






			#echo 'GOOD !';
			#header("Refresh:1;url=../edit/ajoutPhoto.php");
		}
	}

?>