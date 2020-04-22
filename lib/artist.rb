class Artist 
  attr_accessor :name, :songs
  
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    @@all.find do |artist_obj|
      if artist.name == name
        artist.name 
      else 
        name = Artist.new(name)
      end 
    end
  end
    
  def print_songs
    self.songs
  end
  
  
  
  
  
  
  
  
  
end