require 'rails_helper'

RSpec.describe "attendances/new", type: :view do
  before(:each) do
    assign(:attendance, Attendance.new(
      meeting_id: 1,
      member_id: 1
    ))
  end

  it "renders new attendance form" do
    render

    assert_select "form[action=?][method=?]", attendances_path, "post" do

      assert_select "input[name=?]", "attendance[meeting_id]"

      assert_select "input[name=?]", "attendance[member_id]"
    end
  end
end
