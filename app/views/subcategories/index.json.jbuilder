json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :subkategori, :deskripsi, :subcategori_image, :parent_id
  json.url subcategory_url(subcategory, format: :json)
end
