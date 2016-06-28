class CreateAlamats < ActiveRecord::Migration
  def change
    create_table :alamats do |t|
      t.string :sebagai
      t.string :nama_penerima
      t.text :alamat
      t.string :kode_pos
      t.string :provinsi
      t.string :kabupaten
      t.string :kecamatan
      t.string :nomor_telepon
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
