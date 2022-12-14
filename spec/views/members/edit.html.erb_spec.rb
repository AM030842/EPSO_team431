require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      name: "MyString",
      email: "MyString",
      points: 1,
      degree: "MyString",
      division: "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input[name=?]", "member[name]"

      assert_select "input[name=?]", "member[email]"

      assert_select "input[name=?]", "member[points]"

      assert_select "input[name=?]", "member[degree]"

      assert_select "input[name=?]", "member[division]"
    end
  end
end
