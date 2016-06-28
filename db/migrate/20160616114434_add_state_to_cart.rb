class AddStateToCart < ActiveRecord::Migration
  def change
    add_column :carts, :state, :integer
  end
end
