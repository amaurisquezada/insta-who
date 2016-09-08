  desc_match = function(el){
    el.css('background', 'green');
  };

  function matchElim(el){
  	var cardWidth = el.width()
  			$(".selected").css("border-color", "#49fb35")
        el.css("border-color", "red")
        setTimeout(function(){
        	 el.css('-webkit-transform', 'rotateX(-180deg)');
   				 el.css('transform', 'rotateX(-180deg)');
   				 $(".selected").css("border-color", "black")
   				 el.children().css("border", "black solid " + cardWidth/31 + "px")
   				 el.children().css("top", "-" + cardWidth/31 + "px")
   				 el.children().css("left", "-" + cardWidth/31 + "px")
        }, 1000);
  };

  function nonMatchElim(el){
  	var cardWidth = el.width()
  			$(".selected").css("border-color", "red")
        el.css("border-color", "#49fb35")
        setTimeout(function(){
        	 el.css('-webkit-transform', 'rotateX(-180deg)');
   				 el.css('transform', 'rotateX(-180deg)');
   				 $(".selected").css("border-color", "black")
   				 el.children().css("border", "black solid " + cardWidth/31 + "px")
   				 el.children().css("top", "-" + cardWidth/31 + "px")
   				 el.children().css("left", "-" + cardWidth/31 + "px")
        }, 1000);
  };

   $(window).resize(function(){
   	$(".back").css("border-width", $(".one-card-container").width()/31)
   	$(".back").css("top", "-" + $(".back").width()/31 + "px")
   	$(".back").css("left", "-" + $(".back").width()/31 + "px")
   })