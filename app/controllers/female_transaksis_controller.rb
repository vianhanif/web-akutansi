class FemaleTransaksisController < ApplicationController
  before_action :set_female_transaksi, only: [:show, :edit, :update, :destroy]

  # GET /female_transaksis
  def index
    @female_transaksis = FemaleTransaksi.all
  end

  # GET /female_transaksis/1
  def show
  end

  # GET /female_transaksis/new
  def new
    @female_transaksi = FemaleTransaksi.new
  end

  # GET /female_transaksis/1/edit
  def edit
  end

  # POST /female_transaksis
  def create
    @female_transaksi = FemaleTransaksi.new(female_transaksi_params)

    if @female_transaksi.save
      redirect_to @female_transaksi, notice: 'Female transaksi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /female_transaksis/1
  def update
    if @female_transaksi.update(female_transaksi_params)
      redirect_to @female_transaksi, notice: 'Female transaksi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /female_transaksis/1
  def destroy
    @female_transaksi.destroy
    redirect_to female_transaksis_url, notice: 'Female transaksi was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_female_transaksi
      @female_transaksi = FemaleTransaksi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def female_transaksi_params
      params.require(:female_transaksi).permit(:akun_id, :deskripsi, :nominal, :tipe_relasi_id, :jurnal_id)
    end
end
