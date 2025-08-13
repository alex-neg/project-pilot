require "test_helper"

class SmallFindsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get small_finds_index_url
    assert_response :success
  end

  test "should get show" do
    get small_finds_show_url
    assert_response :success
  end

  test "should get new" do
    get small_finds_new_url
    assert_response :success
  end

  test "should get edit" do
    get small_finds_edit_url
    assert_response :success
  end

  test "should get create" do
    get small_finds_create_url
    assert_response :success
  end

  test "should get update" do
    get small_finds_update_url
    assert_response :success
  end

  test "should get destroy" do
    get small_finds_destroy_url
    assert_response :success
  end
end
