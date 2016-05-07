class Room < ActiveRecord::Base
	belongs_to :user
	has_many :posts

	before_validation :set_room

	def set_room
		self.rando = SecureRandom.urlsafe_base64(8) if self.rando.nil?
	end

	extend FriendlyId
	friendly_id :rando, :use => :slugged

	def self.search(search)
		where("rando LIKE ?", "%#{search}%")
	end
end
