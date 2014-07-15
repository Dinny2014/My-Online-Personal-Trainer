require 'test_helper'

class SupersetsControllerTest < ActionController::TestCase
  setup do
    @superset = supersets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supersets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create superset" do
    assert_difference('Superset.count') do
      post :create, superset: { description: @superset.description, name: @superset.name, sets: @superset.sets }
    end

    assert_redirected_to superset_path(assigns(:superset))
  end

  test "should show superset" do
    get :show, id: @superset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @superset
    assert_response :success
  end

  test "should update superset" do
    patch :update, id: @superset, superset: { description: @superset.description, name: @superset.name, sets: @superset.sets }
    assert_redirected_to superset_path(assigns(:superset))
  end

  test "should destroy superset" do
    assert_difference('Superset.count', -1) do
      delete :destroy, id: @superset
    end

    assert_redirected_to supersets_path
  end
end
