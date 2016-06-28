class AddCartIdToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :cart_id, :integer
  end
end
