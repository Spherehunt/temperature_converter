require './lib/temp_convert.rb'
require 'net/http'
require 'uri'

#Command line input
#input = ARGV.first.to_f

#Text file input
 #input = File.open('sensor.txt').read.to_f

#URL input
input = Net::HTTP.get(URI.parse("http://labict.be/software-engineering/temperature/api/temperature/fake")).to_f

temp_convert = TempConverter.new input

puts temp_convert.convert
