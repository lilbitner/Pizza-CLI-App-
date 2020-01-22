class CreatePizzaReviewsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_reviews do |t|
      t.integer :rating
      t.references :user
      t.references :pizza
    end 
  end
end
