class UsersController < ApplicationController
    before_filter :signed_in_user, only: [:edit, :update]
  def new
   redirect_to current_user if signed_in?
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Online Gerocery mart!.Your account has been created sucessfully"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
     @product = Product.find_by_id(params[:product])

  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end
   private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
end
