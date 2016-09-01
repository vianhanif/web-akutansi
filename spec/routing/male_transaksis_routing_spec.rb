require "rails_helper"

RSpec.describe MaleTransaksisController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/male_transaksis").to route_to("male_transaksis#index")
    end

    it "routes to #new" do
      expect(:get => "/male_transaksis/new").to route_to("male_transaksis#new")
    end

    it "routes to #show" do
      expect(:get => "/male_transaksis/1").to route_to("male_transaksis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/male_transaksis/1/edit").to route_to("male_transaksis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/male_transaksis").to route_to("male_transaksis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/male_transaksis/1").to route_to("male_transaksis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/male_transaksis/1").to route_to("male_transaksis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/male_transaksis/1").to route_to("male_transaksis#destroy", :id => "1")
    end

  end
end
