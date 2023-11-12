FactoryBot.define do
  factory :journey_sightseeing_stop do
    journey_id {create(:journey).id}
    sightseeing_stop_id {create(:sightseeing_stop).id}
  end
end
