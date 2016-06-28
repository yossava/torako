class AddHargaBeliToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :harga_beli, :integer
  end
end
