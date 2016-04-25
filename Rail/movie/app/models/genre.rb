class Genre < ActiveRecord::Base
	validates :name, uniqueness: true
end
