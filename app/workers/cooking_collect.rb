
module CookingCollect

  class GetMenu
	# API key   :   76bf55ead0c8e21a


  	def self.getFoodStore
      web_command = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=76bf55ead0c8e21a&lat=" << 34.67 << "&lng=" << 135.52 << "&range=5&order=4"
      `curl $'#{web_command}'`
	end

  	def self.getFood
      web_command = "http://webservice.recruit.co.jp/hotpepper/food/v1/"
      `curl $'#{web_command}'`
	end


  	def self.getFoodCategory
      web_command = "http://webservice.recruit.co.jp/hotpepper/food_category/v1/"
      `curl $'#{web_command}'`
	end

  end

end




