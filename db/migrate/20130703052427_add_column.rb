class AddColumn < ActiveRecord::Migration
  def change
    add_column :users, :contact, :integer
    add_column :users, :address, :string
  end
end
