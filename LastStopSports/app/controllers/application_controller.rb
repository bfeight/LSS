class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include TwitterApi
  # Define the Entry object
  class Entry
    def initialize(teamnames, lines)
      @teamnames = teamnames
      @lines = lines
    end
    attr_reader :teamnames
    attr_reader :lines
  end

  def scrape_nba
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.covers.com/sports/nba/matchups"))
    entries = doc.css("div.cmg_matchup_game_box")
    @entriesArray = []
    entries.each do |entry|
    lines = entry.at_css("div.cmg_team_live_odds").text
    teamnames = entry.at_css(".cmg_matchup_header_team_names").text
    @entriesArray << Entry.new(teamnames, lines)
    end

    render template: 'scrape_nba'
  end

#NFL Web Scraping
  class NFLEntry
    def initialize(nflteamnames, lines)
      @nflteamnames = nflteamnames
      @lines = lines
    end
    attr_reader :nflteamnames
    attr_reader :lines
  end

  def scrape_nfl
    require 'open-uri'
    doc = Nokogiri::HTML(open("http://www.covers.com/sports/nfl/matchups"))
    entries = doc.css("div.cmg_matchup_game_box")
    @nfl_entriesArray = []
    entries.each do |entry|
    nflteamnames = entry.at_css(".cmg_matchup_header_team_names").text
    lines = entry.at_css("div.cmg_team_live_odds").text
    @nfl_entriesArray << NFLEntry.new(nflteamnames, lines)
    end

    render template: 'scrape_nfl'
  end


end
