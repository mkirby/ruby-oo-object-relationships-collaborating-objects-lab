require "pry"

class Artist

    attr_accessor :name, :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def print_songs
        print_message = ""
        self.songs.each {|song| print_message += song.name + "\n" }
        puts print_message
    end

    def self.find_or_create_by_name(name_string)
        !@@all.find {|artist| artist.name == name_string} ? Artist.new(name_string) : @@all.find {|artist| name_string}
    end

    def self.all
        @@all
    end

end

# binding.pry