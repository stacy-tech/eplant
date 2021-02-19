require 'nokogiri'
require 'open-uri'
require_relative "../../config/environment"

class Scraper
    
    def scrape_page
        url = "https://www.ourhouseplants.com/plants-hub"
        html = open(url)
        doc = Nokogiri::HTML(html) 
        plant_tiles = doc.css("ul li a img")
        plant_tiles.each do |plant|
            
            binding.pry
            hash = {
                name: plant.attr("title")
            }
            Plant.new(hash)
        end
    end

    

end

Scraper.new.scrape_page





  


