class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :favorited_posts, :through => :favorites, :source => :post

  has_many :artistfavorites, dependent: :destroy
  has_many :artistfavorited_artists, :through => :artistfavorites, :source => :artist

  has_many :colectfavorites, dependent: :destroy
  has_many :colectfavorited_collections, :through => :colectfavorites, :source => :collection

  has_many :lookfavorites, dependent: :destroy
  has_many :lookfavorited_looks, :through => :lookfavorites, :source => :look

  has_many :clothfavorites, dependent: :destroy
  has_many :clothfavorited_cloths, :through => :clothfavorites, :source => :cloth

  mount_uploader :avatar, AvatarUploader
end
