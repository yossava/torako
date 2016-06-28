class AddBanner3ToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :banner3, :string
  end
end
