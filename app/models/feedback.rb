class Feedback < ActiveRecord::Base
   belongs_to :toko
   belongs_to :produk
   belongs_to :user
end
