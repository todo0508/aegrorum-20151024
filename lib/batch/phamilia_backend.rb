

def home_user
  web_command = "http://192.168.1.5:1024/hemscommon/ver1.0/ServiceConnections/abcdefghijklmnopqrstuvwx12345678/HemsUser.xml"
  puts `curl $'#{web_command}'`
end

def collect_data
  # CollectData
  web_command = "http://192.168.1.5:1024/hemscommon/ver1.0/ServiceConnections/1234567890abcdefghijklmnopqrstuv/CollectData.xml?Page=0&ItemsPerPage=500?startCreatTime=2014-12-15T00:00:00+09:00&endCreateTime=2014-12-16T00:10:59+09:00"
  puts `curl $'#{web_command}'`
end

def hems_analytics
  # HemsAnalytics
  puts `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsAnalyses/abcdefghijklmnopqrstuvwxyz123456.xml'`
end

def hems_statics
  # HemsStatics
  puts `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsStatic/abcdefghijklmnopqrstuvwxyz123456.xml'`
end

def hems_event
  # hems Event
  puts `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/HemsEvent/abcdefghijklmnopqrstuvwxyz123456.xml'`
end

def collect_data_avg
  # Collect Data aveg
  puts `curl $'http://192.168.1.5:1024/hemsoption/ver1.0/CollectDataAvg/abcdefghijklmnopqrstuvwxyz123456.xml'`
end

def home_energy_collect
      # House API
      home_energy = [
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_3&type=get&key=instantPower",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPower&target=2015121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPower&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPower&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPower&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPowerSelling&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPowerSelling&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPowerSelling&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=solarPowerSelling&target=2014",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=instantChargeAndDischarge",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=currentmode",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=soc",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.battery_1_1&type=get&key=state",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerCharge&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerCharge&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerCharge&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerCharge&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerDischarge&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerDischarge&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerDischarge&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=batteryPowerDischarge&target=2014",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=instantPower",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_1",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_2",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_3",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_4",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_5",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_6",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_7",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_8",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_9",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuit_10",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_1",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_6",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_8",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.boardMeter_1_1&type=get&key=branchCircuitVoltage_10",
      "http://192.168.1.5:1024/smart/history?type=get&key=mainPower&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=mainPower&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=mainPower&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=mainPower&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_1&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_1&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_1&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_1&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_2&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_2&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_2&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_2&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_3&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_3&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_3&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_3&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_4&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_4&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_4&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_4&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_5&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_5&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_5&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_5&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_6&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_6&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_6&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_6&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_7&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_7&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_7&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_7&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_8&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_8&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_8&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_8&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_9&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_9&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_9&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_9&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_10&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_10&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_10&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=branchCircuitPower_10&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=gasConsumption&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=gasConsumption&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=gasConsumption&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=gasConsumption&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=waterConsumption&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=waterConsumption&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=waterConsumption&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=waterConsumption&target=2014"
      ]

  home_energy.each do |item|
    puts `curl $'#{item}'`
  end
end

def collect_house_equipments
      # House API equipment
      house_equipments = [
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=operationStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=ON",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=operationStatus&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=currentmode",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=auto",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=cooling",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=heating",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=dehumidification",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=currentmode&value=ventilation",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=temperature",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=17",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=28",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=temperature&value=32",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=humidity",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=40",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=50",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=humidity&value=60",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=indoorTemperature",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=outdoorTemperature",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=airFlow",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=0",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=1",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=2",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=3",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=4",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=5",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=airFlow&value=6",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=swing",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=swing&value=vertical",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=purifier&value=ON",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=purifier&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=get&key=powersave",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=powersave&value=50",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.aircon_1_1&type=set&key=powersave&value=100",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeget&key=80",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=30",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.ledLight_1_1&type=codeset&key=80&value=31",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=operationStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=get&key=connectedDevice",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=ON",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=operationStatus&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_1_1&type=set&key=connectedDevice&value=電気錠",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=operationStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=get&key=connectedDevice",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=ON",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=operationStatus&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_2_1&type=set&key=connectedDevice&value=電動シャッター",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=operationStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=get&key=connectedDevice",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=ON",
#      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=operationStatus&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.switch_3_1&type=set&key=connectedDevice&value=電動窓"
      ]

  house_equipments.each do |item|
    puts `curl $'#{item}'`
  end
end

def collect_home_informations
      # House API 
      home_informations = [
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite_smartMeter&type=get&key=instantPower",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeter&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeter&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeter&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeter&target=2014",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeterSelling&target=2014121530",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeterSelling&target=20141215",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeterSelling&target=201412",
      "http://192.168.1.5:1024/smart/history?type=get&key=smartMeterSelling&target=2014",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=heatingStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=bathwaterHeatingStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=autoMode",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=autoMode&value=ON",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=autoMode&value=OFF",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=heatingSetting",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=daytimeReheating",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=get&key=hotWaterSupplyStatus",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=heatingSetting&value=auto",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=heatingSetting&value=manual",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=heatingSetting&value=stop",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=daytimeReheating&value=permitted",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=daytimeReheating&value=not_permitted",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=heating&value=start",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.electric_water_heater&type=set&key=heating&value=stop",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=get&key=dischargeableCapacity",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=get&key=remainingDischargeableCapacity",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=get&key=ratedChargeCapacity",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=get&key=ratedDischargeCapacity",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=get&key=operationMode",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=set&key=operationMode&value=rapidCharging",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=set&key=operationMode&value=charging",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=set&key=operationMode&value=discharging",
      "http://192.168.1.5:1024/smart/rest/request?deviceid=lite.EV_charger_discharger&type=set&key=operationMode&value=standby"
      ]

  home_informations.each do |item|
    puts `curl $'#{item}'`
  end
end


home_user
collect_data
hems_analytics
hems_statics
hems_event
collect_data_avg

#home_energy_collect
collect_house_equipments
#collect_home_informations

