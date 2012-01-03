require "spec_helper"

describe ReservasController do
  describe "routing" do

    it "routes to #index" do
      get("/reserva").should route_to("reserva#index")
    end

    it "routes to #new" do
      get("/reserva/new").should route_to("reserva#new")
    end

    it "routes to #show" do
      get("/reserva/1").should route_to("reserva#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reserva/1/edit").should route_to("reserva#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reserva").should route_to("reserva#create")
    end

    it "routes to #update" do
      put("/reserva/1").should route_to("reserva#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reserva/1").should route_to("reserva#destroy", :id => "1")
    end

  end
end
