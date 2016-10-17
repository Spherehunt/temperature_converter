require './lib/temperature_converter.rb'

converter = TemperatureConverter.new

puts "Commandline temperatuur: \n\n"
converter.commandline_temperature ARGV
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
