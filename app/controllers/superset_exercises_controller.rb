class SupersetExercisesController < ApplicationController
  before_action :set_superset_exercise, only: [:show, :edit, :update, :destroy]

  # GET /superset_exercises
  # GET /superset_exercises.json
  def index
    @superset_exercises = SupersetExercise.all
  end

  # GET /superset_exercises/1
  # GET /superset_exercises/1.json
  def show
  end

  # GET /superset_exercises/new
  def new
    @superset_exercise = SupersetExercise.new
  end

  # GET /superset_exercises/1/edit
  def edit
  end

  # POST /superset_exercises
  # POST /superset_exercises.json
  def create
    @superset_exercise = SupersetExercise.new(superset_exercise_params)

    respond_to do |format|
      if @superset_exercise.save
        format.html { redirect_to @superset_exercise, notice: 'Superset exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @superset_exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @superset_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /superset_exercises/1
  # PATCH/PUT /superset_exercises/1.json
  def update
    respond_to do |format|
      if @superset_exercise.update(superset_exercise_params)
        format.html { redirect_to @superset_exercise, notice: 'Superset exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @superset_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /superset_exercises/1
  # DELETE /superset_exercises/1.json
  def destroy
    @superset_exercise.destroy
    respond_to do |format|
      format.html { redirect_to superset_exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superset_exercise
      @superset_exercise = SupersetExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def superset_exercise_params
      params.require(:superset_exercise).permit(:superset_id, :exercise_id, :order, :tempo, :reps, :time, :rest, :sets, :time_per_set)
    end
end
