require "test_helper"

class AaasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aaas_new_url
    assert_response :success
  end

  test "should get index" do
    get aaas_index_url
    assert_response :success
  end

  test "should get show" do
    get aaas_show_url
    assert_response :success
  end

  test "should get edit" do
    get aaas_edit_url
    assert_response :success
  end
end
