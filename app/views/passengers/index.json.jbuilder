json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :description, :rental_record_id
  json.url passenger_url(passenger, format: :json)
end
