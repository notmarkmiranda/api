require 'pry'
require 'json'
require 'faraday'
require_relative 'keys'
require_relative 'message_sender'

if ARGV[0] == "articles"
  # puts @articles_key
  raw_data = Faraday.get("http://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=#{@articles_key}").body
  data = JSON.parse(raw_data)
  articles = data["response"]["docs"]
  articles.each do |article|
    puts "Title: #{article["headline"]["main"]}"

  end
  message
  # binding.pry
end
