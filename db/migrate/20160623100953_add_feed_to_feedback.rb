class AddFeedToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :feed, :text
  end
end
