class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    if all.none? {|artist| artist.name == name}
      self.new(name)
    else 
      all.detect {|artist| artist.name == name}
    end
  end
  
  def print_songs
    Song.all.each do |song|
      puts "#{song.name}" if song.artist == self
    end
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.all
    @@all
  end
end