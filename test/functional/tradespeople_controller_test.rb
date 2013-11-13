require 'test_helper'

class TradespeopleControllerTest < ActionController::TestCase
  setup do
    @tradesperson = tradespeople(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tradespeople)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tradesperson" do
    assert_difference('Tradesperson.count') do
      post :create, tradesperson: @tradesperson.attributes
    end

    assert_redirected_to tradesperson_path(assigns(:tradesperson))
  end

  test "should show tradesperson" do
    get :show, id: @tradesperson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tradesperson
    assert_response :success
  end

  test "should update tradesperson" do
    put :update, id: @tradesperson, tradesperson: @tradesperson.attributes
    assert_redirected_to tradesperson_path(assigns(:tradesperson))
  end

  test "should destroy tradesperson" do
    assert_difference('Tradesperson.count', -1) do
      delete :destroy, id: @tradesperson
    end

    assert_redirected_to tradespeople_path
  end
end
