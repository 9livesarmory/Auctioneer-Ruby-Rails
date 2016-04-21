class User < ActiveRecord::Base
	has_many :products #relational entry
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
