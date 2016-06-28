class AddOngkirToCart < ActiveRecord::Migration
  def change
    add_column :carts, :ongkir, :integer
  end
end
