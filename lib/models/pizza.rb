class Pizza < ActiveRecord::Base  
    has_many :reviews #getting the info with helper method 
    has_many :users, through: :reviews 

end 