class ProgrammesController < ApplicationController
  before_action :set_programme, only: [:show, :edit, :update, :destroy, :add_exercise_to, :remove_exercise_from]

  def add_exercise_to
    @exercise = Exercise.find(params[:exercise])
    @programme.exercises << @exercise
    redirect_to :back
  end

  def remove_exercise_from
    @exercise = params[:exercise]
    @programme.exercises.delete(@exercise)
    redirect_to :back
  end


  # GET /programmes
  # GET /programmes.json
  def index
    @programmes = Programme.all
  end

  # GET /programmes/1
  # GET /programmes/1.json
  def show
    @exercises = Exercise.all
  end

  # GET /programmes/new
  def new
    @body_parts =BodyPart.all
    @programme = Programme.new
  end

  # GET /programmes/1/edit
  def edit
  end

  # POST /programmes
  # POST /programmes.json
  def create
    @programme = Programme.new(programme_params)

    respond_to do |format|
      if @programme.save
        format.html { redirect_to @programme, notice: 'Programme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programme }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programmes/1
  # PATCH/PUT /programmes/1.json
  def update
    respond_to do |format|
      if @programme.update(programme_params)
        format.html { redirect_to @programme, notice: 'Programme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmes/1
  # DELETE /programmes/1.json
  def destroy
    @programme.destroy
    respond_to do |format|
      format.html { redirect_to programmes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme
      @programme = Programme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_params
      params.require(:programme).permit(:name, :description, :programme_type_id, :sex, :duration, :total_time, :exercise_ids => [])
    end
end
