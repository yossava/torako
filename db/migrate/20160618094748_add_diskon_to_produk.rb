class AddDiskonToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :diskon, :integer
  end
end
