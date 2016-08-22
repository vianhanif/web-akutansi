require 'rails_helper'

RSpec.describe "Jurnals", type: :request do
  describe "GET /jurnals" do
    it "works! (now write some real specs)" do
      get jurnals_path
      expect(response).to have_http_status(200)
    end
  end
end
