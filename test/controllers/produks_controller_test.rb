require 'test_helper'

class ProduksControllerTest < ActionController::TestCase
  setup do
    @produk = produks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produk" do
    assert_difference('Produk.count') do
      post :create, produk: { berat: @produk.berat, deskripsi: @produk.deskripsi, foto_produk1: @produk.foto_produk1, foto_produk2: @produk.foto_produk2, foto_produk3: @produk.foto_produk3, foto_produk4: @produk.foto_produk4, foto_produk5: @produk.foto_produk5, foto_produk6: @produk.foto_produk6, harga: @produk.harga, harga_diskon: @produk.harga_diskon, harga_grosir1max: @produk.harga_grosir1max, harga_grosir1max: @produk.harga_grosir1max, harga_grosir1min: @produk.harga_grosir1min, kategori: @produk.kategori, nama_produk: @produk.nama_produk, sub_kategori: @produk.sub_kategori }
    end

    assert_redirected_to produk_path(assigns(:produk))
  end

  test "should show produk" do
    get :show, id: @produk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produk
    assert_response :success
  end

  test "should update produk" do
    patch :update, id: @produk, produk: { berat: @produk.berat, deskripsi: @produk.deskripsi, foto_produk1: @produk.foto_produk1, foto_produk2: @produk.foto_produk2, foto_produk3: @produk.foto_produk3, foto_produk4: @produk.foto_produk4, foto_produk5: @produk.foto_produk5, foto_produk6: @produk.foto_produk6, harga: @produk.harga, harga_diskon: @produk.harga_diskon, harga_grosir1max: @produk.harga_grosir1max, harga_grosir1max: @produk.harga_grosir1max, harga_grosir1min: @produk.harga_grosir1min, kategori: @produk.kategori, nama_produk: @produk.nama_produk, sub_kategori: @produk.sub_kategori }
    assert_redirected_to produk_path(assigns(:produk))
  end

  test "should destroy produk" do
    assert_difference('Produk.count', -1) do
      delete :destroy, id: @produk
    end

    assert_redirected_to produks_path
  end
end
