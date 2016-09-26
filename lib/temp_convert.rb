require 'json'
require 'net/http'
require 'uri'

class TempConverter

  def initialize temperature
    @temperature = temperature
  end

  def read_url
    input = Net::HTTP.get(URI.parse("http://labict.be/software-engineering/temperature/api/temperature/fake")).to_f
  end

  def to_text
    puts "Gegeven: " + @temperature.to_s + " °C"
    puts (@temperature).to_s + " °C = " + (@temperature * 9/5 + 32).to_s + " °F"
    puts (@temperature).to_s + " °C = " + (@temperature + 273.15).to_s + " K"
  end

  def to_json
    json_temperature = {:Celsius => @temperature, :Fahrenheit => (@temperature * 9/5 + 32).to_s, :Kelvin => (@temperature + 273.15).to_s}
    puts JSON.pretty_generate(json_temperature)
  end

  def to_html
    puts "<div>"
    puts "<div>"+@temperature.to_s + " °C"+"</div>"
    puts "<div>"+(@temperature * 9/5 + 32).to_s + " °F"+"</div>"
    puts "<div>"+(@temperature + 273.15).to_s + " K"+"</div>"
    puts "</div>"

  end

end
