class UserPagesController < ApplicationController

  def index
     @products = Product.all 
  end

  def buy
  	 @product = Product.find(params[:product]); 
  	 @coins = Coin.all; 
  end

  def finish_and_change
  	@product = Product.find(params[:product]);
  	@change = Integer(params[:change]); 

  end

end
