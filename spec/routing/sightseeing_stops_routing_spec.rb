require "rails_helper"

RSpec.describe SightseeingStopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/sightseeing_stops").to route_to("sightseeing_stops#index")
    end

    it "routes to #show" do
      expect(get: "/sightseeing_stops/1").to route_to("sightseeing_stops#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/sightseeing_stops").to route_to("sightseeing_stops#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/sightseeing_stops/1").to route_to("sightseeing_stops#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/sightseeing_stops/1").to route_to("sightseeing_stops#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/sightseeing_stops/1").to route_to("sightseeing_stops#destroy", id: "1")
    end
  end
end
