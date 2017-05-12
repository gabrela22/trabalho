require 'test_helper'

class WaterbillsControllerTest < ActionController::TestCase
  setup do
    @waterbill = waterbills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waterbills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create waterbill" do
    assert_difference('Waterbill.count') do
      post :create, waterbill: { consumer: @waterbill.consumer, consumption: @waterbill.consumption, month: @waterbill.month, year: @waterbill.year }
    end

    assert_redirected_to waterbill_path(assigns(:waterbill))
  end

  test "should show waterbill" do
    get :show, id: @waterbill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @waterbill
    assert_response :success
  end

  test "should update waterbill" do
    patch :update, id: @waterbill, waterbill: { consumer: @waterbill.consumer, consumption: @waterbill.consumption, month: @waterbill.month, year: @waterbill.year }
    assert_redirected_to waterbill_path(assigns(:waterbill))
  end

  test "should destroy waterbill" do
    assert_difference('Waterbill.count', -1) do
      delete :destroy, id: @waterbill
    end

    assert_redirected_to waterbills_path
  end
end
