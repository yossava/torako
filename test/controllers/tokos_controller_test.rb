require 'test_helper'

class TokosControllerTest < ActionController::TestCase
  setup do
    @toko = tokos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tokos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toko" do
    assert_difference('Toko.count') do
      post :create, toko: { agen1: @toko.agen1, agen2: @toko.agen2, agen3: @toko.agen3, agen4: @toko.agen4, agen5: @toko.agen5, agen6: @toko.agen6, agen7: @toko.agen7, alamat: @toko.alamat, banner1: @toko.banner1, banner2: @toko.banner2, banner2: @toko.banner2, deskripsi: @toko.deskripsi, gambar: @toko.gambar, kecamatan: @toko.kecamatan, kota: @toko.kota, nama_toko: @toko.nama_toko, provinsi: @toko.provinsi, slogan: @toko.slogan, status: @toko.status, tutup_sampai: @toko.tutup_sampai }
    end

    assert_redirected_to toko_path(assigns(:toko))
  end

  test "should show toko" do
    get :show, id: @toko
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toko
    assert_response :success
  end

  test "should update toko" do
    patch :update, id: @toko, toko: { agen1: @toko.agen1, agen2: @toko.agen2, agen3: @toko.agen3, agen4: @toko.agen4, agen5: @toko.agen5, agen6: @toko.agen6, agen7: @toko.agen7, alamat: @toko.alamat, banner1: @toko.banner1, banner2: @toko.banner2, banner2: @toko.banner2, deskripsi: @toko.deskripsi, gambar: @toko.gambar, kecamatan: @toko.kecamatan, kota: @toko.kota, nama_toko: @toko.nama_toko, provinsi: @toko.provinsi, slogan: @toko.slogan, status: @toko.status, tutup_sampai: @toko.tutup_sampai }
    assert_redirected_to toko_path(assigns(:toko))
  end

  test "should destroy toko" do
    assert_difference('Toko.count', -1) do
      delete :destroy, id: @toko
    end

    assert_redirected_to tokos_path
  end
end
