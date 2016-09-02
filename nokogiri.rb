require 'nokogiri'
require 'open-uri'
 
doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich')) 

# get the class with class called 'components-data' that is the span around each ingredient 

list = doc.css('.components-item')


# loop through the ingredients and puts just the ingredient text
list.each do |n|
    puts n.inner_html
end