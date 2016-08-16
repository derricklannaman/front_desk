require 'test_helper'

class PatientProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get patient_profiles_show_url
    assert_response :success
  end

end
