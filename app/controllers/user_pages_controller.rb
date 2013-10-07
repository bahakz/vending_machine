class UserPagesController < ApplicationController

  def index
     @products = Product.all 
  end

  def buy
  	 @product = Product.find(params[:product]); 
  	 @coins = Coin.all; 
  end

end
