class Tradesperson < ActiveRecord::Base
	has_many :requests
	belongs_to :trade
	
	has_secure_password
	
	validates :name, presence: true
	validates :trade, presence: true
	validates :phone, presence: true
end
