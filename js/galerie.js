jQuery(function($){

  window.onload = voirImages;

});

function voirImages(){
  // Récupère la liste des photos
  var photos = document.getElementById('liste_images');
  // Récupère le lien de chaque image
  var liens = photos.getElementsByTagName('a');
  // Récupère la visionneuse principale
  var visionneuse = document.getElementById('visionneuse_principale');
  /* visionneuse.src = $(this).find('.li_img').eq(0).src;*/
  // Début de l'action
  for (var i = 0; i < liens.length; i++) {
    liens[i].onclick = function(){
      //$(this).parent().find('.li_img').removeClass('thumb_active');
      //$(this).find('.li_img').addClass('thumb_active');
      visionneuse.src = this.href;
      visionneuse.title = this.alt;
      return false;
    };
  }

}