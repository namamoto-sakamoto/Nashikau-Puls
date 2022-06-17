require "test_helper"

class Admin::JpearFarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_jpear_farmers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_jpear_farmers_show_url
    assert_response :success
  end
end
