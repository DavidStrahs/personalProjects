require 'net/https'
require 'uri'

uri = URI.parse("http://www.folgerdigitaltexts.org/Tit/text/")

http = Net::HTTP.new(uri.host, uri.port)

request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)
puts response.body


