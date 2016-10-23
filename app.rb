require './lib/commandline_reader.rb'
require './lib/file_reader.rb'
require './lib/url_reader.rb'
require './lib/temperature_converter.rb'
require './lib/print_text.rb'
require './lib/print_json.rb'
require './lib/print_html.rb'

commandline_reader = CommandlineReader.new
file_reader  = FileReader.new
url_reader = URLReader.new
converter = TemperatureConverter.new
txtprinter = PrintText.new
jsonprinter = PrintJson.new
htmlprinter = PrintHTML.new

puts "Commandline temperatuur: \n\n"
commandline_reader.read ARGV
converter.celsius
converter.celsius_to_fahrenheit
converter.celsius_to_kelvin
txtprinter.print
jsonprinter.print
htmlprinter.print



# puts "File temperatuur: \n\n"
# converter.file_temperature "sensor.txt"
# puts converter.to_text
# puts converter.to_json
# puts converter.to_html
#
# puts "URL temperatuur: \n\n"
# converter.url_temperature "http://labict.be/software-engineering/temperature/api/temperature/fake"
# puts converter.to_text
# puts converter.to_json
# puts converter.to_html
