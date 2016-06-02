$(document).ready(function(){
	$('#signup-toggle-button').click(function(){
			$('.new_user').css('display', 'block');
			$('.backdrop').css('display', 'block');
			$('.backdrop').css('opacity', '.6');
	})

	$('.backdrop').click(function(){
			$('.new_user').css('display', 'none');
			$('.backdrop').css('display', 'none');
	})


});