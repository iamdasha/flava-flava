class Cloth < ApplicationRecord
  validates :name, :presence => true

  belongs_to :artist
  mount_uploader :clothimage, ClothUploader
  belongs_to :user
end
