require 'date'

class Action < ActiveRecord::Base

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


	def self.store_aircondition(account_id, val1, val2, val3)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.temperature = val1
		item.huminity = val2
		item.wing = val3
		item.save
	end

	def self.store_emergency(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.emergency = val
		item.save
	end

	def self.store_userType(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.userType = val
		item.save
	end

	def self.store_nomOfSteps(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.numStep = val
		item.save
	end

	def self.store_building(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.building = val
		item.save
	end

	def self.store_speed(account_id, val1, val2)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.speed_new = val1
		item.speed_old = val2
		item.save
	end

	def self.store_shake(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.shake = val
		item.save
	end

	def self.store_proximity(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.proximity = val
		item.save
	end

	def self.store_location(account_id, val1, val2)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.latitude = val1
		item.longitude = val2
		item.save
	end

	def self.store_heading(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.heading = val
		item.save
	end

	def self.store_brightness(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.brightness = val
		item.save
	end

	def self.store_batteryState(account_id, val)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.batteryState = val
		item.save
	end

	def self.store_accelerater(account_id, val1, val2, val3)
		item = self.find_by(recorded: change_keytime)
		if !item
			item = self.new
		end
		item.recorded = change_keytime
		item.account_id = account_id
		item.acceleration_x = val1
		item.acceleration_y = val2
		item.acceleration_z = val3
		item.save
	end

end
