require 'rails_helper'

RSpec.describe "meetings/new", type: :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      title: "MyString",
      description: "MyString",
      points: 1
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input[name=?]", "meeting[title]"

      assert_select "input[name=?]", "meeting[description]"

      assert_select "input[name=?]", "meeting[points]"
    end
  end
end
