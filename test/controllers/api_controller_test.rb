require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get api_init" do
    get api_api_init_url
    assert_response :success
  end

  test "should get api_message" do
    get api_api_message_url
    assert_response :success
  end

end
