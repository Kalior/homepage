class Project < ActiveRecord::Base
  validates :name, presence: true
  validates :link, presence: true
end
