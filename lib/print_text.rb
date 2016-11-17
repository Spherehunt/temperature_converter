require "./lib/temperature"

class PrintText

  attr_reader :temperature

  def print
    ttemperature = Temperature.new
    puts "Gegeven: " + ttemperature.celsius.to_s + " °C"
    puts ttemperature.celsius.to_s + " °C = " + ttemperature.to_fahrenheit.to_s + " °F"
    puts ttemperature.celsius.to_s + " °C = " + ttemperature.to_kelvin.to_s + " K"
  end

end
