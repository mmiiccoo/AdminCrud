require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index3" do
    get home_index3_url
    assert_response :success
  end
end
