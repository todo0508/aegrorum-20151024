require "nokogiri"

module Api
    class HouseController < ApplicationController
        
        def index
        	value = 'OFF'
		    if params["type"]
		      case params["type"]
		      when "1"
		        PhamiliaBackend::CollectHouse.get_operationStatus
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "2"
		        PhamiliaBackend::CollectHouse.set_aircondition_on
		      when "3"
		        PhamiliaBackend::CollectHouse.set_aircondition_off
		      when "4"
		        PhamiliaBackend::CollectHouse.set_aircondition_auto
		      when "5"
		        PhamiliaBackend::CollectHouse.set_aircondition_cooling
		      when "6"
		        PhamiliaBackend::CollectHouse.set_aircondition_heating
		      when "7"
		        PhamiliaBackend::CollectHouse.set_aircondition_dehumidification
		      when "8"
		        PhamiliaBackend::CollectHouse.set_aircondition_ventilation
		      when "9"
		        PhamiliaBackend::CollectHouse.get_aircondition_temperature
		      when "10"
		        PhamiliaBackend::CollectHouse.set_temperature_17
		      when "11"
		        PhamiliaBackend::CollectHouse.set_temperature_28
		      when "12"
		        PhamiliaBackend::CollectHouse.set_temperature_32
		      when "13"
		        PhamiliaBackend::CollectHouse.get_aircondition_humidity
		      when "14"
		        PhamiliaBackend::CollectHouse.get_indoorTemperature
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "15"
		        PhamiliaBackend::CollectHouse.get_outdoorTemperature
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "16"
		        PhamiliaBackend::CollectHouse.led_on
		      when "17"
		        PhamiliaBackend::CollectHouse.led_off
		      when "18"
		        PhamiliaBackend::CollectHouse.get_led_sts
		      when "19"
		        res = PhamiliaBackend::CollectHouse.get_autodoor_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "20"
		        PhamiliaBackend::CollectHouse.get_autodoor_name
		      when "21"
		        PhamiliaBackend::CollectHouse.autodoor_on
		      when "22"
		        PhamiliaBackend::CollectHouse.autodoor_off
		      when "23"
		        PhamiliaBackend::CollectHouse.get_autodoor_connect_name
		      when "24"
		        PhamiliaBackend::CollectHouse.get_autoshutter_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "25"
		        PhamiliaBackend::CollectHouse.get_autoshutter_name
		      when "26"
		        PhamiliaBackend::CollectHouse.autoshutter_on
		      when "27"
		        PhamiliaBackend::CollectHouse.autoshutter_off
		      when "28"
		        PhamiliaBackend::CollectHouse.get_autoshutter_connect_name
		      when "29"
		        PhamiliaBackend::CollectHouse.get_autowindows_sts
		        xml_doc = Nokogiri::XML(res)
		        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
		      when "30"
		        PhamiliaBackend::CollectHouse.get_autowindows_name
		      when "31"
		        PhamiliaBackend::CollectHouse.autowindows_on
		      when "32"
		        PhamiliaBackend::CollectHouse.autowindows_off
		      when "33"
		        PhamiliaBackend::CollectHouse.get_autowindows_connect_name

		      when "100"
		        TwilioBackend::CollectHouse.control_voip_phone
		      end
		    end

           	render json: {:value => value}
        end
    end
end
