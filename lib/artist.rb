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
  
  def add_song(instance)
    instance.artist = self
    
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def self.find_or_create_by_name(song)
     self.all.detect {|artist| artist.name == song} || self.new(song)
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end