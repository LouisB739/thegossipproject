class Gossip < ApplicationRecord
	belongs_to :user
	has_many :join_tag_gossips
	has_many :tag, through: :join_tag_gossips

end