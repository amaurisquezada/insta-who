$(document).ready(function(){
	$('#signup-toggle-button').click(function(){
			$('.login-form').css('display', 'block');
			$('.backdrop').css('display', 'block');
			$('.backdrop').css('opacity', '.6');
	})

	$('.backdrop').click(function(){
			$('.login-form').css('display', 'none');
			$('.backdrop').css('display', 'none');
	})

	function homepageCenter() {
		$("#signup-toggle-button").css("margin-left", ($(window).width() - $("#signup-toggle-button").width() - 190)/2 )

		$("#signup-toggle-button").css("margin-top", ($(window).height() - $("#signup-toggle-button").height())/2 )
	}

	homepageCenter();
	$(window).resize(homepageCenter)

});