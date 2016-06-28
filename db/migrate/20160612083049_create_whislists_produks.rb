class CreateWhislistsProduks < ActiveRecord::Migration
  def change
    create_table :whislists_produks, :id => false do |t|
      t.integer :wishlist_id
      t.integer :produk_id

      t.timestamps null: false
    end
  end
end
