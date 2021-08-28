require "test_helper"

class TodayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get today_index_url
    assert_response :success
  end
end
