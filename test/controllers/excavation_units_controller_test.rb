require "test_helper"

class ExcavationUnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get excavation_units_index_url
    assert_response :success
  end

  test "should get show" do
    get excavation_units_show_url
    assert_response :success
  end

  test "should get new" do
    get excavation_units_new_url
    assert_response :success
  end

  test "should get create" do
    get excavation_units_create_url
    assert_response :success
  end

  test "should get edit" do
    get excavation_units_edit_url
    assert_response :success
  end

  test "should get update" do
    get excavation_units_update_url
    assert_response :success
  end

  test "should get destroy" do
    get excavation_units_destroy_url
    assert_response :success
  end
end
