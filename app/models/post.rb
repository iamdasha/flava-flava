class Post < ApplicationRecord
		validates :title, :presence => true,
											:length => { :minimum => 5 }
		belongs_to :artist
		belongs_to :style
		belongs_to :brand
		belongs_to :type
end
