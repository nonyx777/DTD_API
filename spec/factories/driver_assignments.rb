FactoryBot.define do
  factory :driver_assignment do
    booking_id {create(:booking).id}
    driver_id {create(:driver).id}
  end
end
