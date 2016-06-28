json.array!(@produks) do |produk|
  json.extract! produk, :id, :nama_produk, :kategori, :sub_kategori, :harga, :harga_diskon, :berat, :foto_produk1, :foto_produk2, :foto_produk3, :foto_produk4, :foto_produk5, :foto_produk6, :deskripsi, :harga_grosir1min, :harga_grosir1max, :harga_grosir1max
  json.url produk_url(produk, format: :json)
end
