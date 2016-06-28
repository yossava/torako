class FavoriteProduk < ActiveRecord::Base
  belongs_to :produk
  belongs_to :user
end
