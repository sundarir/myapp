class OrdersController < ApplicationController
	 def index
	 @product = Product.find(params[:product])
	 end

	 def show
    @product = Product.find(params[:id])
  end

  def create
    @order = Order.new(params[:order])
    if @order.save
      @order.product_id.save
      @order.user_id.save
      
    else
      render :new
    end
  end
end