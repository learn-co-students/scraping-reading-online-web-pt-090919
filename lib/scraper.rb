require 'pry'
require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
courses = doc.css('#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .title-oE5vT4').each{|heading| puts heading.text.strip}
# binding.pry