class CheckoutController < ApplicationController
   
  def index
       @product = Product.find_by_id(params[:id])
  end
  

end
