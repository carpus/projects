require 'test_helper'

class BoradsControllerTest < ActionController::TestCase
  setup do
    @borad = borads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:borads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create borad" do
    assert_difference('Borad.count') do
      post :create, :borad => { :name => @borad.name }
    end

    assert_redirected_to borad_path(assigns(:borad))
  end

  test "should show borad" do
    get :show, :id => @borad
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @borad
    assert_response :success
  end

  test "should update borad" do
    put :update, :id => @borad, :borad => { :name => @borad.name }
    assert_redirected_to borad_path(assigns(:borad))
  end

  test "should destroy borad" do
    assert_difference('Borad.count', -1) do
      delete :destroy, :id => @borad
    end

    assert_redirected_to borads_path
  end
end
