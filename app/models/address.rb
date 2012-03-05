class Address < ActiveRecord::Base
	validates :url, :presence => true
end
