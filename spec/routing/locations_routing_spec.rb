require "spec_helper"

describe LocationsController do
  describe "routing" do

    it "routes to #new" do
      get("/location/new").should route_to("locations#new")
    end

    it "routes to #show" do
      get("/location").should route_to("locations#show")
    end

    it "routes to #edit" do
      get("/location/edit").should route_to("locations#edit")
    end

    it "routes to #create" do
      post("/location").should route_to("locations#create")
    end

    it "routes to #update" do
      put("/location").should route_to("locations#update")
    end

  end
end
