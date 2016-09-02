require 'barometer'
barometer = Barometer.new('Chicago')
weather = barometer.measure
puts weather.forecast
