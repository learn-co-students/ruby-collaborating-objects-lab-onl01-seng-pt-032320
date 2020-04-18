require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
def initialize(name)
  @name = name 
  @@all << self 
end 


def self.all 
  @@all
end 
  
  def self.new_by_filename(filename)
    array = filename.split(" - ")
    artist = array[0]
    song_name = array[1]
    genre = array[2].chomp(".mp3")
    new_song = self.new(song_name)
    new_song.artist_name = artist 
    new_song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end 