json.array!(@rekenings) do |rekening|
  json.extract! rekening, :id, :pemilik, :cabang, :nomor_rekening, :nama_bank, :user_id
  json.url rekening_url(rekening, format: :json)
end
