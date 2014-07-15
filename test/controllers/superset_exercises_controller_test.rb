require 'test_helper'

class SupersetExercisesControllerTest < ActionController::TestCase
  setup do
    @superset_exercise = superset_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:superset_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create superset_exercise" do
    assert_difference('SupersetExercise.count') do
      post :create, superset_exercise: { exercise_id: @superset_exercise.exercise_id, order: @superset_exercise.order, reps: @superset_exercise.reps, rest: @superset_exercise.rest, sets: @superset_exercise.sets, superset_id: @superset_exercise.superset_id, tempo: @superset_exercise.tempo, time: @superset_exercise.time, time_per_set: @superset_exercise.time_per_set }
    end

    assert_redirected_to superset_exercise_path(assigns(:superset_exercise))
  end

  test "should show superset_exercise" do
    get :show, id: @superset_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @superset_exercise
    assert_response :success
  end

  test "should update superset_exercise" do
    patch :update, id: @superset_exercise, superset_exercise: { exercise_id: @superset_exercise.exercise_id, order: @superset_exercise.order, reps: @superset_exercise.reps, rest: @superset_exercise.rest, sets: @superset_exercise.sets, superset_id: @superset_exercise.superset_id, tempo: @superset_exercise.tempo, time: @superset_exercise.time, time_per_set: @superset_exercise.time_per_set }
    assert_redirected_to superset_exercise_path(assigns(:superset_exercise))
  end

  test "should destroy superset_exercise" do
    assert_difference('SupersetExercise.count', -1) do
      delete :destroy, id: @superset_exercise
    end

    assert_redirected_to superset_exercises_path
  end
end
