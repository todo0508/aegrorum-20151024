require 'rubygems'
require 'twilio-ruby'

module TwilioBackend
  class CollectHouse
    def self.control_voip_phone
        account_sid = '[account SID]'
        auth_token = '[Auth Token]'

        @client = Twilio::REST::Client.new account_sid, auth_token
        @call = @client.account.calls.create(
          :from => '+8150xxxxxxxx',   # From your Twilio number
          :to => '+8180xxxxxxxx',     # To any number
          :url => 'http://your URL/calling.xml'
        )
    end

    def self.control_house_info
        web_command = "http://192.168.1.8:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
        `curl $'#{web_command}'`
    end
  end
end
