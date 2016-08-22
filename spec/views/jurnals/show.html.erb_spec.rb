require 'rails_helper'

RSpec.describe "jurnals/show", type: :view do
  before(:each) do
    @jurnal = assign(:jurnal, Jurnal.create!(
      :akun => nil,
      :deskripsi => "MyText",
      :saldo => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
