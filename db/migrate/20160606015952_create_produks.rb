class CreateProduks < ActiveRecord::Migration
  def change
    create_table :produks do |t|
      t.string :nama_produk
      t.string :kategori
      t.string :sub_kategori
      t.decimal :harga
      t.decimal :harga_diskon
      t.decimal :berat
      t.string :foto_produk1
      t.string :foto_produk2
      t.string :foto_produk3
      t.string :foto_produk4
      t.string :foto_produk5
      t.string :foto_produk6
      t.text :deskripsi
      t.decimal :harga_grosir1min
      t.decimal :harga_grosir1max
      t.decimal :harga_grosir2min
      t.decimal :harga_grosir2max
      t.decimal :harga_grosir3min
      t.decimal :harga_grosir3max
      t.decimal :harga_grosir4min
      t.decimal :harga_grosir4max
      t.decimal :harga_grosir5min
      t.decimal :harga_grosir5max
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
