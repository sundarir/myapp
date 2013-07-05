class Product < ActiveRecord::Base
  attr_accessible :name, :price, :quantity, :required_quantity
  belongs_to :user
end

