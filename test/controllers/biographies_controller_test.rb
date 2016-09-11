require 'test_helper'

class BiographiesControllerTest < ActionController::TestCase
  setup do
    @biography = biographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:biographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create biography" do
    assert_difference('Biography.count') do
      post :create, biography: { ability: @biography.ability, address: @biography.address, city: @biography.city, geolocation: @biography.geolocation, image: @biography.image, user_id: @biography.user_id }
    end

    assert_redirected_to biography_path(assigns(:biography))
  end

  test "should show biography" do
    get :show, id: @biography
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @biography
    assert_response :success
  end

  test "should update biography" do
    patch :update, id: @biography, biography: { ability: @biography.ability, address: @biography.address, city: @biography.city, geolocation: @biography.geolocation, image: @biography.image, user_id: @biography.user_id }
    assert_redirected_to biography_path(assigns(:biography))
  end

  test "should destroy biography" do
    assert_difference('Biography.count', -1) do
      delete :destroy, id: @biography
    end

    assert_redirected_to biographies_path
  end
end
