class AddCategoryIdToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :category_id, :string
  end
end
