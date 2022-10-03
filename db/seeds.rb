# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
philz = Store.create(name: "Philz Coffee")
p_location = Location.create(street: "887 Mauve Avenue", city: "Towncity", state: "Pennsylvania", zip_code: 876543, store_id: philz.id)
coffees = Coffee.create(drink_name: "Philtered Soul", description: "Delicious medium blend coffee", store_id: philz.id)

starbucks = Store.create(name: "Starbucks")
s_location = Location.create(street: "123 Fake Street", city: "Fakeville", state: "Fakifornia", zip_code: 123456, store_id: starbucks.id)
coffee = Coffee.create(drink_name: "Pumpkin Spice Latte", description: "Absolutely delcious combination of flavors", store_id: starbucks.id)

user1 = User.create(first_name: "Michael", last_name: "Bicycle", username: "mikebike", password: "terriblepassword", password_confirmation: "terriblepassword")
user2 = User.create(first_name: "Sharon", last_name: "Carmichael", username: "smicha", password: "terriblepassword", password_confirmation: "terriblepassword")


review1 = Review.create(rating: 5, content: "Not bad!", user_id: user1.id, coffee_id: coffees.id)
review2 = Review.create(rating: 4, content: "It's good, close to perfect!", user_id: user2.id, coffee_id: coffees.id)

review3 = Review.create(rating: 2, content: "Did not live up to the hype.", user_id: user1.id, coffee_id: coffee.id)
review4 = Review.create(rating: 3, content: "Has nice flavor, but leaves something to be desired.", user_id: user2.id, coffee_id: coffee.id)
