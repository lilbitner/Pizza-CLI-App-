class CLI 
    Prompt = TTY::Prompt.new
    attr_reader :new_user

    def welcome_menu 
        puts "Welcome to PizzaWorld!".colorize(:yellow)
        puts "Where pizza lovers come to play".colorize(:red)
        name = Prompt.ask("What's your name?".colorize(:blue)) do |q|
            q.modify :up, :chomp 
        end 
  
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
            puts "Goodbye!".colorize(:blue)
            exit 
        else 
            put "That is not an option, choose another".colorize(:yellow)
            main_menu
        end 
    end
           
    
    def write_a_pizza_review
        choice = Prompt.ask("What is the menu name of the pizza you would like to review?".colorize(:red)) do |q|
            q.modify :down 
        end.strip  
            pizza_choice = Pizza.find_by(menu_name: choice)
            if pizza_choice == nil 
                puts "not a valid choice"
                write_a_pizza_review
            end 
        score = Prompt.ask("What is the rating of the pizza on a scale of 1 to 10?".colorize(:blue))
        review_title = Prompt.ask("What is the title of the review?".colorize(:green)) do |q|
            q.modify :down
        end.strip 
            new_user.reviews.create(rating: score, pizza: pizza_choice, title: review_title) 
                puts ("New review created!")
        main_menu
    end 
 

   def read_pizza_reviews
    choice = Prompt.ask("What is the menu name of the pizza you would like to read all reviews for?".colorize(:blue)) do |q|
        q.modify :down 
    end.strip 
    pizza_choice = Pizza.find_by(menu_name: choice) 
            if pizza_choice == nil 
                puts "not a valid choice"
                read_pizza_reviews
            end 
            pizza_choice.reviews.map do |review|
                puts "Title: #{review.title}"
                puts "Rating: #{review.rating}"
                puts "Pizza Restaurant: #{pizza_choice.restaurant_name}"
            end  
        main_menu
   end 
   
   def delete_a_pizza_review
        choice = Prompt.ask("What is the review title of the pizza review you would like to delete?".colorize(:blue)) do |q|
            q.modify :down
        end.strip 
        review_choice = Review.find_by(title: choice)
            if review_choice == nil 
                puts "not a valid choice"
                delete_a_pizza_review
            end 
            answer = Prompt.ask("are you sure you want to delete")
            if answer == "yes"
                review_choice.destroy
                puts "Review deleted!".colorize(:light_blue) 
            else main_menu
         end 
         main_menu 
    end
   

    def update_a_pizza_review 
        choice = Prompt.ask("What is the review title of the pizza review you would like to update?".colorize(:blue)) do |q|
            q.modify :down
        end.strip 
            review_choice = Review.find_by(title: choice)
                if review_choice == nil 
                    puts "not a valid choice"
                    update_a_pizza_review
                end 
                new_rating = Prompt.ask("What is the new rating for this pizza?".colorize(:red))
                review_choice.update(rating: new_rating)
                puts "Thanks for keeping our reviews fresh!".colorize(:blue)
                puts "your new rating for the #{review_choice.pizza.menu_name} pizza at #{review_choice.pizza.restaurant_name} is #{review_choice.rating}"
        main_menu 
     end 





  





  












  



    








   




end 
