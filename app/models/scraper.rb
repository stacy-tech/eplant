require 'nokogiri'
require 'open-uri'
require_relative "../../config/environment"

class Scraper
    URL = "https://bloomscape.com/shop/plants/indoor-plant/"

    def self.scrape_plants
        doc = Nokogiri::HTML(open(URL))
        plants_main = doc.css(".shop_container")
        puts plants_main
    end
end

Scraper.scrape_plants