require 'test_helper'

class AlamatsControllerTest < ActionController::TestCase
  setup do
    @alamat = alamats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alamats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alamat" do
    assert_difference('Alamat.count') do
      post :create, alamat: { alamat: @alamat.alamat, kabupaten: @alamat.kabupaten, kecamatan: @alamat.kecamatan, kode_pos: @alamat.kode_pos, nama_penerima: @alamat.nama_penerima, nomor_telepon: @alamat.nomor_telepon, provinsi: @alamat.provinsi, sebagai: @alamat.sebagai, user_id: @alamat.user_id }
    end

    assert_redirected_to alamat_path(assigns(:alamat))
  end

  test "should show alamat" do
    get :show, id: @alamat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alamat
    assert_response :success
  end

  test "should update alamat" do
    patch :update, id: @alamat, alamat: { alamat: @alamat.alamat, kabupaten: @alamat.kabupaten, kecamatan: @alamat.kecamatan, kode_pos: @alamat.kode_pos, nama_penerima: @alamat.nama_penerima, nomor_telepon: @alamat.nomor_telepon, provinsi: @alamat.provinsi, sebagai: @alamat.sebagai, user_id: @alamat.user_id }
    assert_redirected_to alamat_path(assigns(:alamat))
  end

  test "should destroy alamat" do
    assert_difference('Alamat.count', -1) do
      delete :destroy, id: @alamat
    end

    assert_redirected_to alamats_path
  end
end
