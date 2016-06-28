class AddUserToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :user_id, :integer
  end
end
