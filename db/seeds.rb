Review.destroy_all 
User.destroy_all 
Pizza.destroy_all 


pizza1 = Pizza.create(restaurant_name: "Two Fisted Mario's Pizza", menu_name: "Mario's Special", pizza_category: "NY Style", pizza_ingredients: "pepperoni, italian sausage, meatballs, green peppers, onions, mushrooms, black & green olives, extra cheese")
pizza2 = Pizza.create(restaurant_name: "Two Fisted Mario's Pizza", menu_name: "Shroom 'N Spinnn'", pizza_category: "NY Style", pizza_ingredients: "mushrooms, spinach, vampyre repellent, extra cheese") 
pizza3 = Pizza.create(restaurant_name: "Two Fisted Mario's Pizza", menu_name: "White Pizza", pizza_category: "NY Style", pizza_ingredients: "ricotta, mozzarella, vampyre repellent, oregano, black pepper") 
pizza4 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Buffalo Chicken", pizza_category: "Stone Baked", pizza_ingredients: "mozzarella, buffalo chicken, caramelized onions, applewood smoked bacon, buffalo sauce")
pizza5 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Great White", pizza_category: "Stone Baked", pizza_ingredients: "olive oil, garlic, sun-dried roasted tomatoes, provolone, feta cheese, ricotta, basil, mozzarella, roma tomatoes, onions")
pizza6 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "House Special", pizza_category: "Stone Baked", pizza_ingredients: "Mellow red sauce base with mozzarella, pepperoni, sausage, ground beef, ham, applewood smoked bacon, mushrooms, black olives, roma tomatoes, green peppers, onions, topped with extra mozzarella")
pizza7 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Kosmic Karam", pizza_category: "Stone Baked", pizza_ingredients: "Mellow red sauce base with feta cheese, mozzarella, spinach, sun-dried roasted tomatoes, roma tomatoes, finished with a pesto swirl")
pizza8 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Veg Out", pizza_category: "Stone Baked", pizza_ingredients: "Mellow red sauce base with mozzarella, spinach, green peppers, mushrooms, onions, black olives, tomatoes")
pizza9 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Mighty Meat", pizza_category: "Stone Baked", pizza_ingredients: "Mellow red sauce base with mozzarella, pepperoni, sausage, ground beef, ham, applewood smoked bacon")
pizza10 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Pacific Rim", pizza_category: "Stone Baked", pizza_ingredients: "Mellow red sauce base with mozzarella, ham, bacon, caramelized onions, pineapple, jalapeños")
pizza11 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Holy Shitake Pie", pizza_category: "Stone Baked", pizza_ingredients: "Olive oil, garlic base, shiitake, button and portobello mushrooms, caramelized onions, mozzarella, MontAmoré®, Finished with a garlic aioli swirl, a spritz of black truffle oil, Garnished with fresh chives and shaved parmesan")
pizza12 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Buffalo Chicken", pizza_category: "Stone Baked", pizza_ingredients: "Mozzarella, all-natural buffalo chicken, caramelized onions, and applewood smoked bacon with a swirl of buffalo sauce, Served with a swirl of your choice of bleu cheese or ranch dressing")
pizza13 = Pizza.create(restaurant_name: "Mellow Mushroom", menu_name: "Funky Q. Chicken", pizza_category: "Stone Baked", pizza_ingredients: "BBQ chicken, mozzarella, cheddar cheeses, caramelized onions, Applewood smoked bacon, finished with a BBQ sauce swirl")
pizza14 = Pizza.create(restaurant_name: "Giordano's", menu_name: "Chicago Classic", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "pepperoni, mushrooms, green peppers & onions")
pizza15 = Pizza.create(restaurant_name:"Giordano's",menu_name: "Cheese", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "signature Wisconsin mozzarella cheese" )
pizza16 = Pizza.create(restaurant_name:"Giordano's",menu_name: "The Special", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "sausage, mushrooms, green peppers, onions")
pizza17 = Pizza.create(restaurant_name:"Giordano's",menu_name: "Meat and More Meat", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "pepperoni, salami, sausage, bacon" )
pizza18 = Pizza.create(restaurant_name:"Giordano's",menu_name: "Fresh Spinach", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "spinach, cheese" )
pizza19 = Pizza.create(restaurant_name:"Giordano's",menu_name: "Super Veggie", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "mushrooms, green peppers, onions, garlic, broccoli, black olives, spinach" )
pizza20 = Pizza.create(restaurant_name:"Giordano's",menu_name: "Bacon BBQ Chicken", pizza_category: "Chicago Style(deep dish)", pizza_ingredients: "BBQ-basted chicken, bacon, balsamic onions, BBQ sauce instead of tomato sauce")
pizza21 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Supreme", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, pepperoni, sausage, mushrooms, red onions, green peppers")
pizza22 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Hawaiian", pizza_category: "Neapolitan", pizza_ingredients: "smoked mozzarella, ham, pineapple, jalapeno")
pizza23 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Margherita", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, basil")
pizza24 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Diavola", pizza_category: "Neapolitan", pizza_ingredients: "smoked mozzarella, pepperoni, basil, chili flake")
pizza25 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Prosciutto & Arugula", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, prosciutto, arugula")
pizza26 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Veggie", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, artichokes, roasted red peppers, broccolini, olives, red onions")
pizza27 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Four Cheese & Mushroom", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, gorgonzola, smoked mozzarella, parmesan, garlic oil")
pizza28 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Spicy Chicken", pizza_category: "Neapolitan", pizza_ingredients: "basil, oregano, roasted red peppers, garlic oil")
pizza29 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Sausage & Broccolini", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, sausage, broccolini, chili flake, garlic oil")
pizza30 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "Mais", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, creme fraiche, ham, corn, garlic oil")
pizza31 = Pizza.create(restaurant_name: "Pizzeria Locale", menu_name: "BBQ Chicken", pizza_category: "Neapolitan", pizza_ingredients: "mozzarella, chicken, chili flake, red onion, garlic oil, green pepper, BBQ sauce")


user1 = User.create(name: "Kat")
user2 = User.create(name: "Damon")
user3 = User.create(name: "Kyle")
user4 = User.create(name: "Jessie")
user5 = User.create(name: "Jared")
user6 = User.create(name: "Stephanie")
user7 = User.create(name: "Josh")



review1 = Review.create(rating: 4, user: user1, pizza: pizza15, title: "review1")
review2 = Review.create(rating: 6, user: user4, pizza: pizza4, title: "review2")
review3 = Review.create(rating: 10, user: user5, pizza: pizza11, title: "review3")
review4 = Review.create(rating: 3, user: user7, pizza: pizza8, title: "review4")
review5 = Review.create(rating: 4, user: user3, pizza: pizza8, title: "review5")
review6 = Review.create(rating: 9, user: user3, pizza: pizza2, title: "review6")
review7 = Review.create(rating: 1, user: user2, pizza: pizza14, title: "review7")
review8 = Review.create(rating: 8, user: user6, pizza: pizza7, title: "review8")
review9 = Review.create(rating: 9, user: user1, pizza: pizza7, title: "review9")
review10 = Review.create(rating:8, user: user6, pizza: pizza1, title: "review10")




