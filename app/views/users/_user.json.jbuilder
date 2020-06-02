json.extract! user, :id, :name, :first_name, :last_name, :first_name_reading, :last_name_readig, :created_at, :updated_at
json.url user_url(user, format: :json)
