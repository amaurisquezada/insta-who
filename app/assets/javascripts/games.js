	function gameSizer() {
		$(".one-card-container").css('height', $(".one-card-container").width() - 6);
		$(".selected").css('width', $(".one-card-container").width());
		$(".selected").css('height', $(".selected").width());
		$("#winning-card").css('width', $(".one-card-container").width());
		$("#winning-card").css('height', $(".selected").width());
		var rW = $(window).width() - ($(".one-card-container").width()* 6) - $("#right-wrapper").width();
		$("#right-wrapper").css("right", rW/2);
		$(".howto").css("top", $(".one-card-container").height()*4 + 32)
		$(".warning").css("top", $(".one-card-container").height()*4 + 70)

};

$( window ).load(gameSizer);
$( window ).resize(gameSizer);





