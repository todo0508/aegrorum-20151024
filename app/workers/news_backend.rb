module NewsBackend

  class Collectnews

      def self.connect_news
        web_command = "http://192.168.1.5:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
        `curl $'#{web_command}'`
      end

  end

end
