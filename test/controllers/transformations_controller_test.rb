require 'test_helper'

class TransformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transformations_index_url
    assert_response :success
  end

  test "should get show" do
    get transformations_show_url
    assert_response :success
  end

  test "should get new" do
    get transformations_new_url
    assert_response :success
  end

  test "should get edit" do
    get transformations_edit_url
    assert_response :success
  end

end
