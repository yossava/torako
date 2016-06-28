class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :tokos, :tutup_sampai,  :string
  end
end
