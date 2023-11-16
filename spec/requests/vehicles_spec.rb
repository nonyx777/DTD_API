require 'rails_helper'

RSpec.describe "/vehicles", type: :request do
  include_examples('request_shared_spec', 'vehicles', 3)

  let(:valid_attributes) do
    {
      vehicle_type: Faker::Name.name,
      seating_capacity: Faker::Number.between(from: 4, to: 15)
    }
  end

  let(:invalid_attributes) do
    {
      vehicle_type: nil,
      seating_capacity: Faker::Number.between(from: 4, to: 15)
    }
  end

  let(:new_attributes) do
    {
      vehicle_type: Faker::Name.name
    }
  end

end
