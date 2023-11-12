require "rails_helper"

RSpec.describe EmailCommunicationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/email_communications").to route_to("email_communications#index")
    end

    it "routes to #show" do
      expect(get: "/email_communications/1").to route_to("email_communications#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/email_communications").to route_to("email_communications#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/email_communications/1").to route_to("email_communications#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/email_communications/1").to route_to("email_communications#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/email_communications/1").to route_to("email_communications#destroy", id: "1")
    end
  end
end
