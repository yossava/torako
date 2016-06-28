class AddProvinsiSebagaiToAlamat < ActiveRecord::Migration
  def change
    add_column :alamats, :provinsi_sebagai, :string
    add_column :alamats, :kota_sebagai, :string
    add_column :alamats, :kecamatan_sebagai, :string
  end
end
