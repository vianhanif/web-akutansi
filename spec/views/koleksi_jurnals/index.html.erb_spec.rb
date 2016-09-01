require 'rails_helper'

RSpec.describe "koleksi_jurnals/index", type: :view do
  before(:each) do
    assign(:koleksi_jurnals, [
      KoleksiJurnal.create!(
        :user => nil
      ),
      KoleksiJurnal.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of koleksi_jurnals" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
