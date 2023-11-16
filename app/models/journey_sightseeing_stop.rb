class JourneySightseeingStop < ApplicationRecord
    belongs_to :journey
    has_one :booking
end
