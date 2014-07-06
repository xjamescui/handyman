require 'test_helper'

class CustomerControllerTest < ActionController::TestCase
  test "should get transactions" do
    get :transactions
    assert_response :success
  end

end
