
class CommandlineReader

  attr_accessor :temperature

  # def initialize(temperature)
  #   @temperature = temperature
  # end

  def self.read argument
    @temperature = argument.first.to_f
  end

end
