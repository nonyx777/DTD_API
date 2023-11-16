require 'rails_helper'

RSpec.describe "/drivers", type: :request do
  include_examples('request_shared_spec', 'drivers', 5)

  let(:valid_attributes) do
    {
      full_name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      profile_photo: "profilepic.png"
    }
  end

  let(:invalid_attributes) do
    {
      full_name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      profile_photo: nil
    }
  end

  let(:new_attributes) do
    {
      profile_photo: "profilepic2.png"
    }
  end
end
