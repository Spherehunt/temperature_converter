require 'net/http'
require 'uri'

class URLReader

  attr_reader :temperature

  def initialize
    @temperature
  end

  def read url
    @temperature = Net::HTTP.get(URI.parse(url))
    #puts @temperature
  end

end
