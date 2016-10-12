desc 'Fetch Game Lines'
task :fetch_lines => :environment do
  require 'nokogiri'
  require 'open-uri'

  url = "http://www.covers.com/sports/nba/matchups"
  doc = Nokogiri::HTML(open(url))

  doc.css("div.cmg_matchup_game_box").each do |item|
    odds = item.at_css(".cmg_team_live_odds").text
    teamnames = item.at_css(".cmg_matchup_header_team_names").text
    puts teamnames + odds

  end


end
