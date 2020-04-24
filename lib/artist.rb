class Artist 

    attr_accessor :name, :song

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
        # artists_songs = Song.new(name)
        # artists_songs.artist = self
        # songs << artists_songs
    end 
    
    def songs 
        @songs
    end 

    def self.find_or_create_by_name
    end 
end 