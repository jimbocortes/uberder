json.array!(@properties) do |property|
  json.extract! property, :id, :type, :city, :address, :price, :bathrooms, :bedrooms, :description
  json.url property_url(property, format: :json)
end
