require 'rails_helper'

RSpec.describe JourneySightseeingStop, type: :model do
  attributes = [
    {journey: :belong_to},
    {booking: :have_one}
  ]

  include_examples("model_shared_spec", :journey_sightseeing_stop, attributes)
end
