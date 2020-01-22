require 'bundler/setup'
Bundler.require

require_all 'lib'

user1 = User.create(name: "Brad")
user2 = User.create(name: "Jorge")
user3 = User.create(name: "Evan")
user4 = User.create(name: "Rachel")
user5 = User.create(name: "Doug")

pizza1 = Pizza.create(restaurant_name: "Two Fisted Mario's Pizza", menu_name: "Mario's Special", pizza_category: "NY Style")
pizza2 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Buffale Chicken", pizza_category: "Stone Baked")
pizza3 = Pizza.create(restaurant_name: "Giordano's", menu_name: "Chicago Classic", pizza_category: "Chicago Style")
pizza4 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Supreme", pizza_category: "Neapolitan")
pizza5 = Pizza.create(restaurant_name: "Pizzerai Locale", menu_name: "Classic", pizza_category: "Neapolitan")

Pizza_review1 = Pizza_Review.create(user: user1, pizza: pizza2, rating: 8)
binding.pry