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
doc = Nokogiri::HTML(open("http://www.covers.com/sports/nfl/matchups"))
entries = doc.css("div.cmg_matchup_game_box")
@nfl_odds = []
entries.each do |entry|
nfl_odds = entry.at_css("div.cmg_matchup_header_date").text
@nfl_odds << nfl_odds
end
puts @nfl_odds



#
