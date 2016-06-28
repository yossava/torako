json.array!(@carts) do |cart|
  json.extract! cart, :id, :toko_id, :user_id, :produk_id, :invoice, :catatan, :jumlah, :subtotal, :total, :metode_pembayaran, :alamat_id, :kurir, :berat
  json.url cart_url(cart, format: :json)
end
