require 'rails_helper'

RSpec.describe "koleksi_jurnals/new", type: :view do
  before(:each) do
    assign(:koleksi_jurnal, KoleksiJurnal.new(
      :user => nil
    ))
  end

  it "renders new koleksi_jurnal form" do
    render

    assert_select "form[action=?][method=?]", koleksi_jurnals_path, "post" do

      assert_select "input#koleksi_jurnal_user_id[name=?]", "koleksi_jurnal[user_id]"
    end
  end
end
