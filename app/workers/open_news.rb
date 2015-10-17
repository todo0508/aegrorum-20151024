require 'rexml/document'
require 'uri'

module OpenNews

  class GetArticles
  	def self.getNewsItem
  		topic_pickup
#  		topic_world
  	end

  	def self.collectNewsItem(web_command)
  		text1,text2,text3,text4,text5,text6,text7,text8,text9,uri1,uri2,uri3,uri4,uri5,uri6,uri7,uri8,uri9 = ""
        result = `curl $'#{web_command}'`
        doc = REXML::Document.new(result)

        i = 0
		doc.elements.each('rss/channel/item') do |sle|
			case i
			when 0
		       	text1 = sle.elements['title'].text
		       	uri1 = sle.elements['link'].text
			when 1
		       	text2 = sle.elements['title'].text
		       	uri2 = sle.elements['link'].text
			when 2
		       	text3 = sle.elements['title'].text
		       	uri3 = sle.elements['link'].text
			when 3
		       	text4 = sle.elements['title'].text
		       	uri4 = sle.elements['link'].text
			when 4
		       	text5 = sle.elements['title'].text
		       	uri5 = sle.elements['link'].text
			when 5
		       	text6 = sle.elements['title'].text
		       	uri6 = sle.elements['link'].text
			when 6
		       	text7 = sle.elements['title'].text
		       	uri7 = sle.elements['link'].text
			when 7
		       	text8 = sle.elements['title'].text
		       	uri8 = sle.elements['link'].text
			when 8
		       	text9 = sle.elements['title'].text
		       	uri9 = sle.elements['link'].text
			end
        	i += 1
        end
  		return text1,text2,text3,text4,text5,text6,text7,text8,text9,uri1,uri2,uri3,uri4,uri5,uri6,uri7,uri8,uri9  	end

  	def self.topic_pickup
  		collectNewsItem('http://news.yahoo.co.jp/pickup/rss.xml')
	end

	# 海外
  	def self.topic_world
  		collectNewsItem('http://news.yahoo.co.jp/pickup/world/rss.xml')
	end

	# 国際 - Yahoo!ニュース
  	def self.subtopic_world
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-c_int.xml')
	end

	# エンターテインメント
  	def self.topic_entertaiment
  		collectNewsItem('http://news.yahoo.co.jp/pickup/entertainment/rss.xml')
	end

	# エンタメ - Yahoo!ニュース
  	def self.subtopic_entertaiment
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-c_ent.xml')
	end

	# コンピュータ
  	def self.topic_computer
  		collectNewsItem('http://news.yahoo.co.jp/pickup/computer/rss.xml')
	end

	# IT・科学 - Yahoo!ニュース
  	def self.subtopic_computer
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-c_sci.xml')
	end

	# 地域
  	def self.topic_local
  		collectNewsItem('http://news.yahoo.co.jp/pickup/local/rss.xml')
	end

	# 地域 - Yahoo!ニュース
  	def self.subtopic_local
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-loc.xml')
	end

	# 国内
  	def self.topic_domestic
  		collectNewsItem('http://news.yahoo.co.jp/pickup/domestic/rss.xml')
	end

	# 国内 - Yahoo!ニュース
  	def self.subtopic_domestic
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-dom.xml')
	end

	# 経済
  	def self.topic_economy
  		collectNewsItem('http://news.yahoo.co.jp/pickup/economy/rss.xml')
	end

	# 経済 - Yahoo!ニュース
  	def self.subtoic_economy
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-bus.xml')
	end

	# スポーツ
  	def self.topic_sports
  		collectNewsItem('http://news.yahoo.co.jp/pickup/sports/rss.xml')
	end

	# スポーツ - Yahoo!ニュース
  	def self.subtopic_sports
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-c_spo.xml')
	end

	# サイエンス
  	def self.topic_science
  		collectNewsItem('http://news.yahoo.co.jp/pickup/science/rss.xml')
	end

	# ライフ - Yahoo!ニュース
  	def self.subtopic_life
  		collectNewsItem('http://headlines.yahoo.co.jp/rss/all-c_life.xml')
	end

  end

end




