
module OpenWeather

  class GetWeather

  	def self.getLatestTokyo
      web_command = "http://api.openweathermap.org/data/2.5/weather?q=Tokyo,jp%20"
      `curl $'#{web_command}'`
	end

  end

end




