class AlamatsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_alamat, only: [:show, :edit, :update, :destroy]



  # GET /alamats
  # GET /alamats.json
  def index
    @alamats = Alamat.all
    @alamats = Alamat.where(:user_id => current_user.id)
  end

  # GET /alamats/1
  # GET /alamats/1.json
  def show
  end

  # GET /alamats/new
  def new
    @alamat = Alamat.new
     if params[:kota]
    subs = RestClient.get 'http://pro.rajaongkir.com/api/subdistrict', {:params => {:city => params[:kota], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @kecamatan = JSON.parse subs
    @kec = @kecamatan['rajaongkir']['results']
    end
    cities = RestClient.get 'http://pro.rajaongkir.com/api/city', {:params => {:province => params[:provinsi], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    provinces = RestClient.get 'http://pro.rajaongkir.com/api/province', {:params => {:key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @province = JSON.parse provinces
    @city = JSON.parse cities
    @pro = @province['rajaongkir']['results']
    @cit = @city['rajaongkir']['results']
  end

  # GET /alamats/1/edit
  def edit
    subsx = RestClient.get 'http://pro.rajaongkir.com/api/subdistrict', {:params => {:id => @alamat.kecamatan, :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @kecamatanx = JSON.parse subsx
    @kecx = @kecamatanx['rajaongkir']['results']['subdistrict_name']
    citiesx = RestClient.get 'http://pro.rajaongkir.com/api/city', {:params => {:id => @alamat.kabupaten, :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    provincesx = RestClient.get 'http://pro.rajaongkir.com/api/province', {:params => {:id => @alamat.provinsi, :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @provincex = JSON.parse provincesx
    @cityx = JSON.parse citiesx
    @prox = @provincex['rajaongkir']['results']['province']
    @citx = @cityx['rajaongkir']['results']['city_name']

     if params[:kota]
    subs = RestClient.get 'http://pro.rajaongkir.com/api/subdistrict', {:params => {:city => params[:kota], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @kecamatan = JSON.parse subs
    @kec = @kecamatan['rajaongkir']['results']
    end
    cities = RestClient.get 'http://pro.rajaongkir.com/api/city', {:params => {:province => params[:provinsi], :key => '45c5c245f49664fcd38a86f3c24f7763'}}
    provinces = RestClient.get 'http://pro.rajaongkir.com/api/province', {:params => {:key => '45c5c245f49664fcd38a86f3c24f7763'}}
    @province = JSON.parse provinces
    @city = JSON.parse cities
    @pro = @province['rajaongkir']['results']
    @cit = @city['rajaongkir']['results']
  end

  # POST /alamats
  # POST /alamats.json
  def create
    @alamat = Alamat.new(alamat_params)
    @alamat.user = current_user

    respond_to do |format|
      if @alamat.save
        format.html { redirect_to alamats_path, notice: 'Alamat baru telah ditambahkan.' }
        format.json { render :show, status: :created, location: @alamat }
      else
        format.html { render :new }
        format.json { render json: @alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alamats/1
  # PATCH/PUT /alamats/1.json
  def update
    respond_to do |format|
      if @alamat.update(alamat_params)
        format.html { redirect_to alamats_path, notice: 'Alamat telah diperbarui.' }
        format.json { render :show, status: :ok, location: @alamat }
      else
        format.html { render :edit }
        format.json { render json: @alamat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alamats/1
  # DELETE /alamats/1.json
  def destroy
    @alamat.destroy
    respond_to do |format|
      format.html { redirect_to alamats_url, notice: 'Alamat telah dihapus.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alamat
      @alamat = Alamat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alamat_params
      params.require(:alamat).permit(:sebagai, :nama_penerima, :alamat, :kode_pos, :provinsi, :kabupaten, :kecamatan, :nomor_telepon, :user_id, :provinsi_sebagai, :kota_sebagai, :kecamatan_sebagai)
    end
end
