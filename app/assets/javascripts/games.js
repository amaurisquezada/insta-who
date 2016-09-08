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
		var rW = $(window).width() - (cardWidth* 6) - $("#right-wrapper").width();
		$("#right-wrapper").css("right", rW/2);

};

$( window ).load(gameSizer);
$( window ).resize(gameSizer);





