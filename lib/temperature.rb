#Temperature bijhouden en converteren

class Temperature

  KELVIN = 273.15
  FAHRENHEIT_OFFSET = 32
  FAHRENHEIT_SLOPE = Rational(9,5)

  attr_reader :temperature

  def self.celsius
    $temperature.to_f
  end

  def self.to_fahrenheit
    ($temperature.to_f * FAHRENHEIT_SLOPE) + FAHRENHEIT_OFFSET
  end

  def self.to_kelvin
    $temperature.to_f + KELVIN
  end

end