require 'rails_helper'

RSpec.describe "/driver_assignments", type: :request do
  include_examples('request_shared_spec', 'driver_assignments', 3)

  let(:valid_attributes) do
    {
      booking_id: create(:booking).id,
      driver_id: create(:driver).id
    }
  end

  let(:invalid_attributes) do
    {
      booking_id: nil,
      driver_id: nil
    }
  end

  let(:new_attributes) do
    {
      driver_id: create(:driver).id
    }
  end

end
