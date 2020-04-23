require "pry" 
class Song 
  attr_accessor :name, :artist
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist 
    @artist
  end
  
  def self.all
    @@all
  end
  ##parse file to separate the name into artist/Song
  ##create new song instance using songname
  ##associate new song with artist USING @artist
  ##return new song instance
  
  def self.new_by_filename(file_name)
  
  song_string = file_name.split(" - ")[1]
  song_obj = Song.new(song_string)
  song_artist_string = file_name.split(" - ")[0]
  artist = song_artist
    
  end

 
end