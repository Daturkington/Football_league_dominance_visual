class TeamsController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
    url = "https://en.wikipedia.org/wiki/List_of_English_football_champions"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    @teams = html_doc.css(".wikitable").css("a")
    year_array = []
    @teams.each do |team|
      year = team.attribute("title").text
      year_array << year
    end
  end
end
