require "pry"

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
    my_artist = @@all.find do |artist|
      artist.name == name
     end
     if my_artist
       my_artist
      else
        my_artist = Artist.new(name)
        @@all << my_artist
      end 
      return my_artist
  end


  
  
end