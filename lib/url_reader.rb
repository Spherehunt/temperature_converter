require './lib/temperature_converter.rb'
require 'net/http'
require 'uri'

class URLReader

  attr_accessor :temperature

  def read url
    temperature = Net::HTTP.get(URI.parse(url)).to_f
  end

end
