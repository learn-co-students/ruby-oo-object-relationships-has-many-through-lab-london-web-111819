require "pry"

class Artist 
 
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

        Song.all.filter {|song| song.artist == self}

        #binding.pry
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def genres

       songs.map {|song| song.genre }

       # as an artist we can find out how many genres we have by going through our songs
       # we use map because map iterates through the array, allows us to modify each element in that array and put those modifications in anew array
       

    end


    



    #binding.pry
end
