require 'rails_helper'

RSpec.describe "koleksi_jurnals/edit", type: :view do
  before(:each) do
    @koleksi_jurnal = assign(:koleksi_jurnal, KoleksiJurnal.create!(
      :user => nil
    ))
  end

  it "renders the edit koleksi_jurnal form" do
    render

    assert_select "form[action=?][method=?]", koleksi_jurnal_path(@koleksi_jurnal), "post" do

      assert_select "input#koleksi_jurnal_user_id[name=?]", "koleksi_jurnal[user_id]"
    end
  end
end
