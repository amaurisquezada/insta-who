$(document).ready(function(){
	desc_match = function(el){
		el.css('background', 'green');
	};

	non_match = function(el){
		el.css('transform', 'rotateX(-180deg)');
	};

	$('#answer').keypress(function(e){
  if (e.which == 13) {
    $('#answer-submit').submit();
    $('#answer').val('');
    return false;
  };
});

	$('#answer-submit').click(function(){
  	$('#answer-submit').submit();
    $('#answer').val('');
    return false;
  });

  disableInput = function(){
  	$('#answer').prop('disabled', true);
		$('#answer-submit').prop('disabled', true);
  };

  	$.fn.randomize = function(selector){
	    var $elems = selector ? $(this).find(selector) : $(this).children(),
	        $parents = $elems.parent();

	    $parents.each(function(){
	        $(this).children(selector).sort(function(){
	            return Math.round(Math.random()) - 0.5;
	        // }). remove().appendTo(this); // 2014-05-24: Removed `random` but leaving for reference. See notes under 'ANOTHER EDIT'
	        }).detach().appendTo(this);
	    });

	    return this;
	};

  $('.play-again').click(function(){
  	$('.one-card-container').css('transform', 'rotateX(0deg)');
  	$('.front').css('background', 'grey')
  	$('#you-win').css('display', 'none')
  	$('#you-lose').css('display', 'none')
		$('.guesses').css('background', 'white')
		$('#card-container').randomize($('.one-card-container'))
		var random = Math.floor(Math.random()*24);
		newMysteryId = $(".one-card-container").eq(random).first().attr('class').split(' ')[1]
		$('.selected').removeAttr('id')
		$('.selected').attr('id', newMysteryId)
		$('.selected').html(newMysteryId.substr(0,1).toUpperCase()+newMysteryId.substr(1).replace(/\-/g,' '))
  	$('#answer').prop('disabled', false);
		$('#answer-submit').prop('disabled', false);
		counter = 1
		winner = undefined
  })

})