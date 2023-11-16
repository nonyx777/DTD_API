require 'rails_helper'

RSpec.describe "/users", type: :request do
  include_examples('request_shared_spec', 'users', 5, [:create])

  let(:valid_attributes) do
    {
      full_name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      profile_photo: "profilepic.png",
      password_digest: "12345678"
    }
  end

  let(:invalid_attributes) do
    {
      full_name: Faker::Name.name,
      phone_number: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      profile_photo: nil,
      password_digest: "12345678"
    }
  end

  let(:new_attributes) do
    {
      profile_photo: "profilepic2.png"
    }
  end

end
