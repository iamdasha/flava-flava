class Artist < ApplicationRecord
  validates :name, :presence => true
  validates :sex, :presence => true
  validates :age, :presence => true
  mount_uploader :artistphoto, ArtistphotoUploader

  belongs_to :filtertag
  belongs_to :style
  belongs_to :brand
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :cloths, dependent: :destroy

  has_many :artistfavorites, dependent: :destroy
end
