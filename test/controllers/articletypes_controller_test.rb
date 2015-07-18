require 'test_helper'

class ArticletypesControllerTest < ActionController::TestCase
  setup do
    @articletype = articletypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articletypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articletype" do
    assert_difference('Articletype.count') do
      post :create, articletype: { name: @articletype.name }
    end

    assert_redirected_to articletype_path(assigns(:articletype))
  end

  test "should show articletype" do
    get :show, id: @articletype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articletype
    assert_response :success
  end

  test "should update articletype" do
    patch :update, id: @articletype, articletype: { name: @articletype.name }
    assert_redirected_to articletype_path(assigns(:articletype))
  end

  test "should destroy articletype" do
    assert_difference('Articletype.count', -1) do
      delete :destroy, id: @articletype
    end

    assert_redirected_to articletypes_path
  end
end
