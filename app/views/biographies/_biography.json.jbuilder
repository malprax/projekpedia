json.extract! biography, :id, :user_id, :city, :address, :image, :ability, :geolocation, :created_at, :updated_at
json.url biography_url(biography, format: :json)