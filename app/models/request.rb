class Request < ActiveRecord::Base
	belongs_to :customer
	belongs_to :tradesperson
	belongs_to :trade

end
