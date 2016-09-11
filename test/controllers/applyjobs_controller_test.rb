require 'test_helper'

class ApplyjobsControllerTest < ActionController::TestCase
  setup do
    @applyjob = applyjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applyjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applyjob" do
    assert_difference('Applyjob.count') do
      post :create, applyjob: { applyletter: @applyjob.applyletter, estimate: @applyjob.estimate, fee: @applyjob.fee, freelance_id: @applyjob.freelance_id, price: @applyjob.price }
    end

    assert_redirected_to applyjob_path(assigns(:applyjob))
  end

  test "should show applyjob" do
    get :show, id: @applyjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applyjob
    assert_response :success
  end

  test "should update applyjob" do
    patch :update, id: @applyjob, applyjob: { applyletter: @applyjob.applyletter, estimate: @applyjob.estimate, fee: @applyjob.fee, freelance_id: @applyjob.freelance_id, price: @applyjob.price }
    assert_redirected_to applyjob_path(assigns(:applyjob))
  end

  test "should destroy applyjob" do
    assert_difference('Applyjob.count', -1) do
      delete :destroy, id: @applyjob
    end

    assert_redirected_to applyjobs_path
  end
end
