class AddSubcategoryIdToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :subcategory_id, :string
  end
end
