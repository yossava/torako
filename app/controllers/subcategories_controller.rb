class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]


  # GET /subcategories
  # GET /subcategories.json
  def index
    @subcategories = Subcategory.all
    @categories = Category.all
  end

  # GET /subcategories/1
  # GET /subcategories/1.json
  def show
    @itemvalue = 15
    @min = 0
    @max = 1000000000
    @maxvalue = "-"
    @sort = "Produk Terbaru"
    if params[:sort]
      @itemvalue = params[:item]
      @min = params[:min]
      @max = params[:max]
      if params[:max] == "1000000000"
        @max = params[:max]
        @maxvalue = "-"
        else
        @maxvalue = params[:max]
      end
      @hargaselect = "max=" + @max + "&min=" + @min
      if params[:sort] == "1"
        @sort = "Produk Terbaru"
        @sortselect = 1
        @sortvalue = "created_at desc"
        elsif params[:sort] == "2"
        @sort = "Produk Terpopuler"
        @sortselect = 2
        @sortvalue = "bought asc"
        elsif params[:sort] == "3"
        @sort = "Diskon Terbesar"
        @sortselect = 3
        @sortvalue = "diskon desc"
        elsif params[:sort] == "4"
        @sort = "Rating Tertinggi"
        @sortselect = 4
        @sortvalue = "rating desc"
        else
        @sort = "Random"
        @sortselect = 5
        @sortvalue = "created_at desc"
      end
    end
    if params[:sort]
    @cat = Produk.where("harga_beli > ? AND harga_beli < ? AND subcategory_id = ?", params[:min], params[:max], params[:id]).order(@sortvalue).paginate(:page => params[:page], :per_page => params[:item])
      else
      @cat = Produk.where("subcategory_id = ?", params[:id]).order("created_at desc").paginate(:page => params[:page], :per_page => 15)
    end

  end

  def filter
    @cat = Produk.where("harga_beli > ? AND harga_beli < ?", params[:min], params[:max]).order(params[:sort]).paginate(:page => params[:page], :per_page => 15)
  end

  # GET /subcategories/new
  def new
    @subcategory = Subcategory.new
  end

  # GET /subcategories/1/edit
  def edit
  end

  # POST /subcategories
  # POST /subcategories.json
  def create
    @subcategory = Subcategory.new(subcategory_params)


    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to :back, notice: 'Subkategori dibuat' }
        format.json { render :show, status: :created, location: @subcategory }
      else
        format.html { render :new }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategories/1
  # PATCH/PUT /subcategories/1.json
  def update
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to :back, notice: 'Subkategori diperbarui' }
        format.json { render :show, status: :ok, location: @subcategory }
      else
        format.html { render :edit }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategories/1
  # DELETE /subcategories/1.json
  def destroy
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to subcategories_url, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory_params
      params.require(:subcategory).permit(:subkategori, :deskripsi, :subcategori_image, :category_id)
    end
end
