$(document).ready(function(){
	console.log('working');

	$('#main-nav-container').hide();
	


	$('#nav-toggle-button').click(function(){
		$('#main-nav-container').slideToggle();
	});

});