$(document).ready(function(){
	desc_match = function(el){
		el.css('background', 'green')
	}

	non_match = function(el){
		el.css('transform', 'rotateX(-180deg)')
	}

	$('#answer').keypress(function(e){
  if (e.which == 13) {
    $('#answer-submit').submit();
    $('#answer').val('')
    return false;
  }
});

	$('#answer-submit').click(function(){
  	$('#answer-submit').submit();
    $('#answer').val('')
    return false;
  });

})