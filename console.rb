require "./lib/artist.rb"
require "./lib/song.rb"
require "./lib/mp3_importer.rb"
require "pry"


matt = Artist.new("DJ Nightshade")

song1 = Song.new("1. Sick Track")
song2 = Song.new("2. Hot Beats")
song3 = Song.new("3. Refridgerator Hums")
song4 = Song.new("Eight Crazy Nights")
song5 = Song.new("4. The Upstairs Neightbor Thud")

song1.artist_name=("DJ Nightshade")
song2.artist_name=("DJ Nightshade")
song3.artist_name=("DJ Nightshade")
#song4.artist_name=("Adam Sandler")
song5.artist_name=("DJ Nightshade")


song = Song.new('Man in the Mirror')
song.artist_name = "Michael Jackson"

song_2 = Song.new('Thriller')
song_2.artist_name = "Michael Jackson"

files = MP3Importer.new('./spec/fixtures/mp3s')

puts Dir.pwd


binding.pry