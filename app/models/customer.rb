class Customer < ActiveRecord::Base
	has_many :requests, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	has_secure_password
	
	validates :name, presence: true
	validates :phone, presence: true
	validates :address, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
end
