require "./lib/temperature"

class PrintHtml

attr_reader :temperature

  def self.print
    puts "<div>"
    puts "<div>"+Temperature.celsius.to_s + " °C"+"</div>"
    puts "<div>"+Temperature.to_fahrenheit.to_s + " °F"+"</div>"
    puts "<div>"+Temperature.to_kelvin.to_s + " K"+"</div>"
    puts "</div>"
  end

end
