require './lib/temperature_converter.rb'

class PrintText

  attr_reader :temperature

  def print
    puts "Gegeven: " + TemperatureConverter.celsius(temperature).to_s + " °C"
    puts TemperatureConverter.celsius_to_fahrenheit(temperature).to_s + " °F"
    puts TemperatureConverter.celsius_to_kelvin(temperature).to_s + " K"
  end

end
