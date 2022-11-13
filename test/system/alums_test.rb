require "application_system_test_case"

class AlumsTest < ApplicationSystemTestCase
  setup do
    @alum = alums(:one)
  end

  test "visiting the index" do
    visit alums_url
    assert_selector "h1", text: "Alums"
  end

  test "creating a Alum" do
    visit alums_url
    click_on "New Alum"

    fill_in "Mem dept", with: @alum.Mem_Dept
    fill_in "Mem points", with: @alum.Mem_Points
    fill_in "Mem email", with: @alum.Mem_email
    fill_in "Mem", with: @alum.Mem_id
    check "Mem isactive" if @alum.Mem_isActive
    fill_in "Mem name", with: @alum.Mem_name
    click_on "Create Alum"

    assert_text "Alum was successfully created"
    click_on "Back"
  end

  test "updating a Alum" do
    visit alums_url
    click_on "Edit", match: :first

    fill_in "Mem dept", with: @alum.Mem_Dept
    fill_in "Mem points", with: @alum.Mem_Points
    fill_in "Mem email", with: @alum.Mem_email
    fill_in "Mem", with: @alum.Mem_id
    check "Mem isactive" if @alum.Mem_isActive
    fill_in "Mem name", with: @alum.Mem_name
    click_on "Update Alum"

    assert_text "Alum was successfully updated"
    click_on "Back"
  end

  test "destroying a Alum" do
    visit alums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alum was successfully deleted"
  end
end
