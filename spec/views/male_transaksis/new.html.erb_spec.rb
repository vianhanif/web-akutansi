require 'rails_helper'

RSpec.describe "male_transaksis/new", type: :view do
  before(:each) do
    assign(:male_transaksi, MaleTransaksi.new(
      :akun => nil,
      :deskripsi => "MyText",
      :nominal => "9.99",
      :tipe_relasi => nil,
      :jurnal => nil
    ))
  end

  it "renders new male_transaksi form" do
    render

    assert_select "form[action=?][method=?]", male_transaksis_path, "post" do

      assert_select "input#male_transaksi_akun_id[name=?]", "male_transaksi[akun_id]"

      assert_select "textarea#male_transaksi_deskripsi[name=?]", "male_transaksi[deskripsi]"

      assert_select "input#male_transaksi_nominal[name=?]", "male_transaksi[nominal]"

      assert_select "input#male_transaksi_tipe_relasi_id[name=?]", "male_transaksi[tipe_relasi_id]"

      assert_select "input#male_transaksi_jurnal_id[name=?]", "male_transaksi[jurnal_id]"
    end
  end
end
