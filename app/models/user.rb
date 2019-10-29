class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name,presence: true
	validates :email,presence: true,
	format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }


	belongs_to :city
	has_many :gossips
	has_many :private_messages
	has_many :join_pms
 
end