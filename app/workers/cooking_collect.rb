require 'rexml/document'


module CookingCollect

  class GetMenu
	# API key   :   76bf55ead0c8e21a


  	def self.getFoodStore
        response = PhamiliaBackend::CollectHouse.home_user
        doc = REXML::Document.new(response)
        latitude = doc.elements['HemsUser/Latitude'].text
        longitude = doc.elements['HemsUser/Longitude'].text

        web_command = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=76bf55ead0c8e21a&lat=" << latitude << "&lng=" << longitude << "&range=5&order=4"
        result = `curl $'#{web_command}'`
        doc = REXML::Document.new(result)
        results_available = doc.elements['results/results_returned'].text.to_i

        random = Random.new
		index = random.rand(0..(results_available-1))
        text = ""
        apn = ""
        interest = 0
        i = 0
		doc.elements.each('results/shop') do |sle|
			if i == index
	        	text = "店名：" << sle.elements['name'].text << "\n住所：" << \
	        		sle.elements['address'].text << "\n" << sle.elements['genre/name'].text << "\n" << \
	           		sle.elements['genre/catch'].text << "\n" << sle.elements['catch'].text << "\n" << sle.elements['child'].text
	        	apn = sle.elements['coupon_urls'].text
	        	if apn == nil
		        	apn = sle.elements['urls/mobile'].text
	        	end
	        	interest = 1
	        end
        	i += 1
        end

        return text,apn,interest
	end

  	def self.getFoodStore_ori
      web_command = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=76bf55ead0c8e21a&lat=" << 34.67 << "&lng=" << 135.52 << "&range=5&order=4"
      `curl $'#{web_command}'`
	end


  	def self.getFood
      web_command = "http://webservice.recruit.co.jp/hotpepper/food/v1/?key=76bf55ead0c8e21a"
      `curl $'#{web_command}'`
	end


  	def self.getFoodCategory
      web_command = "http://webservice.recruit.co.jp/hotpepper/food_category/v1/?key=76bf55ead0c8e21a"
      `curl $'#{web_command}'`
	end

  end

end




