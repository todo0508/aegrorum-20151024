
module OpenNews

  class GetArticles

  	def self.topic_pickup
      web_command = "http://news.yahoo.co.jp/pickup/rss.xml"
      `curl $'#{web_command}'`
	end

	# 海外
  	def self.topic_world
      web_command = "http://news.yahoo.co.jp/pickup/world/rss.xml"
      `curl $'#{web_command}'`
	end

	# 国際 - Yahoo!ニュース
  	def self.subtopic_world
      web_command = "http://headlines.yahoo.co.jp/rss/all-c_int.xml"
      `curl $'#{web_command}'`
	end

	# エンターテインメント
  	def self.topic_entertaiment
      web_command = "http://news.yahoo.co.jp/pickup/entertainment/rss.xml"
      `curl $'#{web_command}'`
	end

	# エンタメ - Yahoo!ニュース
  	def self.subtopic_entertaiment
      web_command = "http://headlines.yahoo.co.jp/rss/all-c_ent.xml"
      `curl $'#{web_command}'`
	end

	# コンピュータ
  	def self.topic_computer
      web_command = "http://news.yahoo.co.jp/pickup/computer/rss.xml"
      `curl $'#{web_command}'`
	end

	# IT・科学 - Yahoo!ニュース
  	def self.subtopic_computer
      web_command = "http://headlines.yahoo.co.jp/rss/all-c_sci.xml"
      `curl $'#{web_command}'`
	end

	# 地域
  	def self.topic_local
      web_command = "http://news.yahoo.co.jp/pickup/local/rss.xml"
      `curl $'#{web_command}'`
	end

	# 地域 - Yahoo!ニュース
  	def self.subtopic_local
      web_command = "http://headlines.yahoo.co.jp/rss/all-loc.xml"
      `curl $'#{web_command}'`
	end

	# 国内
  	def self.topic_domestic
      web_command = "http://news.yahoo.co.jp/pickup/domestic/rss.xml"
      `curl $'#{web_command}'`
	end

	# 国内 - Yahoo!ニュース
  	def self.subtopic_domestic
      web_command = "http://headlines.yahoo.co.jp/rss/all-dom.xml"
      `curl $'#{web_command}'`
	end

	# 経済
  	def self.topic_economy
      web_command = "http://news.yahoo.co.jp/pickup/economy/rss.xml"
      `curl $'#{web_command}'`
	end

	# 経済 - Yahoo!ニュース
  	def self.subtoic_economy
      web_command = "http://headlines.yahoo.co.jp/rss/all-bus.xml"
      `curl $'#{web_command}'`
	end

	# スポーツ
  	def self.topic_sports
      web_command = "http://news.yahoo.co.jp/pickup/sports/rss.xml"
      `curl $'#{web_command}'`
	end

	# スポーツ - Yahoo!ニュース
  	def self.subtopic_sports
      web_command = "http://headlines.yahoo.co.jp/rss/all-c_spo.xml"
      `curl $'#{web_command}'`
	end

	# サイエンス
  	def self.topic_science
      web_command = "http://news.yahoo.co.jp/pickup/science/rss.xml"
      `curl $'#{web_command}'`
	end

	# ライフ - Yahoo!ニュース
  	def self.subtopic_life
      web_command = "http://headlines.yahoo.co.jp/rss/all-c_life.xml"
      `curl $'#{web_command}'`
	end

  end

end




