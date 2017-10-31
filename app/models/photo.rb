class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  #validates :image, presence: true
  belongs_to :photo_collection
end
