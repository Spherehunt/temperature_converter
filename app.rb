require './lib/temp_convert.rb'

input = ARGV.first.to_f

temp_convert = TempConverter.new input

puts temp_convert.convert
