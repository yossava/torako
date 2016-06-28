class Removecolumn < ActiveRecord::Migration
  def change
    remove_column :produks, :sub_kategori
  end
end
