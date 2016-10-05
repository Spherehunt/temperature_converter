require './lib/temperature_converter.rb'

converter = TemperatureConverter.new

converter.commandline_temperature ARGV
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter.file_temperature "sensor.txt"
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
puts converter.to_text
puts converter.to_json
puts converter.to_html
