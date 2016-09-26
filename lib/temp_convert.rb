require 'json'

class TempConverter

  def initialize temperature
    @temperature = temperature
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
    html_temperature = <div><div>@temperature.to_s + " °C"</div><div>(@temperature * 9/5 + 32).to_s + " °F"</div><div>(@temperature + 273.15).to_s + " K"</div></div>
    puts html_temperature.html_safe
  end

end
