require 'unirest'
require 'ap'

# These code snippets use an open-source library.
response = Unirest.get "https://musixmatchcom-musixmatch.p.mashape.com/wsr/1.1/artist.search?page=1&page_size=5&q_artist=Black%20Sabbath",
  headers:{
    "X-Mashape-Key" => "Rl5esBvKQmmshGRKcZquFu5jgWx3p173EPIjsn62Fxn3fVIyV1",
    "Accept" => "application/json"
  }
out = response.body
ap out

#API URL https://musixmatchcom-musixmatch.p.mashape.com/wsr/1.1/artist.get

