class CheckoutController < ApplicationController
   
 def index
   
   @product = Product.find_by_id(params[:product])
  @user = current_user
   UserMailer.order_confirmation(@product, @user).deliver
      redirect_to @user, notice: "Order Completed Successfully."
   end
       
  

 def list
      @products = Product.find(:all)
   end
  def show
      @product = Product.find(params[:id])
   end

   def new
      @product = Product.new
      @products = Product.find(:all)
   end

    def create
      @product = Product.new(params[:product])
      if @product.save
            redirect_to :action => 'list'
      else
      @products = Product.find(:all)
            render :action => 'new'
      end
   end


end
