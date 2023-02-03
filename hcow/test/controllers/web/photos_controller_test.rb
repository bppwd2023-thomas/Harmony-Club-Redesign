require "test_helper"

class Web::PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get web_photos_index_url
    assert_response :success
  end

  test "should get show" do
    get web_photos_show_url
    assert_response :success
  end
end
