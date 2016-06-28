class RekeningsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_rekening, only: [:show, :edit, :update, :destroy]


  # GET /rekenings
  # GET /rekenings.json
  def index
    @rekenings = Rekening.all
    @rekenings = Rekening.where(:user_id => current_user.id)

  end


  # GET /rekenings/1
  # GET /rekenings/1.json
  def show
  end

  # GET /rekenings/new
  def new
    @rekening = Rekening.new
  end

  # GET /rekenings/1/edit
  def edit
  end

  # POST /rekenings
  # POST /rekenings.json
  def create
    @rekening = Rekening.new(rekening_params)
    @rekening.user = current_user

    respond_to do |format|
      if @rekening.save
        format.html { redirect_to rekenings_path, notice: 'Rekening baru ditambahkan.' }
        format.json { render :show, status: :created, location: @rekening }
      else
        format.html { render :new }
        format.json { render json: @rekening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rekenings/1
  # PATCH/PUT /rekenings/1.json
  def update
    respond_to do |format|
      if @rekening.update(rekening_params)
        format.html { redirect_to rekenings_path, notice: 'Rekening telah diperbarui.' }
        format.json { render :show, status: :ok, location: @rekening }
      else
        format.html { render :edit }
        format.json { render json: @rekening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rekenings/1
  # DELETE /rekenings/1.json
  def destroy
    @rekening.destroy
    respond_to do |format|
      format.html { redirect_to rekenings_url, notice: 'Rekening telah dihapus.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rekening
      @rekening = Rekening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rekening_params
      params.require(:rekening).permit(:pemilik, :cabang, :nomor_rekening, :nama_bank, :user_id)
    end
end
