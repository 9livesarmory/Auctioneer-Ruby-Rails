class Product < ActiveRecord::Base
	belongs_to :user #relational entry
	has_many :bids
end

