require "rails_helper"

RSpec.describe WorkPartiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/work_parties").to route_to("work_parties#index")
    end

    it "routes to #new" do
      expect(get: "/work_parties/new").to route_to("work_parties#new")
    end

    it "routes to #show" do
      expect(get: "/work_parties/1").to route_to("work_parties#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/work_parties/1/edit").to route_to("work_parties#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/work_parties").to route_to("work_parties#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/work_parties/1").to route_to("work_parties#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/work_parties/1").to route_to("work_parties#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/work_parties/1").to route_to("work_parties#destroy", id: "1")
    end
  end
end
