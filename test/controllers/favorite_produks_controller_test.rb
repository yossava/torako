require 'test_helper'

class FavoriteProduksControllerTest < ActionController::TestCase
  setup do
    @favorite_produk = favorite_produks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_produks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_produk" do
    assert_difference('FavoriteProduk.count') do
      post :create, favorite_produk: { produk_id: @favorite_produk.produk_id, user_id: @favorite_produk.user_id }
    end

    assert_redirected_to favorite_produk_path(assigns(:favorite_produk))
  end

  test "should show favorite_produk" do
    get :show, id: @favorite_produk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_produk
    assert_response :success
  end

  test "should update favorite_produk" do
    patch :update, id: @favorite_produk, favorite_produk: { produk_id: @favorite_produk.produk_id, user_id: @favorite_produk.user_id }
    assert_redirected_to favorite_produk_path(assigns(:favorite_produk))
  end

  test "should destroy favorite_produk" do
    assert_difference('FavoriteProduk.count', -1) do
      delete :destroy, id: @favorite_produk
    end

    assert_redirected_to favorite_produks_path
  end
end
