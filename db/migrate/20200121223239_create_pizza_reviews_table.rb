class CreatePizzaReviewsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_reviews do |t|
      t.references :user
    end 
  end
end
