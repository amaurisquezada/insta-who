  desc_match = function(el){
    el.css('background', 'green');
  };

  function non_match(el){
  			$(".selected").css("border-color", "green")
        el.css("border", "2px solid red")
        setTimeout(function(){
        	 el.css('-webkit-transform', 'rotateX(-180deg)');
   				 el.css('transform', 'rotateX(-180deg)');
   				 $(".selected").css("border-color", "black")
   				 el.children().css("border", "black solid 2px")
        }, 1000);   
  };