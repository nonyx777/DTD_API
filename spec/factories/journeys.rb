FactoryBot.define do
  factory :journey do
    user_id {create(:user).id}
    vehicle_id {create(:vehicle).id}
    origin_city {Faker::Address.city}
    destination_city {Faker::Address.city}
    departure_date {Faker::Date.between(from: Date.today, to: 1.week.from_now)}
    departure_time {Faker::Time.between(from: DateTime.now - 1, to: DateTime.now).strftime("%H:%M:%S")}
  end
end
