require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "creating a Member" do
    visit members_url
    click_on "New Member"

    fill_in "Mem points", with: @member.Mem_Points
    fill_in "Mem email", with: @member.Mem_email
    fill_in "Mem", with: @member.Mem_id
    check "Mem isactive" if @member.Mem_isActive
    fill_in "Mem name", with: @member.Mem_name
    fill_in "Mem password", with: @member.Mem_password
    fill_in "Mem dept", with: @member.mem_Dept
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit members_url
    click_on "Edit", match: :first

    fill_in "Mem points", with: @member.Mem_Points
    fill_in "Mem email", with: @member.Mem_email
    fill_in "Mem", with: @member.Mem_id
    check "Mem isactive" if @member.Mem_isActive
    fill_in "Mem name", with: @member.Mem_name
    fill_in "Mem password", with: @member.Mem_password
    fill_in "Mem dept", with: @member.mem_Dept
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
