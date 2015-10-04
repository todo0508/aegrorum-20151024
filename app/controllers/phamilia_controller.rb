require 'rexml/document'

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


    # オープン活用
    puts OpenWeather::GetWeather.getLatestTokyo

    puts GetElectronicInfo::CollectElectronicInform.getLatestTokyo



  	# 太陽光発電の発電電力量
  	response = PhamiliaBackend::SolarEnergy.solarPowerSelling_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data.push(temp2)
  	end
  	# 太陽光発電の売却電力量
  	response = PhamiliaBackend::SolarEnergy.solarPower_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data2.push(temp2)
  	end

  	# 蓄電池の充電電力量
  	response = PhamiliaBackend::BatteryPowerEnergy.batteryPowerCharge_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data3.push(temp2)
  	end

  	# 蓄電池の放電電力量
  	response = PhamiliaBackend::BatteryPowerEnergy.batteryPowerDischarge_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data4.push(temp2)
  	end

  	# エネファーム
  	response = PhamiliaBackend::FuelCellEnergy.fuelCellPower_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data5.push(temp2)
  	end

  	# 分電盤
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower1_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data21.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower2_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data22.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower3_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data23.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower4_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data24.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower5_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data25.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower6_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data26.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower7_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data27.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower8_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data28.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower9_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data29.push(temp2)
  	end
  	response = PhamiliaBackend::BranchCircuit.branchCircuitPower10_30min
  	doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data30.push(temp2)
  	end


  	# ガス
  	response = PhamiliaBackend::GassEnergy.gasConsumption_30min
  	puts doc = REXML::Document.new(response)
  	doc.elements.each("resultset/dataset/data") do |element|
	  	temp2 = []
  		temp2.push(element.elements['key'].text)
  		temp2.push(element.elements['value'].text)
  		@graph_data11.push(temp2)
  	end
  	# 水道
  	response = PhamiliaBackend::WaterEnergy.waterConsumption_30min
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

  def get_message
    if params["type"]

      puts "start get_message test!!"

      value = []
      json_data = {}

      case params["type"]
      when "1"
        response = PhamiliaBackend::CollectHouse.home_user
        doc = REXML::Document.new(response)

        firstname = doc.elements['HemsUser/HemsUserFirstName'].text
        lastname = doc.elements['HemsUser/HemsUserLastName'].text
        buildtype = doc.elements['HemsUser/BuildType'].text
        ownership = doc.elements['HemsUser/BuildOwnerShip'].text
        latitude = doc.elements['HemsUser/Latitude'].text
        longitude = doc.elements['HemsUser/Longitude'].text

        json_data = {:firstname => firstname, :lastname => lastname, :buildtype => buildtype, :ownership => ownership}

      when "2"  # 機器の状態を返却してあげる
        status = 0

        res = PhamiliaBackend::ControlAutoWindow.get_autowindows_sts
        xml_doc = Nokogiri::XML(res)
        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
        if value == "ON"
          status = 1
        end
        res = PhamiliaBackend::ControlAutoShutter.get_autoshutter_sts
        xml_doc = Nokogiri::XML(res)
        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
        if value == "ON"
          status = status + 1
        end
        res = PhamiliaBackend::ControlAutoDoor.get_autodoor_sts
        xml_doc = Nokogiri::XML(res)
        value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
        if value == "ON"
          status = status + 1
        end

        json_data = {:equipment => status}


      when "3"  # 見守り対象者の状態を返却してあげる
        # アカウントステータス:: account_id, status, emotion
        json_data = {:sts1 => 2, :emo1 => 3, :desc => "外出中", :sts2 => 4, :emo2 => 5, :emo1 => "在宅中"}

      when "4"  # ニュース情報を取得
        json_data = {:text => "今日のランチはどこに行きましょうか", :apn => "http://yahoo.co.jp"}

      when "5"  # グルメ情報を取得
        json_data = {:text => "別府の温泉宿の料理です", :apn => "http://yahoo.co.jp"}


      when "6"  # 書籍情報を取得
        json_data = {:text => "坊ちゃん", :apn => "http://yahoo.co.jp"}


      when "7"  # HEMS事業者から取得
        json_data = {:text => "節電しますね", :apn => "http://yahoo.co.jp"}


      when "8"  # 住宅情報（ダイワハウスから取得）
        json_data = {:sts1 => 2, :emo1 => 3, :sts2 => 4, :emo2 => 5}


      when "100" # VoIP電話の機能を利用
        response = TwilioBackend::CollectHouse.control_voip_phone
        doc = REXML::Document.new(response)

        firstname = doc.elements['HemsUser/HemsUserFirstName'].text
        lastname = doc.elements['HemsUser/HemsUserLastName'].text
        buildtype = doc.elements['HemsUser/BuildType'].text
        ownership = doc.elements['HemsUser/BuildOwnerShip'].text
        latitude = doc.elements['HemsUser/Latitude'].text
        longitude = doc.elements['HemsUser/Longitude'].text

        json_data = {:firstname => firstname, :lastname => lastname, :buildtype => buildtype, :ownership => ownership}


      end

      puts "end get_message test!!"

      render :json => json_data

    end
  end


  def send_message
    if params["type"]
      value = []

      case params["type"]
      when "1"
        PhamiliaBackend::ControlAirConditioner.get_operationStatus
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
        PhamiliaBackend::GetTemprature.get_indoorTemperature
      when "15"
        PhamiliaBackend::GetTemprature.get_outdoorTemperature
      when "16"
        PhamiliaBackend::ControlLED.led_on
      when "17"
        PhamiliaBackend::ControlLED.led_off
      when "18"
        PhamiliaBackend::ControlLED.get_led_sts
      when "19"
        PhamiliaBackend::ControlAutoDoor.get_autodoor_sts
      when "20"
        PhamiliaBackend::ControlAutoDoor.get_autodoor_name
      when "21"
        PhamiliaBackend::ControlAutoDoor.autodoor_on
      when "22"
        PhamiliaBackend::ControlAutoDoor.autodoor_off
      when "23"
        PhamiliaBackend::ControlAutoDoor.get_autodoor_connect_name
      when "24"
        PhamiliaBackend::ControlAutoShutter.get_autoshutter_sts
      when "25"
        PhamiliaBackend::ControlAutoShutter.get_autoshutter_name
      when "26"
        PhamiliaBackend::ControlAutoShutter.autoshutter_on
      when "27"
        PhamiliaBackend::ControlAutoShutter.autoshutter_off
      when "28"
        PhamiliaBackend::ControlAutoShutter.get_autoshutter_connect_name
      when "29"
        PhamiliaBackend::ControlAutoWindow.get_autowindows_sts
      when "30"
        PhamiliaBackend::ControlAutoWindow.get_autowindows_name
      when "31"
        PhamiliaBackend::ControlAutoWindow.autowindows_on
      when "32"
        PhamiliaBackend::ControlAutoWindow.autowindows_off
      when "33"
        PhamiliaBackend::ControlAutoWindow.get_autowindows_connect_name

      when "50"
        PhamiliaBackend::AgrigateCommand.all_incoming_mode
      when "51"
        PhamiliaBackend::AgrigateCommand.all_outgoing_mode
      when "52"
        PhamiliaBackend::AgrigateCommand.power_saving_mode
      when "53"
        PhamiliaBackend::AgrigateCommand.equipment_control_mode
      when "54"
        PhamiliaBackend::AgrigateCommand.comsumption_control_mode


      # Batterly Level (Parameters: {"type"=>"60", "battery"=>"-1.000000"})
      when "60"

      # Batterly Level (Parameters: {"type"=>"61", "battery"=>"Unknown"})
      when "61"

      # Speed Controller (Parameters: {"type"=>"61", "battery"=>"Unknown"})
      when "62"

      when "63"

      when "64"


      end
      render json: {:value => value}

    end
  end

  def download
      filepath = Rails.root.join('app', 'pdfs', 'hoge.pdf')
      stat = File::stat(filepath)
      send_file(filepath, :filename => 'hoge.pdf', :length => stat.size)
  end

end
