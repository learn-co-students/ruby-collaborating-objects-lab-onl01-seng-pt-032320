class Artist 

    attr_accessor :name 

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end

    def add_song
    song_tracker = Song.new(name)
    song_tracker.artist = self
    @@all << song_tracker
    end 
end 