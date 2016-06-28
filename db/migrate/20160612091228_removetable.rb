class Removetable < ActiveRecord::Migration
  def change
    drop_table :wishlists
  end
end
