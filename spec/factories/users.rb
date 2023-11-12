FactoryBot.define do
  factory :user do
    full_name {Faker::Name.name}
    phone_number {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    profile_photo {Faker::Avatar.image(human: "some-human", size: "300x300", format: "png")}
    password_digest {Faker::Internet.password(min_length: 8)}
  end
end
