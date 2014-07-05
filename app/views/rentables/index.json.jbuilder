json.array!(@rentables) do |rentable|
  json.extract! rentable, :id, :name, :location, :quantity, :category
  json.url rentable_url(rentable, format: :json)
end
