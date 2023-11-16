FactoryBot.define do
  factory :driver do
    full_name {Faker::Name.name}
    phone_number {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    profile_photo {"profilepic.png"}
  end
end
