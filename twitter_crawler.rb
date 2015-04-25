require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ''
  config.consumer_secret = ''
  config.access_token = ''
  config.access_token_secret = ''
end

client.search('検索ワード', lang: 'ja').take(10).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
end
