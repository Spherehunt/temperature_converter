require "./lib/temperature"

class PrintHtml

  attr_reader :temperature

  def print
    htemperature = Temperature.new
    puts "<div>"
    puts "<div>"+htemperature.celsius.to_s + " °C"+"</div>"
    puts "<div>"+htemperature.to_fahrenheit.to_s + " °F"+"</div>"
    puts "<div>"+htemperature.to_kelvin.to_s + " K"+"</div>"
    puts "</div>"
  end

end
