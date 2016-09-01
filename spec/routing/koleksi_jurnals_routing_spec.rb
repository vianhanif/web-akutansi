require "rails_helper"

RSpec.describe KoleksiJurnalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/koleksi_jurnals").to route_to("koleksi_jurnals#index")
    end

    it "routes to #new" do
      expect(:get => "/koleksi_jurnals/new").to route_to("koleksi_jurnals#new")
    end

    it "routes to #show" do
      expect(:get => "/koleksi_jurnals/1").to route_to("koleksi_jurnals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/koleksi_jurnals/1/edit").to route_to("koleksi_jurnals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/koleksi_jurnals").to route_to("koleksi_jurnals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/koleksi_jurnals/1").to route_to("koleksi_jurnals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/koleksi_jurnals/1").to route_to("koleksi_jurnals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/koleksi_jurnals/1").to route_to("koleksi_jurnals#destroy", :id => "1")
    end

  end
end
