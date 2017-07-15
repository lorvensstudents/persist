require 'test_helper'

class MoonControllerTest < ActionDispatch::IntegrationTest
  test "should get gotohell" do
    get moon_gotohell_url
    assert_response :success
  end

  test "should get die" do
    get moon_die_url
    assert_response :success
  end

end
