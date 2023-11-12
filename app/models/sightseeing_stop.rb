class SightseeingStop < ApplicationRecord
    has_many :journey_sightseeing_stops

    validates :stop_name, presence: true
    validates :description, presence: true
end
