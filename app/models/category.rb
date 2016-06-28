class Category < ActiveRecord::Base
    mount_uploader :slide1, ImageUploader
    mount_uploader :slide2, ImageUploader
    mount_uploader :slide3, ImageUploader
    has_many :subcategories
    has_many :produks

end
