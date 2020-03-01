require 'test_helper'

class TestmousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testmouse = testmouses(:one)
  end

  test "should get index" do
    get testmouses_url
    assert_response :success
  end

  test "should get new" do
    get new_testmouse_url
    assert_response :success
  end

  test "should create testmouse" do
    assert_difference('Testmouse.count') do
      post testmouses_url, params: { testmouse: {  } }
    end

    assert_redirected_to testmouse_url(Testmouse.last)
  end

  test "should show testmouse" do
    get testmouse_url(@testmouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_testmouse_url(@testmouse)
    assert_response :success
  end

  test "should update testmouse" do
    patch testmouse_url(@testmouse), params: { testmouse: {  } }
    assert_redirected_to testmouse_url(@testmouse)
  end

  test "should destroy testmouse" do
    assert_difference('Testmouse.count', -1) do
      delete testmouse_url(@testmouse)
    end

    assert_redirected_to testmouses_url
  end
end
