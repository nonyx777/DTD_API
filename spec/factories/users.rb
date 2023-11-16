FactoryBot.define do
  factory :user do
    full_name {Faker::Name.name}
    phone_number {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    profile_photo {"profilepic.png"}
    password_digest {Faker::Internet.password(min_length: 8)}
  end
end
