class Homeitem < ActiveRecord::Base
  mount_uploader :img1, ImageUploader
  mount_uploader :img2, ImageUploader
  mount_uploader :img3, ImageUploader
  mount_uploader :img4, ImageUploader
  mount_uploader :img5, ImageUploader
  mount_uploader :img6, ImageUploader
  mount_uploader :img7, ImageUploader
  mount_uploader :img8, ImageUploader
  mount_uploader :img9, ImageUploader
end
