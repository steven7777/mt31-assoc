<!DOCTYPE html>
<html>
<head>
	<title>Ajout photos dans album</title>
</head>
<body>
	<?php require('../tools/bdd_connect.php'); ?>
	<form method="post" action="../tools/ajouter_photos.php" enctype="multipart/form-data">
		<fieldset>
			<legend>Ajouter des photos</legend>
			<div>
				<label>Sélectionnez des photos</label>
				<input type="file" name="chemin_photos[]" multiple />
			</div>
			<div>
				<label>Titre album</label>
				<?php
					$listeAlbums = $db->prepare('SELECT * FROM mt31_albums ORDER BY titreAlbum');
					$listeAlbums->execute();
				?>
				<select name="titre_album">
					<option selected="selected">---</option>
				<?php while($listerAlbums = $listeAlbums->fetch()){ ?>
					<option><?php echo $listerAlbums['titreAlbum'] . ' (' . $listerAlbums['idAlbum'] . ')'; ?></option>
				<?php }
				$listeAlbums->closeCursor(); ?>
				</select>
			</div>
			<div>
				<input type="submit" name="envoi_photos" value="Valider" />
			</div>
		</fieldset>
	</form>
</body>
</html>