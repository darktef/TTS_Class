class Actor < ActiveRecord::Base
	validates :name, present: true
	validates :bio, present: true, length: {maximum: 500}

end
