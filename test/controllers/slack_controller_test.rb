require "test_helper"

class SlackControllerTest < ActionDispatch::IntegrationTest
  test "should post create" do
    post slack_create_url
    assert_response :success
  end
end
