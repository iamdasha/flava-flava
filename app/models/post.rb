class Post < ApplicationRecord
		validates :title, :presence => true,
											:length => { :minimum => 5 }
		belongs_to :artist
		belongs_to :user
		belongs_to :collection
		belongs_to :filtertag
		has_many :favorites, dependent: :destroy

		mount_uploader :postcover, PostcoverUploader
		mount_uploader :fimage, FpicUploader
		mount_uploader :simage, PostcoverUploader
		mount_uploader :timage, FpicUploader

		scope :filter_by_filtertag, -> (filtertag) { where filtertag: filtertag }
		scope :filter_by_starts_with, -> (title) { where("title like ?", "%#{title}%")}

end
