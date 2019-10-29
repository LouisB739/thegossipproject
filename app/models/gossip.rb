class Gossip < ApplicationRecord
	validates :content, presence: true 
	validates :title, presence: true,
	length: { maximum: 14 },
	length: { minimum: 3 }

	belongs_to :user
	has_many :join_tag_gossips
	has_many :tag, through: :join_tag_gossips

end