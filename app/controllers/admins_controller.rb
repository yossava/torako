class AdminsController < ApplicationController
  skip_before_action :tokosaya
  before_filter :authenticate_user!
  before_filter do
    redirect_to "/masuk" unless current_user && current_user.admin?
  end

  def becomeadmin
    if current_user.admin
      User.find(params[:id]).update(:admin => true)
      redirect_to :back, notice: "Admin User ditambahkan"
    end
  end
  def deleteadmin
    if current_user.admin
      User.find(params[:id]).update(:admin => false)
      redirect_to :back, notice: "Admin User dihapus"
    end
  end
  def homepage
    @homeitems = Homeitem.paginate(:page => params[:page], :per_page => 15)
    @homeitem = Homeitem.new
    if params[:id]
    @homeitem = Homeitem.find(params[:id])
    end
  end
  def statics
    @statics = Static.paginate(:page => params[:page], :per_page => 15)
    @static = Static.new
    if params[:id]
    @static = Static.find(params[:id])
    end
  end
  def categories
    @categories = Category.paginate(:page => params[:page], :per_page => 15)
    @category = Category.new
    if params[:id]
    @category = Category.find(params[:id])
    end
  end

  def subcategories
    @subcategories = Subcategory.paginate(:page => params[:page], :per_page => 15)
    @subcategory = Subcategory.new
    if params[:id]
    @subcategory = Subcategory.find(params[:id])
    end
  end
  def users
    @users = User.paginate(:page => params[:page], :per_page => 15)
  end
  def stores
    @stores = Toko.paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @toko = Toko.find(params[:id])
    end
  end
  def products
    @products = Produk.paginate(:page => params[:page], :per_page => 15)
    if params[:id]
    @produk = Produk.find(params[:id])
    end
  end
  def destroystore
     @store = Toko.find(params[:id])
     @store.destroy

    if @store.destroy
        redirect_to :back, notice: "Toko dihapus."
    end
  end
  def destroystatic
     @static = Static.find(params[:id])
     @static.destroy

    if @static.destroy
        redirect_to :back, notice: "Halaman dihapus."
    end
  end
  def destroycategory
     @category = Category.find(params[:id])
     @category.destroy

    if @category.destroy
        redirect_to :back, notice: "Kategori dihapus."
    end
  end
  def destroysubcategory
     @subcategory = Subcategory.find(params[:id])
     @subcategory.destroy

    if @subcategory.destroy
        redirect_to :back, notice: "Subkategori dihapus."
    end
  end
  def destroyuser
     @user = User.find(params[:id])
     @user.destroy

    if @user.destroy
        redirect_to :back, notice: "User dihapus."
    end
  end

  def destroyproduct
     @product = Produk.find(params[:id])
     @product.destroy

    if @product.destroy
        redirect_to :back, notice: "Produk dihapus."
    end
  end
end
