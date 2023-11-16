FactoryBot.define do
  factory :booking do
    user_id {create(:user).id}
    journey_sightseeing_stop_id {create(:journey_sightseeing_stop).id}
    payment_id {create(:payment).id}
    total_cost {100.0}
    booking_date {Faker::Date.between(from: Date.today, to: 1.days.from_now)}
    remaining_day {7}
  end
end
