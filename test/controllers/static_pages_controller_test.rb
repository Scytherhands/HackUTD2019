require 'test_helper'

def setup
  @base_title = "Twelve TAMU"
end

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title",  "Twelve TAMU"
   end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title",  "Twelve TAMU"
  end

  test "should_get_contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title",  "Twelve TAMU"
  end

end
