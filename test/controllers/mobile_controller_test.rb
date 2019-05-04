require 'test_helper'

class MobileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mobile_index_url
    assert_response :success
  end

end
