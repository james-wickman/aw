require 'test_helper'

class SoundcloudControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get soundcloud_new_url
    assert_response :success
  end

  test "should get create" do
    get soundcloud_create_url
    assert_response :success
  end

  test "should get edit" do
    get soundcloud_edit_url
    assert_response :success
  end

  test "should get update" do
    get soundcloud_update_url
    assert_response :success
  end

  test "should get destroy" do
    get soundcloud_destroy_url
    assert_response :success
  end

end
