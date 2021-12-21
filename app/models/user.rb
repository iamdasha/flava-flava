class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :favorited_posts, :through => :favorites, :source => :post

  has_many :artistfavorites, dependent: :destroy
  has_many :artistfavorited_artists, :through => :artistfavorites, :source => :artist

  mount_uploader :avatar, AvatarUploader
end
