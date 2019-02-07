require 'test_helper'

def setup
  @base_title = "Twelve TAMU"
end

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title",  "Twelve TAMU"
   end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title",  "Twelve TAMU"
  end

  test "should_get_contact" do
    get contact_path
    assert_response :success
    assert_select "title",  "Twelve TAMU"
  end

end
