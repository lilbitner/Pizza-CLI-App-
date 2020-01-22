class Pizza < ActiveRecord::Base  
    has_many :reviews  
    has_many :users, through: :reviews 

    # def reviews 
    # Reviews.all.map do |review|
    #     review.pizza == self
    #     end 
    # end 
    
    # def most_popular_pizza
    # ratings = reviews.rating 
    # = ratings.count 

    #     end  
    # end 
    
    # def new_pizza
    #     #add a pizza to database 
    # end 

    # def pizza_todo 
    #     #can add and remove pizzas to list
    # end 
end 
