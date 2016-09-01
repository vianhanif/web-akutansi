require 'rails_helper'

RSpec.describe "akuns/show", type: :view do
  before(:each) do
    @akun = assign(:akun, Akun.create!(
      :kode => "Kode",
      :nama => "Nama",
      :tipe_akun => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Kode/)
    expect(rendered).to match(/Nama/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
