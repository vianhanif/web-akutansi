class MaleTransaksisController < ApplicationController
  before_action :set_male_transaksi, only: [:show, :edit, :update, :destroy]

  # GET /male_transaksis
  def index
    @male_transaksis = MaleTransaksi.all
  end

  # GET /male_transaksis/1
  def show
  end

  # GET /male_transaksis/new
  def new
    @male_transaksi = MaleTransaksi.new
  end

  # GET /male_transaksis/1/edit
  def edit
  end

  # POST /male_transaksis
  def create
    @male_transaksi = MaleTransaksi.new(male_transaksi_params)

    if @male_transaksi.save
      redirect_to @male_transaksi, notice: 'Male transaksi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /male_transaksis/1
  def update
    if @male_transaksi.update(male_transaksi_params)
      redirect_to @male_transaksi, notice: 'Male transaksi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /male_transaksis/1
  def destroy
    @male_transaksi.destroy
    redirect_to male_transaksis_url, notice: 'Male transaksi was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_male_transaksi
      @male_transaksi = MaleTransaksi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def male_transaksi_params
      params.require(:male_transaksi).permit(:akun_id, :deskripsi, :nominal, :tipe_relasi_id, :jurnal_id)
    end
end
