class User < ActiveRecord::Base  
    has_many :reviews #getting the info with helper method 
    has_many :pizzas, through: :reviews 

    # def total_reviews
    #     has_many.count 
    # end 
    
    def add_review(pizza, rating)
        Review.new(self, pizza, rating)
    end 

    # def user_reviews
    #     Review.all.select do |review|
    #         review.user == self 
    #     end 
    # end 



    
    # def pizza_expertise 
    #    total_reviews
    #     if total_reviews > 10, puts "Pizza Expert"
    #     if total_reviews > 7 and < 10, puts "definitely likes pizza"
    #     if total_reviews > 3 and < 7, puts "will eat pizza"
    #     if total_reviews < 3, puts "probably lactose intolerant"
    # end 

    # def new_user(name)
    #     User.create(name)
    # end 



end 