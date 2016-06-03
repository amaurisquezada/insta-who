User.create(email: "iwork@google.com", username: "aq", password: "12345", password_confirmation: "12345")
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


	amauris = Card.where(name: "Amauris")
	amauris.avatar = File.open("app/assets/images/1.jpg")
	amauris.save!

	donovan = Card.where(name: "Donovan")
	donovan.avatar = File.open("app/assets/images/2.jpg")
	donovan.save!

	chris = Card.where(name: "Chris")
	chris.avatar = File.open("app/assets/images/3.jpg")
	chris.save!

	jerry = Card.where(name: "Jerry")
	jerry.avatar = File.open("app/assets/images/4.jpg")
	jerry.save!

	kim = Card.where(name: "Kim")
	kim.avatar = File.open("app/assets/images/5.jpg")
	kim.save!

	ohad = Card.where(name: "Ohad")
	ohad.avatar = File.open("app/assets/images/6.jpg")
	ohad.save!

	quinn = Card.where(name: "Quinn")
	quinn.avatar = File.open("app/assets/images/7.jpg")
	quinn.save!

	kirsten = Card.where(name: "Kirsten")
	kirsten.avatar = File.open("app/assets/images/8.jpg")
	kirsten.save!

	alex = Card.where(name: "Alex")
	alex.avatar = File.open("app/assets/images/9.jpg")
	alex.save!

	mandisa = Card.where(name: "Mandisa")
	mandisa.avatar = File.open("app/assets/images/10.jpg")
	mandisa.save!

	juan = Card.where(name: "Juan")
	juan.avatar = File.open("app/assets/images/11.jpg")
	juan.save!

	kassim = Card.where(name: "Kassim")
	kassim.avatar = File.open("app/assets/images/12.jpg")
	kassim.save!

	jay = Card.where(name: "Jay")
	jay.avatar = File.open("app/assets/images/13.jpg")
	jay.save!

	rick = Card.where(name: "Rick")
	rick.avatar = File.open("app/assets/images/14.jpg")
	rick.save!

	bill = Card.where(name: "Bill")
	bill.avatar = File.open("app/assets/images/15.jpg")
	bill.save!

	matt_e = Card.where(name: "Matt E")
	matt_e.avatar = File.open("app/assets/images/16.jpg")
	matt_e.save!

	sanja = Card.where(name: "Sanja")
	sanja.avatar = File.open("app/assets/images/17.jpg")
	sanja.save!

	matt_s = Card.where(name: "Matt S")
	matt_s.avatar = File.open("app/assets/images/18.jpg")
	matt_s.save!

	amzad = Card.where(name: "Amzad")
	amzad.avatar = File.open("app/assets/images/19.jpg")
	amzad.save!

	greg = Card.where(name: "Greg")
	greg.avatar = File.open("app/assets/images/20.jpg")
	greg.save!

	sam = Card.where(name: "Sam")
	sam.avatar = File.open("app/assets/images/21.jpg")
	sam.save!

	liana = Card.where(name: "Liana")
	liana.avatar = File.open("app/assets/images/22.jpg")
	liana.save!

	andy = Card.where(name: "Andy")
	andy.avatar = File.open("app/assets/images/23.jpg")
	andy.save!

	niall = Card.where(name: "Niall")
	niall.avatar = File.open("app/assets/images/24.jpg")
	niall.save!


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