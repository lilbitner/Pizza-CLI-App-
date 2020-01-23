class Pizza < ActiveRecord::Base  
    has_many :reviews  
    has_many :users, through: :reviews 


    def total_pizza_reviews
        Reviews.all.map do |review|
            review.pizza == self 
        end 
    end 
    
    
    # def average_rating 
    #     total_ratings = reviews.reduce(0) do |sum, review| 
    #       sum + review.rating 
    #     end 
    #     total_ratings/ reviews.length.to_f 
    #   end 
    
    # def self.average_rating
    #    all_ratings = Pizza.all.average_rating
    #    all_ratings.max = popular_pizza 
    
    
    # def self.most_popular_pizza
    #     Reviews.average_rating.map do |review|
    #         review.max = highest_rating  
    #      end 
    #  end 
     
    # def self.all_pizza_ratings
    #     Reviews.all.map do |review|
    #         review.rating = ratings 
    #     ratings
    #     end 
    # end 
    
    def add_pizza(restaurant, menu_name, pizza_category, pizza_ingredients)
            Review.new(restaurant, menu_name, pizza_category, pizza_ingredients)
    end 






        
        


    
    # def new_pizza
    #     #add a pizza to database 
    # end 

    # def pizza_todo 
    #     #can add and remove pizzas to list
    # end 
end 
