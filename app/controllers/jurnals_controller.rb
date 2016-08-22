class JurnalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_jurnal, only: [:show, :edit, :update, :destroy]

  # GET /jurnals
  def index
    @jurnals = Jurnal.all.paginate(page: params[:page], per_page: 30)
  end

  # GET /jurnals/1
  def show
  end

  # GET /jurnals/new
  def new
    @jurnal = Jurnal.new
  end

  # GET /jurnals/1/edit
  def edit
  end

  # POST /jurnals
  def create
    @jurnal = Jurnal.new(jurnal_params)

    if @jurnal.save
      redirect_to @jurnal, notice: 'Jurnal was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jurnals/1
  def update
    if @jurnal.update(jurnal_params)
      redirect_to @jurnal, notice: 'Jurnal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jurnals/1
  def destroy
    @jurnal.destroy
    redirect_to jurnals_url, notice: 'Jurnal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jurnal
      @jurnal = Jurnal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def jurnal_params
      params.require(:jurnal).permit(:akun_id, :deskripsi, :saldo)
    end
end
