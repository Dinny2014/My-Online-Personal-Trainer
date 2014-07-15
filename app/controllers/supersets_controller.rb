class SupersetsController < ApplicationController
  before_action :set_superset, only: [:show, :edit, :update, :destroy]

  # GET /supersets
  # GET /supersets.json
  def index
    @supersets = Superset.all
  end

  # GET /supersets/1
  # GET /supersets/1.json
  def show
  end

  # GET /supersets/new
  def new
    @superset = Superset.new
  end

  # GET /supersets/1/edit
  def edit
  end

  # POST /supersets
  # POST /supersets.json
  def create
    @superset = Superset.new(superset_params)

    respond_to do |format|
      if @superset.save
        format.html { redirect_to @superset, notice: 'Superset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @superset }
      else
        format.html { render action: 'new' }
        format.json { render json: @superset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supersets/1
  # PATCH/PUT /supersets/1.json
  def update
    respond_to do |format|
      if @superset.update(superset_params)
        format.html { redirect_to @superset, notice: 'Superset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @superset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supersets/1
  # DELETE /supersets/1.json
  def destroy
    @superset.destroy
    respond_to do |format|
      format.html { redirect_to supersets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_superset
      @superset = Superset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def superset_params
      params.require(:superset).permit(:name, :description, :sets)
    end
end
