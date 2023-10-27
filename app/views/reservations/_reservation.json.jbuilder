json.extract! reservation, :id, :name, :date, :table, :seating_capacity, :addition_information, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
