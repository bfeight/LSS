# require 'nokogiri'
# require 'open-uri'
#
# url = "http://www.covers.com/sports/nba/matchups"
# doc = Nokogiri::HTML(open(url))
# # puts doc.at_css("div.cmg_team_live_odds").text
#
# doc.css("div.cmg_matchup_game_box").each do |item|
#   # odds = item.at_css(".cmg_team_live_odds").text
#   teamnames = item.at_css(".cmg_matchup_header_team_names").text
#   puts teamnames
#
# end
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open("http://www.covers.com/sports/nba/matchups"))
@oddsArray = []

doc.css("div.cmg_matchup_game_box").each do |item|
  # odds = item.at_css(".cmg_team_live_odds").text
  teamnames = item.at_css(".cmg_matchup_header_team_names").text
  # newEntry = Lines.new(teamnames)
  @oddsArray << teamnames
end
puts @oddsArray


#
