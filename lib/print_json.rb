require 'json'
require "./lib/temperature"

class PrintJson

  attr_reader :temperature

  def print
    jtemperature = Temperature.new
    json_temperature = {:Celsius => jtemperature.celsius.to_s, :Fahrenheit => jtemperature.to_fahrenheit.to_s, :Kelvin => jtemperature.to_kelvin.to_s}
    puts JSON.pretty_generate(json_temperature)

  end

end
