class ProgrammeExercisesController < ApplicationController
  before_action :set_programme_exercise, only: [:show, :edit, :update, :destroy]

  # GET /programme_exercises
  # GET /programme_exercises.json
  def index
    @programme_exercises = ProgrammeExercise.all
  end

  # GET /programme_exercises/1
  # GET /programme_exercises/1.json
  def show
  end

  # GET /programme_exercises/new
  def new
    @programme_exercise = ProgrammeExercise.new
  end

  # GET /programme_exercises/1/edit
  def edit
  end

  # POST /programme_exercises
  # POST /programme_exercises.json
  def create
    @programme_exercise = ProgrammeExercise.new(programme_exercise_params)

    respond_to do |format|
      if @programme_exercise.save
        format.html { redirect_to @programme_exercise, notice: 'Programme exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programme_exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programme_exercises/1
  # PATCH/PUT /programme_exercises/1.json
  def update
    respond_to do |format|
      if @programme_exercise.update(programme_exercise_params)
        format.html { redirect_to @programme_exercise, notice: 'Programme exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programme_exercises/1
  # DELETE /programme_exercises/1.json
  def destroy
    @programme_exercise.destroy
    respond_to do |format|
      format.html { redirect_to programme_exercises_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme_exercise
      @programme_exercise = ProgrammeExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_exercise_params
      params.require(:programme_exercise).permit(:programme_id, :exercise_id, :exercise_id, :order, :time, :rest, :sets, :time_per_set)
    end
end
