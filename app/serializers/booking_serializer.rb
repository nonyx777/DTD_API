class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :journey_sightseeing_stop_id, :payment_id, :total_cost, :booking_date, :remaining_day
end
