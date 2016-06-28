class AddTerimaPembayaran1ToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :terima_pembayaran1, :string
    add_column :tokos, :terima_pembayaran2, :string
    add_column :tokos, :terima_pembayaran3, :string
  end
end
