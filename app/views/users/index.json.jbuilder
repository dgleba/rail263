json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :crypted_password, :role_id
  json.url user_url(user, format: :json)
end
