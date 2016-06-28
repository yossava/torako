class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :toko_id
      t.integer :user_id
      t.integer :produk_id
      t.string :invoice
      t.text :catatan
      t.integer :jumlah
      t.integer :subtotal
      t.integer :total
      t.string :metode_pembayaran
      t.integer :alamat_id
      t.string :kurir
      t.integer :berat

      t.timestamps null: false
    end
  end
end
