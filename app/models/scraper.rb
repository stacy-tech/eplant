require 'nokogiri'
require 'open-uri'
require_relative "../../config/environment"

class Scraper
    url = 'https://www.houseplant411.com/houseplant'
    html = open(url)
    doc = Nokogiri::HTML(html)

    plants = doc.css('resNumbers').css('.resultsInd').css('a')

    plants.each do |plant|
        plant.css('a')
        binding.pry
    end
end

scrape = Scraper.new


