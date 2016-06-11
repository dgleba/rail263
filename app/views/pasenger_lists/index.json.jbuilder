json.array!(@pasenger_lists) do |pasenger_list|
  json.extract! pasenger_list, :id, :clocknum, :name, :active, :passenger_id
  json.url pasenger_list_url(pasenger_list, format: :json)
end
