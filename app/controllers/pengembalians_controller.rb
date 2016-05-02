class PengembaliansController < ApplicationController
  before_action :set_pengembalian, only: [:show, :edit, :update, :destroy]

  # GET /pengembalians
  # GET /pengembalians.json
  def index
    @pengembalians = Pengembalian.all
  end

  # GET /pengembalians/1
  # GET /pengembalians/1.json
  def show
  end

  # GET /pengembalians/new
  def new
    @pengembalian = Pengembalian.new
  end

  # GET /pengembalians/1/edit
  def edit
  end

  # POST /pengembalians
  # POST /pengembalians.json
  def create
    @pengembalian = Pengembalian.new(pengembalian_params)

    respond_to do |format|
      if @pengembalian.save
        format.html { redirect_to @pengembalian, notice: 'Pengembalian was successfully created.' }
        format.json { render :show, status: :created, location: @pengembalian }
      else
        format.html { render :new }
        format.json { render json: @pengembalian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pengembalians/1
  # PATCH/PUT /pengembalians/1.json
  def update
    respond_to do |format|
      if @pengembalian.update(pengembalian_params)
        format.html { redirect_to @pengembalian, notice: 'Pengembalian was successfully updated.' }
        format.json { render :show, status: :ok, location: @pengembalian }
      else
        format.html { render :edit }
        format.json { render json: @pengembalian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengembalians/1
  # DELETE /pengembalians/1.json
  def destroy
    @pengembalian.destroy
    respond_to do |format|
      format.html { redirect_to pengembalians_url, notice: 'Pengembalian was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pengembalian
      @pengembalian = Pengembalian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pengembalian_params
      params.require(:pengembalian).permit(:transaksi_id, :telat, :denda, :keterangan)
    end
end
