require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    results = Nokogiri::HTML(open(index_url))
    student = []
    results.css(".student-card a")
    binding.pry
    results
    puts "testing pry"
  end


  def self.scrape_profile_page(profile_url)
    
  end

end

