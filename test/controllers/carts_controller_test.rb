require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post :create, cart: { alamat_id: @cart.alamat_id, berat: @cart.berat, catatan: @cart.catatan, invoice: @cart.invoice, jumlah: @cart.jumlah, kurir: @cart.kurir, metode_pembayaran: @cart.metode_pembayaran, produk_id: @cart.produk_id, subtotal: @cart.subtotal, toko_id: @cart.toko_id, total: @cart.total, user_id: @cart.user_id }
    end

    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should show cart" do
    get :show, id: @cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart
    assert_response :success
  end

  test "should update cart" do
    patch :update, id: @cart, cart: { alamat_id: @cart.alamat_id, berat: @cart.berat, catatan: @cart.catatan, invoice: @cart.invoice, jumlah: @cart.jumlah, kurir: @cart.kurir, metode_pembayaran: @cart.metode_pembayaran, produk_id: @cart.produk_id, subtotal: @cart.subtotal, toko_id: @cart.toko_id, total: @cart.total, user_id: @cart.user_id }
    assert_redirected_to cart_path(assigns(:cart))
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete :destroy, id: @cart
    end

    assert_redirected_to carts_path
  end
end
