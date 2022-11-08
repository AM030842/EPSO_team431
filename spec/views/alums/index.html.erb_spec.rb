require 'rails_helper'

RSpec.describe "alums/index", type: :view do
  before(:each) do
    assign(:alums, [
      Alum.create!(
        name: "Name",
        email: "Email",
        degree: "Degree",
        divsion: "Divsion"
      ),
      Alum.create!(
        name: "Name",
        email: "Email",
        degree: "Degree",
        divsion: "Divsion"
      )
    ])
  end

  it "renders a list of alums" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Degree".to_s, count: 2
    assert_select "tr>td", text: "Divsion".to_s, count: 2
  end
end
