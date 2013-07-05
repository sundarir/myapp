class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.integer :required_quantity

      t.timestamps
    end
  end
end
