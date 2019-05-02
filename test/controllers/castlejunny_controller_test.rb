require 'test_helper'

class CastlejunnyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castlejunny_index_url
    assert_response :success
  end

end
