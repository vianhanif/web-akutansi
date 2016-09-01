require 'rails_helper'

RSpec.describe "MaleTransaksis", type: :request do
  describe "GET /male_transaksis" do
    it "works! (now write some real specs)" do
      get male_transaksis_path
      expect(response).to have_http_status(200)
    end
  end
end
