class Storemember < ActiveRecord::Base
	 belongs_to :store
	 has_many :users
end
