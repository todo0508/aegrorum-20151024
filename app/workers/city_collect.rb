require 'rexml/document'
require 'uri'

module CityCollect

  class GetItem

  	def self.getCityInfo

        web_command = "http://www.city.kuwana.lg.jp/rss.xml"
        result = `curl $'#{web_command}'`
        doc = REXML::Document.new(result)

        text = ""
        apn = ""
        image = ""
        interest = 0
        i = 0
        index = doc.elements['rdf:RDF/item'].length
        random = Random.new
        index = random.rand(0..(index-1))

		doc.elements.each('rdf:RDF/item') do |sle|
			if i == index
	           	text = "タイトル：" << sle.elements['title'].text if sle.elements['title']
                text = text << "\n" << sle.elements['description'].text if sle.elements['description'].text
	        	apn = sle.elements['link'].text if sle.elements['link']
	        	interest = 1
	        end
        	i += 1
        end

        return text,apn,image,interest
	  end




  end

end





