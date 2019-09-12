require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

doc.css(".headline-26OIBN").text.strip

doc.css("#header-content > div > div > div > p:nth-child(1)").text

courses = doc.css(".title-oE5vT4")[0..2]

courses.each do |course|
  puts course.text.strip
end