class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price 
      t.integer :quantity 
      t.integer :required_quantity
      t.timestamps
    end
  end
end
