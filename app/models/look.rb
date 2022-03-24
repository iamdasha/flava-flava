class Look < ApplicationRecord
  validates :title, :presence => true

  belongs_to :artist
  belongs_to :filtertag
  belongs_to :post
  has_many :cloths, dependent: :destroy
  has_many :lookfavorites, dependent: :destroy

  mount_uploader :image, LookUploader

  scope :filter_by_filtertag, -> (filtertag) { where filtertag: filtertag }
  
end
