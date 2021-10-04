require "test_helper"

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_index_url
    assert_response :success
  end

  test "should get edit" do
    get subjects_edit_url
    assert_response :success
  end

  test "should get new" do
    get subjects_new_url
    assert_response :success
  end
end
