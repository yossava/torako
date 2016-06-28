class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :subcategories, :parent_id, :category_id
  end
end
