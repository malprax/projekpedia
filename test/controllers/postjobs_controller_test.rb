require 'test_helper'

class PostjobsControllerTest < ActionController::TestCase
  setup do
    @postjob = postjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postjob" do
    assert_difference('Postjob.count') do
      post :create, postjob: { client_id: @postjob.client_id, content: @postjob.content, price: @postjob.price, timestamp: @postjob.timestamp, title: @postjob.title }
    end

    assert_redirected_to postjob_path(assigns(:postjob))
  end

  test "should show postjob" do
    get :show, id: @postjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postjob
    assert_response :success
  end

  test "should update postjob" do
    patch :update, id: @postjob, postjob: { client_id: @postjob.client_id, content: @postjob.content, price: @postjob.price, timestamp: @postjob.timestamp, title: @postjob.title }
    assert_redirected_to postjob_path(assigns(:postjob))
  end

  test "should destroy postjob" do
    assert_difference('Postjob.count', -1) do
      delete :destroy, id: @postjob
    end

    assert_redirected_to postjobs_path
  end
end
