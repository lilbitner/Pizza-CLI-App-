class CLI 
    Prompt = TTY::Prompt.new
    attr_reader :new_user

    def welcome_menu 
        puts "Welcome to PizzaWorld!".colorize(:yellow)
        puts "Where pizza lovers come to play".colorize(:red)
        name = Prompt.ask("What's your name?".colorize(:blue)) 
  
        @new_user = User.create(name: name)
        puts "You're ready to get started #{new_user.name}!".colorize(:orange)
        main_menu 
    end 
    
    def main_menu 
        action = Prompt.select("What would you like to do today?".colorize(:yellow)) do |menu| 
            menu.choice name: "Write a pizza review", value: 1
            menu.choice name: "Read a pizza review", value: 2
            menu.choice name: "Delete a pizza review", value: 3
            menu.choice name: "Update a pizza review", value: 4  
            menu.choice name: "Leave this app and go eat pizza", value: 5     
        end 
        choices(action)
    end 

    def choices(action)
        if action == 1 
             write_a_pizza_review 
        elsif action == 2 
            read_pizza_reviews 
        elsif action == 3
            delete_a_pizza_review
        elsif action == 4 
            update_a_pizza_review
        elsif action == 5 
            puts "Goodbye!" 
            exit 
        else 
            put "That is not an option, choose another"
            main_menu
        end 
    end
           
    def write_a_pizza_review 
        choice = Prompt.ask("What is the menu name of the pizza you would like to review?".chomp.colorize(:red))
        pizza_choice = Pizza.find_by(menu_name: choice)
        score = Prompt.ask("What is the rating of the pizza on a scale of 1 to 10?".colorize(:blue))
        new_user.reviews.create(rating: score, pizza: pizza_choice) 
        puts ("New review created!")
        main_menu
    end 
 

   def read_pizza_reviews
    choice = Prompt.ask("What is the menu name of the pizza you would like to read all reviews for?".colorize(:blue)) #refactor
    pizza_choice = Pizza.find_by(menu_name: choice) #downcase 
    pizza_choice.reviews.map do |review|
            puts "Title: #{review.title}"
            puts "Rating: #{review.rating}"
            puts "Pizza Restaurant: #{pizza_choice.restaurant_name}"
        end  
   end 

  def delete_a_pizza_review 
    choice = Prompt.ask("What is the name of the restauraunt you would like to delete a review for?".chomp.colorize(:blue)) #refactor
        user_pizzas = new_user.reviews.select do |review|
        review.pizza.restaurant_name == choice
        user_pizzas.reviews.map do |review| 
            binding.pry 
                puts "Title: #{review.title}"
                puts "Rating: #{review.rating}"
                puts "Pizza Restaurant: #{choice}"
                puts "Pizza Name: #{pizza.menu_name}" 
            end
        end
   end 

   def delete_a_pizza_review
    choice = Prompt.ask("What is the review title of the pizza review you would like to update?".colorize(:blue))
   
   

   
   
   
   
#     user_reviews = new_user.reviews 
#     choice = Prompt.ask("What is the menu name of the pizza review you would like to delete?".colorize(:light_blue))
#     pizza_choice = Pizza.find_by(menu_name: choice)
#     review_choice = reviews.pluck( pizza_choice)
#     review_choice.destroy 
#     puts "Review deleted!".colorize(:light_green)
#   end 
# #     

# # #   def update_a_pizza_review 
# #         choice = Prompt.ask("What is the review title of the pizza review you would like to update?".colorize(:blue))
# #         review_choice = Review.find_by(title: choice)
#           new_rating = Prompt.ask("What is the new rating for this pizza?".colorize(:red))
#           review_choice.update(rating: new_rating)
# #     end 





  











#   Write a pizza review
#     add_review dropdown menu? 
#   Read pizza reviews
#     Reviews.all 
#   Delete a pizza review 
#     delete_review(pizza)
#   Update a pizza review 
#     update_pizza(pizza, rating)
#   See how many reviews you have made  
#     num_reviews

#   See most popular pizza 
#     most_popular_pizza
#   See most expert level reviewer
#     expertise 

#   See all reviews for one pizza 
#     Pizza.reviews 
#   Add pizza to pizza todo list 
#   Add pizza to database of pizzas
#     add_pizza  



    








   




end 
