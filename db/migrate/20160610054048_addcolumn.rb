class Addcolumn < ActiveRecord::Migration
  def change
    add_column :produks, :toko_id, :integer
  end
end
