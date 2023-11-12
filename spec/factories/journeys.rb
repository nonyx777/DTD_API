FactoryBot.define do
  factory :journey do
    user_id {create(:user).id}
    vehicle {create(:vehicle).id}
    origin_city {Faker::Address.city}
    destination_city {Faker::Address.city}
    departure_date {Faker::Date.between(from: Date.tody, to: 1.week.from_now)}
    departure_time {Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :time)}
  end
end
