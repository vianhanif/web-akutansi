require 'rails_helper'

RSpec.describe "akuns/new", type: :view do
  before(:each) do
    assign(:akun, Akun.new(
      :kode => "MyString",
      :nama => "MyString",
      :tipe_akun => nil,
      :user => nil
    ))
  end

  it "renders new akun form" do
    render

    assert_select "form[action=?][method=?]", akuns_path, "post" do

      assert_select "input#akun_kode[name=?]", "akun[kode]"

      assert_select "input#akun_nama[name=?]", "akun[nama]"

      assert_select "input#akun_tipe_akun_id[name=?]", "akun[tipe_akun_id]"

      assert_select "input#akun_user_id[name=?]", "akun[user_id]"
    end
  end
end
