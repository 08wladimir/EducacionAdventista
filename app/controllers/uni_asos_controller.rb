class UniAsosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_uni_aso, only: [:show, :edit, :update, :destroy]

  # GET /uni_asos
  # GET /uni_asos.json
  def index
    @uni_asos = UniAso.all
  end
  
  # GET /uni_asos/1
  # GET /uni_asos/1.json
  def show
  end

  # GET /uni_asos/new
  def new
    @uni_aso = UniAso.new
  end

  # GET /uni_asos/1/edit
  def edit
  end

  # POST /uni_asos
  # POST /uni_asos.json
  def create
    @uni_aso = UniAso.new(uni_aso_params)

    respond_to do |format|
      if @uni_aso.save
        format.html { redirect_to @uni_aso, notice: 'Uni aso was successfully created.' }
        format.json { render :show, status: :created, location: @uni_aso }
      else
        format.html { render :new }
        format.json { render json: @uni_aso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uni_asos/1
  # PATCH/PUT /uni_asos/1.json
  def update
    respond_to do |format|
      if @uni_aso.update(uni_aso_params)
        format.html { redirect_to @uni_aso, notice: 'Uni aso was successfully updated.' }
        format.json { render :show, status: :ok, location: @uni_aso }
      else
        format.html { render :edit }
        format.json { render json: @uni_aso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uni_asos/1
  # DELETE /uni_asos/1.json
  def destroy
    @uni_aso.destroy
    respond_to do |format|
      format.html { redirect_to uni_asos_url, notice: 'Uni aso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uni_aso
      @uni_aso = UniAso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uni_aso_params
      params.require(:uni_aso).permit(:Union, :Campo)
    end
end
