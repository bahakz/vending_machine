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

  	@a = Array.new

  	@a[0] = 0; 
  	@values = Array.new

    @coins = Coin.all

    @coins.each do |coin|
    	coin.quantity += Integer(params[coin.id.to_s]); 
    	value = coin.value_pound * 100 + coin.value_pence; 

    	(1..coin.quantity).each do |j|
    		(0..@change).reverse_each do |i|
    			if (@a[i]!=nil) 
					@values.push(i+value); 
    				@a[i+value] = coin.id; 
    			end
    		end
    	end

    	coin.save; 
    end

    @user_coins = Array.new; 

    if (@a[@change]!=nil)
    	left = @change; 
    	while (left > 0) 
    		coin = Coin.find(@a[left]); 
    		coin.quantity -= 1; 
    		left -= coin.value_pound * 100 + coin.value_pence; 
    		coin.save
    		@user_coins.push(coin.name);
    	end
    end

  end

end
