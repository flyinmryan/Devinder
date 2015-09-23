json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :role, :title, :description, :rating, :total_ratings
  json.url user_url(user, format: :json)
end
