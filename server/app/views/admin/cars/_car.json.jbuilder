json.extract! car, :id, :make, :model, :year, :price, :state, :dealership_id, :created_at, :updated_at
json.url admin_car_url(car, format: :json)
