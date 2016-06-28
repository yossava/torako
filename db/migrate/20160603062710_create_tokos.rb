class CreateTokos < ActiveRecord::Migration
  def change
    create_table :tokos do |t|
      t.string :nama_toko
      t.string :provinsi
      t.string :kota
      t.string :kecamatan
      t.string :agen1
      t.string :agen2
      t.string :agen3
      t.string :agen4
      t.string :agen5
      t.string :agen6
      t.string :agen7
      t.string :slogan
      t.text :deskripsi
      t.text :alamat
      t.string :status
      t.datetime :tutup_sampai
      t.string :gambar
      t.string :banner1
      t.string :banner2
      t.string :banner2

      t.timestamps null: false
    end
  end
end
