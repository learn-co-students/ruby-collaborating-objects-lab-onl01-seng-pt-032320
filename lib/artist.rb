class Artist 

    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name 
        @@all << self
        @songs = []
    end 

    def self.all
        @@all
    end

    def add_song(artists_songs)
        songs << artists_songs
    end 
    
    def songs 
        @songs
    end 

    def self.find_or_create_by_name(name)
        self.all.find{|artist| artist.name == name } ||
        new_artist = Artist.new(name)
    end
    
    def print_songs
        songs.find{|song| puts song.name}
    end 
end 