require 'rails_helper'

RSpec.describe "male_transaksis/index", type: :view do
  before(:each) do
    assign(:male_transaksis, [
      MaleTransaksi.create!(
        :akun => nil,
        :deskripsi => "MyText",
        :nominal => "9.99",
        :tipe_relasi => nil,
        :jurnal => nil
      ),
      MaleTransaksi.create!(
        :akun => nil,
        :deskripsi => "MyText",
        :nominal => "9.99",
        :tipe_relasi => nil,
        :jurnal => nil
      )
    ])
  end

  it "renders a list of male_transaksis" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
