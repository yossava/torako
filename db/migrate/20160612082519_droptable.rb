class Droptable < ActiveRecord::Migration
  def change
    drop_table :wishlist_items
  end
end
