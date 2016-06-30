class AddJumlahToKonfirmasi < ActiveRecord::Migration
  def change
    add_column :konfirmasis, :jumlah, :integer
  end
end
