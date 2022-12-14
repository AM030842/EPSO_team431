require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      name: "MyString",
      email: "MyString",
      points: 1,
      degree: "MyString",
      division: "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input[name=?]", "member[name]"

      assert_select "input[name=?]", "member[email]"

      assert_select "input[name=?]", "member[points]"

      assert_select "input[name=?]", "member[degree]"

      assert_select "input[name=?]", "member[division]"
    end
  end
end
