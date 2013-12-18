class Tradesperson < ActiveRecord::Base
	has_many :requests
	has_many :posts, :dependent => :destroy
	belongs_to :trade
	
	has_secure_password
	
	validates :name, presence: true
	validates :trade, presence: true
	validates :phone, presence: true
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
	
	def self.search(search)
		search_condition = search + "%"
		find(:all, :conditions => ['name LIKE  ?', search_condition])
    end

end
