class AddResiToCart < ActiveRecord::Migration
  def change
    add_column :carts, :resi, :string
  end
end
