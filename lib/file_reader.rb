require './lib/temperature_converter.rb'

class FileReader

  attr_accessor :temperature

  def read file
    temperature = File.open(file).read.to_f
  end

end
