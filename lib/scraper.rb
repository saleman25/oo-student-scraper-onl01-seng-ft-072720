require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    results = Nokogiri::HTML(open(index_url))
    student = []
    results.css("div.roster-cards-container").each do |card|
      card.css(".student-card a").each do |student|
    binding.pry
    results
    puts "testing pry"
  end
end
end 

  def self.scrape_profile_page(profile_url)
    
  end

end

