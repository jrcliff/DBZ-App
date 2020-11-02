require 'test_helper'

class CharactertransformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get charactertransformations_index_url
    assert_response :success
  end

  test "should get show" do
    get charactertransformations_show_url
    assert_response :success
  end

  test "should get new" do
    get charactertransformations_new_url
    assert_response :success
  end

  test "should get edit" do
    get charactertransformations_edit_url
    assert_response :success
  end

end
