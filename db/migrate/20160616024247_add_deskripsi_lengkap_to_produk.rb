class AddDeskripsiLengkapToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :deskripsi_lengkap, :text
  end
end
