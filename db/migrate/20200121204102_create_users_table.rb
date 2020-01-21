class CreateUsersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t| 
      t.string :name 
      t.integer :pizza_expertise 
    end 
  end
end
