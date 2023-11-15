require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  attributes = [
    {journeys: :have_many},
    {vehicle_type: :presence},
    {seating_capacity: :presence},
  ]

  include_examples("model_shared_spec", :vehicle, attributes)
end
