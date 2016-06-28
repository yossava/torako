class AddKodePosToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :kode_pos, :string
  end
end
