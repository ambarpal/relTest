require 'test_helper'

class BsControllerTest < ActionController::TestCase
  setup do
    @b = bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b" do
    assert_difference('B.count') do
      post :create, b: { surname: @b.surname }
    end

    assert_redirected_to b_path(assigns(:b))
  end

  test "should show b" do
    get :show, id: @b
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b
    assert_response :success
  end

  test "should update b" do
    patch :update, id: @b, b: { surname: @b.surname }
    assert_redirected_to b_path(assigns(:b))
  end

  test "should destroy b" do
    assert_difference('B.count', -1) do
      delete :destroy, id: @b
    end

    assert_redirected_to bs_path
  end
end
