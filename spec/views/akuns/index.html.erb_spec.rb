require 'rails_helper'

RSpec.describe "akuns/index", type: :view do
  before(:each) do
    assign(:akuns, [
      Akun.create!(
        :kode => "Kode",
        :nama => "Nama",
        :tipe_akun => nil,
        :user => nil
      ),
      Akun.create!(
        :kode => "Kode",
        :nama => "Nama",
        :tipe_akun => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of akuns" do
    render
    assert_select "tr>td", :text => "Kode".to_s, :count => 2
    assert_select "tr>td", :text => "Nama".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
