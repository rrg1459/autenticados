class Post < ApplicationRecord

	mount_uploader :image, ImageUploader
  mount_uploaders :attachments, ImageUploader


	validates :title, presence: true, length: {minimum: 2}
	validates :body, presence: true

end
