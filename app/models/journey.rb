class Journey < ApplicationRecord
    belongs_to :user
    belongs_to :vehicle
    has_one :journey_sightseeing_stop

    validates :origin_city, presence: true
    validates :destination_city, presence: true
    validates :departure_date, presence: true
    validates :departure_time, presence: true
end
