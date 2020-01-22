require 'bundler/setup'
Bundler.require 

require_all 'lib'



pizza29 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Sausage & Broccolini", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, sausage, broccolini, chili flake, garlic oil")
pizza30 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Mais", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, creme fraiche, ham, corn, garlic oil")
pizza31 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "BBQ Chicken", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, chicken, chili flake, red onion, garlic oil, green pepper, BBQ sauce")

user1 = User.create(name: "Kat")
user2 = User.create(name: "Damon")
user3 = User.create(name: "Kyle")

review1 = Review.create(rating: 4, user_id: user1, pizza_id: pizza29)
review2 = Review.create(rating: 6, user_id: user2, pizza_id: pizza30)
review3 = Review.create(rating: 10, user_id: user3, pizza_id: pizza31)

binding.pry 