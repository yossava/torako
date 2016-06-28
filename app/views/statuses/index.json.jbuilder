json.array!(@statuses) do |status|
  json.extract! status, :id, :seller_id, :buyer_id, :stat
  json.url status_url(status, format: :json)
end
