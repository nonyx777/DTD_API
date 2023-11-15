require 'rails_helper'

RSpec.describe JourneySightseeingStop, type: :model do
  attributes = [
    {have_one: :booking},
    {belong_to: :journey},
    {belong_to: :sightseeing_stop},
  ]

  include_examples("model_shared_spec", :journey_sightseeing_stop, attributes)
end
