User.create(email: "aq@gmail.com", username: "aq123", password: "amauris", password_confirmation: "amauris")
User.where.(username: "aq123").first.games.create(name: "my_first_game")
Game.where(name: "my_first_game").first.cards.create([
	{name: "Amauris"},
	{name: "Donovan"},
	{name: "Chris"},
	{name: "Jerry"},
	{name: "Kim"},
	{name: "Ohad"},
	{name: "Quinn"},
	{name: "Kirsten"},
	{name: "Alex"},
	{name: "Mandisa"},
	{name: "Juan"},
	{name: "Kassim"},
	{name: "Jay"},
	{name: "Rick"},
	{name: "Bill"},
	{name: "Matt E"},
	{name: "Sanja"},
	{name: "Matt S"},
	{name: "Amzad"},
	{name: "Greg"},
	{name: "Sam"},
	{name: "Liana"},
	{name: "Andy"},
	{name: "Nial"}])

Tag.create([
	{description:"dark hair"},
	{description:"red hair"},
	{description:"blonde hair"},
	{description:"bald"},
	{description:"long hair"},
	{description:"medium hair"},
	{description:"short hair"},
	{description:"beard"},
	{description:"mustache"},
	{description:"clean shaven"},
	{description:"dark eyes"},
	{description:"green eyes"},
	{description:"blue eyes"},
	{description:"colored contacts"},
	{description:"dark skin"},
	{description:"brown skin"},
	{description:"light skin"},
	{description:"has glasses"},
	{description:"no glasses"},
	{description:"male"},
	{description:"female"},
	{description:"is tall"},
	{description:"is short"},
	{description:"pc computer"},
	{description:"mac computer"},
	{description:"younger than 30"},
	{description:"older than 30"},
	{description:"native new yorker"},
	{description:"single"},
	{description:"married"},
	{description:"likes pepperoni pizza"},
	{description:"likes cheese pizza"},
	{description:"has earrings"},
	{description:"does not have earrings"}])


Card.where(name: "Nial").first.tags << [Tag.find(3), Tag.find(6), Tag.find(10), Tag.find(12), Tag.find(17), Tag.find(18), Tag.find(20), Tag.find(22), Tag.find(25), Tag.find(26), Tag.find(29), Tag.find(32), Tag.find(34), Tag.find(28)]