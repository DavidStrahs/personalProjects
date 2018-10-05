require 'httparty'
require 'nokogiri'
require 'open-uri'

list = Nokogiri::HTML(open('http://www.folgerdigitaltexts.org/api'))
puts list

STDOUT.flush
play = gets.chomp

def playResp(play)
  response1 = HTTParty.get('http://www.folgerdigitaltexts.org/#{play}/text/')
  puts response1.body, response1.code, response1.message, response1.headers.inspect
end