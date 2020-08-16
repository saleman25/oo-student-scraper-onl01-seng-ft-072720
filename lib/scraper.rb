require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

student = []

  def self.scrape_index_page(index_url)
    results = Nokogiri::HTML(open(index_url))
    student_info = {}
    results.css("div.roster-cards-container").each do |card|
    card.css(".student-card a").each do |student|
    student_info[:url] = "#{student.attr('href')}"
    student_info[:name] = student.css('.student-name').text
    student_info[:location] = student.css('.student-location').text
    student << student_info
  end 
  end
student
end 

  def self.scrape_profile_page(profile_url)
    url = Nokogiri::HTML(open(profile_url))
    profile_info = {}
    url.css("vitals-container").each do |card|
    card.css(".social-icon-container").each do   
    
  end

end

