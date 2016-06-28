class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :toko_id
      t.integer :produk_id

      t.timestamps null: false
    end
  end
end
