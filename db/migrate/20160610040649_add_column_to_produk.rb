class AddColumnToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :jumlah_grosir1min, :integer
    add_column :produks, :jumlah_grosir1max, :integer
    add_column :produks, :jumlah_grosir2min, :integer
    add_column :produks, :jumlah_grosir2max, :integer
    add_column :produks, :jumlah_grosir3min, :integer
    add_column :produks, :jumlah_grosir3max, :integer
    add_column :produks, :jumlah_grosir4min, :integer
    add_column :produks, :jumlah_grosir4max, :integer
    add_column :produks, :jumlah_grosir5min, :integer
    add_column :produks, :jumlah_grosir5max, :integer
    add_column :produks, :jumlah_grosir6min, :integer
    add_column :produks, :jumlah_grosir6max, :integer
  end
end
