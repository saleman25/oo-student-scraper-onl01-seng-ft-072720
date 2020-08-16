require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    results = Nokogiri::HTML(open(index_url))
    student = []
    results.css("div.roster-cards-container").each do |card|
    card.css(".student-card a").each do |student|
    student_profile = "#{student.attr('href')}"
    student_name = student.css("h4").text
    student_location = student.css("p").text
    binding.pry
    results
    puts "testing pry"
  end
end
end 

  def self.scrape_profile_page(profile_url)
    
  end

end

