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


});