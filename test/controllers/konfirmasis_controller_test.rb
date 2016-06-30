require 'test_helper'

class KonfirmasisControllerTest < ActionController::TestCase
  setup do
    @konfirmasi = konfirmasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:konfirmasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konfirmasi" do
    assert_difference('Konfirmasi.count') do
      post :create, konfirmasi: { bulan: @konfirmasi.bulan, cart_id: @konfirmasi.cart_id, dari: @konfirmasi.dari, keterangan: @konfirmasi.keterangan, metode: @konfirmasi.metode, tahun: @konfirmasi.tahun, tanggal: @konfirmasi.tanggal, tujuan: @konfirmasi.tujuan, user_id: @konfirmasi.user_id }
    end

    assert_redirected_to konfirmasi_path(assigns(:konfirmasi))
  end

  test "should show konfirmasi" do
    get :show, id: @konfirmasi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konfirmasi
    assert_response :success
  end

  test "should update konfirmasi" do
    patch :update, id: @konfirmasi, konfirmasi: { bulan: @konfirmasi.bulan, cart_id: @konfirmasi.cart_id, dari: @konfirmasi.dari, keterangan: @konfirmasi.keterangan, metode: @konfirmasi.metode, tahun: @konfirmasi.tahun, tanggal: @konfirmasi.tanggal, tujuan: @konfirmasi.tujuan, user_id: @konfirmasi.user_id }
    assert_redirected_to konfirmasi_path(assigns(:konfirmasi))
  end

  test "should destroy konfirmasi" do
    assert_difference('Konfirmasi.count', -1) do
      delete :destroy, id: @konfirmasi
    end

    assert_redirected_to konfirmasis_path
  end
end
