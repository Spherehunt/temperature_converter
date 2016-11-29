# Temperature Converter

> Convert temperatures.

1. Description
2. Installation
3. Usage
4. License and author info

## 1: Description

This app can be used to convert temperatures from either commandline input, a file , a URL or from a sensor using the MQTT protocol.

The input should be in degrees Celsius, and the output will be in degrees Celsius, Fahrenheit and Kelvin

## 2: Installation

```powershell
 gem install temperature_converter_jonasd
```

## 3: Usage

Once the gem is installed, you can use the temp-conv command to use it.

There are some options required for use:

| Option        | Description    
| ------------- |:-------------:                                                                                                                       |
| -t            | input is text from commandline.                                                                                                      |
| -f            | input is a textfile (note: in the current version the file is should be located in the project folder. )                             |
| -u            | input is taken from a URL.                                                                                                           |
| -m            | input is taken from a sensor using the MQTT protocol (note: in the current version, the sensor information is hardcoded in the app.) |
| --text        | output is displayed as simple text.                                                                                                  |
| --html        | output is displayed in html.                                                                                                         |
| --json        | output is displayed in json format.                                                                                                  |

#### Usage example

To take the input from a textfile and output as html, the command would be:

```powershell
temp-conv -f sensor.txt --html
```

So generally the syntax is: temp-conv [source] [output format]

## 4: License and author info

Made by Jonas Demeulemeester, as a school assignment for the course software-engineering, using Ruby.

License: MIT
