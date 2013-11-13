class Customer < ActiveRecord::Base
	has_many :requests, :dependent => :destroy
	
	has_secure_password
	
	validates :name, presence: true
	validates :phone, presence: true
	validates :address, presence: true
	#validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
end
