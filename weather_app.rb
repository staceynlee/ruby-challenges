require 'barometer'

# User inputs location
puts "What is your location?"
location = gets.chomp

# Use baromoter to find weather at user location
barometer = Barometer.new(location)
weather = barometer.measure

# Set temp and condition variables
temp = weather.current.temperature
condition = weather.current.condition.downcase

# Message based on weather
puts "The current temperature is #{temp} and it is #{condition}."

# Define tomorrow
monthsfeb = ["02"]
months30 = ["04", "06", "09", "11"]
months31 = ["01", "03", "05", "07", "08", "10", "12"]

year_var = Time.now.strftime('%Y').to_i
if((year_var % 4 == 0) && !(year_var % 100 == 0) || (year_var % 400 == 0))
	leap = 'true'
else
	leap = 'false'
end

if leap == 'true'
	if monthsfeb.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 29
		tomorrow = 1
	elsif months30.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 30
		tomorrow = 1
	elsif months31.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 31
		tomorrow = 1
	else
		tomorrow  = Time.now.strftime('%d').to_i + 1
	end
end

if leap == 'false'
	if monthsfeb.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 28
		tomorrow = 1
	elsif months30.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 30
		tomorrow = 1
	elsif months31.include? Time.now.strftime('%m') && Time.now.strftime('%d') == 31
		tomorrow = 1
	else
		tomorrow  = Time.now.strftime('%d').to_i + 1
	end
end

# Message forecast
weather.forecast.each do |forecast|
	if forecast.starts_at.day == tomorrow
		dayName = 'Tomorrow'
	else 
		dayName = forecast.starts_at.strftime('%A')
	end

	puts dayName + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.to_s + 
	 ' and a high of ' + forecast.high.to_s
end
