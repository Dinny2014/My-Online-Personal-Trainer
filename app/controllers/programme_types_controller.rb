class ProgrammeTypesController < ApplicationController
  before_action :set_programme_type, only: [:show, :edit, :update, :destroy]

  # GET /programme_types
  # GET /programme_types.json
  def index
    @programme_types = ProgrammeType.all
  end

  # GET /programme_types/1
  # GET /programme_types/1.json
  def show
  end

  # GET /programme_types/new
  def new
    @programme_type = ProgrammeType.new
  end

  # GET /programme_types/1/edit
  def edit
  end

  # POST /programme_types
  # POST /programme_types.json
  def create
    @programme_type = ProgrammeType.new(programme_type_params)

    respond_to do |format|
      if @programme_type.save
        format.html { redirect_to @programme_type, notice: 'Programme type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @programme_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @programme_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programme_types/1
  # PATCH/PUT /programme_types/1.json
  def update
    respond_to do |format|
      if @programme_type.update(programme_type_params)
        format.html { redirect_to @programme_type, notice: 'Programme type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programme_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programme_types/1
  # DELETE /programme_types/1.json
  def destroy
    @programme_type.destroy
    respond_to do |format|
      format.html { redirect_to programme_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programme_type
      @programme_type = ProgrammeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programme_type_params
      params.require(:programme_type).permit(:name, :description)
    end
end
