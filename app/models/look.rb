class Look < ApplicationRecord
  validates :title, :presence => true

  belongs_to :artist
  belongs_to :filtertag
  has_many :cloths, dependent: :destroy

  mount_uploader :image, LookUploader
end
