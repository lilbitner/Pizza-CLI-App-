class User < ActiveRecord::Base  
    has_many :reviews #getting the info with helper method 
    has_many :pizzas, through: :reviews 



    def pizza_expertise 
        Reviews.all.count
    end 

end 