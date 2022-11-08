require 'rails_helper'

RSpec.describe "alums/edit", type: :view do
  before(:each) do
    @alum = assign(:alum, Alum.create!(
      name: "MyString",
      email: "MyString",
      degree: "MyString",
      divsion: "MyString"
    ))
  end

  it "renders the edit alum form" do
    render

    assert_select "form[action=?][method=?]", alum_path(@alum), "post" do

      assert_select "input[name=?]", "alum[name]"

      assert_select "input[name=?]", "alum[email]"

      assert_select "input[name=?]", "alum[degree]"

      assert_select "input[name=?]", "alum[divsion]"
    end
  end
end
