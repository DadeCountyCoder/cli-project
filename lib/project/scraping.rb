require 'nokogiri'
require 'open-uri'

html = open('https://dragonball.fandom.com/wiki/Category:Sagas')
doc = Nokogiri::HTML(html)
anchors = doc.css("li.category-page__trending-page a")
hrefs = anchors.map do |anchor|
anchor.attribute("href").value
end  
puts hrefs