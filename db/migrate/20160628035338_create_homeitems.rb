class CreateHomeitems < ActiveRecord::Migration
  def change
    create_table :homeitems do |t|
      t.string :title
      t.text :description
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :img4
      t.string :img5
      t.string :img6
      t.string :img7
      t.string :img8
      t.string :img9

      t.timestamps null: false
    end
  end
end
