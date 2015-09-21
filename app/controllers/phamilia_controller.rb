class PhamiliaController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  def index

  	require 'rexml/document'
  	@graph_data = []
  	@graph_data2 = []
  	@graph_data3 = []
  	@graph_data4 = []
  	@graph_data5 = []
  	@graph_data11 = []
  	@graph_data12 = []
  	@graph_data21 = []
  	@graph_data22 = []
  	@graph_data23 = []
  	@graph_data24 = []
  	@graph_data25 = []
  	@graph_data26 = []
  	@graph_data27 = []
  	@graph_data28 = []
  	@graph_data29 = []
  	@graph_data30 = []

  	# 太陽光発電の発電電力量
  	response = PhamiliaBackend::CollectHouse.solarPowerSelling
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data.push(temp2)
  	end
  	# 太陽光発電の売却電力量
  	response = PhamiliaBackend::CollectHouse.solarPower
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data2.push(temp2)
  	end

  	# 蓄電池の充電電力量
  	response = PhamiliaBackend::CollectHouse.batteryPowerCharge
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data3.push(temp2)
  	end

  	# 蓄電池の放電電力量
  	response = PhamiliaBackend::CollectHouse.batteryPowerDischarge
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data4.push(temp2)
  	end

  	# エネファーム
  	response = PhamiliaBackend::CollectHouse.fuelCellPower
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data5.push(temp2)
  	end

  	# 分電盤
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_1
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data21.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_2
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data22.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_3
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data23.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_4
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data24.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_5
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data25.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_6
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data26.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_7
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data27.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_8
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data28.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_9
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data29.push(temp2)
  	end
  	response = PhamiliaBackend::CollectHouse.branchCircuitPower_10
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data30.push(temp2)
  	end


  	# ガス
  	response = PhamiliaBackend::CollectHouse.gasConsumption
  	puts doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data11.push(temp2)
  	end
  	# 水道
  	response = PhamiliaBackend::CollectHouse.waterConsumption
  	puts doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data12.push(temp2)
  	end

	@output = [
		{"name"=>"太陽光発電の発電電力量", "data"=>@graph_data},
		{"name"=>"太陽光発電の売却電力量", "data"=>@graph_data2},
		{"name"=>"蓄電池の充電電力量", "data"=>@graph_data3},
		{"name"=>"蓄電池の放電電力量", "data"=>@graph_data4},
#		{"name"=>"エネファームの発電電力量", "data"=>@graph_data5},
#		{"name"=>"ガスの使用量", "data"=>@graph_data11},
#		{"name"=>"水の使用量", "data"=>@graph_data12}
	]

	@output1 = [
		{"name"=>"分電盤１の消費電力", "data"=>@graph_data21},
		{"name"=>"分電盤２の消費電力", "data"=>@graph_data22},
		{"name"=>"分電盤３の消費電力", "data"=>@graph_data23},
		{"name"=>"分電盤４の消費電力", "data"=>@graph_data24},
		{"name"=>"分電盤５の消費電力", "data"=>@graph_data25},
		{"name"=>"分電盤６の消費電力", "data"=>@graph_data26},
		{"name"=>"分電盤７の消費電力", "data"=>@graph_data27},
		{"name"=>"分電盤８の消費電力", "data"=>@graph_data28},
		{"name"=>"分電盤９の消費電力", "data"=>@graph_data29},
		{"name"=>"分電盤10の消費電力", "data"=>@graph_data30},
	]

	@output2 = [
		{"name"=>"ガスの使用量", "data"=>@graph_data11},
	]

	@output3 = [
		{"name"=>"水の使用量", "data"=>@graph_data12}
	]

  end

  def control_test
  	@article = 3

  end

  def send_message
    if params["type"]
      case params["type"]
      when "1"
        PhamiliaBackend::CollectHouse.get_operationStatus
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
      when "15"
        PhamiliaBackend::CollectHouse.get_outdoorTemperature
      when "16"
        PhamiliaBackend::CollectHouse.led_on
      when "17"
        PhamiliaBackend::CollectHouse.led_off
      when "18"
        PhamiliaBackend::CollectHouse.get_led_connect_name
      when "19"
        PhamiliaBackend::CollectHouse.get_autodoor_sts
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

      puts "SUCCESS1!!"
    end
  end


end
