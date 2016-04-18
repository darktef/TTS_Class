require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
