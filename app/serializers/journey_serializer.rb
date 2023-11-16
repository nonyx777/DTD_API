class JourneySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :vehicle_id, :origin_city, :destination_city, :departure_date, :departure_time
end
