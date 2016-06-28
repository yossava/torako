class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :subkategori
      t.text :deskripsi
      t.string :subcategori_image
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
