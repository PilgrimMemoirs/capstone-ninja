require 'test_helper'

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capstone = capstones(:one)
  end

  test "should get index" do
    get capstones_url
    assert_response :success
  end

  test "should get new" do
    get new_capstone_url
    assert_response :success
  end

  test "should create capstone" do
    assert_difference('Capstone.count') do
      post capstones_url, params: { capstone: { name: @capstone.name } }
    end

    assert_redirected_to capstone_url(Capstone.last)
  end

  test "should show capstone" do
    get capstone_url(@capstone)
    assert_response :success
  end

  test "should get edit" do
    get edit_capstone_url(@capstone)
    assert_response :success
  end

  test "should update capstone" do
    patch capstone_url(@capstone), params: { capstone: { name: @capstone.name } }
    assert_redirected_to capstone_url(@capstone)
  end

  test "should destroy capstone" do
    assert_difference('Capstone.count', -1) do
      delete capstone_url(@capstone)
    end

    assert_redirected_to capstones_url
  end
end
