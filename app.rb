require "./lib/temperature_converter"

ttn_host = "staging.thethingsnetwork.org"
port = 1883
username = '70B3D57ED00012B2'
password = 'c8iuTSccnypK1eoFzEb/OoqB2FVAiFg/aEaYesnNf4w='
sensor_id = '70B3D57ED00012B2/devices/00000000AE6C63E4/up'

converter = TemperatureConverter.new

puts "Commandline temperatuur: \n\n"
converter.commandline_temperature ARGV
#puts "#{$temperature}" Test of lezen lukt
puts converter.to_text
puts converter.to_json
puts converter.to_html

puts "File temperatuur: \n\n"
converter.file_temperature "sensor.txt"
puts converter.to_text
puts converter.to_json
puts converter.to_html

puts "URL temperatuur: \n\n"
converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
puts converter.to_text
puts converter.to_json
puts converter.to_html

puts "Listening on TTN\n"
converter.mqtt_reader(ttn_host, port, username, password, sensor_id)
puts converter.to_text
puts converter.to_json
puts converter.to_html
