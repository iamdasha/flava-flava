class Post < ApplicationRecord
		validates :title, :presence => true,
											:length => { :minimum => 5 }
		belongs_to :artist
		belongs_to :style
		belongs_to :brand
		belongs_to :type
		belongs_to :user
		belongs_to :collection
		has_many :favorites, dependent: :destroy

		mount_uploader :postcover, PostcoverUploader
		mount_uploader :fimage, FpicUploader
		mount_uploader :simage, FpicUploader
		mount_uploader :timage, FpicUploader

end
