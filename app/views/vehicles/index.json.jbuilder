json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :veh_reg_no, :category, :desc, :photo, :daily_rate
  json.url vehicle_url(vehicle, format: :json)
end
