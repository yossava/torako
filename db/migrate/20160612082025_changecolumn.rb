class Changecolumn < ActiveRecord::Migration
  def change
    rename_column :wishlist_items, :produk_id, :item_id
  end
end
