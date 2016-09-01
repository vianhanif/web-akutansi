require 'rails_helper'

RSpec.describe "male_transaksis/show", type: :view do
  before(:each) do
    @male_transaksi = assign(:male_transaksi, MaleTransaksi.create!(
      :akun => nil,
      :deskripsi => "MyText",
      :nominal => "9.99",
      :tipe_relasi => nil,
      :jurnal => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
