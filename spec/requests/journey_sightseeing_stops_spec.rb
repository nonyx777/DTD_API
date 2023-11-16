require 'rails_helper'

RSpec.describe "/journey_sightseeing_stops", type: :request do
  include_examples('request_shared_spec', 'journey_sightseeing_stops', 3)

  let(:valid_attributes) do
    {
      journey_id: create(:journey).id,
      sightseeing_stop_id: create(:sightseeing_stop).id
    }
  end

  let(:invalid_attributes) do
    {
      journey_id: nil,
      sightseeing_stop_id: nil
    }
  end

  let(:new_attributes) do
    {
      sightseeing_stop_id: create(:sightseeing_stop).id
    }
  end
end
