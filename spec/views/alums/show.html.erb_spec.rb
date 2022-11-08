require 'rails_helper'

RSpec.describe "alums/show", type: :view do
  before(:each) do
    @alum = assign(:alum, Alum.create!(
      name: "Name",
      email: "Email",
      degree: "Degree",
      divsion: "Divsion"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Degree/)
    expect(rendered).to match(/Divsion/)
  end
end
