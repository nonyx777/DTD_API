FactoryBot.define do
  factory :vehicle do
    vehicle_type {Faker::Name.name}
    seating_capacity {Faker::Number.between(from: 4, to: 15)}
  end
end
