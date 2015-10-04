module TwilioBackend

  class CollectHouse

      def self.control_voip_phone
        web_command = "http://192.168.1.8:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
        `curl $'#{web_command}'`
      end

      def self.control_house_info
        web_command = "http://192.168.1.8:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
        `curl $'#{web_command}'`
      end

  end
end
