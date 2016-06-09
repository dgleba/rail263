json.array!(@rental_records) do |rental_record|
  json.extract! rental_record, :id, :customer_id, :vehicle_id, :start_date, :end_date, :lastUpdated
  json.url rental_record_url(rental_record, format: :json)
end
