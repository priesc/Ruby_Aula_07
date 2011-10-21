require "spec_helper"

describe ConformidadesController do
  describe "routing" do

    it "routes to #index" do
      get("/conformidades").should route_to("conformidades#index")
    end

    it "routes to #new" do
      get("/conformidades/new").should route_to("conformidades#new")
    end

    it "routes to #show" do
      get("/conformidades/1").should route_to("conformidades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conformidades/1/edit").should route_to("conformidades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conformidades").should route_to("conformidades#create")
    end

    it "routes to #update" do
      put("/conformidades/1").should route_to("conformidades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conformidades/1").should route_to("conformidades#destroy", :id => "1")
    end

  end
end
