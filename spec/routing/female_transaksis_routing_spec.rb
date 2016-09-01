require "rails_helper"

RSpec.describe FemaleTransaksisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/female_transaksis").to route_to("female_transaksis#index")
    end

    it "routes to #new" do
      expect(:get => "/female_transaksis/new").to route_to("female_transaksis#new")
    end

    it "routes to #show" do
      expect(:get => "/female_transaksis/1").to route_to("female_transaksis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/female_transaksis/1/edit").to route_to("female_transaksis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/female_transaksis").to route_to("female_transaksis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/female_transaksis/1").to route_to("female_transaksis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/female_transaksis/1").to route_to("female_transaksis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/female_transaksis/1").to route_to("female_transaksis#destroy", :id => "1")
    end

  end
end
