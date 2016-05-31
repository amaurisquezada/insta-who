$(document).ready(function(){
	desc_match = function(el){
		el.css('background', 'green')
	}

	non_match = function(el){
		el.css('background', 'black')
	}

	$('#amauris').click(function(){
		$('#amauris').css('transform', 'rotateX(180deg)')
	})

})