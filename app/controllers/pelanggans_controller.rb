class PelanggansController < ApplicationController
  before_action :set_pelanggan, only: [:show, :edit, :update, :destroy]

  # GET /pelanggans
  # GET /pelanggans.json
  def index
    @pelanggans = Pelanggan.all
  end

  # GET /pelanggans/1
  # GET /pelanggans/1.json
  def show
  end

  # GET /pelanggans/new
  def new
    @pelanggan = Pelanggan.new
  end

  # GET /pelanggans/1/edit
  def edit
  end

  # POST /pelanggans
  # POST /pelanggans.json
  def create
    @pelanggan = Pelanggan.new(pelanggan_params)

    respond_to do |format|
      if @pelanggan.save
        format.html { redirect_to @pelanggan, notice: 'Pelanggan was successfully created.' }
        format.json { render :show, status: :created, location: @pelanggan }
      else
        format.html { render :new }
        format.json { render json: @pelanggan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pelanggans/1
  # PATCH/PUT /pelanggans/1.json
  def update
    respond_to do |format|
      if @pelanggan.update(pelanggan_params)
        format.html { redirect_to @pelanggan, notice: 'Pelanggan was successfully updated.' }
        format.json { render :show, status: :ok, location: @pelanggan }
      else
        format.html { render :edit }
        format.json { render json: @pelanggan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pelanggans/1
  # DELETE /pelanggans/1.json
  def destroy
    @pelanggan.destroy
    respond_to do |format|
      format.html { redirect_to pelanggans_url, notice: 'Pelanggan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pelanggan
      @pelanggan = Pelanggan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pelanggan_params
      params.require(:pelanggan).permit(:nama, :alamat, :jenis_kelamin, :no_telp)
    end
end
