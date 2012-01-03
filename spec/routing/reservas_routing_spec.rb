require "spec_helper"

describe ReservasController do
  describe "routing" do

    it "routes to #index" do
      get("/reservas").should route_to("reservas#index")
    end

    it "routes to #new" do
      get("/reservas/new").should route_to("reservas#new")
    end

    it "routes to #show" do
      get("/reservas/1").should route_to("reservas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reservas/1/edit").should route_to("reservas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reservas").should route_to("reservas#create")
    end

    it "routes to #update" do
      put("/reservas/1").should route_to("reservas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reservas/1").should route_to("reservas#destroy", :id => "1")
    end

  end
end
