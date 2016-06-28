json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :user_id, :toko_id, :produk_id
  json.url feedback_url(feedback, format: :json)
end
