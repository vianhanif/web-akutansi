require 'rails_helper'

RSpec.describe "female_transaksis/show", type: :view do
  before(:each) do
    @female_transaksi = assign(:female_transaksi, FemaleTransaksi.create!(
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
