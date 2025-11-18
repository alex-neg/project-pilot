require "test_helper"

class ContextsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contexts_index_url
    assert_response :success
  end

  test "should get show" do
    get contexts_show_url
    assert_response :success
  end

  test "should get new" do
    get contexts_new_url
    assert_response :success
  end

  test "should get create" do
    get contexts_create_url
    assert_response :success
  end

  test "should get edit" do
    get contexts_edit_url
    assert_response :success
  end

  test "should get update" do
    get contexts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contexts_destroy_url
    assert_response :success
  end
end
