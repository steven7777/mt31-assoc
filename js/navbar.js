$(document).ready(function(){
	$(window).scroll(function(){
		if ($(document).scrollTop() > 150) {
			$('.navbar-default').addClass('positionFixed');
			$('.navbar-default').addClass('newmenu');
		} else {
			$('.navbar-default').removeClass('positionFixed');
			$('.navbar-default').removeClass('newmenu');
		}
	})

	// Appuyer sur le sous-menu
	$(' .hamburger').click(function(){
		console.log(".hamburger >>> cliqué")
		$(this).parent().find('.div-menu').slideToggle();
	});

	if( $(window).width() > 980 ) {
		// Survoler le sous-menu
		$(' .li-parent').hover(function(){
			console.log(".li-parent >>> hover")
			$(this).children('.sous-menu').slideToggle();
		});
	} else {
		// Appuyer sur le sous-menu
		$(' .li-parent').click(function(){
			console.log(".li-parent >>> hover")
			$(this).children('.sous-menu').slideToggle();
		});
	}
});