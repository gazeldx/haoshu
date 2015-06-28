json.array!(@users) do |user|
  json.extract! user, :id, :login_name, :password, :nickname
  json.url user_url(user, format: :json)
end
