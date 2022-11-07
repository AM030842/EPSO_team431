require 'rails_helper'

RSpec.describe "meetings/index", type: :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        title: "Title",
        description: "Description",
        points: 2
      ),
      Meeting.create!(
        title: "Title",
        description: "Description",
        points: 2
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
