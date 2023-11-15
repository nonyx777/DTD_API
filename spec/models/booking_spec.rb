require 'rails_helper'

RSpec.describe Booking, type: :model do
  attributes = [
    {journey_sightseeing_stop: :belong_to},
    {payment: :belong_to},
    {driver_assignment: :have_one},
    {total_cost: [:presence, {numericality: [[:is_greater_than, 0]]}]},
    {booking_date: :presence},
    {remaining_day: :presence},
  ]

  include_examples("model_shared_spec", :booking, attributes)
end
