json.array!(@homeitems) do |homeitem|
  json.extract! homeitem, :id, :title, :description, :img1, :img2, :img3, :img4, :img5, :img6, :img7, :img8, :img9
  json.url homeitem_url(homeitem, format: :json)
end
