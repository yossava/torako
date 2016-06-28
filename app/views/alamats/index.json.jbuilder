json.array!(@alamats) do |alamat|
  json.extract! alamat, :id, :sebagai, :nama_penerima, :alamat, :kode_pos, :provinsi, :kabupaten, :kecamatan, :nomor_telepon, :user_id
  json.url alamat_url(alamat, format: :json)
end
