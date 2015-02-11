class User < ActiveRecord::Base
	has_many :transaction
end
