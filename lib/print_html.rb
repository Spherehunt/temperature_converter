require './lib/temperature_converter.rb'

class PrintHTML

  attr_reader :temperature

  def print
    puts "<div>"
    puts "<div>"+TemperatureConverter.celsius(temperature).to_s + " °C"+"</div>"
    puts "<div>"+TemperatureConverter.celsius_to_fahrenheit(temperature).to_s + " °F"+"</div>"
    puts "<div>"+TemperatureConverter.celsius_to_kelvin(temperature).to_s + " K"+"</div>"
    puts "</div>"
  end

end
