require 'test_helper'

class DynamicPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get id" do
    get dynamic_pages_id_url
    assert_response :success
  end

end
