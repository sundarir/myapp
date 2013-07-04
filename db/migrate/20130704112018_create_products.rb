class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :sno
      t.string :products
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
