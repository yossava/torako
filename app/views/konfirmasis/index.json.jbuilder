json.array!(@konfirmasis) do |konfirmasi|
  json.extract! konfirmasi, :id, :user_id, :cart_id, :tanggal, :bulan, :tahun, :metode, :dari, :tujuan, :keterangan
  json.url konfirmasi_url(konfirmasi, format: :json)
end
