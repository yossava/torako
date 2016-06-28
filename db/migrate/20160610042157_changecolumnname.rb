class Changecolumnname < ActiveRecord::Migration
  def change
    remove_column :produks, :harga_grosir1max
    remove_column :produks, :harga_grosir2max
    remove_column :produks, :harga_grosir3max
    remove_column :produks, :harga_grosir4max
    remove_column :produks, :harga_grosir5max
    rename_column :produks, :harga_grosir1min, :harga_grosir1
    rename_column :produks, :harga_grosir2min, :harga_grosir2
    rename_column :produks, :harga_grosir3min, :harga_grosir3
    rename_column :produks, :harga_grosir4min, :harga_grosir4
    rename_column :produks, :harga_grosir5min, :harga_grosir5
  end
end
