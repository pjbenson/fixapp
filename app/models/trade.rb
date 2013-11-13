class Trade < ActiveRecord::Base
	has_many :requests
end
