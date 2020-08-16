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
    profile_page = Nokogiri::HTML(open(profile_url))
    students = {}
    links = profile_page.css(".social-icon-container").children.css("a").map { |el| el.attribute('href').value}
    links.each do |link|
      if link.include?("linkedin")
        student[:linkedin] = link
      elsif link.include?("github")
        student[:github] = link
      elsif link.include?("twitter")
        student[:twitter] = link
      else
        student[:blog] = link
      end
    end
     student[:profile_quote] = profile_page.css(".profile-quote").text if profile_page.css(".profile-quote")
    student[:bio] = profile_page.css("div.bio-content.content-holder div.description-holder p").text if profile_page.css("div.bio-content.content-holder div.description-holder p")

    student
  end
  end

