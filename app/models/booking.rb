class Booking < ApplicationRecord
    belongs_to :journey_sightseeing_stop
    belongs_to :payment
    has_one :driver_assignment

    validates :total_cost, presence: true, numericality: {greater_than: 0}
    validates :booking_date, presence: true
    validates :remaining_day, presence: true
end
