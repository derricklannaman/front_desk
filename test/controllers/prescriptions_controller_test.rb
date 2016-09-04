require 'test_helper'

class PrescriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prescriptions_show_url
    assert_response :success
  end

end
