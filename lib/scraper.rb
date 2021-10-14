require "nokogiri"
require "open-uri"
require "awesome_print"

html = URI.open("https://flatironschool.com/")
doc = Nokogiri::HTML5(html)
doc.css(".headline-26OIBN").text
courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")
#courses.each{|course|puts course.text.strip}

p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")[0].attributes