# Dometic-FWX4-IR-Sender-Homeassistant

Based on ESPHome with Homeassistant.
Hardware: ESP8285 ESP-01M IR Sender und Empfänger
#TODO Bild von Hardware

## Code for ESPHome Builder
--> fwx4-ir-transmitter.yaml

## Helper in Homeassistant
|name|type|range
|-|-|-|
|fwx4_ac_power|Input boolean|0-1
|fwx4_mode Input|select|"Heizen", "Kühlen", "Entfeuchten", "Umluft", "Auto"
|fwx4_nightmode|Input boolean|0-1
|fwx4_temperature|Input number|16-31
|fwx4_ventilator_auto|Input boolean|0-1
|fwx4_ventilator_speed|Input number|1-3

## Script in Homeassistant:
Needed for start sending the infrared signal.
--> scripts.yaml

## Dashboard
Just arrage and use the helpers as you want.
Example see in dashboard.yaml
