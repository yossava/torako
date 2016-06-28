class AddProdukIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :produk_id, :integer
    add_column :statuses, :cart_id, :integer
  end
end
