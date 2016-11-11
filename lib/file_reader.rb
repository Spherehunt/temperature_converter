
class FileReader

  attr_reader :temperature

  def self.initialize(temperature)
    $temperature = temperature
  end

  def self.read file
    $temperature = File.open(file).read
  end

end
