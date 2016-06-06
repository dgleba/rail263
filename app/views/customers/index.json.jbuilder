json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :phone, :discount
  json.url customer_url(customer, format: :json)
end
