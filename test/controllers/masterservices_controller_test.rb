require 'test_helper'

class MasterservicesControllerTest < ActionController::TestCase
  setup do
    @masterservice = masterservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masterservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create masterservice" do
    assert_difference('Masterservice.count') do
      post :create, masterservice: { description: @masterservice.description, name: @masterservice.name }
    end

    assert_redirected_to masterservice_path(assigns(:masterservice))
  end

  test "should show masterservice" do
    get :show, id: @masterservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @masterservice
    assert_response :success
  end

  test "should update masterservice" do
    patch :update, id: @masterservice, masterservice: { description: @masterservice.description, name: @masterservice.name }
    assert_redirected_to masterservice_path(assigns(:masterservice))
  end

  test "should destroy masterservice" do
    assert_difference('Masterservice.count', -1) do
      delete :destroy, id: @masterservice
    end

    assert_redirected_to masterservices_path
  end
end
