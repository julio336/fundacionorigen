require "spec_helper"

describe ProyectsController do
  describe "routing" do

    it "routes to #index" do
      get("/proyects").should route_to("proyects#index")
    end

    it "routes to #new" do
      get("/proyects/new").should route_to("proyects#new")
    end

    it "routes to #show" do
      get("/proyects/1").should route_to("proyects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/proyects/1/edit").should route_to("proyects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/proyects").should route_to("proyects#create")
    end

    it "routes to #update" do
      put("/proyects/1").should route_to("proyects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/proyects/1").should route_to("proyects#destroy", :id => "1")
    end

  end
end
