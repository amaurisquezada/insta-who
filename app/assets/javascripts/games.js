$(document).ready(function(){	

	function gameSizer() {
		$(".indent").css("margin-right", ($("#all-guesses").width()-($(".indent").width() * 5))/4 - 3)
	};
$( window ).resize(gameSizer);
})





