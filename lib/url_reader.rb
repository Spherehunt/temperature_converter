require 'net/http'
require 'uri'

class URLReader

  attr_reader :temperature

  def self.initialize(temperature)
    $temperature = temperature
  end

  def self.read url
    $temperature = Net::HTTP.get(URI.parse(url))
  end

end
