require 'test_helper'

class AppliancesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get appliances_show_url
    assert_response :success
  end

end
