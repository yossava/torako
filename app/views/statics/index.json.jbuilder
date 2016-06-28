json.array!(@statics) do |static|
  json.extract! static, :id, :title, :body, :image
  json.url static_url(static, format: :json)
end
