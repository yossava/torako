require 'test_helper'

class RekeningsControllerTest < ActionController::TestCase
  setup do
    @rekening = rekenings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rekenings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rekening" do
    assert_difference('Rekening.count') do
      post :create, rekening: { cabang: @rekening.cabang, nama_bank: @rekening.nama_bank, nomor_rekening: @rekening.nomor_rekening, pemilik: @rekening.pemilik, user_id: @rekening.user_id }
    end

    assert_redirected_to rekening_path(assigns(:rekening))
  end

  test "should show rekening" do
    get :show, id: @rekening
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rekening
    assert_response :success
  end

  test "should update rekening" do
    patch :update, id: @rekening, rekening: { cabang: @rekening.cabang, nama_bank: @rekening.nama_bank, nomor_rekening: @rekening.nomor_rekening, pemilik: @rekening.pemilik, user_id: @rekening.user_id }
    assert_redirected_to rekening_path(assigns(:rekening))
  end

  test "should destroy rekening" do
    assert_difference('Rekening.count', -1) do
      delete :destroy, id: @rekening
    end

    assert_redirected_to rekenings_path
  end
end
