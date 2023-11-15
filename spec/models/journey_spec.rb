require 'rails_helper'

RSpec.describe Journey, type: :model do
  attributes = [
    {user: :belong_to},
    {vehicle: :belong_to},
    {journey_sightseeing_stop: :have_one},
    {origin_city: :presence},
    {destination_city: :presence},
    {departure_date: :presence},
    {departure_time: :presence},
  ]

  include_examples("model_shared_spec", :journey, attributes)
end
