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
      CommandlineReader.read(argument)
  end

  def file_temperature file
      FileReader.read(file)
  end

  def url_temperature url
      URLReader.read(url)
  end

  # def mqtt_temperature
        #nada
  # end

  def to_text
      PrintText.print
  end

  def to_json
      PrintJson.print
  end

  def to_html
      PrintHtml.print
  end

end
