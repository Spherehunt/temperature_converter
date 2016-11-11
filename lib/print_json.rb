require 'json'
require "./lib/temperature"

class PrintJson

  attr_reader :temperature

  def self.print
    json_temperature = {:Celsius => Temperature.celsius.to_s, :Fahrenheit => Temperature.to_fahrenheit.to_s, :Kelvin => Temperature.to_kelvin.to_s}
    puts JSON.pretty_generate(json_temperature)

  end

end
