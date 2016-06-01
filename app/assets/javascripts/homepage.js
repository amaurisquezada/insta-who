// $(document).ready(function(){

// 	$('#signup-toggle-button').on('click', function(){
// 		$('body').append('<div id="shade"></div>');
// 		$('body').append('#sessionz');


// 		$('#shade').on('click', function(){
// 			$('#shade').remove();
// 			$('#light-image').remove();
// 		})


// 		$('#light-image').on('click', function(){
// 			$('#shade').remove();
// 			$('#light-image').remove();
// 		})
// 	})
// })

$(document).ready(function(){
	$('#signup-toggle-button').click(function(){
			$('.sessionz').css('display', 'block');
			$('.backdrop').css('display', 'block');
			$('.backdrop').css('opacity', '.6');
	})

	$('.backdrop').click(function(){
			$('.sessionz').css('display', 'none');
			$('.backdrop').css('display', 'none');
	})


});