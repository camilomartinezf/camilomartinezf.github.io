# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."

Store.delete_all
User.delete_all
Transaction.delete_all
Storemember.delete_all

# Create the users
puts "Creating user..."
camilo = User.create(user_id: "1", member_id: "1020718269", user_name: "Camilo Martinez", email: "camilo@me.com", password: "hola", telephone: "2244206613", homeaddress: "1717 Ridge Ave., Evanston, IL 60201", birthday: "1986, 9, 11", age: "28", gender: "M")
florence = User.create(user_id: "2", member_id: "1020718255", user_name: "Flores Frech", email: "flores@me.com", password: "hola1", telephone: "2244206614", homeaddress: "1718 Ridge Ave., Evanston, IL 60201", birthday: "1985, 11, 12", age: "29", gender: "F")
david = User.create(user_id: "3", member_id: "1020718279", user_name: "David Pascual", email: "descript@me.com", password: "hola2", telephone: "2244245613", homeaddress: "1727 Ridge Ave., Evanston, IL 60201", birthday: "1984, 9, 11", age: "30", gender: "M")
juan = User.create(user_id: "4", member_id: "1025714527", user_name: "Juan Ramos", email: "juan@me.com", password: "hola3", telephone: "2244204413", homeaddress: "1813 Ridge Ave., Evanston, IL 60201", birthday: "1983, 9, 11", age: "31", gender: "M")
caroline = User.create(user_id: "5", member_id: "1035714526", user_name: "Caroline Doe", email: "carito@me.com", password: "hola4", telephone: "2244204411", homeaddress: "1812 Ridge Ave., Evanston, IL 60201", birthday: "1945, 1, 1", age: "70", gender: "F")

# Create the stores
puts "Creating stores..."
smylie = Store.create( store_id: "1", store_name: "Smylie Brothers Brewing Co.", store_t: "Bar", address: "1615 Oak Avenue, Evanston, IL 60201", opening: "11", closing: "1", description: "Brewery in a vast warehouse space offering beers, a central bar, pub-fare menus & outdoor seating.", pointsfirst: "10", pointssecond: "25", pointsthird: "50", rewardfirst: "glass of beer", rewardsecond: "pint of beer", rewardthird: "six pack")
farmhouse = Store.create( store_id: "2", store_name: "Farmhouse Evanston", store_t: "Restaurant", address: "703 Church Street, Evanston, IL 60201", opening: "11", closing: "1", description: "Comfy farm-to-table spot with local brews featured amid exposed brick & salvaged decor plus a patio.", pointsfirst: "100", pointssecond: "200", pointsthird: "500", rewardfirst: "desert", rewardsecond: "bottle of wine", rewardthird: "dinner for two")
soapie = Store.create( store_id: "3", store_name: "Soapie's Cleaning and Tailoring", store_t: "Dry Cleaning", address: "1231 Chicago Avenue, Evanston, IL 60202", opening: "7", closing: "19", description: "Premium Cleaning and Tayloring", pointsfirst: "50", pointssecond: "100", pointsthird: "175", rewardfirst: "shirt cleaning", rewardsecond: "pants cleaning", rewardthird: "dress cleaning")
brothers = Store.create( store_id: "4", store_name: "Other Brother Coffeehouse", store_t: "Coffee Shop", address: "1549 Sherman Avenue, Evanston, IL 60201", opening: "7", closing: "16", description: "Local Brewed Coffee", pointsfirst: "10", pointssecond: "15", pointsthird: "40", rewardfirst: "espresso", rewardsecond: "capucchino", rewardthird: "latte & biscuit")
bangers = Store.create( store_id: "5", store_name: "Bangers & Lace", store_t: "Restaurant", address: "810 Grove Street, Evanston, IL 60201", opening: "11", closing: "3", description: "Upscale pub grub pairs with lots of brews at this gastropub sister to a Chicago original.", pointsfirst: "30", pointssecond: "50", pointsthird: "100", rewardfirst: "beer", rewardsecond: "house sausage", rewardthird: "dinner for two")

# Create the transactions
puts "Creating transactions..."
tran1 = Transaction.create(store_id: "1", user_id: "camilo.id", pointsawarded: "5", pointsre: "0")
tran2 = Transaction.create(store_id: "1", user_id: "camilo.id", pointsawarded: "100", pointsre: "0")
tran3 = Transaction.create(store_id: "3", user_id: "florence.id", pointsawarded: "30", pointsre: "0")
tran4 = Transaction.create(store_id: "4", user_id: "juan.id", pointsawarded: "8", pointsre: "0")
tran5 = Transaction.create(store_id: "5", user_id: "caroline.id", pointsawarded: "14", pointsre: "0")


# Create the list of members for each store
Storemember.create(store_id: smylie.id, user_id: camilo.id)
Storemember.create(store_id: smylie.id, user_id: juan.id)
Storemember.create(store_id: soapie.id, user_id: camilo.id)
Storemember.create(store_id: brothers.id, user_id: juan.id)
Storemember.create(store_id: bangers.id, user_id: caroline.id)


puts "There are now #{Store.count} stores, #{User.count} users, and #{Transaction.count} transactions in the database."
