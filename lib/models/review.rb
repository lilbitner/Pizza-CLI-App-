class Review < ActiveRecord::Base  
    belongs_to :user
    belongs_to :pizza 

    # def review_score 
    # 
    


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