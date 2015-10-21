require "nokogiri"

module Api
    class HouseController < ApplicationController
        
        def index
        	value = 'OFF'
		    if params["type"]
		      case params["type"]
		      when "1"
		        res = PhamiliaBackend::ControlAirConditioner.get_operationStatus
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "2"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_on
		      when "3"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_off
		      when "4"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_auto
		      when "5"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_cooling
		      when "6"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_heating
		      when "7"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_dehumidification
		      when "8"
		        PhamiliaBackend::ControlAirConditioner.set_aircondition_ventilation
		      when "9"
		        PhamiliaBackend::ControlAirConditioner.get_aircondition_temperature
		      when "10"
		        PhamiliaBackend::ControlAirConditioner.set_temperature_17
		      when "11"
		        PhamiliaBackend::ControlAirConditioner.set_temperature_28
		      when "12"
		        PhamiliaBackend::ControlAirConditioner.set_temperature_32
		      when "13"
		        PhamiliaBackend::ControlAirConditioner.get_aircondition_humidity
		      when "14"
		        res = PhamiliaBackend::GetTemprature.get_indoorTemperature
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "15"
		        res = PhamiliaBackend::GetTemprature.get_outdoorTemperature
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "16"
		        PhamiliaBackend::ControlLED.led_on
		      when "17"
		        PhamiliaBackend::ControlLED.led_off
		      when "18"
		        PhamiliaBackend::ControlLED.get_led_sts
		      when "19"
		        res = PhamiliaBackend::ControlAutoDoor.get_autodoor_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "20"
		        PhamiliaBackend::ControlAutoDoor.get_autodoor_name
		      when "21"
		        PhamiliaBackend::ControlAutoDoor.autodoor_on
		      when "22"
		        PhamiliaBackend::ControlAutoDoor.autodoor_off
		      when "23"
		        PhamiliaBackend::ControlAutoDoor.get_autodoor_connect_name
		      when "24"
		        res = PhamiliaBackend::ControlAutoShutter.get_autoshutter_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "25"
		        PhamiliaBackend::ControlAutoShutter.get_autoshutter_name
		      when "26"
		        PhamiliaBackend::ControlAutoShutter.autoshutter_on
		      when "27"
		        PhamiliaBackend::ControlAutoShutter.autoshutter_off
		      when "28"
		        PhamiliaBackend::ControlAutoShutter.get_autoshutter_connect_name
		      when "29"
		        res = PhamiliaBackend::ControlAutoWindow.get_autowindows_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "30"
		        PhamiliaBackend::ControlAutoWindow.get_autowindows_name
		      when "31"
		        PhamiliaBackend::ControlAutoWindow.autowindows_on
		      when "32"
		        PhamiliaBackend::ControlAutoWindow.autowindows_off
		      when "33"
		        PhamiliaBackend::ControlAutoWindow.get_autowindows_connect_name

		      when "100"
		        TwilioBackend::CollectHouse.control_voip_phone
		      when "101"
				value = '<?xml version="1.0" encoding="UTF-8"?><Response><Say language="ja-jp">Twilioへようこそ。</Say></Response>'
		      end
		    end

           	render xml: value
#           	render json: {:value => value}
        end
    end
end
