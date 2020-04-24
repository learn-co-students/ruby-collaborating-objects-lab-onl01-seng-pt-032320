require "pry" 
class Song 
  attr_accessor :name, :artist
  
  
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  ##parse file to separate the name into artist/Song
  ##create new song instance using songname
  ##associate new song with artist USING @artist
  ##return new song instance
  ## can I create a song instance with a name and artist?
  
  def self.new_by_filename(filename)
  # binding.pry
  song_string = filename.split(" - ")[1]
  artist_name_string = filename.split(" - ")[0]
  artist_obj = Artist.new(artist_name_string)
  song_obj = Song.new(song_string, artist_obj)

  end

  def artist_name=(name)
  self.artist = Artist.find_or_create_by_name(name)
  end
end