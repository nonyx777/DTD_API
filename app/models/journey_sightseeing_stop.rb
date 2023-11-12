class JourneySightseeingStop < ApplicationRecord
    has_one :booking
    belongs_to :journey
    belongs_to :sightseeing_stop
end
