class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  def konfirmasi
    Cart.find(params[:id]).update(:state => 3)
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Telah Dikonfirmasi Buyer"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def diterima
    Cart.find(params[:id]).update(:state => 6)
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Telah Diterima Buyer, Transaksi selesai"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def terima_pesanan
    Cart.find(params[:id]).update(:state => 7)
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Telah Diproses Seller"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def tolak_pesanan
    Cart.find(params[:id]).update(:state => 8)
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Tidak Dapat Diproses oleh Seller"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def kirim_pesanan
    Cart.find(params[:id]).update(:state => 4, :resi => params[:resi])
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Telah Dikirim oleh Seller dengan resi: #{params[:resi]}"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def pesanan_sampai
    Cart.find(params[:id]).update(:state => 5)
    redirect_to :back
    mycart = Cart.find(params[:id])
    status = "Pesanan dengan resi #{Cart.find(params[:id]).resi}, telah ditandai sebagai SAMPAI"
    Notifikasi.sample_email(current_user, mycart, status).deliver_later
  end
  def checkout
    Cart.where(:user_id => current_user.id).update_all(:state => 2)
    redirect_to '/payment'
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)
    @cart.user = current_user
    @cart.state = 1

    respond_to do |format|
      if @cart.save
        format.html { redirect_to :back, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to :back, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:toko_id, :user_id, :produk_id, :invoice, :catatan, :jumlah, :subtotal, :total, :metode_pembayaran, :alamat_id, :kurir, :berat, :ongkir, :seller_id, :state, :resi)
    end
end
