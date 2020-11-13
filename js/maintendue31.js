jQuery(document).ready(function () {

    // Lien vers 1ère info de la page
    jQuery('.bottom').click(function () {
        jQuery('html body').animate({
            scrollTop: id = $(this).find('#home_main_tendue_31').top - 80
        }, 1000);
    });

    var duration = 500;
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() > 100) {
            // Si un défillement de 100 pixels ou plus.
            // Ajoute le bouton
            jQuery('#cRetour').fadeIn(duration);
        } else {
            // Sinon enlève le bouton
            jQuery('#cRetour').fadeOut(duration);
        }
    });

    jQuery('#cRetour').click(function (event) {
        // Un clic provoque le retour en haut animé.
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 0}, duration);
        return false;
    })
    jQuery('#a_bottom').click(function (event) {
        // Un clic provoque le retour en haut animé.
        event.preventDefault();
        jQuery('html, body').animate({scrollTop: 900}, 1000);
        return false;
    });

    btnFaireUnDon();

});

function viewPicture(idAlbum) {
    var courant = querySelector('#' + idAlbum);
}

function btnFaireUnDon() {
    var body = $("#corps");
    var lienFUD = document.createElement("a");
    body.after(lienFUD);
    lienFUD.setAttribute("class", "faireundon_lien");
    lienFUD.setAttribute("href", "/faireundon");
    var spanFUD = document.createElement("span");
    lienFUD.appendChild(spanFUD);
    spanFUD.setAttribute("class", "faireundon_span");
    var eurFUD = document.createElement("span");
    spanFUD.appendChild(eurFUD);
    eurFUD.setAttribute("class", "faireundon_eur");
    eurFUD.innerHTML = "€";
    var pFUD = document.createElement("p");
    spanFUD.appendChild(pFUD);
    pFUD.setAttribute("class", "faireundon_p");
    pFUD.innerHTML = "Faire un don";
}

// Tracker Google --->
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-21303109-2']);
_gaq.push(['_trackPageview']);

(function () {
    var ga = document.createElement('script');
    ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
})();
// <-- Tracker Google