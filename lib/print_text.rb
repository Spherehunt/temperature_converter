require "./lib/temperature"

class PrintText

  attr_reader :temperature

  def self.print
    puts "Gegeven: " + Temperature.celsius.to_s + " °C"
    puts Temperature.celsius.to_s + " °C = " + Temperature.to_fahrenheit.to_s + " °F"
    puts Temperature.celsius.to_s + " °C = " + Temperature.to_kelvin.to_s + " K"
  end

end
