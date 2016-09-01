require 'rails_helper'

RSpec.describe "Akuns", type: :request do
  describe "GET /akuns" do
    it "works! (now write some real specs)" do
      get akuns_path
      expect(response).to have_http_status(200)
    end
  end
end
