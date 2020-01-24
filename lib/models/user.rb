class User < ActiveRecord::Base  
    has_many :reviews 
    has_many :pizzas, through: :reviews 
end 