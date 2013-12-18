class Request < ActiveRecord::Base
	belongs_to :customer
	belongs_to :tradesperson
	belongs_to :trade
	
	validates :desription, presence: true
	validates :startDate, presence: true
	validates :tradesperson_id, presence: true

	geocoded_by :location
	after_validation :geocode, :if => :location_changed?

end
