module PhamiliaBackend

  class CollectHouse

      def self.home_user
        web_command = "http://192.168.1.5:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
        `curl $'#{web_command}'`
      end

      def self.collect_data
        # CollectData
        web_command = "http://192.168.1.5:1024/hemscommon/ver1.0/ServiceConnections/1234567890abcdefghijklmnopqrstuv/CollectData.xml?Page=0&ItemsPerPage=500?startCreatTime=2014-12-15T00:00:00+09:00&endCreateTime=2014-12-16T00:10:59+09:00"
        `curl $'#{web_command}'`
      end

      def self.hems_analytics
        # HemsAnalytics
        `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsAnalyses/abcdefghijklmnopqrstuvwxyz123456.xml'`
      end

      def self.hems_statics
        # HemsStatics
        `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsStatic/abcdefghijklmnopqrstuvwxyz123456.xml'`
      end

      def self.hems_event
        # 使わない
        # hems Event
        `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsEvent/abcdefghijklmnopqrstuvwxyz123456.xml'`
      end

      def self.collect_data_avg
        # Collect Data aveg
        `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/CollectDataAvg/abcdefghijklmnopqrstuvwxyz123456.xml'`
      end

      def self.solarPower
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=solarPower&target=2015121530"
        `curl $'#{web_cmd}'`
      end

      def self.solarPowerSelling
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=solarPowerSelling&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      def self.batteryPowerCharge
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerCharge&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      def self.batteryPowerDischarge
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerDischarge&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      def self.fuelCellPower
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=fuelCellPower&target=2014121530"
        `curl $'#{web_cmd}'`
      end


      def self.branchCircuitPower_1
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_1&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      def self.branchCircuitPower_2
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_2&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_3
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_3&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_4
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_4&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_5
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_5&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_6
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_6&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_7
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_7&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_8
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_8&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_9
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_9&target=2014121530"
        `curl $'#{web_cmd}'`
      end
      def self.branchCircuitPower_10
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_10&target=2014121530"
        `curl $'#{web_cmd}'`
      end


      def self.gasConsumption
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=gasConsumption&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      def self.waterConsumption
        web_cmd = "http://192.168.1.5:1024/smart/history?type=get&key=waterConsumption&target=2014121530"
        `curl $'#{web_cmd}'`
      end

      # エアコン　動作状態取得
      def self.get_operationStatus
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=operationStatus"
        `curl $'#{web_cmd}'`
      end


      # エアコン動作状態取得
      def self.get_aircondition_sts
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=operationStatus"
        `curl $'#{web_cmd}'`
      end

      # エアコン電源ON
      def self.set_aircondition_on
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=ON"
        `curl $'#{web_cmd}'`
      end

      # エアコン電源OFF
      def self.set_aircondition_off
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=OFF"
        `curl $'#{web_cmd}'`
      end

      # エアコン自動
      def self.set_aircondition_auto
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=auto"
        `curl $'#{web_cmd}'`
      end

      # エアコン冷房
      def self.set_aircondition_cooling
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=cooling"
        `curl $'#{web_cmd}'`
      end

      # エアコン暖房
      def self.set_aircondition_heating
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=heating"
        `curl $'#{web_cmd}'`
      end

      # エアコン除湿
      def self.set_aircondition_dehumidification
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=dehumidification"
        `curl $'#{web_cmd}'`
      end

      # エアコン送風
      def self.set_aircondition_ventilation
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=ventilation"
        `curl $'#{web_cmd}'`
      end

      # エアコン設定温度取得
      def self.get_aircondition_temperature
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=temperature"
        `curl $'#{web_cmd}'`
      end

      # エアコン室内温度１７
      def self.set_temperature_17
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=17"
        `curl $'#{web_cmd}'`
      end

      # エアコン室内温度２８
      def self.set_temperature_28
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=28"
        `curl $'#{web_cmd}'`
      end

      # エアコン室内温度３２
      def self.set_temperature_32
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=32"
        `curl $'#{web_cmd}'`
      end

      # エアコン設定湿度取得
      def self.get_aircondition_humidity
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=humidity"
        `curl $'#{web_cmd}'`
      end

      # 室内温度取得
      def self.get_indoorTemperature
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=indoorTemperature"
        `curl $'#{web_cmd}'`
      end

      # 外気温度取得
      def self.get_outdoorTemperature
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=outdoorTemperature"
        `curl $'#{web_cmd}'`
      end

      # 照明電源状態取得
      def self.led_on
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeget&key=80"
        `curl $'#{web_cmd}'`
      end
      # 照明電源ON
      def self.led_off
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=30"
        `curl $'#{web_cmd}'`
      end
      # 照明電源OFF
      def self.get_led_connect_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=31"
        `curl $'#{web_cmd}'`
      end

      # 電気錠状態取得
      def self.get_autoshutter_sts
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=operationStatus"
        `curl $'#{web_cmd}'`
      end
      # 電気錠機器名
      def self.get_autoshutter_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=connectedDevice"
        `curl $'#{web_cmd}'`
      end
      # 電気錠設定ON
      def self.autoshutter_on
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=ON"
        `curl $'#{web_cmd}'`
      end
      # 電気錠設定OFF
      def self.autoshutter_off
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=OFF"
        `curl $'#{web_cmd}'`
      end
      # 接続機器名
      def self.get_autodoor_connect_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=connectedDevice&value=電気錠"
        `curl $'#{web_cmd}'`
      end

      # 電気シャッター状態取得
      def self.get_autoshutter_sts
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=operationStatus"
        `curl $'#{web_cmd}'`
      end
      # 電気シャッター機器名
      def self.get_autoshutter_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=connectedDevice"
        `curl $'#{web_cmd}'`
      end
      # 電気シャッター設定ON
      def self.autoshutter_on
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=ON"
        `curl $'#{web_cmd}'`
      end
      # 電気シャッター設定OFF
      def self.autoshutter_off
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=OFF"
        `curl $'#{web_cmd}'`
      end
      # 接続機器名
      def self.get_autoshutter_connect_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=connectedDevice&value=電動シャッター"
        `curl $'#{web_cmd}'`
      end

      # 電気窓状態取得
      def self.get_autowindows_sts
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=operationStatus"
        `curl $'#{web_cmd}'`
      end
      # 電気窓機器名
      def self.get_autowindows_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=connectedDevice"
        `curl $'#{web_cmd}'`
      end
      # 電気窓設定ON
      def self.autowindows_on
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=ON"
        `curl $'#{web_cmd}'`
      end
      # 電気窓設定OFF
      def self.autowindows_off
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=OFF"
        `curl $'#{web_cmd}'`
      end
      # 接続機器名
      def self.get_autowindows_connect_name
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=connectedDevice&value=電動窓"
        `curl $'#{web_cmd}'`
      end

      # 太陽光瞬時発電能力
      def self.get_boardMeter_1_3_instantPower
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_3&type=get&key=instantPower"
        `curl $'#{web_cmd}'`
      end

      # 蓄電池瞬時放電能力
      def self.get_instantChargeAndDischarge
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=instantChargeAndDischarge"
        `curl $'#{web_cmd}'`
      end

      # 燃料電池瞬時発電能力
      def self.get_boardMeter_1_4_instantPower
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_4&type=get&key=instantPower"
        `curl $'#{web_cmd}'`
      end

      # 分電盤
      def self.get_branchCircuit_all
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=instantPower"
        `curl $'#{web_cmd}'`
      end

      # 分電盤1
      def self.get_branchCircuit_1
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_1"
        `curl $'#{web_cmd}'`
      end

      # 分電盤2
      def self.get_branchCircuit_2
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_2"
        `curl $'#{web_cmd}'`
      end

      # 分電盤3
      def self.get_branchCircuit_3
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_3"
        `curl $'#{web_cmd}'`
      end

      # 分電盤4
      def self.get_branchCircuit_4
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_4"
        `curl $'#{web_cmd}'`
      end

      # 分電盤5
      def self.get_branchCircuit_5
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_5"
        `curl $'#{web_cmd}'`
      end

      # 分電盤6
      def self.get_branchCircuit_6
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_6"
        `curl $'#{web_cmd}'`
      end

      # 分電盤7
      def self.get_branchCircuit_7
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_7"
        `curl $'#{web_cmd}'`
      end

      # 分電盤8
      def self.get_branchCircuit_8
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_8"
        `curl $'#{web_cmd}'`
      end

      # 分電盤9
      def self.get_branchCircuit_9
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_9"
        `curl $'#{web_cmd}'`
      end

      # 分電盤10
      def self.get_branchCircuit_10
        web_cmd = "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_10"
        `curl $'#{web_cmd}'`
      end
  end

end
