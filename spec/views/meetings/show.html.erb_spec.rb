require 'rails_helper'

RSpec.describe "meetings/show", type: :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      title: "Title",
      description: "Description",
      points: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
