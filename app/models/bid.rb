class Bid < ActiveRecord::Base
	belongs_to :product #relational entry
	validates :amount, presence: true, numericality: {only_integer:true, greater_than: 0}
end
