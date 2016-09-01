class KoleksiJurnalsController < ApplicationController
  before_action :set_koleksi_jurnal, only: [:show, :edit, :update, :destroy]

  # GET /koleksi_jurnals
  def index
    @koleksi_jurnals = KoleksiJurnal.all
  end

  # GET /koleksi_jurnals/1
  def show
  end

  # GET /koleksi_jurnals/new
  def new
    @koleksi_jurnal = KoleksiJurnal.new
  end

  # GET /koleksi_jurnals/1/edit
  def edit
  end

  # POST /koleksi_jurnals
  def create
    @koleksi_jurnal = KoleksiJurnal.new(koleksi_jurnal_params)

    if @koleksi_jurnal.save
      redirect_to @koleksi_jurnal, notice: 'Koleksi jurnal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /koleksi_jurnals/1
  def update
    if @koleksi_jurnal.update(koleksi_jurnal_params)
      redirect_to @koleksi_jurnal, notice: 'Koleksi jurnal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /koleksi_jurnals/1
  def destroy
    @koleksi_jurnal.destroy
    redirect_to koleksi_jurnals_url, notice: 'Koleksi jurnal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koleksi_jurnal
      @koleksi_jurnal = KoleksiJurnal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def koleksi_jurnal_params
      params.require(:koleksi_jurnal).permit(:user_id)
    end
end
