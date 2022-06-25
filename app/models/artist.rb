class Artist < ApplicationRecord
  validates :name, :presence => true
  validates :sex, :presence => true
  validates :age, :presence => true
  mount_uploader :artistphoto, ArtistphotoUploader

  belongs_to :brand
  belongs_to :user
  belongs_to :collection
  has_many :posts, dependent: :destroy
  has_many :looks, dependent: :destroy

  has_many :artistfavorites, dependent: :destroy

  scope :filter_by_starts_with, -> (name) { where("name like ?", "%#{name}%")}
end
