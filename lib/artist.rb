class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def songs
    @songs
  end
    
  def add_song(song)
   @songs << song
   song.artist = self
   song
  end
  
  def self.find_or_create_by_name(name)
     self.all.detect {|artist| artist.name = name} || self.new(name)
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end