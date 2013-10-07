json.array!(@coins) do |coin|
  json.extract! coin, :value_pound, :value_pence
  json.url coin_url(coin, format: :json)
end
