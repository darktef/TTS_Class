json.array!(@api_v1_products) do |api_v1_product|
  json.extract! api_v1_product, :id, :name, :price
  json.url api_v1_product_url(api_v1_product, format: :json)
end
