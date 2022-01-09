json.extract! event, :id, :user_id, :name, :start_date, :end_date, :location_address, :itinerary, :capacity, :capacity_unit, :created_at, :updated_at
json.url event_url(event, format: :json)
