class Alamat < ActiveRecord::Base
  belongs_to :user
  belongs_to :cart
end
