class CreateRekenings < ActiveRecord::Migration
  def change
    create_table :rekenings do |t|
      t.string :pemilik
      t.string :cabang
      t.string :nomor_rekening
      t.string :nama_bank
      t.string :user_id

      t.timestamps null: false
    end
  end
end
