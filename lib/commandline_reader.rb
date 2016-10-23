require './lib/temperature_converter.rb'

class CommandlineReader

  attr_accessor :temperature

  def read argument
    temperature = argument.first.to_f
  end

end
