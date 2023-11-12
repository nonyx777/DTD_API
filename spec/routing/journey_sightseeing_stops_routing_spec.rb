require "rails_helper"

RSpec.describe JourneySightseeingStopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/journey_sightseeing_stops").to route_to("journey_sightseeing_stops#index")
    end

    it "routes to #show" do
      expect(get: "/journey_sightseeing_stops/1").to route_to("journey_sightseeing_stops#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/journey_sightseeing_stops").to route_to("journey_sightseeing_stops#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/journey_sightseeing_stops/1").to route_to("journey_sightseeing_stops#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/journey_sightseeing_stops/1").to route_to("journey_sightseeing_stops#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/journey_sightseeing_stops/1").to route_to("journey_sightseeing_stops#destroy", id: "1")
    end
  end
end
