class Artist < ApplicationRecord
  validates :name, :presence => true
  validates :sex, :presence => true
  validates :age, :presence => true
  mount_uploader :artistphoto, ArtistphotoUploader

  belongs_to :filtertag
  belongs_to :style
  belongs_to :brand
  has_many :posts
  has_many :cloths

end
