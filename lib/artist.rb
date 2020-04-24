class Artist 

    attr_accessor :name, :song

    @@all = []
    
    def initialize(name)
        @name = name 
        @@all << self
        songs = []
    end 

    def self.all
        @@all
    end

    def add_song(song)
        song_tracker = Song.new(name)
        song_tracker.artist = self
    # songs << song_tracker
    end
    
    def songs 
        Song.all.select {|song| song.artist = self}
    end 
end 