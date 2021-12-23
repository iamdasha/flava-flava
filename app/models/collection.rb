class Collection < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :colectfavorites, dependent: :destroy
  belongs_to :user
  mount_uploader :cover, ColectcoverUploader
end
