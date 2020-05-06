require 'test_helper'

class TurnsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get turns_new_url
    assert_response :success
  end

  test "should get create" do
    get turns_create_url
    assert_response :success
  end

  test "should get show" do
    get turns_show_url
    assert_response :success
  end

end
