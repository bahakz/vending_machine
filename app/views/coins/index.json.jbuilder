json.array!(@coins) do |coin|
  json.extract! coin, :name, :value_pound, :value_pence, :quantity
  json.url coin_url(coin, format: :json)
end
