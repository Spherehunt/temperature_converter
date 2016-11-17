require "./lib/temperature"
require "./lib/print_json"
require "./lib/print_html"
require "./lib/print_text"
require "./lib/url_reader"
require "./lib/file_reader"
require "./lib/commandline_reader"
require "./lib/mqtt_reader"

#Behouden als link tussen app die niet veranderd is en nieuwe temperature en andere single purpose classes

class TemperatureConverter

  #Methoden behouden maar laten linken naar nieuwe single purpose classes.

  def commandline_temperature argument
    cmdreader = CommandlineReader.new argument
    cmdreader.read
  end

  def file_temperature file
    freader = FileReader.new
    freader.read(file)
  end

  def url_temperature url
    ureader = URLReader.new
    ureader.read(url)
  end

  def mqtt_reader(ttn_host, port, username, password, sensor_id)
    mreader = MQTTReader.new
    mreader.read(ttn_host, port, username, password, sensor_id)
  end

  def to_text
    tprint = PrintText.new
    tprint.print
  end

  def to_json
    jprint = PrintJson.new
    jprint.print
  end

  def to_html
    hprint = PrintHtml.new
    hprint.print
  end

end
