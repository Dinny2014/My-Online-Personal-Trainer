require 'test_helper'

class ProgrammeExercisesControllerTest < ActionController::TestCase
  setup do
    @programme_exercise = programme_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programme_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programme_exercise" do
    assert_difference('ProgrammeExercise.count') do
      post :create, programme_exercise: { exercise_id: @programme_exercise.exercise_id, exercise_id: @programme_exercise.exercise_id, order: @programme_exercise.order, programme_id: @programme_exercise.programme_id, rest: @programme_exercise.rest, sets: @programme_exercise.sets, time: @programme_exercise.time, time_per_set: @programme_exercise.time_per_set }
    end

    assert_redirected_to programme_exercise_path(assigns(:programme_exercise))
  end

  test "should show programme_exercise" do
    get :show, id: @programme_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programme_exercise
    assert_response :success
  end

  test "should update programme_exercise" do
    patch :update, id: @programme_exercise, programme_exercise: { exercise_id: @programme_exercise.exercise_id, exercise_id: @programme_exercise.exercise_id, order: @programme_exercise.order, programme_id: @programme_exercise.programme_id, rest: @programme_exercise.rest, sets: @programme_exercise.sets, time: @programme_exercise.time, time_per_set: @programme_exercise.time_per_set }
    assert_redirected_to programme_exercise_path(assigns(:programme_exercise))
  end

  test "should destroy programme_exercise" do
    assert_difference('ProgrammeExercise.count', -1) do
      delete :destroy, id: @programme_exercise
    end

    assert_redirected_to programme_exercises_path
  end
end
