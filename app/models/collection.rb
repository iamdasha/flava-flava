class Collection < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :colectfavorites, dependent: :destroy
end
