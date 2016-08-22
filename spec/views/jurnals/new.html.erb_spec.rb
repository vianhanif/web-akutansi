require 'rails_helper'

RSpec.describe "jurnals/new", type: :view do
  before(:each) do
    assign(:jurnal, Jurnal.new(
      :akun => nil,
      :deskripsi => "MyText",
      :saldo => 1
    ))
  end

  it "renders new jurnal form" do
    render

    assert_select "form[action=?][method=?]", jurnals_path, "post" do

      assert_select "input#jurnal_akun_id[name=?]", "jurnal[akun_id]"

      assert_select "textarea#jurnal_deskripsi[name=?]", "jurnal[deskripsi]"

      assert_select "input#jurnal_saldo[name=?]", "jurnal[saldo]"
    end
  end
end
