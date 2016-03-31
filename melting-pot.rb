require 'rubygems'

# adds the Twitter module - http://www.rubydoc.info/gems/twitter/Twitter
require 'twitter'

config_file = './config.rb'

require config_file if File.file? config_file

APP_NAME ||= ''
CONSUMER_KEY ||= ''
CONSUMER_SECRET ||= ''
ACCESS_TOKEN ||= ''
ACCESS_TOKEN_SECRET ||= ''

puts APP_NAME

# do not commit real config data to git.
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = CONSUMER_KEY
  config.consumer_secret     = CONSUMER_SECRET
  config.access_token        = ACCESS_TOKEN
  config.access_token_secret = ACCESS_TOKEN_SECRET
end

client.mentions_timeline.each do |tweet|
	puts tweet.text
end