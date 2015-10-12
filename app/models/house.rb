class House < ActiveRecord::Base

	def self.change_keytime
		if DateTime.current.min < 10
			date = DateTime.current.change(min: 0, sec: 0)
		elsif DateTime.current.min < 20
			date = DateTime.current.change(min: 10, sec: 0)
		elsif DateTime.current.min < 30
			date = DateTime.current.change(min: 20, sec: 0)
		elsif DateTime.current.min < 40
			date = DateTime.current.change(min: 30, sec: 0)
		elsif DateTime.current.min < 50
			date = DateTime.current.change(min: 40, sec: 0)
		else
			date = DateTime.current.change(min: 50, sec: 0)
		end

		return date
	end

	def self.store_electronic(val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.elec_sts = val
		item.save
	end

	def self.store_gas(val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.gas_sts = val
		item.save
	end

	def self.store_water(val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.water_sts = val
		item.save
	end

	def self.store_unknown(val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.unknown = val
		item.save
	end

end
