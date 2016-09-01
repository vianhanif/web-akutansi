require 'rails_helper'

RSpec.describe "koleksi_jurnals/show", type: :view do
  before(:each) do
    @koleksi_jurnal = assign(:koleksi_jurnal, KoleksiJurnal.create!(
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
