require 'test_helper'

class MiscroportsControllerTest < ActionController::TestCase
  setup do
    @miscroport = miscroports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miscroports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miscroport" do
    assert_difference('Miscroport.count') do
      post :create, miscroport: @miscroport.attributes
    end

    assert_redirected_to miscroport_path(assigns(:miscroport))
  end

  test "should show miscroport" do
    get :show, id: @miscroport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miscroport
    assert_response :success
  end

  test "should update miscroport" do
    put :update, id: @miscroport, miscroport: @miscroport.attributes
    assert_redirected_to miscroport_path(assigns(:miscroport))
  end

  test "should destroy miscroport" do
    assert_difference('Miscroport.count', -1) do
      delete :destroy, id: @miscroport
    end

    assert_redirected_to miscroports_path
  end
end
