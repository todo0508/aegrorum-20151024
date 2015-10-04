
module GetElectronicInfo

  class CollectElectronicInform

  	def self.getLatestTokyo
	  # 東京電力管轄内の最新の電力使用状況を取得する場合
      web_command = "http://setsuden.yahooapis.jp/v1/Setsuden/latestPowerUsage?appid=dj0zaiZpPVMzb2F4eERaZG9tYSZzPWNvbnN1bWVyc2VjcmV0Jng9MzI-&area=tokyo"
      `curl $'#{web_command}'`	  
	end

  	def self.getTokyo_20110614
	  # 東京電力管轄内の2011年6月1日14時台を平均した電力使用状況を取得する場合
      web_command = "http://setsuden.yahooapis.jp/v1/Setsuden/latestPowerUsage?appid=dj0zaiZpPVMzb2F4eERaZG9tYSZzPWNvbnN1bWVyc2VjcmV0Jng9MzI-&area=tokyo&datetime=2011060114"
      `curl $'#{web_command}'`	  
	end

  	def self.getLatestTokyo_interval
	  # 東京電力管轄内の5分間隔で更新される最新の電力使用状況を取得する場合
      web_command = "http://setsuden.yahooapis.jp/v1/Setsuden/latestPowerUsage?appid=dj0zaiZpPVMzb2F4eERaZG9tYSZzPWNvbnN1bWVyc2VjcmV0Jng9MzI-&area=tokyo&latest=1"
      `curl $'#{web_command}'`	  
	end

  end

end

