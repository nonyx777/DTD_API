FactoryBot.define do
  factory :email_communication do
    user_id {create(:user).id}
    email_detail {Faker::Lorem.paragraph}
  end
end
