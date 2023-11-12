FactoryBot.define do
  factory :sightseeing_stop do
    stop_name {"Lalibela"}
    description {Faker::Lorem.paragraph}
  end
end
