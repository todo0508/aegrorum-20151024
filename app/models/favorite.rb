class Favorite < ActiveRecord::Base

	def self.store_ingoing(account_id)
		item = self.new
		item.account_id = account_id
		item.ingoing = DateTime.current
		item.save
	end

	def self.store_outgoing(account_id)
		item = self.new
		item.account_id = account_id
		item.outgoing = DateTime.current
		item.save
	end

end
