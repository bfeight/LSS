class TwitterApi

  def self.schefter
    client.user_timeline('AdamSchefter', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.matthewberry
    client.user_timeline('MatthewBerryTMR', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.rapoport
    client.user_timeline('RapSheet', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.johnclayton
    client.user_timeline('ClaytonESPN', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.mort
    client.user_timeline('mortreport', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.nflbnn
    client.user_timeline('NFLBNN', count: 5, exclude_replies: true, include_rts: false)
  end

  #NBA
  def self.marcstein
    client.user_timeline('ESPNSteinLine', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.chrishaynes
    client.user_timeline('ChrisBHaynes', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.shams
    client.user_timeline('ShamsCharania', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.alexkennedy
    client.user_timeline('AlexKennedyNBA', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.broussard
    client.user_timeline('Chris_Broussard', count: 5, exclude_replies: true, include_rts: false)
  end

  def self.breakingnews
  client.user_timeline('NBABNN', count: 5, exclude_replies: true, include_rts: false)
  end








  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
    end
  end
end
