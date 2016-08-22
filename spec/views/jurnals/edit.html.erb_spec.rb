require 'rails_helper'

RSpec.describe "jurnals/edit", type: :view do
  before(:each) do
    @jurnal = assign(:jurnal, Jurnal.create!(
      :akun => nil,
      :deskripsi => "MyText",
      :saldo => 1
    ))
  end

  it "renders the edit jurnal form" do
    render

    assert_select "form[action=?][method=?]", jurnal_path(@jurnal), "post" do

      assert_select "input#jurnal_akun_id[name=?]", "jurnal[akun_id]"

      assert_select "textarea#jurnal_deskripsi[name=?]", "jurnal[deskripsi]"

      assert_select "input#jurnal_saldo[name=?]", "jurnal[saldo]"
    end
  end
end
