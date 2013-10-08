namespace :db do

  desc "TODO"
  task populate: :environment do
		chocolate = Product.create!(name: "Chocolate", 
                         price_pound: "1", 
                         price_pence: "50",
                         quantity: "10")

		water = Product.create!(name: "Water", 
                         price_pound: "0", 
                         price_pence: "50",
                         quantity: "5")

		snacks = Product.create!(name: "Snacks", 
                         price_pound: "0", 
                         price_pence: "80",
                         quantity: "3")

		onep = Coin.create!(name: "1p", 
                         value_pound: "0", 
                         value_pence: "1",
                         quantity: "10")

		twop = Coin.create!(name: "2p", 
                         value_pound: "0", 
                         value_pence: "2",
                         quantity: "10")

		fivep = Coin.create!(name: "5p", 
                         value_pound: "0", 
                         value_pence: "5",
                         quantity: "10")

		tenp = Coin.create!(name: "10p", 
                         value_pound: "0", 
                         value_pence: "10",
                         quantity: "10")

		twentyp = Coin.create!(name: "20p", 
                         value_pound: "0", 
                         value_pence: "20",
                         quantity: "10")

		fiftyp = Coin.create!(name: "50p", 
                         value_pound: "0", 
                         value_pence: "50",
                         quantity: "10")

		onepound = Coin.create!(name: "1£", 
                         value_pound: "1", 
                         value_pence: "0",
                         quantity: "10")

		twopound = Coin.create!(name: "2£", 
                         value_pound: "2", 
                         value_pence: "0",
                         quantity: "10")
		

  end

end
