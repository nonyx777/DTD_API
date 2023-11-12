FactoryBot.define do
  factory :driver do
    full_name {Faker::Name.name}
    phone_number {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
    profile_photo {Faker::Avatar.image(human: "some-human", size: "300x300", format: "png")}
  end
end
