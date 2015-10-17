require 'rexml/document'
require 'uri'

module BookingCollect

  class GetItem

    def self.getBook
        kw = ["リフォーム","ガーデニング","節電","掃除","インテリア","節約","料理"]
        
        random = Random.new
        index = random.rand(0..(kw.length-1))

        url = 'http://hon.jp/rest/2.1/' << kw[index] << '/2015sep26' << "/hardware=55&publ=FAAF"
        puts web_command = URI.escape(url)
        result = `curl $'#{web_command}'`
        doc = REXML::Document.new(result)
        results_available = doc.elements['ProductInfo/totalResults'].text.to_i
        index = random.rand(0..(results_available-1))
        text = ""
        apn = ""
        image = ""
        interest = 0
        i = 0
        doc.elements.each('ProductInfo/results') do |sle|
          if i == index
            text = "タイトル：" << sle.elements['title'].text << "\nカナ：" << \
              sle.elements['title_kana'].text << "\n著者：" << sle.elements['creator'].text << "\n出版社：" << \
                sle.elements['publisher'].text << "\nランク：" << sle.elements['rank90'].text << "位\n"# << sle.elements['genreInfo/genre1'].text << " : " << sle.elements['genreInfo/genre2'].text
            apn = sle.elements['details/url'].text
            if apn == nil
              apn = sle.elements['url'].text
            end
#            image = sle.elements['photo/mobile/l'].text
            interest = 1
          end
          i += 1
        end

        return text,apn,image,interest

    end

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
        image = ""
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
	        	image = sle.elements['photo/mobile/l'].text
	        	interest = 1
	        end
        	i += 1
        end

        return text,apn,image,interest
	  end




  end

end




