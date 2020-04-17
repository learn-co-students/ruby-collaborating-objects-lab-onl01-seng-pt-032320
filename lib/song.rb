class Song 
  attr_accessor :name, :artist 
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(file)
    song = self.new(file.split(" - ")[1])
    artist = file.split(" - ")[0]
    song.artist = Artist.find_or_create_by_name(artist)
    song
  end
  
  def artist_name=(name)
    name_artist = Artist.find_or_create_by_name(name)
    self.artist = name_artist
  end
  
  def self.all
    @@all
  end
  
end