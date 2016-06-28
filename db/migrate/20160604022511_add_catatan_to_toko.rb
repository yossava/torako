class AddCatatanToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :catatan, :string
  end
end
