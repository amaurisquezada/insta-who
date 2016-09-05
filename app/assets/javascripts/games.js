	function gameSizer() {
		$(".one-card-container").css('height', $(".one-card-container").width());
		$(".selected").css('height', $(".one-card-container").width());
};

$( window ).load(gameSizer);
$( window ).resize(gameSizer);





