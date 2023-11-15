require 'rails_helper'

RSpec.describe Driver, type: :model do
  attributes = [
    {driver_assignments: :have_many},
    {full_name: :presence},
    {phone_number: :presence},
    {email: :presence},
    {profile_photo: :presence},
  ]

  include_examples("model_shared_spec", :driver, attributes)
end
