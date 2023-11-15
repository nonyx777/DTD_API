require 'rails_helper'

RSpec.describe User, type: :model do
  attributes = [
    {journeys: :have_many},
    {email_communications: :have_many},
    {bookings: :have_many},
    {full_name: :presence},
    {phone_number: :presence},
    {email: :presence},
    {password_digest: [:presence, {length: [[:is_at_least, 8]]}]},
  ]

  include_examples("model_shared_spec", :user, attributes)
end
