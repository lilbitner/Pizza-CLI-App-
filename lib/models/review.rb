class Review < ActiveRecord::Base  
    belongs_to :user
    belongs_to :pizza 

    # def review_score 
    # 
    
 
    def user_reviews
        Review.all.select do |review|
            review.user == self 
        end 
    end 


    def delete_review(pizza)
        user_reviews.select do |review|
            if review.pizza == pizza
        review.delete 
            end 
        end  
    end 

    # def total_pizza_reviews
    #     Reviews.all.select do |review|
    #         review.pizza == self 
    #     end 
    # end 

    # def update_review 
    #  empty_review = user_reviews.delete_review 
    #  empty_review.add_review 
    # end 
end 