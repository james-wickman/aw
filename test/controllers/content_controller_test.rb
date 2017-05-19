require 'test_helper'

class ContentControllerTest < ActionDispatch::IntegrationTest
  test "should get works" do
    get content_works_url
    assert_response :success
  end

  test "should get featured_works" do
    get content_featured_works_url
    assert_response :success
  end

  test "should get contact_us" do
    get content_contact_us_url
    assert_response :success
  end

end
