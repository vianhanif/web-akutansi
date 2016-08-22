require 'rails_helper'

RSpec.describe "jurnals/index", type: :view do
  before(:each) do
    assign(:jurnals, [
      Jurnal.create!(
        :akun => nil,
        :deskripsi => "MyText",
        :saldo => 2
      ),
      Jurnal.create!(
        :akun => nil,
        :deskripsi => "MyText",
        :saldo => 2
      )
    ])
  end

  it "renders a list of jurnals" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
