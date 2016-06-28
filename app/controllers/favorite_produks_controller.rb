class FavoriteProduksController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_favorite_produk, only: [:show, :edit, :update, :destroy]


  # GET /favorite_produks
  # GET /favorite_produks.json
  def index
    @favorite_produks = FavoriteProduk.all
  end

  # GET /favorite_produks/1
  # GET /favorite_produks/1.json
  def show
  end

  # GET /favorite_produks/new
  def new
    @favorite_produk = FavoriteProduk.new
  end

  # GET /favorite_produks/1/edit
  def edit
  end

  # POST /favorite_produks
  # POST /favorite_produks.json
  def create
    @favorite_produk = FavoriteProduk.new(favorite_produk_params)

    respond_to do |format|
      if @favorite_produk.save
        format.html { redirect_to :back, notice: 'Favorite produk was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_produk }
      else
        format.html { render :new }
        format.json { render json: @favorite_produk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_produks/1
  # PATCH/PUT /favorite_produks/1.json
  def update
    respond_to do |format|
      if @favorite_produk.update(favorite_produk_params)
        format.html { redirect_to @favorite_produk, notice: 'Favorite produk was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_produk }
      else
        format.html { render :edit }
        format.json { render json: @favorite_produk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_produks/1
  # DELETE /favorite_produks/1.json
  def destroy
    @favorite_produk.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Favorite produk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_produk
      @favorite_produk = FavoriteProduk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_produk_params
      params.require(:favorite_produk).permit(:user_id, :produk_id)
    end
end
