class AddSlideToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :slide1, :string
    add_column :categories, :slide2, :string
    add_column :categories, :slide3, :string
  end
end
