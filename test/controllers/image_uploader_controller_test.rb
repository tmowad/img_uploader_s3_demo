require 'test_helper'

class ImageUploaderControllerTest < ActionController::TestCase
  test "should get upload" do
    get :upload
    assert_response :success
  end

end