require 'json'
require 'net/http'
require 'uri'

class TemperatureConverter

  KELVIN = 273.15
  FAHRENHEIT = 9.0/5.0

  def commandline_temperature argument
    @temperature = argument.first.to_f
  end

  def file_temperature file
    @temperature = File.open(file).read.to_f
  end

  def url_temperature url
    @temperature = Net::HTTP.get(URI.parse(url)).to_f
  end

  def to_text
    puts "Gegeven: " + @temperature.to_s + " °C"
    puts (@temperature).to_s + " °C = " + ((@temperature * FAHRENHEIT) + 32).to_s + " °F"
    puts (@temperature).to_s + " °C = " + (@temperature + KELVIN).to_s + " K"
  end

  def to_json
    json_temperature = {:Celsius => @temperature, :Fahrenheit => (@temperature * FAHRENHEIT + 32).to_s, :Kelvin => (@temperature + KELVIN).to_s}
    puts JSON.pretty_generate(json_temperature)
  end

  def to_html
    puts "<div>"
    puts "<div>"+@temperature.to_s + " °C"+"</div>"
    puts "<div>"+(@temperature * FAHRENHEIT + 32).to_s + " °F"+"</div>"
    puts "<div>"+(@temperature + KELVIN).to_s + " K"+"</div>"
    puts "</div>"
  end

end
