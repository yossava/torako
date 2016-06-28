class CreateStatics < ActiveRecord::Migration
  def change
    create_table :statics do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end
