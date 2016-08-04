require 'test_helper'

class UniAsosControllerTest < ActionController::TestCase
  setup do
    @uni_aso = uni_asos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uni_asos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uni_aso" do
    assert_difference('UniAso.count') do
      post :create, uni_aso: { Campo: @uni_aso.Campo, Union: @uni_aso.Union }
    end

    assert_redirected_to uni_aso_path(assigns(:uni_aso))
  end

  test "should show uni_aso" do
    get :show, id: @uni_aso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uni_aso
    assert_response :success
  end

  test "should update uni_aso" do
    patch :update, id: @uni_aso, uni_aso: { Campo: @uni_aso.Campo, Union: @uni_aso.Union }
    assert_redirected_to uni_aso_path(assigns(:uni_aso))
  end

  test "should destroy uni_aso" do
    assert_difference('UniAso.count', -1) do
      delete :destroy, id: @uni_aso
    end

    assert_redirected_to uni_asos_path
  end
end
