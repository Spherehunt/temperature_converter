require "./lib/print_text"
require 'rubygems'
require 'mqtt'
require 'json'

class MQTTReader

  def self.read (ttn_host, port, username, password, sensor_id)
    # Subscribe example
    MQTT::Client.connect(
    :host => ttn_host,
    :port => port,
    :username => username,
    :password => password) do |c|
      # If you pass a block to the get method, then it will loop
      c.get(sensor_id) do |topic,message|
        obj = JSON.parse("#{message}")
        temp = obj['fields']['temperature'].to_f
        PrintText.print()
        puts '.....................................................................'
      end
    end
  end
end
