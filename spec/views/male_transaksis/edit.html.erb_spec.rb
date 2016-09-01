require 'rails_helper'

RSpec.describe "male_transaksis/edit", type: :view do
  before(:each) do
    @male_transaksi = assign(:male_transaksi, MaleTransaksi.create!(
      :akun => nil,
      :deskripsi => "MyText",
      :nominal => "9.99",
      :tipe_relasi => nil,
      :jurnal => nil
    ))
  end

  it "renders the edit male_transaksi form" do
    render

    assert_select "form[action=?][method=?]", male_transaksi_path(@male_transaksi), "post" do

      assert_select "input#male_transaksi_akun_id[name=?]", "male_transaksi[akun_id]"

      assert_select "textarea#male_transaksi_deskripsi[name=?]", "male_transaksi[deskripsi]"

      assert_select "input#male_transaksi_nominal[name=?]", "male_transaksi[nominal]"

      assert_select "input#male_transaksi_tipe_relasi_id[name=?]", "male_transaksi[tipe_relasi_id]"

      assert_select "input#male_transaksi_jurnal_id[name=?]", "male_transaksi[jurnal_id]"
    end
  end
end
