require 'rails_helper'

RSpec.describe "/sightseeing_stops", type: :request do
  include_examples('request_shared_spec', 'sightseeing_stops', 3)

  let(:valid_attributes) do
    {
      stop_name: "Lalibela",
      description: Faker::Lorem.paragraph
    }
  end

  let(:invalid_attributes) do
    {
      stop_name: nil,
      description: Faker::Lorem.paragraph
    }
  end

  let(:new_attributes) do
    {
      stop_name: "Axum"
    }
  end
end
