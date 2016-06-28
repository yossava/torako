class Toko < ActiveRecord::Base
  mount_uploader :toko_image, ImageUploader
  mount_uploader :banner1, ImageUploader
  mount_uploader :banner2, ImageUploader
  mount_uploader :banner3, ImageUploader
  belongs_to :user
  belongs_to :cart
  has_many :feedbacks,    dependent: :destroy
  has_many :produks,    dependent: :destroy
  has_many :categories, through: :produks
end
