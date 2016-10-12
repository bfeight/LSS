class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Define the Entry object
  class Entry
    def initialize(teamnames)
      @teamnames = teamnames
    end
    attr_reader :teamnames
  end

  def scrape_nba
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.covers.com/sports/nba/matchups"))
    entries = doc.css("div.cmg_matchup_game_box")
    @entriesArray = []
    entries.each do |entry|
    teamnames = entry.at_css(".cmg_matchup_header_team_names").text
    @entriesArray << Entry.new(teamnames)
    end

    render template: 'scrape_nba'
  end

#NFL Web Scraping
  class NFLEntry
    def initialize(nflteamnames)
      @nflteamnames = nflteamnames
    end
    attr_reader :nflteamnames
  end

  def scrape_nfl
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.covers.com/sports/nfl/matchups"))
    entries = doc.css("div.cmg_matchup_game_box")
    @nfl_entriesArray = []
    entries.each do |entry|
    nflteamnames = entry.at_css(".cmg_matchup_header_team_names").text
    @nfl_entriesArray << NFLEntry.new(nflteamnames)
    end

    render template: 'scrape_nfl'
  end
end
