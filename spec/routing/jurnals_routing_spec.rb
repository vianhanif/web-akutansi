require "rails_helper"

RSpec.describe JurnalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jurnals").to route_to("jurnals#index")
    end

    it "routes to #new" do
      expect(:get => "/jurnals/new").to route_to("jurnals#new")
    end

    it "routes to #show" do
      expect(:get => "/jurnals/1").to route_to("jurnals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jurnals/1/edit").to route_to("jurnals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jurnals").to route_to("jurnals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jurnals/1").to route_to("jurnals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jurnals/1").to route_to("jurnals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jurnals/1").to route_to("jurnals#destroy", :id => "1")
    end

  end
end
