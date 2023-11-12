class Vehicle < ApplicationRecord
    has_many :journeys

    validates :vehicle_type, presence: true
    validates :seating_capacity, presence: true
end
