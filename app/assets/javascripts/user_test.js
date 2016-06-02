  desc_match = function(el){
    el.css('background', 'green');
  };

  non_match = function(el){
    el.css('transform', 'rotateX(-180deg)');
  };

  disableInput = function(){
    $('#answer').prop('disabled', true);
    $('#answer-submit').prop('disabled', true);
  };
