class TeamsController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
    url = "https://en.wikipedia.org/wiki/List_of_English_football_champions"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    @teams = html_doc.search(".wikitable", ".a", "title")
  end
end
