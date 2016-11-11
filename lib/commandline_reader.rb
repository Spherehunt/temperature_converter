
class CommandlineReader

  attr_reader :temperature

  def self.initialize(temperature)
    $temperature = temperature
  end

  def self.read argument
    $temperature = argument.first
  end

end
