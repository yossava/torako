class KonfirmasisController < ApplicationController
  before_action :set_konfirmasi, only: [:show, :edit, :update, :destroy]

  # GET /konfirmasis
  # GET /konfirmasis.json
  def index
    @konfirmasis = Konfirmasi.all
  end

  # GET /konfirmasis/1
  # GET /konfirmasis/1.json
  def show
  end

  # GET /konfirmasis/new
  def new
    @konfirmasi = Konfirmasi.new
  end

  # GET /konfirmasis/1/edit
  def edit
  end

  # POST /konfirmasis
  # POST /konfirmasis.json
  def create
    Cart.find(params[:cart_id]).update(:state => 3)
    mycart = Cart.find(params[:cart_id])
    status = "Telah Dikonfirmasi Buyer"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
    @konfirmasi = Konfirmasi.new(konfirmasi_params)
    @konfirmasi.user_id = current_user.id

    respond_to do |format|
      if @konfirmasi.save
        format.html { redirect_to "/konfirmasi-pembayaran", notice: 'Konfirmasi telah terkirim.' }
        format.json { render :show, status: :created, location: @konfirmasi }
      else
        format.html { render :new }
        format.json { render json: @konfirmasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /konfirmasis/1
  # PATCH/PUT /konfirmasis/1.json
  def update
    respond_to do |format|
      if @konfirmasi.update(konfirmasi_params)
        format.html { redirect_to @konfirmasi, notice: 'Konfirmasi was successfully updated.' }
        format.json { render :show, status: :ok, location: @konfirmasi }
      else
        format.html { render :edit }
        format.json { render json: @konfirmasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /konfirmasis/1
  # DELETE /konfirmasis/1.json
  def destroy
    @konfirmasi.destroy
    respond_to do |format|
      format.html { redirect_to konfirmasis_url, notice: 'Konfirmasi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_konfirmasi
      @konfirmasi = Konfirmasi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def konfirmasi_params
      params.require(:konfirmasi).permit(:user_id, :cart_id, :tanggal, :bulan, :tahun, :metode, :dari, :tujuan, :keterangan, :jumlah)
    end
end
