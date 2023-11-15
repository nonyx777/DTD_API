require 'rails_helper'

RSpec.describe DriverAssignment, type: :model do
  attributes = [
    {booking: :belong_to},
    {driver: :belong_to},
  ]

  include_examples("model_shared_spec", :driver_assignment, attributes)
end
