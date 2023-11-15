require 'rails_helper'

RSpec.describe SightseeingStop, type: :model do
  attributes = [
    {journey_sightseeing_stops: :have_many},
    {stop_name: :presence},
    {description: :presence},
  ]

  include_examples("model_shared_spec", :sightseeing_stop, attributes)
end
