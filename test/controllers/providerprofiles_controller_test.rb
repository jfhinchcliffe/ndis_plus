require 'test_helper'

class ProviderprofilesControllerTest < ActionController::TestCase
  setup do
    @providerprofile = providerprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:providerprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create providerprofile" do
    assert_difference('Providerprofile.count') do
      post :create, providerprofile: { address: @providerprofile.address, description: @providerprofile.description, email: @providerprofile.email, name: @providerprofile.name, phone: @providerprofile.phone, provider_id: @providerprofile.provider_id }
    end

    assert_redirected_to providerprofile_path(assigns(:providerprofile))
  end

  test "should show providerprofile" do
    get :show, id: @providerprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @providerprofile
    assert_response :success
  end

  test "should update providerprofile" do
    patch :update, id: @providerprofile, providerprofile: { address: @providerprofile.address, description: @providerprofile.description, email: @providerprofile.email, name: @providerprofile.name, phone: @providerprofile.phone, provider_id: @providerprofile.provider_id }
    assert_redirected_to providerprofile_path(assigns(:providerprofile))
  end

  test "should destroy providerprofile" do
    assert_difference('Providerprofile.count', -1) do
      delete :destroy, id: @providerprofile
    end

    assert_redirected_to providerprofiles_path
  end
end
