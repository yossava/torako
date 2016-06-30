class CreateKonfirmasis < ActiveRecord::Migration
  def change
    create_table :konfirmasis do |t|
      t.integer :user_id
      t.integer :cart_id
      t.string :tanggal
      t.string :bulan
      t.string :tahun
      t.string :metode
      t.string :dari
      t.string :tujuan
      t.string :keterangan

      t.timestamps null: false
    end
  end
end
