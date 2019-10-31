class Gossip < ApplicationRecord
	validates :title, 
	  presence: true,
	  length: { minimum: 3, wrong_length: "3 to 14 characters is allowed" }
	validates :content,
	  presence: true

	belongs_to :user
	has_many :join_tag_gossips
	has_many :tags, through: :join_tag_gossips
	has_many :comments
	has_many :likes


end