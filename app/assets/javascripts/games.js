$(document).ready(function(){	

	function gameSizer() {
		var cardWidth = $(".one-card-container").width()
		$(".one-card-container").css('height', cardWidth - (cardWidth/31));
		$(".selected").css('width', cardWidth);
		$(".selected").css('height', cardWidth - (cardWidth/31));
		$("#winning_card").css('width', cardWidth);
		$("#winning_card").css('height', cardWidth - (cardWidth/31));
		$(".one-card-container").css('border-width', cardWidth/31)
		$(".card_names").css("font-size", cardWidth/8)
		$("#all-guesses").css("width", cardWidth)
		$(".indent").css("margin-right", ($("#all-guesses").width()-($(".indent").width() * 5))/4 - 3)
		var rW = $(window).width() - (cardWidth* 6) - $("#right-wrapper").width() - 36;
		$("#right-wrapper").css("right", rW/2);
		$("#right-wrapper").css("height", ($(".one-card-container").height() * 4) + 21 + (cardWidth / 31 * 4));
		$("#keywords").css("height", $("#right-wrapper").height() - $(".selected").height() - 12 - 10 - 10 - 4 )
};

gameSizer()
$( window ).resize(gameSizer);

})





