require 'net/http'
require 'uri'

class URLReader

  attr_accessor :temperature

    def initialize(temperature)
      @temperature = temperature
    end

    def self.read url
      @temperature = Net::HTTP.get(URI.parse(url)).to_f
    end

end
