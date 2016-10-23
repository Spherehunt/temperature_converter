require './lib/commandline_reader.rb'
require './lib/file_reader.rb'
require './lib/url_reader.rb'

class TemperatureConverter

  attr_reader :temperature

  KELVIN = 273.15
  FAHRENHEIT = 9.0/5.0

  def initialize
    @temperature = 0
  end

  def celsius
    temperature = CommandlineReader.read
    FileReader.read(temperature)
    URLReader.read(temperature)
  end

  def celsius_to_fahrenheit
    (CommandlineReader.read(temperature) * FAHRENHEIT) + 32
    (FileReader.read(temperature) * FAHRENHEIT) + 32
    (URLReader.read(temperature) * FAHRENHEIT) + 32
  end

  def celsius_to_kelvin
    CommandlineReader.read(temperature) + KELVIN
    FileReader.read(temperature) + KELVIN
    URLReader.read(temperature) + KELVIN
  end

end
