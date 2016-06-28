class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :produks
  has_many :tokos
  has_many :alamats
end
