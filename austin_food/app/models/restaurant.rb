class Restaurant < ActiveRecord::Base
	geocoded_by :address   # can also be an IP address
	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }  # auto-fetch coordinates
end
