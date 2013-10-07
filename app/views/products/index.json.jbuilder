json.array!(@products) do |product|
  json.extract! product, :name, :price_pound, :price_pence
  json.url product_url(product, format: :json)
end
