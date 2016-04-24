require 'test_helper'

class ProviderservicesControllerTest < ActionController::TestCase
  setup do
    @providerservice = providerservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:providerservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create providerservice" do
    assert_difference('Providerservice.count') do
      post :create, providerservice: { description: @providerservice.description, name: @providerservice.name, providerprofile_id: @providerservice.providerprofile_id }
    end

    assert_redirected_to providerservice_path(assigns(:providerservice))
  end

  test "should show providerservice" do
    get :show, id: @providerservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @providerservice
    assert_response :success
  end

  test "should update providerservice" do
    patch :update, id: @providerservice, providerservice: { description: @providerservice.description, name: @providerservice.name, providerprofile_id: @providerservice.providerprofile_id }
    assert_redirected_to providerservice_path(assigns(:providerservice))
  end

  test "should destroy providerservice" do
    assert_difference('Providerservice.count', -1) do
      delete :destroy, id: @providerservice
    end

    assert_redirected_to providerservices_path
  end
end
