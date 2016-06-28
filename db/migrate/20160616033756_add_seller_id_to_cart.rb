class AddSellerIdToCart < ActiveRecord::Migration
  def change
    add_column :carts, :seller_id, :integer
  end
end
