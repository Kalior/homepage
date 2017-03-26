class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :link, presence: true
  mount_uploader :image, ImageUploader
end
