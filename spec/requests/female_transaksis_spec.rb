require 'rails_helper'

RSpec.describe "FemaleTransaksis", type: :request do
  describe "GET /female_transaksis" do
    it "works! (now write some real specs)" do
      get female_transaksis_path
      expect(response).to have_http_status(200)
    end
  end
end
