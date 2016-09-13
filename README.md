## Insta-Who

Insta-Who is an online recreation of the popular board game "_Guess Who?_"  

[http://insta-who.herokuapp.com](http://insta-who.herokuapp.com)

**How to play:**

* When the game begins, there are 24 face-up game cards each representing a different person. There is also a face-down mystery card. The goal of the game is to guess which of the 24 game cards is represented by the mystery card.

* Underneath the mystery card are a series of buttons. Each button contains a specific character trait. Players must guess character traits by clicking on the buttons in order to narrow down the game cards.

	* Validation of character trait selection is done automatically. For example, if a player clicks on the character trait "short hair", the border of the mystery card will light up green or red. If the card lights up green, it signifies that the person in the mystery card does indeed have short hair. All cards that do not have short hair will light up red and flip down. Conversely, if the mystery card does not have short hair, it will light up red and all cards that do have short hair will light green and flip down.

* As character traits are selected, the field of potential matches will narrow down. A player has up to 5 guesses to narrow down to the potential game card.

* While a player may guess up to 5 different character traits, he/she may only guess who the mystery person is once. A player may click on any of the up-facing game cards to guess that person as the mystery card. If the selected game card matches the mystery card, the player wins. 

NOTE: The game cards in the demo game are former New York COde and Design Academy classmates. All character traits are based on how these students self-identified.
