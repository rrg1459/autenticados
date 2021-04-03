class Post < ApplicationRecord

	mount_uploader :image, ImageUploader
  mount_uploaders :attachments, ImageUploader


	validates :title, presence: true, length: {minimum: 2}
	validates :body, presence: true

	def en_dolares
		self.precio.to_f / 100
	end

	def en_bolivares
		self.precio * $dolar / 100
	end

end
