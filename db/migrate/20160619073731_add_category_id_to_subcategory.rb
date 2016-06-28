class AddCategoryIdToSubcategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :gambar_kategori2, :string
    add_column :subcategories, :gambar_kategori3, :string
  end
end
