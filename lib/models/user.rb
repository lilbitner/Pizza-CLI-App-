class User < ActiveRecord::Base  
    has_many :reviews #getting the info with helper method 
    has_many :pizzas, through: :reviews 

    # def total_reviews
    #     has_many.count 
    # end 
    
    def add_review(pizza, rating)
        Review.new(self, pizza, rating)
    end 

    def delete_review(pizza)
        reviews.select do |review|
            if review.pizza == pizza
                review.delete 
            end 
        end  
    end 

    def update_review(pizza, rating)
        reviews.select do |review| 
            if review.pizza == pizza 
                review.rating == rating 
            end 
        end 
    end 

    def num_reviews
        reviews.length
    end 

    # def expertise 
    #     if num_reviews > 10 puts "Pizza Expert"
    #     if num_reviews < 10 && num_reviews > 7 puts "defintely likes pizza"
    #     if num_reviews < 7 && num_reviews > 3 puts "will eat pizza"
    #     if num reviews < 3 puts "probably lactose intolerant"
    # end 

    def new_user(name)
        User.create(name: name)
    end 



end 