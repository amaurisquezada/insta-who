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

	$("#signup-toggle-button").css("margin-left", ($(window).width() - $("#signup-toggle-button").width() - 190)/2 )

	$("#signup-toggle-button").css("margin-top", ($(window).height() - $("#signup-toggle-button").height())/2 )

	console.log($("#signup-toggle-button").height(), "height")
	console.log($("#signup-toggle-button").width(), "width")
	console.log($(window).width(), "window width")
	console.log($(window).height(), "window height")
	var mL = ($(window).width() - $("#signup-toggle-button").width())/2;
	var mT = ($(window).height() - $("#signup-toggle-button").height())/2;
	console.log(mL, "margin left")
	console.log(mT, "margin-top")




});