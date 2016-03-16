class Item < ActiveRecord::Base
	belongs_to :user

	def self.search(search)
		if search
			where("name LIKE ?", "%#{search}%")
			where("section LIKE ?", "%#{search}%")
		else
			where(nil)
			# just like all but doesn't perform actual query
		end
	end

end
