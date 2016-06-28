class User < ActiveRecord::Base
  mount_uploader :profil_image, ImageUploader
  devise :registerable, :confirmable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pets,    dependent: :destroy
  has_many :alamats,    dependent: :destroy
  has_many :rekenings,    dependent: :destroy
  has_many :produks,    dependent: :destroy
  has_one :toko,    dependent: :destroy
  has_many :cart, dependent: :destroy
  has_many :favorite_produks
  has_many :favorites, through: :favorite_produks, source: :produk
  has_many :feedbacks
end
