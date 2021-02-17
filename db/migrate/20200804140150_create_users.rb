class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :current_cart_id
      
      t.timestamps null: false
    end
  end
end
