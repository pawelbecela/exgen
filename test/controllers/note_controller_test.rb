require "test_helper"

class NoteControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get note_new_url
    assert_response :success
  end

  test "should get create" do
    get note_create_url
    assert_response :success
  end

  test "should get show" do
    get note_show_url
    assert_response :success
  end
end
