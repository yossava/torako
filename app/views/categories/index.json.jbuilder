json.array!(@categories) do |category|
  json.extract! category, :id, :kategori, :deskripsi, :gambar_kategory, :parent_id
  json.url category_url(category, format: :json)
end
