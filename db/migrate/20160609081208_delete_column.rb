class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :produks, :kategori
    remove_column :produks, :subkategori
  end
end
