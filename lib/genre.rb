require "pry"

class Genre 
 
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self 

        #binding.pry
    end

    def self.all
        @@all 
    end

    def songs
        Song.all.filter {|song| song.genre == self}

    end

    def artists
        songs.map {|song|song.artist}
    end

    

    #binding.pry


end