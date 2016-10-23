require './lib/temperature_converter.rb'
require 'json'

class PrintJson

  attr_reader :temperature

  def print
    json_temperature = {:Celsius => TemperatureConverter.celsius(temperature).to_s, :Fahrenheit => TemperatureConverter.celsius_to_fahrenheit(temperature).to_s, :Kelvin => TemperatureConverter.celsius_to_kelvin(temperature).to_s}
    puts JSON.pretty_generate(json_temperature)
  end

end
