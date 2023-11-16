require 'rails_helper'

RSpec.describe "/journeys", type: :request do
  include_examples('request_shared_spec', 'journeys', 7)

  let(:valid_attributes) do
    {
      user_id: create(:user).id,
      vehicle_id: create(:vehicle).id,
      origin_city: Faker::Address.city,
      destination_city: Faker::Address.city,
      departure_date: Faker::Date.between(from: Date.today, to: 1.week.from_now),
      departure_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).strftime("%H:%M:%S")
    }
  end

  let(:invalid_attributes) do
    {
      user_id: create(:user).id,
      vehicle_id: create(:vehicle).id,
      origin_city: nil,
      destination_city: Faker::Address.city,
      departure_date: Faker::Date.between(from: Date.today, to: 1.week.from_now),
      departure_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).strftime("%H:%M:%S")
    }
  end

  let(:new_attributes) do
    {
      destination_city: Faker::Address.city
    }
  end

end
