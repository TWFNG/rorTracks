class Track < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :category

	validates :title, presence: true, length: { minimum: 4 }
	validates :embed_code, presence: true

end