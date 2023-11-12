require "rails_helper"

RSpec.describe DriverAssignmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/driver_assignments").to route_to("driver_assignments#index")
    end

    it "routes to #show" do
      expect(get: "/driver_assignments/1").to route_to("driver_assignments#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/driver_assignments").to route_to("driver_assignments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/driver_assignments/1").to route_to("driver_assignments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/driver_assignments/1").to route_to("driver_assignments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/driver_assignments/1").to route_to("driver_assignments#destroy", id: "1")
    end
  end
end
