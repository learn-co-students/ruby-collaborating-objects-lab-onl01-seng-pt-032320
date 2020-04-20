class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def add_song (song)      
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name (new_name)
    if (self.all.find { |artist| artist.name == new_name})
      self.all.find { |artist| artist.name == new_name}
    else
      new_artist = Artist.new(new_name)
      @@all << self
      new_artist
    end 
  end 
  
  def print_songs
    self.songs.each {|song| puts song.name}
  end 
  
end 