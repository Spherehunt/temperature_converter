
class TempConverter

  def initialize temperature
    @temperature = temperature
  end

  def convert
   puts "Gegeven: " + @temperature.to_s + " °C"
   puts (@temperature).to_s + " °C = " + (@temperature * 9/5 + 32).to_s + " °F"
   puts (@temperature).to_s + " °C = " + (@temperature + 273.15).to_s + " K"
  end

end
