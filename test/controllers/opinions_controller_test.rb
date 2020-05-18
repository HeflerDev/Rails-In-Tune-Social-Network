require 'test_helper'

class OpinionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get opinions_new_url
    assert_response :success
  end
end
