	function gameSizer() {
		$(".one-card-container").css('height', $(".one-card-container").width() - 6);
		$(".selected").css('height', $(".one-card-container").width());
		var rW = $(window).width() - ($(".one-card-container").width()* 6) - $("#right-wrapper").width();
		$("#right-wrapper").css("right", rW/2);
		$(".howto").css("top", $(".one-card-container").height()*4 + 20)
		$(".warning").css("top", $(".one-card-container").height()*4 + 55)
};

$( window ).load(gameSizer);
$( window ).resize(gameSizer);





