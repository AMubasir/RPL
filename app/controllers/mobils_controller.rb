class MobilsController < ApplicationController
  before_action :set_mobil, only: [:show, :edit, :update, :destroy]

  # GET /mobils
  # GET /mobils.json
  def index
    @mobils = Mobil.all
  end

  # GET /mobils/1
  # GET /mobils/1.json
  def show
  end

  # GET /mobils/new
  def new
    @mobil = Mobil.new
  end

  # GET /mobils/1/edit
  def edit
  end

  # POST /mobils
  # POST /mobils.json
  def create
    @mobil = Mobil.new(mobil_params)

    respond_to do |format|
      if @mobil.save
        format.html { redirect_to @mobil, notice: 'Mobil was successfully created.' }
        format.json { render :show, status: :created, location: @mobil }
      else
        format.html { render :new }
        format.json { render json: @mobil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobils/1
  # PATCH/PUT /mobils/1.json
  def update
    respond_to do |format|
      if @mobil.update(mobil_params)
        format.html { redirect_to @mobil, notice: 'Mobil was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobil }
      else
        format.html { render :edit }
        format.json { render json: @mobil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobils/1
  # DELETE /mobils/1.json
  def destroy
    @mobil.destroy
    respond_to do |format|
      format.html { redirect_to mobils_url, notice: 'Mobil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobil
      @mobil = Mobil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mobil_params
      params.require(:mobil).permit(:nama, :warna, :no_polisi, :harga, :keterangan, :jenis_mobil_id)
    end
end
