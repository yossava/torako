class Createtable < ActiveRecord::Migration
  def change
     create_table :favorite_produks do |t|
      t.integer :user_id
      t.integer :produk_id

      t.timestamps null: false
    end
  end
end
