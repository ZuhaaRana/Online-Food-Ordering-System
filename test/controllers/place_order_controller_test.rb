require "test_helper"

class PlaceOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get order" do
    get place_order_order_url
    assert_response :success
  end
end
