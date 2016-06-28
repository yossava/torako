class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => [:profil]
  before_action :produk
  require 'rest_client'

  def display
      respond_to do |format|
      format.js
      end
  end
  def ongkir
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
  def index
    @pro = Produk.order("RANDOM()").limit(20)
    @pro2 = Produk.all.sample(10)
    @pro3 = Produk.all.sample(4)
    @pro4 = Produk.all.sample(8)
  end
  def profil
  end

  def edit
  end
  def finish
  end
  def bayar
    @status = Status.new
    @subtotal = []
    current_user.cart.each do |c|
    @subtotal << c.subtotal
    end
  end


    private
    # Use callbacks to share common setup or constraints between actions.

    def produk
      @produks = Produk.all
      @couponcat = Category.find(14)
      @fashioncat = Category.find(7)
      @gadgetcat = Category.find(8)
      @beautycat = Category.find(9)
      @elektronikcat = Category.find(11)
      @sportcat = Category.find(12)
      @homecat = Category.find(13)
      @babycat = Category.find(10)
      @makanancat = Category.find(16)
      @fashionproduct = Produk.where(:category_id => @fashioncat).order('created_at DESC').take(10)
      @gadgetproduct = Produk.where(:category_id => @gadgetcat).order('created_at DESC').take(10)
      @beautyproduct = Produk.where(:category_id => @beautycat).order('created_at DESC').take(10)
      @electroproduct = Produk.where(:category_id => @elektronikcat).order('created_at DESC').take(10)
      @sportproduct = Produk.where(:category_id => @sportcat).order('created_at DESC').take(10)
      @homeproduct = Produk.where(:category_id => @homecat).order('created_at DESC').take(10)
      @babyproduct = Produk.where(:category_id => @babycat).order('created_at DESC').take(10)
      @foodproduct = Produk.where(:category_id => @makanancat).order('created_at DESC').take(10)
      @couponproduct = Produk.where(:category_id => @couponcat).order('created_at DESC').take(10)
    end
end
