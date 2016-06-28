class Fixcolumnname < ActiveRecord::Migration
  def change
    rename_column :tokos, :gambar, :toko_image
  end
end
