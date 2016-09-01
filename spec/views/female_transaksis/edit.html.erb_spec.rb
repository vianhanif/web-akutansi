require 'rails_helper'

RSpec.describe "female_transaksis/edit", type: :view do
  before(:each) do
    @female_transaksi = assign(:female_transaksi, FemaleTransaksi.create!(
      :akun => nil,
      :deskripsi => "MyText",
      :nominal => "9.99",
      :tipe_relasi => nil,
      :jurnal => nil
    ))
  end

  it "renders the edit female_transaksi form" do
    render

    assert_select "form[action=?][method=?]", female_transaksi_path(@female_transaksi), "post" do

      assert_select "input#female_transaksi_akun_id[name=?]", "female_transaksi[akun_id]"

      assert_select "textarea#female_transaksi_deskripsi[name=?]", "female_transaksi[deskripsi]"

      assert_select "input#female_transaksi_nominal[name=?]", "female_transaksi[nominal]"

      assert_select "input#female_transaksi_tipe_relasi_id[name=?]", "female_transaksi[tipe_relasi_id]"

      assert_select "input#female_transaksi_jurnal_id[name=?]", "female_transaksi[jurnal_id]"
    end
  end
end
