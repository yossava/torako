json.array!(@favorite_produks) do |favorite_produk|
  json.extract! favorite_produk, :id, :user_id, :produk_id
  json.url favorite_produk_url(favorite_produk, format: :json)
end
