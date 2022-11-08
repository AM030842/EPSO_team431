require 'rails_helper'

RSpec.describe "alums/new", type: :view do
  before(:each) do
    assign(:alum, Alum.new(
      name: "MyString",
      email: "MyString",
      degree: "MyString",
      divsion: "MyString"
    ))
  end

  it "renders new alum form" do
    render

    assert_select "form[action=?][method=?]", alums_path, "post" do

      assert_select "input[name=?]", "alum[name]"

      assert_select "input[name=?]", "alum[email]"

      assert_select "input[name=?]", "alum[degree]"

      assert_select "input[name=?]", "alum[divsion]"
    end
  end
end
