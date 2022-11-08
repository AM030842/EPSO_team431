require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        name: "Name",
        email: "Email",
        points: 2,
        degree: "Degree",
        division: "Division"
      ),
      Member.create!(
        name: "Name",
        email: "Email",
        points: 2,
        degree: "Degree",
        division: "Division"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Degree".to_s, count: 2
    assert_select "tr>td", text: "Division".to_s, count: 2
  end
end
