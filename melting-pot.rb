require 'rubygems'

# adds the Twitter module - http://www.rubydoc.info/gems/twitter/Twitter
require 'twitter'

# do not commit real config data to git.
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

client.mentions_timeline.each do |tweet|
	puts tweet.text
end