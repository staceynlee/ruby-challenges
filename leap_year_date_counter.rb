monthsfeb = ["02"]
months30 = ["04", "06", "09", "11"]
months31 = ["01", "03", "05", "07", "08", "10", "12"]

# Determine leap year
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
		puts tomorrow
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
		puts tomorrow
	end
end