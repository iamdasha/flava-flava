class Post < ApplicationRecord
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 5 }
		mount_uploader :image, ImageUploader
		mount_uploader :fpic, FpicUploader
		mount_uploader :spic, FpicUploader
		mount_uploader :tpic, FpicUploader
		mount_uploader :lpic, FpicUploader
end
