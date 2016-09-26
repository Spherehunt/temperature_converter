require './lib/temp_convert.rb'
require 'net/http'
require 'uri'

selector = ARGV.first.to_f

if selector == 1
  #Command line input
  input = ARGV[1].to_f
end

if selector == 2
  #Text file input
  input = File.open('sensor.txt').read.to_f
end

if selector == 3
  #URL input
  input = Net::HTTP.get(URI.parse("http://labict.be/software-engineering/temperature/api/temperature/fake")).to_f
end


temp_convert = TempConverter.new input

#puts temp_convert.to_text
#puts temp_convert.to_json
puts temp_convert.to_html
