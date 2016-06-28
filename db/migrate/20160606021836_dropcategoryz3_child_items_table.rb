class Dropcategoryz3ChildItemsTable < ActiveRecord::Migration
  def change
    drop_table :categoryz3_child_items
    drop_table :categoryz3_items
    drop_table :categoryz3_categories
  end
end
