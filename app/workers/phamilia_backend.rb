module PhamiliaBackend

  class CollectHouse

      def self.home_user
#        web_command = "http://192.168.1.8:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
#        `curl $'#{web_command}'`
        open('data/hemscommon/HemsUser/xml/current.xml').read
      end

      def self.collect_data
        # CollectData
#        web_command = "http://192.168.1.8:1024/hemscommon/ver1.0/ServiceConnections/1234567890abcdefghijklmnopqrstuv/CollectData.xml?Page=0&ItemsPerPage=500?startCreatTime=2014-12-15T00:00:00+09:00&endCreateTime=2014-12-16T00:10:59+09:00"
#        `curl $'#{web_command}'`
        open('data/hemscommon/CollectData/xml/current.xml').read
      end

      def self.hems_analytics
        # HemsAnalytics
#        `curl $'http://192.168.1.8:1024/hemsoption/ver1.0/HemsAnalyses/abcdefghijklmnopqrstuvwxyz123456.xml'`
        open('data/hemscommon/HemsAnalyses/xml/current.xml').read
      end

      def self.hems_statics
        # HemsStatics
#        `curl $'http://192.168.1.8:1024/hemsoption/ver1.0/HemsStatic/abcdefghijklmnopqrstuvwxyz123456.xml'`
        open('data/hemscommon/HemsStatic/xml/current.xml').read
      end

      def self.hems_event
        # 使わない
        # hems Event
#        `curl $'http://192.168.1.8:1024/hemsoption/ver1.0/HemsEvent/abcdefghijklmnopqrstuvwxyz123456.xml'`
        open('data/hemscommon/HemsEvent/xml/current.xml').read
      end

      def self.collect_data_avg
        # Collect Data aveg
#        `curl $'http://192.168.1.8:1024/hemsoption/ver1.0/CollectDataAvg/abcdefghijklmnopqrstuvwxyz123456.xml'`
        open('data/hemscommon/CollectDataAvg/xml/current.xml').read
      end
  end

  class SolarEnergy
      # 太陽光瞬時発電能力
      def self.get_boardMeter_1_3_instantPower
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_3&type=get&key=instantPower"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_3/instantPower/instantPower_01.xml').read
      end

      # 太陽光発電の発電電力量（３０分ごと）
      def self.solarPower_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPower&target=2015121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPower/2015121530.xml').read
      end

      # 太陽光発電の発電電力量（60分ごと）
      def self.solarPower_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPower&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPower/20141215.xml').read
      end

      # 太陽光発電の発電電力量（1monthごと）
      def self.solarPower_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPower&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPower/201412.xml').read
      end

      # 太陽光発電の発電電力量（1yearごと）
      def self.solarPower_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPower&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPower/2014.xml').read
      end

      # 太陽光発電の売却電力量（３０分ごと）
      def self.solarPowerSelling_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPowerSelling&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPowerSelling/2014121530.xml').read
      end

      # 太陽光発電の売却電力量（６０分ごと）
      def self.solarPowerSelling_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPowerSelling&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPowerSelling/20141215.xml').read
      end

      # 太陽光発電の売却電力量（１ヶ月ごと）
      def self.solarPowerSelling_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPowerSelling&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPowerSelling/201412.xml').read
      end

      # 太陽光発電の売却電力量（１年ごと）
      def self.solarPowerSelling_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=solarPowerSelling&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/solarPowerSelling/2014.xml').read
      end
  end

  class BatteryPowerEnergy
      # 蓄電池瞬時放電能力
      def self.get_instantChargeAndDischarge
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=instantChargeAndDischarge"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.battery_1_1/instantChargeAndDischarge/current.xml').read
      end

      # 動作モード
      def self.get_battery_currentmode
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=currentmode"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.battery_1_1/currentmode/current.xml').read
      end

      # 残量
      def self.get_battery_remain
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=soc"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.battery_1_1/soc/current.xml').read
      end

      # 状態
      def self.get_battery_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=state"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.battery_1_1/state/current.xml').read
      end

      def self.batteryPowerCharge_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerCharge&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerCharge/2014121530.xml').read
      end

      def self.batteryPowerCharge_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerCharge&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerCharge/20141215.xml').read
      end

      def self.batteryPowerCharge_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerCharge&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerCharge/201412.xml').read
      end

      def self.batteryPowerCharge_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerCharge&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerCharge/2014.xml').read
      end

      def self.batteryPowerDischarge_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerDischarge&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerDischarge/2014121530.xml').read
      end

      def self.batteryPowerDischarge_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerDischarge&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerDischarge/20141215.xml').read
      end

      def self.batteryPowerDischarge_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerDischarge&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerDischarge/201412.xml').read
      end

      def self.batteryPowerDischarge_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=batteryPowerDischarge&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/batteryPowerDischarge/2014.xml').read
      end
  end

  class FuelCellEnergy
      # 燃料電池瞬時発電能力
      def self.get_boardMeter_1_4_instantPower
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_4&type=get&key=instantPower"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_4/instantPower/instantPower_01.xml').read
      end

      def self.fuelCellPower_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=fuelCellPower&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/fuelCellPower/2014121530.xml').read
      end

      def self.fuelCellPower_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=fuelCellPower&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/fuelCellPower/20141215.xml').read
      end

      def self.fuelCellPower_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=fuelCellPower&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/fuelCellPower/201412.xml').read
      end

      def self.fuelCellPower_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=fuelCellPower&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/fuelCellPower/2014.xml').read
      end
  end

  class BranchCircuit
      # 分電盤
      def self.get_branchCircuit_all
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=instantPower"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/instantPower/instantPower_01.xml').read
      end

      # 分電盤1
      def self.get_branchCircuit_1
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_1"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_1/branchCircuit_1_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_1/branchCircuit_1_02.xml').read
      end

      # 分電盤2
      def self.get_branchCircuit_2
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_2"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_2/branchCircuit_2_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_2/branchCircuit_2_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_2/branchCircuit_2_03.xml').read
      end

      # 分電盤3
      def self.get_branchCircuit_3
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_3"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_3/branchCircuit_3_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_3/branchCircuit_3_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_3/branchCircuit_3_03.xml').read
      end

      # 分電盤4
      def self.get_branchCircuit_4
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_4"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_4/branchCircuit_4_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_4/branchCircuit_4_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_4/branchCircuit_4_03.xml').read
      end

      # 分電盤5
      def self.get_branchCircuit_5
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_5"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_5/branchCircuit_5_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_5/branchCircuit_5_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_5/branchCircuit_5_03.xml').read
      end

      # 分電盤6
      def self.get_branchCircuit_6
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_6"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_6/branchCircuit_6_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_6/branchCircuit_6_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_6/branchCircuit_6_03.xml').read
      end

      # 分電盤7
      def self.get_branchCircuit_7
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_7"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_7/branchCircuit_7_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_7/branchCircuit_7_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_7/branchCircuit_7_03.xml').read
      end

      # 分電盤8
      def self.get_branchCircuit_8
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_8"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_8/branchCircuit_8_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_8/branchCircuit_8_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_8/branchCircuit_8_03.xml').read
      end

      # 分電盤9
      def self.get_branchCircuit_9
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_9"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_9/branchCircuit_9_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_9/branchCircuit_9_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_9/branchCircuit_9_03.xml').read
      end

      # 分電盤10
      def self.get_branchCircuit_10
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_10"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_10/branchCircuit_10_01.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_10/branchCircuit_10_02.xml').read
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuit_10/branchCircuit_10_03.xml').read
      end

      # 
      def self.branchCircuitVoltage_1
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_1"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_1/branchCircuitVoltage_1_01.xml').read
      end

      # 
      def self.branchCircuitVoltage_2
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_2"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_2/branchCircuitVoltage_2_01.xml').read
      end

      # 
      def self.branchCircuitVoltage_3
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_3"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_3/branchCircuitVoltage_3_01.xml').read
      end

      # 
      def self.branchCircuitVoltage_4
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_4"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_4/branchCircuitVoltage_4_01.xml').read
      end

      # 
      def self.branchCircuitVoltage_5
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_5"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_5/branchCircuitVoltage_5_01.xml').read
      end

      # 
      def self.branchCircuitVoltage_6
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_6"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_6/branchCircuitVoltage_6_01.xml').read
      end
      # 
      def self.branchCircuitVoltage_7
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_7"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_7/branchCircuitVoltage_7_01.xml').read
      end
      # 
      def self.branchCircuitVoltage_8
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_8"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_8/branchCircuitVoltage_8_01.xml').read
      end
      # 
      def self.branchCircuitVoltage_9
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_9"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_9/branchCircuitVoltage_9_01.xml').read
      end
      # 
      def self.branchCircuitVoltage_10
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_10"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.boardMeter_1_1/branchCircuitVoltage_10/branchCircuitVoltage_10_01.xml').read
      end
      # 
      def self.mainPower_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=mainPower&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/mainPower/2014121530.xml').read
      end
      # 
      def self.mainPower_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=mainPower&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/mainPower/20141215.xml').read
      end
      # 
      def self.mainPower_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=mainPower&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/mainPower/201412.xml').read
      end
      # 
      def self.mainPower_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=mainPower&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/mainPower/2014.xml').read
      end

      def self.branchCircuitPower1_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_1&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_1/2014121530.xml').read
      end
      def self.branchCircuitPower1_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_1&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_1/20141215.xml').read
      end
      def self.branchCircuitPower1_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_1&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_1/201412.xml').read
      end
      def self.branchCircuitPower1_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_1&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_1/2014.xml').read
      end

      def self.branchCircuitPower2_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_2&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_2/2014121530.xml').read
      end
      def self.branchCircuitPower2_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_2&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_2/20141215.xml').read
      end
      def self.branchCircuitPower2_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_2&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_2/201412.xml').read
      end
      def self.branchCircuitPower2_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_2&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_2/2014.xml').read
      end

      def self.branchCircuitPower3_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_3&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_3/2014121530.xml').read
      end
      def self.branchCircuitPower3_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_3&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_3/20141215.xml').read
      end
      def self.branchCircuitPower3_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_3&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_3/201412.xml').read
      end
      def self.branchCircuitPower3_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_3&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_3/2014.xml').read
      end

      def self.branchCircuitPower4_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_4&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_4/2014121530.xml').read
      end
      def self.branchCircuitPower4_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_4&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_4/20141215.xml').read
      end
      def self.branchCircuitPower4_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_4&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_4/201412.xml').read
      end
      def self.branchCircuitPower4_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_4&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_4/2014.xml').read
      end

      def self.branchCircuitPower5_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_5&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_5/2014121530.xml').read
      end
      def self.branchCircuitPower5_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_5&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_5/20141215.xml').read
      end
      def self.branchCircuitPower5_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_5&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_5/201412.xml').read
      end
      def self.branchCircuitPower5_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_5&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_5/2014.xml').read
      end

      def self.branchCircuitPower6_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_6&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_6/2014121530.xml').read
      end
      def self.branchCircuitPower6_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_6&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_6/20141215.xml').read
      end
      def self.branchCircuitPower6_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_6&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_6/201412.xml').read
      end
      def self.branchCircuitPower6_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_6&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_6/2014.xml').read
      end

      def self.branchCircuitPower7_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_7&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_7/2014121530.xml').read
      end
      def self.branchCircuitPower7_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_7&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_7/20141215.xml').read
      end
      def self.branchCircuitPower7_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_7&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_7/201412.xml').read
      end
      def self.branchCircuitPower7_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_7&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_7/2014.xml').read
      end


      def self.branchCircuitPower8_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_8&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_8/2014121530.xml').read
      end
      def self.branchCircuitPower8_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_8&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_8/20141215.xml').read
      end
      def self.branchCircuitPower8_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_8&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_8/201412.xml').read
      end
      def self.branchCircuitPower8_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_8&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_8/2014.xml').read
      end

      def self.branchCircuitPower9_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_9&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_9/2014121530.xml').read
      end
      def self.branchCircuitPower9_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_9&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_9/20141215.xml').read
      end
      def self.branchCircuitPower9_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_9&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_9/201412.xml').read
      end
      def self.branchCircuitPower9_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_9&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_9/2014.xml').read
      end

      def self.branchCircuitPower10_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_10&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_10/2014121530.xml').read
      end
      def self.branchCircuitPower10_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_10&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_10/20141215.xml').read
      end
      def self.branchCircuitPower10_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_10&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_10/201412.xml').read
      end
      def self.branchCircuitPower10_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=branchCircuitPower_10&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/branchCircuitPower_10/2014.xml').read
      end
  end

  class GassEnergy
      def self.gasConsumption_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=gasConsumption&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/gasConsumption/2014121530.xml').read
      end

      def self.gasConsumption_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=gasConsumption&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/gasConsumption/20141215.xml').read
      end
      def self.gasConsumption_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=gasConsumption&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/gasConsumption/201412.xml').read
      end
      def self.gasConsumption_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=gasConsumption&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/gasConsumption/2014.xml').read
      end
  end

  class WaterEnergy
      def self.waterConsumption_30min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=waterConsumption&target=2014121530"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/waterConsumption/2014121530.xml').read
      end

      def self.waterConsumption_60min
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=waterConsumption&target=20141215"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/waterConsumption/20141215.xml').read
      end
      def self.waterConsumption_1mon
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=waterConsumption&target=201412"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/waterConsumption/201412.xml').read
      end
      def self.waterConsumption_1year
#        web_cmd = "http://192.168.1.8:1024/smart/history?type=get&key=waterConsumption&target=2014"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/history/waterConsumption/2014.xml').read
      end
  end

  class ControlAirConditioner
      # エアコン　動作状態取得
      def self.get_operationStatus
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=operationStatus"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/operationStatus/current.xml').read
      end

      # エアコン電源ON
      def self.set_aircondition_on
=begin
        res = get_operationStatus
        xml_doc = Nokogiri::XML(res)
        puts value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
        if value == "OFF"
          web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=ON"
        else
          web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=OFF"
        end
        `curl $'#{web_cmd}'`
=end
        open('data/residence/normal/request/lite.aircon_1_1/operationStatus/aircon_operationStatus_ON.xml').read
      end

      # エアコン電源OFF
      def self.set_aircondition_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/operationStatus/aircon_operationStatus_OFF.xml').read
      end
      # エアコン動作状態取得
      def self.set_aircondition_current
#        web_cmd = "http://192.168.1.8:1024//smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=currentmode"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/operationStatus/current.xml').read
      end

      # エアコン自動
      def self.set_aircondition_auto
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=auto"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/currentmode/currentmode_auto.xml').read
      end

      # エアコン冷房
      def self.set_aircondition_cooling
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=cooling"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/currentmode/currentmode_cooling.xml').read
      end

      # エアコン暖房
      def self.set_aircondition_heating
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=heating"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/currentmode/currentmode_heating.xml').read
      end

      # エアコン除湿
      def self.set_aircondition_dehumidification
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=dehumidification"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/currentmode/currentmode_dehumidification.xml').read
      end

      # エアコン送風
      def self.set_aircondition_ventilation
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=ventilation"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/currentmode/currentmode_ventilation.xml').read
      end

      # エアコン設定温度取得
      def self.get_aircondition_temperature
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=temperature"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/current.xml').read
      end

      # エアコン室内温度１７
      def self.set_temperature_17
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=17"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_17.xml').read
      end
      def self.set_temperature_18
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=18"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_18.xml').read
      end
      def self.set_temperature_19
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=19"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_19.xml').read
      end
      def self.set_temperature_20
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=20"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_20.xml').read
      end
      def self.set_temperature_21
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=21"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_21.xml').read
      end
      def self.set_temperature_22
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=22"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_22.xml').read
      end
      def self.set_temperature_23
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=23"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_23.xml').read
      end
      def self.set_temperature_24
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=24"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_24.xml').read
      end
      def self.set_temperature_25
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=25"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_25.xml').read
      end
      def self.set_temperature_26
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=26"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_26.xml').read
      end
      def self.set_temperature_27
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=27"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_27.xml').read
      end
      def self.set_temperature_28
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=28"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_28.xml').read
      end
      def self.set_temperature_29
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=29"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_29.xml').read
      end
      def self.set_temperature_30
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=30"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_30.xml').read
      end
      def self.set_temperature_31
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=31"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_31.xml').read
      end
      def self.set_temperature_32
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=32"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/temperature/temperature_32.xml').read
      end

      # エアコン設定湿度取得
      def self.get_aircondition_humidity_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=humidity"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/humidity/current.xml').read
      end
      def self.get_aircondition_humidity40
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=40"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/humidity/humidity_40.xml').read
      end
      def self.get_aircondition_humidity50
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=50"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/humidity/humidity_50.xml').read
      end
      def self.get_aircondition_humidity60
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=60"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/humidity/humidity_60.xml').read
      end

      def self.get_aircondition_airflow6_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=airFlow"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/current.xml').read
      end
      def self.get_aircondition_airflow0
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=0"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_week.xml').read
      end
      def self.get_aircondition_airflow1
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=1"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_strong.xml').read
      end
      def self.get_aircondition_airflow2
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=2"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_rapidly.xml').read
      end
      def self.get_aircondition_airflow3
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=3"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_quiet.xml').read
      end
      def self.get_aircondition_airflow4
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=4"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_lPlus.xml').read
      end
      def self.get_aircondition_airflow5
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=5"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_breeze.xml').read
      end
      def self.get_aircondition_airflow6
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=6"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/airFlow/airFlow_auto.xml').read
      end

      def self.get_aircondition_swing_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=swing"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/swing/current.xml').read
      end
      def self.get_aircondition_swing_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/swing/swing_off.xml').read
      end
      def self.get_aircondition_swing_vert
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=vertical"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/swing/swing_vertical.xml').read
      end
      def self.get_aircondition_swing_hori
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=horizontal"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/swing/swing_horizontal.xml').read
      end
      def self.get_aircondition_swing_both
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=verticalAndHorizontal"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/swing/swing_both.xml').read
      end

      def self.get_aircondition_purifier_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=purifier"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/purifier/current.xml').read
      end
      def self.get_aircondition_purifier_on
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=purifier&value=ON"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/purifier/purifier_ON.xml').read
      end
      def self.get_aircondition_purifier_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=purifier&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/purifier/purifier_OFF.xml').read
      end
      def self.get_aircondition_powersave_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=powersave"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/powersave/current.xml').read
      end
      def self.get_aircondition_powersave50
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=powersave&value=50"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/powersave/powersave_50.xml').read
      end
      def self.get_aircondition_powersave100
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=powersave&value=100"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/powersave/powersave_100.xml').read
      end
  end

  class GetTemprature

      # 室内温度取得
      def self.get_indoorTemperature
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=indoorTemperature"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/indoorTemperature/indoorTemperature_18.xml').read
      end

      # 外気温度取得
      def self.get_outdoorTemperature
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=outdoorTemperature"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.aircon_1_1/outdoorTemperature/outdoorTemperature_127.xml').read
      end
  end


  class ControlLED
      # 照明電源ON
      def self.led_on
=begin
        res = get_led_sts
        xml_doc = Nokogiri::XML(res)
        puts value = xml_doc.xpath("//resultset/dataset/data/value[@type='value']").xpath("//value").text
        if value == "30"
          web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=31"
        else
          web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=30"
        end
        `curl $'#{web_cmd}'`
=end
        open('data/residence/normal/request/lite.ledLight_1_1/operationStatus/led_operationstatus_ON.xml').read
      end
      # 照明電源OFF
      def self.led_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=31"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.ledLight_1_1/operationStatus/led_operationstatus_OFF.xml').read
      end
      # 照明電源状態取得
      def self.get_led_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeget&key=80"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.ledLight_1_1/operationStatus/current.xml').read
      end
  end

  class ControlAutoDoor
      # 電気錠状態取得
      def self.get_autodoor_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=operationStatus"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気錠機器名
      def self.get_autodoor_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=connectedDevice"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気錠設定ON
      def self.autodoor_on
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=ON"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_ON.xml').read
      end
      # 電気錠設定OFF
      def self.autodoor_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_OF.xml').read
      end
      # 接続機器名
      def self.get_autodoor_connect_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=connectedDevice&value=電気錠"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
  end

  class ControlAutoShutter
      # 電気シャッター状態取得
      def self.get_autoshutter_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=operationStatus"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気シャッター機器名
      def self.get_autoshutter_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=connectedDevice"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気シャッター設定ON
      def self.autoshutter_on
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=ON"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_ON.xml').read
      end
      # 電気シャッター設定OFF
      def self.autoshutter_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_OFF.xml').read
      end
      # 接続機器名
      def self.get_autoshutter_connect_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=connectedDevice&value=電動シャッター"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
  end

  class ControlAutoWindow
      # 電気窓状態取得
      def self.get_autowindows_sts
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=operationStatus"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気窓機器名
      def self.get_autowindows_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=connectedDevice"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
      # 電気窓設定ON
      def self.autowindows_on
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=ON"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_ON.xml').read
      end
      # 電気窓設定OFF
      def self.autowindows_off
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=OFF"
#        `curl $'#{web_cmd}'`
        open('data/request/lite.switch_1_1/operationStatus/switch_1_operationStatus_OFF.xml').read
      end
      # 接続機器名
      def self.get_autowindows_connect_name
#        web_cmd = "http://192.168.1.8:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=connectedDevice&value=電動窓"
#        `curl $'#{web_cmd}'`
        open('data/residence/normal/request/lite.switch_1_1/connectedDevice/current.xml').read
      end
  end


  class AgrigateCommand
      def self.all_incoming_mode
#        ControlAirConditioner.set_aircondition_on
#        ControlLED.led_on
#        ControlAutoDoor.autodoor_off
#        ControlAutoShutter.autoshutter_off
#        ControlAutoWindow.autowindows_off
      end

      def self.all_outgoing_mode
#        ControlAirConditioner.set_aircondition_off
#        ControlLED.led_off
#        ControlAutoDoor.autodoor_on
#        ControlAutoShutter.autoshutter_on
#        ControlAutoWindow.autowindows_on
      end

      def self.power_saving_mode
        ControlAirConditioner.set_aircondition_off
        ControlLED.led_off
        ControlAutoDoor.autodoor_on
        ControlAutoShutter.autoshutter_on
        ControlAutoWindow.autowindows_on
      end

      def self.equipment_control_mode
#        ControlAirConditioner.set_aircondition_off
#        ControlLED.led_off
#        ControlAutoDoor.autodoor_on
#        ControlAutoShutter.autoshutter_on
#        ControlAutoWindow.autowindows_on
      end

      def self.comsumption_control_mode
        ControlAirConditioner.set_aircondition_off
        ControlLED.led_off
        ControlAutoDoor.autodoor_on
        ControlAutoShutter.autoshutter_on
        ControlAutoWindow.autowindows_on
      end

  end

end
