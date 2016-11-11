
class FileReader

attr_accessor :temperature

  def initialize(temperature)
    @temperature = temperature
  end

  def self.read file
    @temperature = File.open(file).read.to_f
  end

end
