class Project < ApplicationRecord
  validates :name, presence: true
  validates :link, presence: true
  mount_uploader :image, ImageUploader
end
