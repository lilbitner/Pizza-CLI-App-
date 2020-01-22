class CreatePizzasTable < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.string :restaurant_name
      t.string :menu_name
      t.string :pizza_category
    end 
  end
end
