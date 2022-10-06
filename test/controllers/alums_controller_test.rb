require "test_helper"

class AlumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alum = alums(:one)
  end

  test "should get index" do
    get alums_url
    assert_response :success
  end

  test "should get new" do
    get new_alum_url
    assert_response :success
  end

  test "should create alum" do
    assert_difference('Alum.count') do
      post alums_url, params: { alum: { Mem_Dept: @alum.Mem_Dept, Mem_Points: @alum.Mem_Points, Mem_email: @alum.Mem_email, Mem_id: @alum.Mem_id, Mem_isActive: @alum.Mem_isActive, Mem_name: @alum.Mem_name } }
    end

    assert_redirected_to alum_url(Alum.last)
  end

  test "should show alum" do
    get alum_url(@alum)
    assert_response :success
  end

  test "should get edit" do
    get edit_alum_url(@alum)
    assert_response :success
  end

  test "should update alum" do
    patch alum_url(@alum), params: { alum: { Mem_Dept: @alum.Mem_Dept, Mem_Points: @alum.Mem_Points, Mem_email: @alum.Mem_email, Mem_id: @alum.Mem_id, Mem_isActive: @alum.Mem_isActive, Mem_name: @alum.Mem_name } }
    assert_redirected_to alum_url(@alum)
  end

  test "should destroy alum" do
    assert_difference('Alum.count', -1) do
      delete alum_url(@alum)
    end

    assert_redirected_to alums_url
  end
end
