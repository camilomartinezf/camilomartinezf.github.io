class User < ActiveRecord::Base
	has_many :transactions
	has_many :stores, through: :storemembers
	belongs_to :storemember
end
