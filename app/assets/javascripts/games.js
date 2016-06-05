	$( window ).load(function() {
	var game_cards = $(".one-card-container")
	var separate_mystery_card = $(".selected")
	var game_card_width = game_cards.width()
	game_cards.css('height', game_card_width)
	separate_mystery_card.css('height', game_card_width) 
	 
});



$( window ).resize(function() {
	var game_cards = $(".one-card-container")
	var separate_mystery_card = $(".selected")
	var game_card_width = game_cards.width()
	game_cards.css('height', game_card_width)
	separate_mystery_card.css('height', game_card_width)  
});





