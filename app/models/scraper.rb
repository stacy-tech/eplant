require 'nokogiri'
require 'open-uri'
require_relative "../../config/environment"

class Scraper
    def scrape_plants_urls
        plant_url = 'https://www.houseplant411.com/houseplant'
        html = open(plant_url)
        doc = Nokogiri::HTML(html)
        house_plants = doc.css('#resultsMid-outer').css('.resultsInd').css('a')
        house_plants= []
    end

    def get_plants
        house_plants.each do |plant|
            binding.pry
        end
    end
end

scrape = Scraper.new
 scrape.scrape_plants_urls

  


