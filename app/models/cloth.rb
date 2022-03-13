class Cloth < ApplicationRecord
  validates :name, :presence => true

  mount_uploader :clothimage, ClothUploader
  belongs_to :user
  belongs_to :brand
  belongs_to :look
end
