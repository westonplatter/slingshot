require "spec_helper"

describe VpnsController do
  describe "routing" do

    it "routes to #new" do
      get("/vpn/new").should route_to("vpns#new")
    end

    it "routes to #show" do
      get("/vpn").should route_to("vpns#show")
    end

    it "routes to #edit" do
      get("/vpn/edit").should route_to("vpns#edit")
    end

    it "routes to #create" do
      post("/vpn").should route_to("vpns#create")
    end

    it "routes to #update" do
      put("/vpn").should route_to("vpns#update")
    end

    it "routes to #destroy" do
      delete("/vpn").should route_to("vpns#destroy")
    end

  end
end
