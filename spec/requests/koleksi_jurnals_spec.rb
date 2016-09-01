require 'rails_helper'

RSpec.describe "KoleksiJurnals", type: :request do
  describe "GET /koleksi_jurnals" do
    it "works! (now write some real specs)" do
      get koleksi_jurnals_path
      expect(response).to have_http_status(200)
    end
  end
end
