require 'json'
require 'net/http'
require 'uri'

class TemperatureConverter

  KELVIN = 273.15

  def initialize temperature
    @temperature = temperature
  end

  def commandline_temperature
    @temperature = ARGV[1].to_f
  end

  def file_temperature
    @temperature = File.open(file).read.to_f
  end

  def url_temperature 
    @temperature = Net::HTTP.get(URI.parse(url)).to_f
  end

  def to_text
    puts "Gegeven: " + @temperature.to_s + " °C"
    puts (@temperature).to_s + " °C = " + ((@temperature * 9/5) + 32).to_s + " °F"
    puts (@temperature).to_s + " °C = " + (@temperature + KELVIN).to_s + " K"
  end

  def to_json
    json_temperature = {:Celsius => @temperature, :Fahrenheit => (@temperature * 9/5 + 32).to_s, :Kelvin => (@temperature + KELVIN).to_s}
    puts JSON.pretty_generate(json_temperature)
  end

  def to_html
    puts "<div>"
    puts "<div>"+@temperature.to_s + " °C"+"</div>"
    puts "<div>"+(@temperature * 9/5 + 32).to_s + " °F"+"</div>"
    puts "<div>"+(@temperature + KELVIN).to_s + " K"+"</div>"
    puts "</div>"
  end

end
