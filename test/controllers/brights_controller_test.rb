require 'test_helper'

class BrightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bright = brights(:one)
  end

  test "should get index" do
    get brights_url
    assert_response :success
  end

  test "should get new" do
    get new_bright_url
    assert_response :success
  end

  test "should create bright" do
    assert_difference('Bright.count') do
      post brights_url, params: { bright: { address: @bright.address, age: @bright.age, name: @bright.name, phone: @bright.phone } }
    end

    assert_redirected_to bright_url(Bright.last)
  end

  test "should show bright" do
    get bright_url(@bright)
    assert_response :success
  end

  test "should get edit" do
    get edit_bright_url(@bright)
    assert_response :success
  end

  test "should update bright" do
    patch bright_url(@bright), params: { bright: { address: @bright.address, age: @bright.age, name: @bright.name, phone: @bright.phone } }
    assert_redirected_to bright_url(@bright)
  end

  test "should destroy bright" do
    assert_difference('Bright.count', -1) do
      delete bright_url(@bright)
    end

    assert_redirected_to brights_url
  end
end
