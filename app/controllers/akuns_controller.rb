class AkunsController < ApplicationController
  before_action :set_akun, only: [:show, :edit, :update, :destroy]

  # GET /akuns
  def index
    @akuns = Akun.all
  end

  # GET /akuns/1
  def show
  end

  # GET /akuns/new
  def new
    @akun = Akun.new
  end

  # GET /akuns/1/edit
  def edit
  end

  # POST /akuns
  def create
    @akun = Akun.new(akun_params)

    if @akun.save
      redirect_to @akun, notice: 'Akun was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /akuns/1
  def update
    if @akun.update(akun_params)
      redirect_to @akun, notice: 'Akun was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /akuns/1
  def destroy
    @akun.destroy
    redirect_to akuns_url, notice: 'Akun was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akun
      @akun = Akun.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def akun_params
      params.require(:akun).permit(:kode, :nama, :tipe_akun_id, :user_id)
    end
end
