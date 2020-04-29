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
  
  def self.new_by_filename(file)
    songName, artistName = file.split(" - ")
    song = Song.new(songName)
  end
  
  def self.new_by_filename(file)
    artistName , songName = file.split(" - ")
    song = self.new(songName)
    song.artist_name = artistName
    return song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end