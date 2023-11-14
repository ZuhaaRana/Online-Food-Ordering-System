require "test_helper"

class AddItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get items" do
    get add_items_items_url
    assert_response :success
  end
end
