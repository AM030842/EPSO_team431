require 'rails_helper'

RSpec.describe "meetings/edit", type: :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      title: "MyString",
      description: "MyString",
      points: 1
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input[name=?]", "meeting[title]"

      assert_select "input[name=?]", "meeting[description]"

      assert_select "input[name=?]", "meeting[points]"
    end
  end
end
