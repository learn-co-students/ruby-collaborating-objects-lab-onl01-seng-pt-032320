class Artist
  attr_accessor :name
  
  @@all = []
  
    def initialize(name)
      @name=name
      save
    end
    
    def save
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def add_song(song)
      song.artist = self
    end
    
    def songs
      Song.all.select {|song| song.artist == self}
    end
 
    def self.find_or_create_by_name(artistname)
      @@all.each do |artist|
        if artist.name == artistname
           return artist
      end
    end
          artistname = Artist.new(artistname)
    end
 
    def print_songs
       songs.each do |song|
         puts song.name
       end
    end
  
end