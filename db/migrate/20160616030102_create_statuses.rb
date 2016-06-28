class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.integer :stat

      t.timestamps null: false
    end
  end
end
