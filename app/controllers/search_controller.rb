class SearchController < ApplicationController
  def index
  	   
       @product = Product.find_by_id(params[:id])
  end

    def show
      @product = Product.find(params[:id])
   end
end