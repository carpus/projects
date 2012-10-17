require 'test_helper'

class Boards1ControllerTest < ActionController::TestCase
  test "should get $" do
    get :$
    assert_response :success
  end

  test "should get rails" do
    get :rails
    assert_response :success
  end

  test "should get g" do
    get :g
    assert_response :success
  end

  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get posts1" do
    get :posts1
    assert_response :success
  end

end
