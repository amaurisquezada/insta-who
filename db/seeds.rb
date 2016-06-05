User.create(email: "aq@google.com", username: "aq", password: "12345", password_confirmation: "12345")
User.where(username: "aq").first.games.create(name: "my_first_game")
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
	{name: "Niall"}])

Tag.create([
	{description:"brown hair"},
	{description:"red hair"},
	{description:"blonde hair"},
	{description:"bald"},
	{description:"long hair"},
	{description:"medium-length hair"},
	{description:"short hair"},
	{description:"beard"},
	{description:"mustache"},
	{description:"no facial hair"},
	{description:"brown eyes"},
	{description:"green eyes"},
	{description:"blue eyes"},
	{description:"dark/brown skin"},
	{description:"light skin"},
	{description:"wears glasses"},
	{description:"male"},
	{description:"female"},
	{description:"taller than 5'7"},
	{description:"pc computer"},
	{description:"mac computer"},
	{description:"younger than 30"},
	{description:"native new yorker"},
	{description:"single"},
	{description:"in a relationship"},
	{description:"married"},
	{description:"prefers pepperoni pizza to cheese"},
	{description:"has earrings or gauges"},
	{description:"silver-grey hair"},
	{description:"hazel eyes"},
	{description:"black hair"},
	{description:"has tattoos"},
	{description:"prefers Backstreet boys to N'Sync"},
	{description:"prefers Coke to Pepsi"},
	{description:"not a soda person"}
	])


def add_tags(cardname, all_tags = [])
	all_tags.each do |trait|
		Card.where(name: cardname).first.tags << Tag.where(description: trait).first
	end
end

add_tags("Amauris", ["black hair", "medium-length hair", "no facial hair", "brown eyes", "light skin", "male", "taller than 5'7", "pc computer", "younger than 30", "native new yorker", "in a relationship"])

add_tags("Donovan", ["black hair", "short hair", "no facial hair", "brown eyes", "dark/brown skin", "male", "taller than 5'7", "mac computer", "younger than 30", "native new yorker", "in a relationship", "prefers pepperoni pizza to cheese", "prefers Coke to Pepsi"])

add_tags("Chris", ["black hair", "medium-length hair", "no facial hair", "brown eyes", "light skin", "male", "taller than 5'7", "mac computer", "younger than 30", "native new yorker", "single", "prefers pepperoni pizza to cheese", "prefers Coke to Pepsi", "prefers Backstreet boys to N'Sync"])

add_tags("Jerry", ["black hair", "medium-length hair", "beard", "mustache", "brown eyes", "light skin", "male", "pc computer", "younger than 30", "single", "wears glasses"])

add_tags("Kim", ["black hair", "long hair", "no facial hair", "brown eyes", "light skin", "female", "mac computer", "younger than 30", "married", "prefers pepperoni pizza to cheese", "prefers Coke to Pepsi", "has earrings or gauges", "wears glasses", "prefers Backstreet boys to N'Sync"])

add_tags("Ohad", ["brown hair", "medium-length hair", "beard", "mustache", "blue eyes", "light skin", "male", "mac computer", "taller than 5'7", "younger than 30", "married", "prefers pepperoni pizza to cheese", "not a soda person", "wears glasses"])

add_tags("Quinn", ["black hair", "short hair", "beard", "brown eyes", "dark/brown skin", "male", "taller than 5'7", "mac computer", "married", "prefers Coke to Pepsi"])

add_tags("Kirsten", ["brown hair", "long hair", "no facial hair", "brown eyes", "light skin", "female", "mac computer", "younger than 30", "single", "native new yorker", "prefers pepperoni pizza to cheese", "prefers Coke to Pepsi", "has earrings or gauges", "has tattoos", "prefers Backstreet boys to N'Sync"])

add_tags("Alex", ["black hair", "short hair", "no facial hair", "brown eyes", "light skin", "male", "mac computer", "taller than 5'7", "younger than 30", "single", "prefers pepperoni pizza to cheese", "not a soda person"])

add_tags("Mandisa", ["black hair", "long hair", "no facial hair", "brown eyes", "dark/brown skin", "female", "mac computer", "younger than 30", "single", "not a soda person"])

add_tags("Juan", ["black hair", "short hair", "no facial hair", "brown eyes", "dark/brown skin", "male", "taller than 5'7", "pc computer", "single", "prefers Coke to Pepsi", "younger than 30", "wears glasses"])

add_tags("Kassim", ["black hair", "short hair", "no facial hair", "brown eyes", "dark/brown skin", "male", "taller than 5'7", "mac computer", "married", "prefers Coke to Pepsi", "younger than 30", "has earrings or gauges", "prefers Backstreet boys to N'Sync"])

add_tags("Jay", ["black hair", "medium-length hair", "mustache", "brown eyes", "light skin", "male", "taller than 5'7", "pc computer", "single", "younger than 30", "has earrings or gauges", "native new yorker"])

add_tags("Rick", ["silver-grey hair", "medium-length hair", "no facial hair", "brown eyes", "light skin", "male", "taller than 5'7", "mac computer", "married", "native new yorker", "prefers Coke to Pepsi", "wears glasses"])

add_tags("Bill", ["brown hair", "medium-length hair", "no facial hair", "brown eyes", "light skin", "male", "taller than 5'7", "mac computer", "native new yorker", "married", "not a soda person"])

add_tags("Matt E", ["blonde hair", "bald", "beard", "mustache", "hazel eyes", "light skin", "male", "taller than 5'7", "mac computer", "native new yorker", "in a relationship", "has tattoos"])

add_tags("Sanja", ["brown hair", "long hair", "no facial hair", "brown eyes", "light skin", "female", "mac computer", "married", "prefers Coke to Pepsi", "has earrings or gauges", "wears glasses", "prefers Backstreet boys to N'Sync"])

add_tags("Matt S", ["brown hair", "medium-length hair", "beard", "mustache", "brown eyes", "light skin", "male", "taller than 5'7", "mac computer", "in a relationship", "prefers Coke to Pepsi", "prefers pepperoni pizza to cheese", "prefers Backstreet boys to N'Sync"])

add_tags("Amzad", ["black hair", "medium-length hair", "no facial hair", "brown eyes", "dark/brown skin", "male", "mac computer", "married", "prefers Coke to Pepsi", "younger than 30", "prefers Backstreet boys to N'Sync"])

add_tags("Greg", ["black hair", "medium-length hair", "no facial hair", "brown eyes", "dark/brown skin", "male", "mac computer", "taller than 5'7", "in a relationship", "prefers pepperoni pizza to cheese", "prefers Coke to Pepsi", "younger than 30"])

add_tags("Sam", ["brown hair", "medium-length hair", "no facial hair", "blue eyes", "light skin", "male", "taller than 5'7", "mac computer", "younger than 30", "native new yorker", "in a relationship", "prefers pepperoni pizza to cheese", "has earrings or gauges", "has tattoos", "not a soda person"])

add_tags("Liana", ["brown hair", "long hair", "no facial hair", "blue eyes", "light skin", "female", "mac computer", "in a relationship", "not a soda person", "has earrings or gauges", "has tattoos", "native new yorker"])

add_tags("Andy", ["blonde hair", "medium-length hair", "beard", "mustache", "blue eyes", "light skin", "male", "taller than 5'7", "mac computer", "younger than 30", "single", "not a soda person", "wears glasses"])

add_tags("Niall", ["blonde hair", "medium-length hair", "no facial hair", "green eyes", "light skin", "male", "taller than 5'7", "mac computer", "younger than 30", "in a relationship", "native new yorker", "prefers Coke to Pepsi", "wears glasses", "native new yorker"])